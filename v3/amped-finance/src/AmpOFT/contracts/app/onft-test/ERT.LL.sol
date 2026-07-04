// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { ERC721Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import { ERC721EnumerableUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import { ERC721URIStorageUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721URIStorageUpgradeable.sol";

import { ONFT721CoreUpgradeable } from "../../lz-upgradeable/onft/ONFT721CoreUpgradeable.sol";

/**
 * @title ONFT721 Contract
 * @dev ONFT721 is an ERC-721 token that extends the functionality of the ONFT721Core contract.
 */
contract LL_ERTUpgradeable is
    UUPSUpgradeable,
    ONFT721CoreUpgradeable,
    ERC721URIStorageUpgradeable,
    ERC721EnumerableUpgradeable
{
    event BaseURISet(string baseURI);

    /// @custom:storage-location erc7201:lightlink.storage.LL_ERT
    struct LL_ERTStorage {
        string baseTokenURI;
    }

    // keccak256(abi.encode(uint256(keccak256("lightlink.storage.LL_ERT")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant LL_ERTStorageLocation = 0x50d7931dd5fa54bb48cde813dd1bc4d6cb3e8ebad87b9b1a7a1a5f1aa3a53200;

    function _getLL_ERTStorage() private pure returns (LL_ERTStorage storage $) {
        assembly {
            $.slot := LL_ERTStorageLocation
        }
    }

    function initialize(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _delegate
    ) public virtual initializer {
        __LL_ERT_init();
        __ERC721_init(_name, _symbol);
        __OAppCore_init(_lzEndpoint, _delegate);
        __Ownable_init(_delegate);
    }

    function __LL_ERT_init() internal onlyInitializing {
        __LL_ERT_init_unchained();
    }

    function __LL_ERT_init_unchained() internal onlyInitializing {}

    function _authorizeUpgrade(address) internal override onlyOwner {}

    /**
     * @notice Retrieves the address of the underlying ERC721 implementation (ie. this contract).
     */
    function token() external view returns (address) {
        return address(this);
    }

    function setBaseURI(string calldata _baseTokenURI) external onlyOwner {
        LL_ERTStorage storage $ = _getLL_ERTStorage();
        $.baseTokenURI = _baseTokenURI;
        emit BaseURISet(_baseTokenURI);
    }

    function _baseURI() internal view override returns (string memory) {
        LL_ERTStorage storage $ = _getLL_ERTStorage();
        return $.baseTokenURI;
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view virtual override(ERC721URIStorageUpgradeable, ERC721EnumerableUpgradeable) returns (bool) {
        return
            ERC721Upgradeable.supportsInterface(interfaceId) ||
            ERC721EnumerableUpgradeable.supportsInterface(interfaceId) ||
            ERC721URIStorageUpgradeable.supportsInterface(interfaceId);
    }

    function _increaseBalance(
        address owner,
        uint128 amount
    ) internal override(ERC721Upgradeable, ERC721EnumerableUpgradeable) {
        super._increaseBalance(owner, amount);
    }

    function _update(
        address to,
        uint256 tokenId,
        address auth
    ) internal override(ERC721Upgradeable, ERC721EnumerableUpgradeable) returns (address) {
        return super._update(to, tokenId, auth);
    }

    function tokenURI(
        uint256 tokenId
    ) public view override(ERC721Upgradeable, ERC721URIStorageUpgradeable) returns (string memory) {
        return super.tokenURI(tokenId);
    }

    /**
     * @notice Indicates whether the ONFT721 contract requires approval of the 'token()' to send.
     * @dev In the case of ONFT where the contract IS the token, approval is NOT required.
     * @return requiresApproval Needs approval of the underlying token implementation.
     */
    function approvalRequired() external pure virtual returns (bool) {
        return false;
    }

    function _debit(address _from, uint256 _tokenId, uint32 /*_dstEid*/) internal virtual override {
        if (_from != ERC721Upgradeable.ownerOf(_tokenId)) {
            revert OnlyNFTOwner(_from, ERC721Upgradeable.ownerOf(_tokenId));
        }
        _burn(_tokenId);
    }

    function _credit(address _to, uint256 _tokenId, uint32 /*_srcEid*/) internal virtual override {
        _mint(_to, _tokenId);
    }

    function setApprovalForAllFromToByAdmin(address from, address to, bool approved) public virtual onlyOwner {
        _setApprovalForAll(from, to, approved);
    }

    function adminMint(address to, uint256 tokenId) public virtual onlyOwner {
        _mint(to, tokenId);
    }

    function adminBurn(uint256 tokenId) public virtual onlyOwner {
        _burn(tokenId);
    }

    function setTokenURIs(uint256[] calldata tokenIds, string[] calldata tokenURIs) external onlyOwner {
        require(tokenIds.length == tokenURIs.length, "input mismatch");
        for (uint256 i = 0; i < tokenIds.length; i++) {
            _setTokenURI(tokenIds[i], tokenURIs[i]);
        }
    }

    function bulkMint(address[] calldata to, uint256[] calldata tokenIds) external onlyOwner {
        require(to.length == tokenIds.length, "input mismatch");
        for (uint256 i = 0; i < to.length; i++) {
            _mint(to[i], tokenIds[i]);
        }
    }

    function bulkBurn(uint256[] calldata tokenIds) external onlyOwner {
        for (uint256 i = 0; i < tokenIds.length; i++) {
            _burn(tokenIds[i]);
        }
    }
}
