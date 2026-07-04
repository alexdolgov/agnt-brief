// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Permissioned pool actions
/// @notice Contains pool methods that may only be called by the factory owner
interface ICLPoolOwnerActions {
    /// @notice Collect the gauge fee accrued to the pool
    /// @return amount The gauge fee collected in token
    function collectFee(bool isTokenZero) external returns (uint128 amount);
}