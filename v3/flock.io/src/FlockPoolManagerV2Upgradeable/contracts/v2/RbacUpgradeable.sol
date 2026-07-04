// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "../AdminUpgradeable.sol";

/**
 * @title RbacUpgradeable
 * @notice Base class for all the contracts which need convenience methods to operate RBAC rights
 * @author Ryon
 */
abstract contract RbacUpgradeable is AdminUpgradeable {

    bytes32 public constant DAO_ADMIN =keccak256("DAO_ADMIN");
    bytes32 public constant PROTOCOL_MANAGER = keccak256("PROTOCOL_MANAGER");
    bytes32 public constant REWARD_OPERATOR = keccak256("REWARD_OPERATOR");


    /**
     * @notice Initialize the contract
     * @param deployer The deployer address
     */
    function __RbacUpgradeable_init(address deployer) internal onlyInitializing {
        __AdminUpgradeable_init(deployer);
        _setupRole(DAO_ADMIN, deployer);
    }


    /**
     * @notice Only top hat users can perform
     */
    modifier onlyDaoAdmin() {
        require(hasRole(DAO_ADMIN, msg.sender), "Restricted to dao admin");
        _;
    }

    /**
     * @notice Only protocol council users can perform
     */
    modifier onlyProtocolManager() {
        require(hasRole(PROTOCOL_MANAGER, msg.sender), "Restricted to protocol manager");
        _;
    }

    /**
     * @notice Only reward operator users can perform
     */
    modifier onlyRewardOperator() {
        require(hasRole(REWARD_OPERATOR, msg.sender), "Restricted to reward operator");
        _;
    }


    /**
     * @notice Add the account to top hat users
     * @param account The account to add
     */
    function addDaoAdmin(address account) external virtual onlyDaoAdmin {
        grantRole(DAO_ADMIN, account);
    }


    /**
     * @notice Add the account to protocol council users
     * @param account The account to add
     */
    function addProtocolManager(address account) external virtual onlyDaoAdmin {
        grantRole(PROTOCOL_MANAGER, account);
    }

    /**
     * @notice Add the account to reward operator users
     * @param account The account to add
     */
    function addRewardOperator(address account) external virtual onlyDaoAdmin {
        grantRole(REWARD_OPERATOR, account);
    }


    /**
     * @notice Renounce top hat from the caller
     */
    function renounceDaoAdmin() external virtual {
        renounceRole(DAO_ADMIN, msg.sender);
    }

    /**
     * @notice Renounce protocol council from the caller
     */
    function renounceProtocolManager() external virtual {
        renounceRole(PROTOCOL_MANAGER, msg.sender);
    }

    /**
     * @notice Renounce reward operator from the caller
     */
    function renounceRewardOperator() external virtual {
        renounceRole(REWARD_OPERATOR, msg.sender);
    }
}
