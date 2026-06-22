// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @notice Subset of the deployed HookAccessControl wrapper we call from new contracts.
/// Deployed at 0xfa777E9Acf1a2F447616faA66aB868373c8C1cc9 on BSC.
/// All functions below require BALANCE_MANAGER_ROLE on the wrapper.
interface IHookAccessControl {
    function adjustUserBuyBalance(address user, int256 adjustment) external;
    function getUserBuyBalance(address user) external view returns (uint256);
    function BALANCE_MANAGER_ROLE() external view returns (bytes32);
    function hasRole(bytes32 role, address account) external view returns (bool);
}
