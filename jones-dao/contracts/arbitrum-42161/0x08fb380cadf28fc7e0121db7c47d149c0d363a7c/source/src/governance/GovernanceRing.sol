// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {AccessControlUpgradeable} from "@openzeppelin-upgrades/access/AccessControlUpgradeable.sol";

contract GovernanceRing is AccessControlUpgradeable {
    /**
     * @notice Roles
     */
    bytes32 public constant GOVERNOR = bytes32("GOVERNOR");
    bytes32 public constant SOFT_GOVERNOR = bytes32("SOFT_GOVERNOR");
    bytes32 public constant KEEPER = bytes32("KEEPER");

    address public gov;
    address public softGov;

    mapping(bytes32 => mapping(bytes4 => bool)) public functionPermissions;

    /* -------------------------------------------------------------------------- */
    /*                                    INIT                                    */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Initialize Creator contract.
     */
    function initialize(address _gov, address _softGov) external initializer {
        __AccessControl_init();
        _setupRole(GOVERNOR, _gov);
        _setupRole(SOFT_GOVERNOR, _softGov);
        _setRoleAdmin(GOVERNOR, GOVERNOR);
        _setRoleAdmin(SOFT_GOVERNOR, GOVERNOR);
        _setRoleAdmin(KEEPER, SOFT_GOVERNOR);

        gov = _gov;
        softGov = _softGov;
    }

    /* -------------------------------------------------------------------------- */
    /*                                  GENERAL                                   */
    /* -------------------------------------------------------------------------- */

    // 0 -> Gov
    // 1 -> Soft Gov
    // 2 -> keeper

    function callContract(address _contract, bytes calldata _data) public {
        bytes4 selector;
        assembly {
            selector := calldataload(_data.offset)
        }

        _callCheck(selector);

        (bool success,) = _contract.call(_data);
        require(success, "Call Failed");
    }

    function callContractMultiple(address[] calldata _contracts, bytes[] calldata _data) external {
        require(_contracts.length == _data.length, "Invalid Input");

        for (uint256 i = 0; i < _contracts.length; i++) {
            callContract(_contracts[i], _data[i]);
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                  PERMISSIONS                               */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Update Governor Role
     */
    function updateGovernor(address _newGovernor) external {
        _onlyGovernor();
        renounceRole(GOVERNOR, msg.sender);
        _setupRole(GOVERNOR, _newGovernor);

        emit GovernorUpdated(msg.sender, _newGovernor);

        gov = _newGovernor;
    }

    /**
     * @notice Grant a role to _address.
     */
    function addToRole(bytes32 _role, address _address) public {
        require(_role != GOVERNOR, "Invalid Role");
        _onlySofGovernor();
        grantRole(_role, _address);

        emit AddedToRole(_role, _address);
    }

    /**
     * @notice Remove a role from _address.
     */
    function removeFromRole(bytes32 _role, address _address) external {
        require(_role != GOVERNOR, "Invalid Role");
        _onlySofGovernor();
        revokeRole(_role, _address);

        emit RemovedFromRole(_role, _address);
    }

    /* -------------------------------------------------------------------------- */
    /*                                  FUNCTIONS                                 */
    /* -------------------------------------------------------------------------- */

    function updateFunctionCaller(bytes32 _role, bytes4 _fnSig, bool _status) public {
        require(hasRole(SOFT_GOVERNOR, msg.sender) || hasRole(GOVERNOR, msg.sender), "Invalid Caller");

        functionPermissions[_role][_fnSig] = _status;

        emit FunctionUpdate(_role, _fnSig, _status);
    }

    function updateFunctionCallerMulti(bytes32[] calldata _role, bytes4[] calldata _fnSigs, bool[] calldata _status)
        external
    {
        require(_role.length == _fnSigs.length && _role.length == _status.length, "Invalid Input");

        for (uint256 i = 0; i < _role.length; i++) {
            updateFunctionCaller(_role[i], _fnSigs[i], _status[i]);
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                   PRIVATE                                  */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice If msg.sender does not have Governor role revert.
     */
    function _onlyGovernor() private view {
        require(hasRole(GOVERNOR, msg.sender), "Caller Not Gov");
    }

    /**
     * @notice If msg.sender does not have Soft Governor or Governor role revert.
     */
    function _onlySofGovernor() private view {
        require(hasRole(SOFT_GOVERNOR, msg.sender) || hasRole(GOVERNOR, msg.sender), "Caller Not Gov or Soft Gov");
    }

    function _callCheck(bytes4 _selector) private view {
        if (hasRole(GOVERNOR, msg.sender)) {
            require(functionPermissions[GOVERNOR][_selector], "Invalid Multisig Function");
        } else if (hasRole(SOFT_GOVERNOR, msg.sender)) {
            require(functionPermissions[SOFT_GOVERNOR][_selector], "Invalid Gov Function");
        } else if (hasRole(KEEPER, msg.sender)) {
            require(functionPermissions[KEEPER][_selector], "Invalid Keeper Function");
        } else {
            revert("Invalir Caller");
        }
    }
    /* -------------------------------------------------------------------------- */
    /*                                   EVENTS                                   */
    /* -------------------------------------------------------------------------- */

    event FunctionUpdate(bytes32 indexed _role, bytes4 indexed _sig, bool _status);
    event GovernorUpdated(address _oldGovernor, address _newGovernor);
    event SoftGovernorUpdated(address _oldSoftGovernor, address _newSoftGovernor);
    event AddedToRole(bytes32 indexed _role, address _newKeeper);
    event RemovedFromRole(bytes32 indexed _role, address _keeper);
}
