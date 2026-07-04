// SPDX-License-Identifier: none
pragma solidity 0.8.24;


interface ITellerWithMultiAssetSupport {

    function deposit(address depositAsset, uint256 depositAmount, uint256 minimumMint) external payable returns (uint256 shares);

}