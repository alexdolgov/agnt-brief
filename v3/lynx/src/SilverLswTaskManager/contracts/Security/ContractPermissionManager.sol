// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "./TimelockProtection.sol";

/**
 * @title ContractPermissionManager
 * @author github.com/SifexPro
 * @notice Contract managing access control between Silver LSW protocol contracts
 * @dev Centralizes permission management for cross-contract calls
 */
contract ContractPermissionManager is AccessControl, Ownable2Step, TimelockProtection {
    // ============ Role Definitions ============
    bytes32 public constant SILVER_LSW_MANAGER_ROLE = keccak256("SILVER_LSW_MANAGER_ROLE");
    bytes32 public constant SILVER_LSW_TASK_MANAGER_ROLE = keccak256("SILVER_LSW_TASK_MANAGER_ROLE");
    bytes32 public constant POOL_LOCKER_ROLE = keccak256("POOL_LOCKER_ROLE");
    bytes32 public constant GAUGE_MANAGER_ROLE = keccak256("GAUGE_MANAGER_ROLE");
    bytes32 public constant SILVER_STAKE_ROLE = keccak256("SILVER_STAKE_ROLE");
    
    // ============ Role mapping ============
    mapping(bytes32 => address) private roleToAddress;
    
    // ============ Events ============
    event ContractRoleGranted(bytes32 indexed role, address indexed account);
    event ContractRoleRevoked(bytes32 indexed role, address indexed account);

    // ============ Constructor ============
    constructor(
        address _timelockMain,
        address _timelockAdmin
    ) Ownable(msg.sender) TimelockProtection(_timelockMain, _timelockAdmin) {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    // ============ Admin Functions ============
    
    /**
     * @notice Grants a contract role to an account
     * @dev Protected by main timelock due to critical security implications
     * @param role The role to grant
     * @param account The account to grant the role to
     */
    function grantContractRole(bytes32 role, address account) external requireTimelockMain {
        require(account != address(0), "ContractPermissionManager: Invalid address");
        _grantRole(role, account);
        roleToAddress[role] = account;
        emit ContractRoleGranted(role, account);
    }
    
    /**
     * @notice Revokes a contract role from an account
     * @dev Protected by main timelock due to critical security implications
     * @param role The role to revoke
     * @param account The account to revoke the role from
     */
    function revokeContractRole(bytes32 role, address account) external requireTimelockMain {
        require(account != address(0), "ContractPermissionManager: Invalid address");
        _revokeRole(role, account);
        if (roleToAddress[role] == account) {
            delete roleToAddress[role];
        }
        emit ContractRoleRevoked(role, account);
    }

    // ============ View Functions ============
    
    /**
     * @notice Gets the address assigned to a specific role
     * @param role The role to get the address for
     * @return The address assigned to the role
     */
    function getRoleAddress(bytes32 role) external view returns (address) {
        return roleToAddress[role];
    }
    
    /**
     * @notice Checks if an account has a contract role
     * @param role The role to check
     * @param account The account to check
     * @return True if the account has the role
     */
    function hasContractRole(bytes32 role, address account) external view returns (bool) {
        return hasRole(role, account);
    }
} 