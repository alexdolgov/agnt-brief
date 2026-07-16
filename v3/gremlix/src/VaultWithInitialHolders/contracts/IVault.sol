// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * @title IVault
 * @notice Minimal interface for interacting with the Vault from keeper contracts.
 */
interface IVault {
    // ─── View ─────────────────────────────────────────────────────────────

    function totalAssets() external view returns (uint256);
    function idleAssets() external view returns (uint256);
    function deployedValue() external view returns (uint256);

    // ─── Keeper Operations ────────────────────────────────────────────────

    function allocate(address strategy, uint256 amount) external;
    function deallocateAllAvailable(address strategy) external returns(uint256);
    function deallocate(address strategy, uint256 amount) external;
    function harvest(address strategy) external;
}
