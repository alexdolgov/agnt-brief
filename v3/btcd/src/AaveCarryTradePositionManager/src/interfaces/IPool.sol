// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/// @notice Configuration bitmap for a single reserve, as returned by getReserveData.
struct ReserveConfigurationMap {
    uint256 data;
}

/// @notice Aggregate reserve state returned by IPool.getReserveData. Only the rate
///         fields (currentLiquidityRate, currentVariableBorrowRate) are consumed
///         by our strategy's rate-info view; the other fields are present for
///         ABI compatibility with the canonical Aave V3 Pool.
struct ReserveData {
    ReserveConfigurationMap configuration;
    uint128 liquidityIndex;
    uint128 currentLiquidityRate;          // RAY per annum
    uint128 variableBorrowIndex;
    uint128 currentVariableBorrowRate;     // RAY per annum
    uint128 currentStableBorrowRate;
    uint40 lastUpdateTimestamp;
    uint16 id;
    address aTokenAddress;
    address stableDebtTokenAddress;
    address variableDebtTokenAddress;
    address interestRateStrategyAddress;
    uint128 accruedToTreasury;
    uint128 unbacked;
    uint128 isolationModeTotalDebt;
}

/// @title IPool
/// @notice Minimal interface for the Aave V3 Pool contract.
/// @dev Only includes methods used by AaveCarryTradePositionManager.
interface IPool {
    /// @notice Returns the aggregated reserve state for `asset`, including the
    ///         current liquidity (supply) rate and variable borrow rate in RAY
    ///         per annum (1e27 scale).
    function getReserveData(address asset) external view returns (ReserveData memory);

    /// @notice Supply an amount of asset to the pool.
    /// @param asset The address of the underlying asset to supply
    /// @param amount The amount to supply
    /// @param onBehalfOf The address that will receive the aTokens
    /// @param referralCode Referral code (0 for no referral)
    function supply(address asset, uint256 amount, address onBehalfOf, uint16 referralCode) external;

    /// @notice Withdraw an amount of asset from the pool.
    /// @param asset The address of the underlying asset to withdraw
    /// @param amount The amount to withdraw (type(uint256).max for full balance)
    /// @param to The address that will receive the underlying asset
    /// @return The final amount withdrawn
    function withdraw(address asset, uint256 amount, address to) external returns (uint256);

    /// @notice Borrow an amount of asset from the pool.
    /// @param asset The address of the underlying asset to borrow
    /// @param amount The amount to borrow
    /// @param interestRateMode The interest rate mode (2 = variable)
    /// @param referralCode Referral code (0 for no referral)
    /// @param onBehalfOf The address that will incur the debt
    function borrow(
        address asset,
        uint256 amount,
        uint256 interestRateMode,
        uint16 referralCode,
        address onBehalfOf
    ) external;

    /// @notice Repay a borrowed amount.
    /// @param asset The address of the borrowed underlying asset
    /// @param amount The amount to repay (type(uint256).max for full debt)
    /// @param interestRateMode The interest rate mode (2 = variable)
    /// @param onBehalfOf The address of the borrower whose debt is being repaid
    /// @return The final amount repaid
    function repay(
        address asset,
        uint256 amount,
        uint256 interestRateMode,
        address onBehalfOf
    ) external returns (uint256);

    /// @notice Enable or disable a specific supplied asset as collateral.
    /// @param asset The address of the underlying asset
    /// @param useAsCollateral True to use as collateral, false to disable
    function setUserUseReserveAsCollateral(address asset, bool useAsCollateral) external;

    /// @notice Get the overall position data of a user across all reserves.
    /// @param user The address of the user
    /// @return totalCollateralBase Total collateral in base currency (USD, 8 decimals)
    /// @return totalDebtBase Total debt in base currency (USD, 8 decimals)
    /// @return availableBorrowsBase Available borrows in base currency (USD, 8 decimals)
    /// @return currentLiquidationThreshold Weighted average liquidation threshold (bps)
    /// @return ltv Weighted average LTV (bps)
    /// @return healthFactor Health factor (1e18 scale, < 1e18 means liquidatable)
    function getUserAccountData(
        address user
    )
        external
        view
        returns (
            uint256 totalCollateralBase,
            uint256 totalDebtBase,
            uint256 availableBorrowsBase,
            uint256 currentLiquidationThreshold,
            uint256 ltv,
            uint256 healthFactor
        );
}
