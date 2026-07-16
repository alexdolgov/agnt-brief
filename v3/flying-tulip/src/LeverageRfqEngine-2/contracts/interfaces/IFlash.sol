// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface IFlash {
    function onFlash(bytes calldata data) external;
}

/// @notice PositionsManager callback for leverage-style flash flows
///         (e.g., borrow -> callback -> deposit, or withdraw -> callback -> repay).
interface ILeverageFlashCallback {
    function onLeverageFlash(bytes calldata data) external;
}

/// @notice PositionsManager callback for liquidation-style flash flows
///         (seize -> callback -> repay).
interface ILiquidationFlashCallback {
    function onLiquidationFlash(bytes calldata data) external;
}
