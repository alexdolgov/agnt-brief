// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title RebalanceData
 * @notice Struct containing data required for rebalancing operations in vault strategies
 * @dev This struct is used to encapsulate all necessary information for executing
 *      rebalance operations, including whether to increase or decrease positions,
 *      the amount to rebalance, and any additional data needed for the operation.
 */
struct RebalanceData {
    /**
     * @notice The expected market ID to rebalance
     * @dev This will be used as a sanity check to ensure that
     *      the rebalance is being executed on the correct market
     */
    bytes32 marketId;
    /**
     * @notice Flag indicating whether this is an increase or decrease operation
     * @dev true = increase position, false = decrease position
     */
    bool isIncrease;
    /**
     * @notice The amount to rebalance in base units (e.g., wei for ETH)
     * @dev Must be greater than 0 for valid operations
     */
    uint256 amount;
    /**
     * @notice Additional data required for the rebalance operation
     * @dev This field can contain protocol-specific parameters, slippage settings,
     *      or any other data needed by the target adapter or strategy
     */
    bytes extraData;
}

/**
 * @title RebalanceAssetsPerShare
 * @notice Struct containing assets per share data required for rebalancing operations
 * @dev This struct is used to encapsulate all necessary assets per share data for executing
 *      rebalance operations, including the initial, final, and withdraw assets per share for the vault
 *      and collateral tokens.
 */
struct RebalanceAssetsPerShare {
    uint256 vaultDepositAssetsPerShare;
    uint256 vaultWithdrawAssetsPerShare;
    uint256 morphoBorrowAssetsPerShare;
    uint256 morphoRepayAssetsPerShare;
    uint256 wrappedCollateralAssetsPerShare;
}

/**
 * @title StoredRebalanceAssetsPerShare
 * @notice Parameters for vault and morpho market assets per share
 * @param vaultDepositAssetsPerShare Assets per share of the vault after Safe deposit
 * @param vaultWithdrawAssetsPerShare Assets per share of the vault after the withdraw
 * @param morphoBorrowAssetsPerShare Assets per share of the morpho market after the borrow
 * @param morphoRepayAssetsPerShare Assets per share of the morpho market after the repay
 * @param wrappedCollateralAssetsPerShare Assets per share of the collateral
 */
struct StoredRebalanceAssetsPerShare {
    uint256 vaultDepositAssetsPerShare;
    uint256 vaultWithdrawAssetsPerShare;
    uint256 morphoBorrowAssetsPerShare;
    uint256 morphoRepayAssetsPerShare;
    uint256 wrappedCollateralAssetsPerShare;
}
