// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/// @notice ISUSDe represents a staked USDe contract
interface ISUSDe {
    /**
     * @notice Get amount of USDe for a sUSDe shares
     * @return Amount of USDe for sUSDe shares
     */
    function convertToAssets(uint256 shares) external view returns (uint256);
}
