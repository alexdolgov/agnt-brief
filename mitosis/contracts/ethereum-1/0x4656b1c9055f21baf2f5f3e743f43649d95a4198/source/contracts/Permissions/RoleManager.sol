// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import {
    AccessControlUpgradeable
} from "@openzeppelin-upgrades/contracts/access/AccessControlUpgradeable.sol";
import "./IRoleManager.sol";
import "./RoleManagerStorage.sol";
import "../Errors/Errors.sol";

/**
 * @title RoleManager
 * @author Renzo Protocol
 * @notice Manages roles and permissions for the LiquidVaults protocol
 * @dev Implements AccessControl for managing different admin roles across the protocol
 */
contract RoleManager is IRoleManager, AccessControlUpgradeable, RoleManagerStorageV2 {
    /// @dev Prevents implementation contract from being initialized.
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @dev initializer to call after deployment, can only be called once
    function initialize(address roleManagerAdmin) public initializer {
        if (address(roleManagerAdmin) == address(0x0)) revert InvalidZeroInput();

        __AccessControl_init();

        _grantRole(DEFAULT_ADMIN_ROLE, roleManagerAdmin);
    }

    /// @dev Determines if the specified address has permissions to Rebalance
    /// @param potentialAddress Address to check
    function isRebalanceAdmin(address potentialAddress) external view returns (bool) {
        return hasRole(REBALANCE_ADMIN, potentialAddress);
    }

    /// @dev Determines if the specified address has permissions to Pause
    /// @param potentialAddress Address to check
    function isPauser(address potentialAddress) external view returns (bool) {
        return hasRole(PAUSER, potentialAddress);
    }

    /// @dev Determines if the specified address has permissions to track vault underlying
    /// @param potentialAddress Address to check
    function isExchangeRateAdmin(address potentialAddress) external view returns (bool) {
        return hasRole(EXCHANGE_RATE_ADMIN, potentialAddress);
    }

    /// @dev Determines if the specified address has permissions to process orders
    /// @param potentialAddress Address to check
    function isOrderAdmin(address potentialAddress) external view returns (bool) {
        return hasRole(ORDER_ADMIN, potentialAddress);
    }

    /// @dev Determines if the specified address has permissions to process orders
    /// @param potentialAddress Address to check
    function isMinter(address potentialAddress) external view returns (bool) {
        return hasRole(MINTER, potentialAddress);
    }
}
