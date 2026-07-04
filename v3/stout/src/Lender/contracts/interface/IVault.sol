// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Rebase} from "../library/AuxRebase.sol";
import {IERC20Custom} from "./IERC20Custom.sol";

/**
 * @title IVault
 * @dev Interface for advanced vault operations with elastic share system
 * @notice Defines functionality for:
 * 1. Token custody and management
 * 2. Share-based accounting
 * 3. Elastic supply mechanics
 * 4. Amount/share conversions
 */
interface IVault {
    /*//////////////////////////////////////////////////////////////
                        DEPOSIT OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Processes token deposits into vault
     * @param token Token contract to deposit
     * @param from Source of tokens
     * @param to Recipient of shares
     * @param amount Token amount (in base units, 0 for share-based)
     * @param share Share amount (0 for amount-based)
     * @return amountIn Actual tokens deposited
     * @return shareIn Actual shares minted
     * @dev Handles:
     * · Token transfers
     * · Share minting
     * · Balance updates
     *
     * Requirements:
     * · Valid token contract
     * · Authorized caller
     * · Sufficient balance
     * · Either amount or share > 0
     *
     * Note: Only one of amount/share should be non-zero
     */
    function deposit(
        IERC20Custom token,
        address from,
        address to,
        uint256 amount,
        uint256 share
    ) external returns (uint256 amountIn, uint256 shareIn);

    /*//////////////////////////////////////////////////////////////
                        WITHDRAWAL OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Processes token withdrawals from vault
     * @param token Token contract to withdraw
     * @param from Source of shares
     * @param to Recipient of tokens
     * @param amount Token amount (in base units, 0 for share-based)
     * @param share Share amount (0 for amount-based)
     * @return amountOut Actual tokens withdrawn
     * @return shareOut Actual shares burned
     * @dev Manages:
     * · Share burning
     * · Token transfers
     * · Balance updates
     *
     * Requirements:
     * · Valid token contract
     * · Sufficient shares
     * · Either amount or share > 0
     * · Authorized withdrawal
     *
     * Security:
     * · Validates balances
     * · Checks permissions
     * · Updates state atomically
     */
    function withdraw(
        IERC20Custom token,
        address from,
        address to,
        uint256 amount,
        uint256 share
    ) external returns (uint256 amountOut, uint256 shareOut);

    /*//////////////////////////////////////////////////////////////
                        SHARE TRANSFERS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Transfers vault shares between accounts
     * @param token Associated token contract
     * @param from Source of shares
     * @param to Recipient of shares
     * @param share Amount of shares to transfer
     * @dev Executes:
     * · Direct share movement
     * · Balance updates
     * · Event emission
     *
     * Requirements:
     * · Sufficient share balance
     * · Valid addresses
     * · Share amount > 0
     *
     * Note: Bypasses amount calculations for efficiency
     */
    function transfer(
        IERC20Custom token,
        address from,
        address to,
        uint256 share
    ) external;

    /*//////////////////////////////////////////////////////////////
                        BALANCE QUERIES
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Retrieves account's vault share balance
     * @param token Token contract to query
     * @param account Address to check
     * @return uint256 Share balance
     * @dev Provides:
     * · Raw share balance
     * · Without conversion
     * · Current state
     *
     * Use toAmount() to convert to token amount
     */
    function balanceOf(
        IERC20Custom token,
        address account
    ) external view returns (uint256);

    /*//////////////////////////////////////////////////////////////
                        CONVERSION OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Converts token amount to vault shares
     * @param token Token contract for conversion
     * @param amount Amount of tokens to convert
     * @param roundUp Whether to round up result
     * @return share Equivalent share amount
     * @dev Calculates:
     * · Share equivalent
     * · Based on totals
     * · Handles precision
     *
     * Rounding:
     * true = ceiling (≥)
     * false = floor (≤)
     */
    function toShare(
        IERC20Custom token,
        uint256 amount,
        bool roundUp
    ) external view returns (uint256 share);

    /**
     * @notice Converts vault shares to token amount
     * @param token Token contract for conversion
     * @param share Amount of shares to convert
     * @param roundUp Whether to round up result
     * @return amount Equivalent token amount
     * @dev Calculates:
     * · Token equivalent
     * · Based on totals
     * · Handles precision
     *
     * Rounding:
     * true = ceiling (≥)
     * false = floor (≤)
     */
    function toAmount(
        IERC20Custom token,
        uint256 share,
        bool roundUp
    ) external view returns (uint256 amount);

    /**
     * @notice Gets the list of active controllers
     * @return Array of controller addresses
     */
    function getControllers() external view returns (address[] memory);

    /*//////////////////////////////////////////////////////////////
                            VAULT TOTALS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Retrieves vault's total supply tracking
     * @param token Token contract to query
     * @return vaultTotals Rebase struct containing:
     * · elastic: Total token amount
     * · base: Total shares
     * @dev Provides:
     * · Current vault state
     * · Supply tracking
     * · Conversion basis
     *
     * Used for:
     * · Share calculations
     * · Amount conversions
     * · State validation
     */
    function totals(
        IERC20Custom token
    ) external view returns (Rebase memory vaultTotals);
}
