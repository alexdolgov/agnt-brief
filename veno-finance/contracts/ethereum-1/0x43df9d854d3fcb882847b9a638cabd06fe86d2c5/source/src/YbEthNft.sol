// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {ERC721EnumerableUpgradeable} from
    "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import {ERC2981Upgradeable} from "@openzeppelin/contracts-upgradeable/token/common/ERC2981Upgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeableWithDelay} from "./utils/UUPSUpgradeableWithDelay.sol";
import {NFTDescriptor} from "./libs/nft/NFTDescriptor.sol";
import {IYbEth} from "./interfaces/IYbEth.sol";
import {LibSanitize} from "./libs/LibSanitize.sol";

contract YbEthNft is UUPSUpgradeableWithDelay, ERC721EnumerableUpgradeable, ERC2981Upgradeable, OwnableUpgradeable {
    /// @dev Indicates that the caller is not the YbEth
    error OnlyYbEth();

    /// @dev Emits when the royalty fee is updated
    event UpdateRoyalty(address indexed _royaltyReceiver, uint96 _royaltyFee);

    IYbEth public ybEth;
    uint256 public nextTokenId;

    modifier onlyYbEth() {
        if (msg.sender != address(ybEth)) {
            revert OnlyYbEth();
        }
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @dev Initialize the YbEthNft contract
    /// @param _ybEth Address of YbEth
    /// @param _upgradeDelay Time to wait before new upgrade implementation
    /// @param _name of NFT eg. "Veno Unstaked ETH"
    /// @param _symbol of NFT eg. "vnoNFT"
    function initialize(address _ybEth, uint256 _upgradeDelay, string memory _name, string memory _symbol)
        public
        initializer
    {
        LibSanitize.notZeroAddress(_ybEth);
        LibSanitize.notNullValue(_upgradeDelay);
        LibSanitize.notEmptyString(_name);
        LibSanitize.notEmptyString(_symbol);

        __Ownable_init(_msgSender());
        __ERC721_init(_name, _symbol);
        __ERC721Enumerable_init();
        __UUPSUpgradeableWithDelay_init(_upgradeDelay);

        ybEth = IYbEth(_ybEth);
    }

    /// @dev Mint YbEthNft token to the `to` address, only `YbEth` can call this method
    function mint(address _to) external onlyYbEth returns (uint256 tokenId) {
        tokenId = nextTokenId;
        nextTokenId++;

        _safeMint(_to, tokenId);
    }

    /// @dev Burn `tokenId`, only `YbEth` can call this method
    function burn(uint256 _tokenId) external onlyYbEth {
        _burn(_tokenId);
    }

    ////////////////////////////////////////////////////////////////////////////
    ///                   ADMIN-ONLY FUNCTIONS                               ///
    ////////////////////////////////////////////////////////////////////////////

    /// @dev Emits when the royalty fee is updated
    function updateRoyalty(address _royaltyReceiver, uint96 _royaltyFee) external onlyOwner {
        _setDefaultRoyalty(_royaltyReceiver, _royaltyFee);
        emit UpdateRoyalty(_royaltyReceiver, _royaltyFee);
    }

    ////////////////////////////////////////////////////////////////////////////
    ///                   VIEW-ONLY FUNCTIONS                                ///
    ////////////////////////////////////////////////////////////////////////////

    /// @dev helper function for frontend to display list of withdrawal request
    function ownerTokenIds(address _owner) external view returns (uint256[] memory) {
        uint256 ownerTokenCount = balanceOf(_owner);
        uint256[] memory _tokenIds = new uint256[](ownerTokenCount);
        for (uint256 i; i < ownerTokenCount; i++) {
            _tokenIds[i] = tokenOfOwnerByIndex(_owner, i);
        }
        return _tokenIds;
    }

    /// @dev Returns true if either of the following conditions is met:
    ///     1. `spender` is the owner of `tokenId`, or
    ///     2. `spender` is approved for spending `tokenId`
    ///     3. `spender` is the operator of the owner of `tokenId`
    function isApprovedOrOwner(address _spender, uint256 _tokenId) external view returns (bool) {
        address owner = ownerOf(_tokenId);
        return (_spender == owner || isApprovedForAll(owner, _spender) || getApproved(_tokenId) == _spender);
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        /// get the withdrawal request from ybEth
        /// call library to generate the base64 tokenURI
        (, uint128 unlockEndTime, uint256 liquidTokenAmount, uint256 exchangeRate, uint256 batchNo) =
            ybEth.token2UnbondRequest(tokenId);

        return NFTDescriptor.constructTokenURI(
            NFTDescriptor.ConstructTokenURIParams({
                tokenId: tokenId,
                owner: ownerOf(tokenId),
                liquidTokenAmount: liquidTokenAmount,
                liquidTokenDecimal: ybEth.decimals(),
                unlockEndTime: unlockEndTime,
                batchNo: batchNo,
                liquidToken2TokenExchangeRate: exchangeRate,
                exchangeRateDecimal: ybEth.EXCHANGE_RATE_DECIMAL(),
                liquidTokenSymbol: ybEth.symbol(),
                tokenSymbol: "ETH"
            })
        );
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC2981Upgradeable, ERC721EnumerableUpgradeable)
        returns (bool)
    {
        return ERC2981Upgradeable.supportsInterface(interfaceId)
            || ERC721EnumerableUpgradeable.supportsInterface(interfaceId) || super.supportsInterface(interfaceId);
    }

    /// @dev Required by UUPSUpgradeableWithDelay
    function _authorizeUpgradeWithDelay(address) internal override onlyOwner {}
}
