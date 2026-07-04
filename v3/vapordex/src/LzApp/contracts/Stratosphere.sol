// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "./interfaces/IAuthenticationController.sol";
import "./interfaces/ILayerZeroEndpoint.sol";
import "./interfaces/ILayerZeroReceiver.sol";

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import "./lzApp/NonblockingLzApp.sol";

error Stratosphere__AccountAlreadyLinked();
error Stratosphere__MemberAlreadyExists();
error Stratosphere__TokenNonTransferable();
error Stratosphere__AccessDenied();

/// @title Stratosphere
/// @author Jose Mejias
/// @notice Stratosphere main contract
/// @dev Utilizes OpenZeppelin libraries
contract Stratosphere is
    Initializable,
    ERC721EnumerableUpgradeable,
    AccessControlUpgradeable,
    ILayerZeroReceiver,
    NonblockingLzApp
{
    event MintedOnMainChain(uint256 indexed id);

    /// STORAGE
    uint256 s_tokenCounter;
    address public s_authenticationControllerAddress;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(ILayerZeroEndpoint _endPoint) public initializer {
        __AccessControl_init();

        /// @notice Grant roles
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());

        __ERC721_init("Stratosphere", "STRAT");
        __ERC721Enumerable_init();

        s_tokenCounter++;

        _safeMint(_msgSender(), 0);

        lzEndpoint = _endPoint;
        DEFAULT_PAYLOAD_SIZE_LIMIT = 10000;
    }

    /// EXTERNAL

    function mint() external returns (uint256) {
        /// @notice Check if sender is already a member
        if (balanceOf(_msgSender()) != 0) revert Stratosphere__MemberAlreadyExists();

        /// @notice Check if sender is not a secondary account
        if (IAuthenticationController(s_authenticationControllerAddress).associatedTokenOf(_msgSender()) != 0)
            revert Stratosphere__AccountAlreadyLinked();

        uint256 _id = s_tokenCounter;

        s_tokenCounter++;

        _safeMint(_msgSender(), _id);

        return _id;
    }

    function _nonblockingLzReceive(
        uint16 _srcChainId,
        bytes memory _srcAddress,
        uint64 _nonce,
        bytes memory _payload
    ) internal virtual override {
        if (keccak256(_srcAddress) != keccak256(trustedRemoteLookup[_srcChainId])) {
            revert Stratosphere__AccessDenied();
        }
        address nftRecipient;
        nftRecipient = abi.decode(_payload, (address));

        /// @notice Check if sender is already a member
        if (balanceOf(nftRecipient) != 0) revert Stratosphere__MemberAlreadyExists();

        /// @notice Check if sender is not a secondary account
        if (IAuthenticationController(s_authenticationControllerAddress).associatedTokenOf(nftRecipient) != 0)
            revert Stratosphere__AccountAlreadyLinked();

        uint256 _id = s_tokenCounter;

        s_tokenCounter++;

        _mint(nftRecipient, _id); //don't use safeMint because sender will be in other chain
        emit MintedOnMainChain(_id);
    }

    /// GETTERS

    function tokenIdOf(address account) external view returns (uint256) {
        if (balanceOf(account) != 0) {
            return tokenOfOwnerByIndex(account, 0);
        }
        return IAuthenticationController(s_authenticationControllerAddress).associatedTokenOf(account);
    }

    function tierOf(address account) external pure returns (uint8) {
        return 0;
    }

    /// ADMIN

    function setAuthenticationController(
        address newAuthenticationControllerAddress
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        s_authenticationControllerAddress = newAuthenticationControllerAddress;
    }

    function setTrustedRemote(
        uint16 _srcChainId,
        bytes memory _srcAddress
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        trustedRemoteLookup[_srcChainId] = _srcAddress;
    }

    function setEndpoint(ILayerZeroEndpoint _endPoint) external onlyRole(DEFAULT_ADMIN_ROLE) {
        lzEndpoint = _endPoint;
    }

    // OVERRIDES

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal override(ERC721EnumerableUpgradeable) {
        if (from != address(0)) revert Stratosphere__TokenNonTransferable();
        super._beforeTokenTransfer(from, to, tokenId);
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC721EnumerableUpgradeable, AccessControlUpgradeable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function _baseURI() internal pure override returns (string memory) {
        return "https://app.vapordex.io/api/stratosphere/";
    }
}
