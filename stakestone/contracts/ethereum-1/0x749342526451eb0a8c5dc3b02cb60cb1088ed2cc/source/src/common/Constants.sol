// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title Constants
/// @author luoyhang003
/// @notice Provides commonly used mathematical and configuration constants
/// @dev Designed to be inherited by other contracts that require fixed values
abstract contract Constants {
    /// @notice Scaling factor for 18-decimal precision (commonly used in ERC20 tokens)
    /// @dev Equal to 10^18
    uint256 internal constant D18 = 1e18;

    /// @notice Scaling factor for 6-decimal precision
    /// @dev Equal to 10^6
    uint256 internal constant D6 = 1e6;

    /// @notice Default number of decimals used for calculations
    /// @dev Typically corresponds to 18-decimal precision
    uint256 internal constant BASE_DECIMALS = 18;

    /// @notice Denominator used for fee calculations
    /// @dev Basis point system: denominator = 10,000 (e.g., 100 = 1%)
    uint256 internal constant FEE_DENOMINATOR = 1e4;

    /// @notice Denominator for basis points calculations (10000 = 100%)
    /// @dev Basis point system: denominator = 10,000 (e.g., 100 = 1%)
    uint256 internal constant BPS_DENOMINATOR = 1e4;

    /// @notice Initial exchange price for tokenized vault lp
    /// @dev Set to 1 * 10^18 (represents a price of 1.0 in 18 decimals)
    uint256 internal constant INIT_EXCHANGE_PRICE = 1e18;

    /// @notice The base reference price for a stablecoin, normalized to 18 decimals.
    /// @dev Set to 1 * 10^18 (represents a price of 1.0 in 18 decimals)
    uint256 internal constant STABLECOIN_BASE_PRICE = 1e18;
}
