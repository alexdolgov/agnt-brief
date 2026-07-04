// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2023 - all rights reserved
pragma solidity ^0.8.17;

import "./IWalletFactory.sol";

interface IVestingManager {
    function PERCENTAGE_DENOM() external view returns (uint256);
    function token() external view returns (address);
    function NFT() external view returns (address);
    function DAO() external view returns (address);
    function start() external view returns (uint64);
    function duration() external view returns (uint64);
    function allowMultipleReleases() external view returns (bool);
    function cliff(uint256 timestamp) external view returns (uint256);
    function setStart(uint64) external;
    function setDuration(uint64) external;
    function addCliff(uint256 timestamp, uint256 cliff_) external;
    function removeCliff(uint256 cliffId) external;
    function setNFT(address NFT_) external;
    function setDAO(address DAO_) external;
    function walletFactory() external view returns (address);
    function attachWallet(address currentBeneficiary, address newBeneficiary) external;
    function getBeneficiaryWallets(address) external view returns (address[] memory wallets);
}

interface IVestingByWhitelist is IVestingManager {
    function claim(address beneficiary, uint256 amount, bytes32[] calldata merkleProof) external;
}

interface IVestingByNFT is IVestingManager {
    function claim(address beneficiary, uint256 amount, uint256 tokenId) external returns (address);
    function transferToWallet(address wallet, uint256 amount) external; 
}