// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface IRouterAllowlist {
    /// @notice Check if a router is allowed
    /// @param router The router address to check
    /// @return True if the router is allowed
    function isAllowed(address router) external view returns (bool);

    /// @notice Revert if the router is not allowed
    /// @param router The router address to check
    function requireAllowed(address router) external view;
}
