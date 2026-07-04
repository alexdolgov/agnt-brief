// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

/// @title Constants for the UniPool Factory
library UniPoolFactoryConstants {
    /// @notice The base unit used to express basis points throughout the system.
    uint16 internal constant BASE_BPS = 10_000;

    /// @notice Default liquidity provider fee in basis points (4.25%).
    uint16 internal constant DEFAULT_FEE_LP_BPS = 425;

    /// @notice Default protocol fee in basis points (0.75%).
    uint16 internal constant DEFAULT_FEE_POOL_BPS = 75;

    /// @notice Default burn fee in basis points (0.1%).
    uint16 internal constant DEFAULT_BURN_FEE_BPS = 10;

    /// @notice Default loan fee in basis points (0.01%).
    uint16 internal constant DEFAULT_LOAN_FEE_BPS = 1;

    /// @notice Default protocol fee taken on paid interests (15%).
    uint16 internal constant DEFAULT_INTEREST_PROTOCOL_FEE_BPS = 1500;

    /// @notice Default optimal utilization rate for lending in basis points (90%).
    uint16 internal constant DEFAULT_OPTIMAL_POINT_BPS = 9000;

    /// @notice Default base interest rate for lending in basis points (0%).
    uint32 internal constant DEFAULT_INTEREST_RATE_BASE_BPS = 0;

    /// @notice Default interest rate at optimal utilization in basis points (15%).
    uint32 internal constant DEFAULT_INTEREST_RATE_OPTIMAL_BPS = 1500;

    /// @notice Default additional interest rate at the maximum utilization rate in basis points (185%).
    uint32 internal constant DEFAULT_INTEREST_RATE_ADD_BPS = 18_500;

    /// @notice Maximum ratio of all liquidity that can be borrowed in basis points (85%).
    uint16 internal constant DEFAULT_BORROW_LIMIT_BPS = 8500;

    /// @notice Liquidation penalty in basis points (15%).
    uint16 internal constant DEFAULT_LIQUIDATION_PENALTY_BPS = 1500;

    /// @notice Maximum borrow per tick in basis points (400%).
    uint32 internal constant DEFAULT_MAX_BORROW_PER_TICK_BPS = 40_000;

    /// @notice Maximum borrow per tick in basis points (105%).
    uint32 internal constant DEFAULT_MAX_BORROW_PER_TICK_RANGE_BPS = 10_500;

    /// @notice Default price decay factor (120 seconds).
    uint128 internal constant DEFAULT_PRICE_DECAY = 120;

    /// @notice Default price spread tolerance in basis points (10%).
    uint16 internal constant DEFAULT_SWAP_PRICE_TOLERANCE_BPS = 1000;

    /// @notice Minimum price spread tolerance in basis points (1%).
    uint16 internal constant MIN_SWAP_PRICE_TOLERANCE_BPS = 100;

    /// @notice Maximum allowed protocol fee taken on paid interests (90%).
    uint16 internal constant MAX_INTEREST_PROTOCOL_FEE_BPS = 9000;

    /// @notice Maximum allowed combined interest rate in basis points (20'000%).
    uint32 internal constant MAX_INTEREST_RATE_BPS = 2_000_000;

    /// @notice Maximum liquidation penalty in basis points (40%).
    uint16 internal constant MAX_LIQUIDATION_PENALTY_BPS = 4000;

    /// @notice Maximum allowed combined fee (liquidity providers + protocol) in basis points (40%).
    uint16 internal constant MAX_COMBINED_FEES_BPS = 4000;

    /// @notice Maximum burn fee in basis points (20%).
    uint16 internal constant MAX_BURN_FEE_BPS = 2000;

    /// @notice Maximum loan fee in basis points (10%).
    uint16 internal constant MAX_LOAN_FEE_BPS = 1000;

    /// @notice Maximum borrow per tick in basis points (2000%).
    uint32 internal constant MAX_BORROW_PER_TICK_BPS = 200_000;

    /// @notice Maximum borrow per tick range in basis points (1000%).
    uint32 internal constant MAX_BORROW_PER_TICK_RANGE_BPS = 100_000;

    /// @notice Maximum allowed price decay period in seconds (1 hour).
    uint128 internal constant MAX_PRICE_DECAY = 3600;
}
