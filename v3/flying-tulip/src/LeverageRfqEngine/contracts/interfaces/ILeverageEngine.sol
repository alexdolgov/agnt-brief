// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

/// @title ILeverageEngine
/// @notice External leverage engine that orchestrates multi-step borrow/swap/deposit and
///         withdraw/swap/repay flows against PositionsManager.
/// @dev The engine is expected to be allowlisted as both an `engine` and a `metaModule` in
///      PositionsManager so it can:
///       - lock PM reentrancy during callbacks (engine)
///       - call PM-only leverage primitives (metaModule)
interface ILeverageEngine {
    // -------- User entrypoints (user == msg.sender) --------

    /// @notice Lending-mode: borrow `borrowAsset`, execute callback, then deposit received collateral.
    /// @dev The engine borrows to itself, approves `callbackTarget` for `borrowAmount`, executes callback,
    ///      then deposits any `collateralAsset` received by the engine into PositionsManager for the user.
    ///      The callback MUST transfer `collateralAsset` to the engine.
    function borrowAndDepositVia(
        address borrowAsset,
        uint256 borrowAmount,
        address collateralAsset,
        uint256 minCollateralAmount,
        address callbackTarget,
        bytes calldata callbackData
    )
        external;

    /// @notice Lending-mode: withdraw collateral, execute callback, then repay debt with received tokens.
    /// @dev The engine withdraws to itself, approves `callbackTarget` for `collateralAmount`, executes callback,
    ///      then repays as much of `repayAsset` debt as possible using tokens received by the engine.
    ///      Any leftover `repayAsset` is deposited as collateral for the user.
    ///      The callback MUST transfer `repayAsset` to the engine.
    function withdrawAndRepayVia(
        address collateralAsset,
        uint256 collateralAmount,
        address repayAsset,
        uint256 minRepayAmount,
        address callbackTarget,
        bytes calldata callbackData
    )
        external;

    /// @notice MarginClosed-mode: borrow in-system, execute callback, then deposit received collateral.
    /// @dev `callbackTarget` must be an allowlisted engine in PositionsManager. Callback MUST transfer
    ///      `collateralAsset` to the leverage engine.
    function borrowAndDepositViaClosed(
        address borrowAsset,
        uint256 borrowAmount,
        address collateralAsset,
        uint256 minCollateralAmount,
        address callbackTarget,
        bytes calldata callbackData
    )
        external;

    /// @notice MarginClosed-mode: withdraw in-system, execute callback, then repay with received tokens.
    /// @dev `callbackTarget` must be an allowlisted engine in PositionsManager. Callback MUST transfer
    ///      `repayAsset` to the leverage engine.
    function withdrawAndRepayViaClosed(
        address collateralAsset,
        uint256 collateralAmount,
        address repayAsset,
        uint256 minRepayAmount,
        address callbackTarget,
        bytes calldata callbackData
    )
        external;
}
