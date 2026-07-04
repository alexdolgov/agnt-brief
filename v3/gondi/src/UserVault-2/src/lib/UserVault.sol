// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.21;

import "@openzeppelin/utils/Strings.sol";
import "@solmate/auth/Owned.sol";
import "@solmate/tokens/ERC721.sol";
import "@solmate/tokens/ERC1155.sol";
import "@solmate/utils/SafeTransferLib.sol";

import "../interfaces/IOldERC721.sol";
import "../interfaces/IUserVault.sol";
import "./AddressManager.sol";

/// @title Auction Loan Liquidator
/// @author Florida St
/// @notice NFTs that represent bundles.
/// @dev This vault does not support rebasing tokens. Rebasing tokens can cause accounting
/// @dev errors since the vault tracks balances internally and won't update when rebases occur.

contract UserVault is ERC721, ERC721TokenReceiver, ERC1155TokenReceiver, IUserVault {
    using SafeTransferLib for ERC20;

    string private constant _BASE_URI = "https://gondi.xyz/user_vaults/";
    uint256 private _nextId = 0;

    address public constant ETH = address(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);

    /// @notice IDs that were burnt are pending withdrawal
    mapping(uint256 vaultId => address claimer) _readyForWithdrawal;

    /// @notice NFT balances for a given vault: collection => (tokenId => vaultId)
    mapping(address collection => mapping(uint256 tokenId => uint256 vaultId)) _vaultERC721s;

    /// @notice ERC20 balances for a given vault: token => (vaultId => amount). address(0) = ETH
    mapping(address token => mapping(uint256 vaultId => uint256 amount)) _vaultERC20s;

    /// @notice ERC1155 balances for a given vault: token => (vaultId => amount). address(0) = ETH
    mapping(address token => mapping(uint256 tokenId => mapping(uint256 vaultId => uint256 amount))) _vaultERC1155s;

    AddressManager private immutable _currencyManager;

    AddressManager private immutable _collectionManager;

    event ERC721Deposited(uint256 vaultId, address collection, uint256 tokenId);

    event ERC20Deposited(uint256 vaultId, address token, uint256 amount);

    event ERC1155Deposited(uint256 vaultId, address token, uint256 tokenId, uint256 amount);

    event ERC721Withdrawn(uint256 vaultId, address collection, uint256 tokenId);

    event ERC20Withdrawn(uint256 vaultId, address token, uint256 amount);

    event ERC1155Withdrawn(uint256 vaultId, address token, uint256 tokenId, uint256 amount);

    error CurrencyNotWhitelistedError();

    error CollectionNotWhitelistedError();

    error LengthMismatchError();

    error NotApprovedError(uint256 vaultId);

    error WithdrawingETHError();

    error WrongMethodError();

    error AssetNotOwnedError();

    error VaultNotExistsError();

    error InvalidCallerError();

    /// @param currencyManager Address of the CurrencyManager contract.
    /// @param collectionManager Address of the CollectionManager contract.
    constructor(address currencyManager, address collectionManager) ERC721("GONDI_USER_VAULT", "GUV") {
        _currencyManager = AddressManager(currencyManager);
        _collectionManager = AddressManager(collectionManager);
    }

    /// @inheritdoc IUserVault
    function mint() external returns (uint256) {
        uint256 _vaultId;
        unchecked {
            _vaultId = ++_nextId;
        }
        _mint(msg.sender, _vaultId);
        return _vaultId;
    }

    /// @inheritdoc IUserVault
    function burn(uint256 _vaultId, address _assetRecipient) external {
        _thisBurn(_vaultId, _assetRecipient);
    }

    /// @inheritdoc IUserVault
    function burnAndWithdraw(
        uint256 _vaultId,
        address[] calldata _collections,
        uint256[] calldata _tokenIds,
        address[] calldata _tokens,
        address[] calldata _erc1155Tokens,
        uint256[] calldata _erc1155TokensIds
    ) external {
        _thisBurn(_vaultId, msg.sender);
        uint256 totalCollections = _collections.length;
        if (totalCollections != _tokenIds.length) {
            revert LengthMismatchError();
        }
        for (uint256 i = 0; i < totalCollections;) {
            _withdrawERC721(_vaultId, _collections[i], _tokenIds[i]);
            unchecked {
                ++i;
            }
        }
        uint256 totalTokens = _tokens.length;
        for (uint256 i = 0; i < totalTokens;) {
            _withdrawERC20(_vaultId, _tokens[i]);
            unchecked {
                ++i;
            }
        }
        uint256 totalERC1155Tokens = _erc1155Tokens.length;
        for (uint256 i = 0; i < totalERC1155Tokens;) {
            _withdrawERC1155(_vaultId, _erc1155Tokens[i], _erc1155TokensIds[i]);
            unchecked {
                ++i;
            }
        }
        _withdrawEth(_vaultId);
    }

    function ERC721OwnerOf(address _collection, uint256 _tokenId) external view returns (uint256) {
        return _vaultERC721s[_collection][_tokenId];
    }

    function ERC20BalanceOf(uint256 _vaultId, address _token) external view returns (uint256) {
        return _vaultERC20s[_token][_vaultId];
    }

    function ERC1155BalanceOf(uint256 _vaultId, address _token, uint256 _tokenId) external view returns (uint256) {
        return _vaultERC1155s[_token][_tokenId][_vaultId];
    }

    /// @inheritdoc IUserVault
    function depositERC721(uint256 _vaultId, address _collection, uint256 _tokenId) external {
        _vaultExists(_vaultId);

        if (!_collectionManager.isWhitelisted(_collection)) {
            revert CollectionNotWhitelistedError();
        }
        _depositERC721(msg.sender, _vaultId, _collection, _tokenId);
    }

    /// @inheritdoc IUserVault
    /// @dev Read `depositERC721`.
    function depositERC721s(uint256 _vaultId, address _collection, uint256[] calldata _tokenIds) external {
        _vaultExists(_vaultId);
        if (!_collectionManager.isWhitelisted(_collection)) {
            revert CollectionNotWhitelistedError();
        }
        uint256 totalTokens = _tokenIds.length;
        for (uint256 i = 0; i < totalTokens;) {
            _depositERC721(msg.sender, _vaultId, _collection, _tokenIds[i]);
            unchecked {
                ++i;
            }
        }
    }

    /// @inheritdoc IUserVault
    /// @dev Read `depositERC721`.
    function depositERC20(uint256 _vaultId, address _token, uint256 _amount) external {
        _vaultExists(_vaultId);

        if (_token == ETH) {
            revert WrongMethodError();
        }
        _depositERC20(msg.sender, _vaultId, _token, _amount);
    }

    /// @inheritdoc IUserVault
    /// @dev Read `depositERC1155`.
    function depositERC1155(uint256 _vaultId, address _token, uint256 _tokenId, uint256 _amount) external {
        _vaultExists(_vaultId);

        if (!_collectionManager.isWhitelisted(_token)) {
            revert CollectionNotWhitelistedError();
        }

        _depositERC1155(msg.sender, _vaultId, _token, _tokenId, _amount);
    }

    /// @inheritdoc IUserVault
    /// @dev Read `depositERC1155s`.
    function depositERC1155s(
        uint256 _vaultId,
        address _collection,
        uint256[] calldata _tokenIds,
        uint256[] calldata _amounts
    ) external {
        _vaultExists(_vaultId);
        if (!_collectionManager.isWhitelisted(_collection)) {
            revert CollectionNotWhitelistedError();
        }
        uint256 totalTokens = _tokenIds.length;
        for (uint256 i = 0; i < totalTokens;) {
            _depositERC1155(msg.sender, _vaultId, _collection, _tokenIds[i], _amounts[i]);
            unchecked {
                ++i;
            }
        }
    }

    /// @inheritdoc IUserVault
    /// @dev Read `depositERC721`.
    function depositEth(uint256 _vaultId) external payable {
        _vaultExists(_vaultId);

        _vaultERC20s[ETH][_vaultId] += msg.value;

        emit ERC20Deposited(_vaultId, ETH, msg.value);
    }

    /// @inheritdoc IUserVault
    function withdrawERC721(uint256 _vaultId, address _collection, uint256 _tokenId) external {
        _withdrawERC721(_vaultId, _collection, _tokenId);
    }

    /// @inheritdoc IUserVault
    function withdrawERC721s(uint256 _vaultId, address[] calldata _collections, uint256[] calldata _tokenIds)
        external
    {
        if (_collections.length != _tokenIds.length) {
            revert LengthMismatchError();
        }
        uint256 totalCollections = _collections.length;
        for (uint256 i = 0; i < totalCollections;) {
            _withdrawERC721(_vaultId, _collections[i], _tokenIds[i]);
            unchecked {
                ++i;
            }
        }
    }

    /// @inheritdoc IUserVault
    function withdrawERC20(uint256 _vaultId, address _token) external {
        _withdrawERC20(_vaultId, _token);
    }

    /// @inheritdoc IUserVault
    function withdrawERC20s(uint256 _vaultId, address[] calldata _tokens) external {
        for (uint256 i = 0; i < _tokens.length;) {
            _withdrawERC20(_vaultId, _tokens[i]);
            unchecked {
                ++i;
            }
        }
    }

    /// @inheritdoc IUserVault
    function withdrawERC1155(uint256 _vaultId, address _token, uint256 _tokenId) external {
        _withdrawERC1155(_vaultId, _token, _tokenId);
    }

    /// @inheritdoc IUserVault
    function withdrawERC1155s(uint256 _vaultId, address[] calldata _tokens, uint256[] calldata _tokenIds) external {
        if (_tokens.length != _tokenIds.length) {
            revert LengthMismatchError();
        }
        uint256 totalCollections = _tokens.length;
        for (uint256 i = 0; i < totalCollections;) {
            _withdrawERC1155(_vaultId, _tokens[i], _tokenIds[i]);
            unchecked {
                ++i;
            }
        }
    }

    /// @inheritdoc IUserVault
    function withdrawEth(uint256 _vaultId) external {
        _withdrawEth(_vaultId);
    }

    /// @inheritdoc ERC721
    function tokenURI(uint256 _vaultId) public pure override returns (string memory) {
        return string.concat(_BASE_URI, Strings.toString(_vaultId));
    }

    function _depositERC721(address _depositor, uint256 _vaultId, address _collection, uint256 _tokenId) private {
        ERC721(_collection).transferFrom(_depositor, address(this), _tokenId);

        _vaultERC721s[_collection][_tokenId] = _vaultId;

        emit ERC721Deposited(_vaultId, _collection, _tokenId);
    }

    function _depositERC20(address _depositor, uint256 _vaultId, address _token, uint256 _amount) private {
        if (!_currencyManager.isWhitelisted(_token)) {
            revert CurrencyNotWhitelistedError();
        }
        ERC20(_token).safeTransferFrom(_depositor, address(this), _amount);

        _vaultERC20s[_token][_vaultId] += _amount;
        emit ERC20Deposited(_vaultId, _token, _amount);
    }

    function _depositERC1155(address _depositor, uint256 _vaultId, address _token, uint256 _tokenId, uint256 _amount)
        private
    {
        ERC1155(_token).safeTransferFrom(_depositor, address(this), _tokenId, _amount, "");

        _vaultERC1155s[_token][_tokenId][_vaultId] += _amount;
        emit ERC1155Deposited(_vaultId, _token, _tokenId, _amount);
    }

    /// @dev We are allowing anyone to deposit NFTs into a vault (not just the owner). Because of this we call transferFrom
    /// and not safeTransferFrom to avoid someone locking assets by transferring an ERC721 with the hook corrupted (we do
    /// have a whitelist to avoid this but being extra cautious.)
    function _withdrawERC721(uint256 _vaultId, address _collection, uint256 _tokenId) private {
        _onlyReadyForWithdrawal(_vaultId);

        if (_vaultERC721s[_collection][_tokenId] != _vaultId) {
            revert AssetNotOwnedError();
        }
        ERC721(_collection).transferFrom(address(this), msg.sender, _tokenId);

        delete _vaultERC721s[_collection][_tokenId];

        emit ERC721Withdrawn(_vaultId, _collection, _tokenId);
    }

    function _withdrawERC20(uint256 _vaultId, address _token) private {
        _onlyReadyForWithdrawal(_vaultId);

        uint256 amount = _vaultERC20s[_token][_vaultId];
        if (amount == 0) {
            return;
        }
        delete _vaultERC20s[_token][_vaultId];

        ERC20(_token).safeTransfer(msg.sender, amount);

        emit ERC20Withdrawn(_vaultId, _token, amount);
    }

    function _withdrawERC1155(uint256 _vaultId, address _token, uint256 _tokenId) private {
        _onlyReadyForWithdrawal(_vaultId);

        uint256 amount = _vaultERC1155s[_token][_tokenId][_vaultId];
        if (amount == 0) {
            return;
        }
        delete _vaultERC1155s[_token][_tokenId][_vaultId];

        ERC1155(_token).safeTransferFrom(address(this), msg.sender, _tokenId, amount, "");

        emit ERC1155Withdrawn(_vaultId, _token, _tokenId, amount);
    }

    function _thisBurn(uint256 _vaultId, address _assetRecipient) private {
        _onlyApproved(_vaultId);

        _burn(_vaultId);
        _readyForWithdrawal[_vaultId] = _assetRecipient;
    }

    function _withdrawEth(uint256 _vaultId) private {
        _onlyReadyForWithdrawal(_vaultId);

        uint256 amount = _vaultERC20s[ETH][_vaultId];
        if (amount == 0) {
            return;
        }
        delete _vaultERC20s[ETH][_vaultId];

        (bool sent,) = payable(msg.sender).call{value: amount}("");
        if (!sent) {
            revert WithdrawingETHError();
        }

        emit ERC20Withdrawn(_vaultId, ETH, amount);
    }

    function _vaultExists(uint256 _vaultId) private view {
        bytes4 errorSelector = VaultNotExistsError.selector;
        address owner = _ownerOf[_vaultId];
        assembly {
            if iszero(owner) {
                mstore(0x00, errorSelector)
                revert(0x00, 0x04)
            }
        }
    }

    function _onlyApproved(uint256 _vaultId) private view {
        if (
            msg.sender != ownerOf(_vaultId) && !isApprovedForAll[ownerOf(_vaultId)][msg.sender]
                && getApproved[_vaultId] != msg.sender
        ) {
            revert NotApprovedError(_vaultId);
        }
    }

    function _onlyReadyForWithdrawal(uint256 _vaultId) private view {
        if (_readyForWithdrawal[_vaultId] != msg.sender) {
            revert NotApprovedError(_vaultId);
        }
    }
}
