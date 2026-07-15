// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Flying Tulip Inc. All rights reserved.
pragma solidity ^0.8.30;

/// @title IAavePoolInstance
/// @notice Minimal Aave Pool interface used by this repository.
/// @dev NatSpec is derived from Aave V3 `IPool` docs.
interface IAavePoolInstance {
    /// @notice Supplies an `amount` of underlying asset into the reserve, receiving in return overlying aTokens.
    /// @dev
    /// - E.g. user supplies 100 USDC and gets in return 100 aUSDC.
    /// - `referralCode` is used to register the integrator originating the operation, for potential rewards.
    /// @param asset The address of the underlying asset to supply.
    /// @param amount The amount to be supplied.
    /// @param onBehalfOf The address that will receive the aTokens (beneficiary).
    /// @param referralCode Code used to register the integrator originating the operation.
    function supply(
        address asset,
        uint256 amount,
        address onBehalfOf,
        uint16 referralCode
    )
        external;

    /// @notice Withdraws an `amount` of underlying asset from the reserve, burning the equivalent aTokens owned.
    /// @dev
    /// - E.g. user has 100 aUSDC, calls withdraw() and receives 100 USDC, burning the 100 aUSDC.
    /// - Send `type(uint256).max` as `amount` in order to withdraw the whole aToken balance.
    /// @param asset The address of the underlying asset to withdraw.
    /// @param amount The underlying amount to be withdrawn.
    /// @param to The address that will receive the underlying.
    /// @return The final amount withdrawn.
    function withdraw(address asset, uint256 amount, address to) external returns (uint256);

    /// @notice Returns the aToken address of a reserve.
    /// @param asset The address of the underlying asset of the reserve.
    /// @return The address of the aToken.
    function getReserveAToken(address asset) external view returns (address);
}
