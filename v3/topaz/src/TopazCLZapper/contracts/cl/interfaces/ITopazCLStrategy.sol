// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @notice The surface the TopazCLVault uses to drive its strategy.
/// @dev Mirrors Beefy's `IStrategyConcLiq`. Every vault deposit/withdraw
///      round-trips `beforeAction()` (evacuate to idle) → token transfer →
///      `deposit()` / `withdraw()` (re-deploy).
interface ITopazCLStrategy {
    function balances() external view returns (uint256 amount0, uint256 amount1);

    function beforeAction() external;

    function deposit() external;

    function withdraw(uint256 amount0, uint256 amount1) external;

    function pool() external view returns (address);

    function lpToken0() external view returns (address);

    function lpToken1() external view returns (address);

    function isCalm() external view returns (bool);

    function swapFee() external view returns (uint256);

    function price() external view returns (uint256);

    function tickSpacing() external view returns (int24);
}
