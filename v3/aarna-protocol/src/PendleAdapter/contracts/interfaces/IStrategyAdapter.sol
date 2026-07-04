// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title IStrategyAdapter
 * @notice A generic interface for strategy adapters that report the
 * total value of assets they are tracking and can execute deposits.
 */
interface IStrategyAdapter {
    /**
     * @notice Returns the Total Value Locked (TVL) tracked by this adapter.
     * @return The total value, scaled to 18 decimals of precision.
     */
    function getTVL() external view returns (uint256);

    /**
     * @notice Returns the Total Assets tracked by this adapter.
     * @return The total value, scaled to 18 decimals of precision.
     */
    function getTotalAssets() external view returns (uint256);
}
