// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

/**
 * @title IAdapter
 * @notice Investment adapter interface for connecting different investment targets and protocols
 * @dev Implement this interface to support various investment channels (RWA, DeFi protocols, traditional financial products, etc.)
 */
interface IAdapter {
    /**
     * @notice Get total assets managed by the adapter, converted to the specified token amount
     * @dev Query actual asset balance in the investment target
     * @param token The token contract address to convert to
     * @return Total asset amount denominated in the specified token
     */
    function totalAssets(address token) external view returns (uint256);
}
