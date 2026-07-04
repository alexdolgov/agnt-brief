// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

import "./interface/IAzuroBet.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";

/// @title Azuro bet ERC721 enumerable token
contract AzuroBet is
    OwnableUpgradeable,
    ERC721EnumerableUpgradeable,
    IAzuroBet
{
    address public core;

    uint256 public lastTokenId;

    // Base URI for computing {tokenURI}
    string public baseURI;

    /**
     * @notice Throw if caller is not the Core.
     */
    modifier onlyCore() {
        if (msg.sender != core) revert OnlyCore();
        _;
    }

    function initialize(address core_) external virtual initializer {
        __Ownable_init_unchained(msg.sender);
        __ERC721_init("AzuroBet-NFT", "BET");
        core = core_;
    }

    /**
     * @notice Owner: Set `uri` as baseURI.
     */
    function setBaseURI(string calldata uri) external onlyOwner {
        baseURI = uri;
    }

    /**
     * @notice Core: See {ERC721Upgradeable-_burn}.
     */
    function burn(uint256 tokenId) external override onlyCore {
        super._burn(tokenId);
    }

    /**
     * @notice Core: See {ERC721Upgradeable-_mint}.
     * @return tokenId minted token id
     */
    function mint(
        address account
    ) external override onlyCore returns (uint256 tokenId) {
        tokenId = ++lastTokenId;
        super._mint(account, tokenId);
    }

    /**
     * @notice Get all IDs of tokens owned by `owner_`.
     */
    function getTokensByOwner(
        address owner_
    ) external view returns (uint256[] memory tokenIds) {
        return getTokensByOwner(owner_, 0, balanceOf(owner_));
    }

    /**
     * @notice Get IDs of tokens owned by `owner_`.
     * @param  start the index of the first element of the list of owned tokens to start from
     * @param  count the maximum number of IDs to get
     */
    function getTokensByOwner(
        address owner_,
        uint256 start,
        uint256 count
    ) public view returns (uint256[] memory tokenIds) {
        uint256 tokens_ = balanceOf(owner_);
        require(start < tokens_, "ERC721: start index out of bounds");

        uint256 maxCount = tokens_ - start;
        if (count > maxCount) count = maxCount;

        tokenIds = new uint256[](count);
        for (uint256 i; i < count; ++i) {
            tokenIds[i] = tokenOfOwnerByIndex(owner_, start + i);
        }
    }

    /**
     * @notice See {ERC721Upgradeable-_baseURI}.
     */
    function _baseURI() internal view override returns (string memory) {
        return baseURI;
    }
}
