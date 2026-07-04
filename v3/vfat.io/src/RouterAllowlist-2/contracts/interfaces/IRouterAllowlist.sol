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

    /// @notice Check if a factory is allowed
    /// @param factory The factory address to check
    /// @return True if the factory is allowed
    function isAllowedFactory(address factory) external view returns (bool);

    /// @notice Revert if the factory is not allowed
    /// @param factory The factory address to check
    function requireAllowedFactory(address factory) external view;

    /// @notice Check if a custom pool deployer is allowed for a factory
    /// @param factory The factory address to check
    /// @param deployer The custom pool deployer address to check
    /// @return True if the custom deployer is allowed for the factory
    function isAllowedCustomDeployer(address factory, address deployer) external view returns (bool);

    /// @notice Revert if the custom pool deployer is not allowed for a factory
    /// @param factory The factory address to check
    /// @param deployer The custom pool deployer address to check
    function requireAllowedCustomDeployer(address factory, address deployer) external view;

    /// @notice Check if a v4 hook is allowed
    /// @param hook The hook address to check
    /// @return True if the hook is allowed
    function isAllowedHook(address hook) external view returns (bool);

    /// @notice Revert if the v4 hook is not allowed
    /// @param hook The hook address to check
    function requireAllowedHook(address hook) external view;
}
