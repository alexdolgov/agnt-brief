// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";

/**
 * @title IRebasingToken
 * @notice Interface for rebasing tokens that automatically adjust balances based on an assets-per-share ratio
 * @dev Extends IERC20Upgradeable and adds rebasing-specific functionality
 */
interface IRebasingToken is IERC20 {
    /**
     * @notice Returns the raw share balance for an account, including pending deposit shares
     * @param account Address to check shares for
     * @return Total shares owned by the account
     */
    function sharesOf(address account) external view returns (uint256);

    /**
     * @notice Converts an asset amount to shares using the provided assets per share ratio
     * @param assets Amount of assets to convert
     * @param _assetsPerShare Current assets per share ratio
     * @return Amount of shares equivalent to the input assets
     */
    function convertToShares(uint256 assets, uint256 _assetsPerShare) external pure returns (uint256);

    /**
     * @notice Converts a share amount to assets using the provided assets per share ratio
     * @param shares Amount of shares to convert
     * @param _assetsPerShare Current assets per share ratio
     * @return Amount of assets equivalent to the input shares
     */
    function convertToAssets(uint256 shares, uint256 _assetsPerShare) external pure returns (uint256);

    /**
     * @notice Returns the current assets per share ratio
     * @return Current ratio of assets to shares
     */
    function assetsPerShare() external view returns (uint256);

    /**
     * @notice Returns the amount of shares pending from deposits for a user
     * @param account Address to check pending shares for
     * @return Amount of pending shares
     */
    function pendingDepositShares(address account) external view returns (uint256);

    /**
     * @notice Returns the precision used for calculations
     * @return Precision value (typically 1e18)
     */
    function PRECISION() external pure returns (uint256);
} 