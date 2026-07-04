// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity ^0.8.17;


interface IEywaNFT {
    enum Rarity { NotSet, Common, Uncommon, Rare, Legendary, Infinity }
}

interface IEywaNFTArbitrum is IEywaNFT {
    function mint(address to_, uint256 tokenId_, Rarity rarity_, uint256 claimableAmount_, bytes32[] calldata merkleProof) external;
    function customMint(address to_, uint256 tokenId_, Rarity rarity_, uint256 claimableAmount_) external;
    function pinWallets(uint256 tokenId_, address[] memory wallets) external;
    function claimableAmount(address user) external view returns (uint256);
    function decreaseClaimableAmount(address user, uint256 amount) external;
}

interface IEywaNFTAurora {
    function getClaimableAmount(uint256 tokenId_) external returns (uint256);
    function burn(uint256 tokenId) external;
    function ownerOf(uint256 tokenId) external view returns (address);
    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256);
}