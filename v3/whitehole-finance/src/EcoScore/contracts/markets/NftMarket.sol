// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";

import "../interfaces/IGNft.sol";
import "../interfaces/INftCore.sol";


abstract contract NftMarket is IGNft, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeMath for uint256;

    /* ========== STATE VARIABLES ========== */

    INftCore public nftCore;
    address public override underlying;

    /* ========== INITIALIZER ========== */

    function __GMarket_init() internal initializer {
        __Ownable_init();
        __ReentrancyGuard_init();
    }

    /* ========== MODIFIERS ========== */

    modifier onlyNftCore() {
        require(msg.sender == address(nftCore), "GNft: only nft core contract");
        _;
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function setNftCore(address _nftCore) public onlyOwner {
        require(_nftCore != address(0), "GNft: invalid core address");
        require(address(nftCore) == address(0), "GNft: core already set");
        nftCore = INftCore(_nftCore);
    }

    function setUnderlying(address _underlying) public onlyOwner {
        require(_underlying != address(0), "GNft: invalid underlying address");
        require(underlying == address(0), "GNft: set underlying already");
        underlying = _underlying;
    }
}
