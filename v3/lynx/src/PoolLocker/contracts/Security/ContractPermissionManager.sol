// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";

/**
 * @title ContractPermissionManager
 * @author github.com/SifexPro
 * @notice Contract managing access control between Silver LSW protocol contracts
 * @dev Centralizes permission management for cross-contract calls
 */
contract ContractPermissionManager is AccessControl, Ownable2Step {
    // ============ Role Definitions ============
    bytes32 public constant SILVER_LSW_MANAGER_ROLE = keccak256("SILVER_LSW_MANAGER_ROLE");
    bytes32 public constant POOL_LOCKER_ROLE = keccak256("POOL_LOCKER_ROLE");
    bytes32 public constant GAUGE_MANAGER_ROLE = keccak256("GAUGE_MANAGER_ROLE");
    bytes32 public constant SILVER_STAKE_ROLE = keccak256("SILVER_STAKE_ROLE");//// ?
    bytes32 public constant VALIDATOR_AUTH_ROLE = keccak256("VALIDATOR_AUTH_ROLE");//// ?
    bytes32 public constant SILVER_VOTE_LSW_ROLE = keccak256("SILVER_VOTE_LSW_ROLE");//// ?
    
    // ============ Role mapping ============
    mapping(bytes32 => address) private roleToAddress;
    
    // ============ Events ============
    event ContractRoleGranted(bytes32 indexed role, address indexed account);
    event ContractRoleRevoked(bytes32 indexed role, address indexed account);

    // ============ Constructor ============
    constructor() Ownable(msg.sender) {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    // ============ Admin Functions ============
    
    /**
     * @notice Set a contract address for a specific role
     * @dev Revokes role from previous account if it exists
     * @param role The role identifier
     * @param account The contract address to grant the role to
     */
    function setContractRole(bytes32 role, address account) external onlyOwner {
        require(account != address(0), "Zero address not allowed");
        
        address previousAccount = roleToAddress[role];
        if (previousAccount != address(0)) {
            _revokeRole(role, previousAccount);
        }
        
        _grantRole(role, account);

        roleToAddress[role] = account;
        
        emit ContractRoleGranted(role, account);
    }
    
    /**
     * @notice Revoke a role from a specific account
     * @param role The role identifier
     * @param account The address to revoke the role from
     */
    function revokeContractRole(bytes32 role, address account) external onlyOwner {
        require(roleToAddress[role] == account, "Account does not have this role");
        
        _revokeRole(role, account);
        
        delete roleToAddress[role];
        
        emit ContractRoleRevoked(role, account);
    }

    // ============ View Functions ============
    
    /**
     * @notice Get the address that has a specific role
     * @param role The role to query
     * @return The address with the role
     */
    function getRoleAddress(bytes32 role) public view returns (address) {
        return roleToAddress[role];
    }
    
    /**
     * @notice Checks if an account has a specific role
     * @param role The role to check
     * @param account The account to check
     * @return True if the account has the role
     */
    function hasContractRole(bytes32 role, address account) external view returns (bool) {
        return hasRole(role, account);
    }
} 