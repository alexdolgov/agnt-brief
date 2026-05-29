// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {UpgradeableGovernable} from "src/governance/UpgradeableGovernable.sol";

abstract contract UpgradeableOperableKeepable is UpgradeableGovernable {
    bytes32 public constant OPERATOR = bytes32("OPERATOR");
    bytes32 public constant KEEPER = bytes32("KEEPER");

    modifier onlyOperator() {
        require(hasRole(OPERATOR, msg.sender), "Caller Not Operator");

        _;
    }

    modifier onlyKeeper() {
        require(hasRole(KEEPER, msg.sender), "Caller Not keeper");

        _;
    }

    modifier onlyOperatorOrKeeper() {
        require(hasRole(OPERATOR, msg.sender) || hasRole(KEEPER, msg.sender), "Ivalid Caller");

        _;
    }

    modifier onlyGovernorOrKeeper() {
        require(hasRole(GOVERNOR, msg.sender) || hasRole(KEEPER, msg.sender), "Ivalid Caller");

        _;
    }

    /**
     * @notice Only msg.sender with OPERATOR or GOVERNOR role can call the function.
     */
    modifier onlyGovernorOrOperator() {
        require(hasRole(GOVERNOR, msg.sender) || hasRole(OPERATOR, msg.sender), "Ivalid Caller");
        _;
    }

    modifier onlyOperatorOrKeeperOrThis() {
        require(
            hasRole(KEEPER, msg.sender) || hasRole(OPERATOR, msg.sender) || msg.sender == address(this), "Ivalid Caller"
        );

        _;
    }

    function addOperator(address _newOperator) external onlyGovernor {
        _setupRole(OPERATOR, _newOperator);

        emit OperatorAdded(_newOperator);
    }

    function removeOperator(address _operator) external onlyGovernor {
        revokeRole(OPERATOR, _operator);

        emit OperatorRemoved(_operator);
    }

    function addKeeper(address _newKeeper) external onlyGovernor {
        _setupRole(KEEPER, _newKeeper);

        emit KeeperAdded(_newKeeper);
    }

    function removeKeeper(address _operator) external onlyGovernor {
        revokeRole(KEEPER, _operator);

        emit KeeperRemoved(_operator);
    }

    event OperatorAdded(address _newOperator);
    event OperatorRemoved(address _operator);
    event KeeperAdded(address _newKeeper);
    event KeeperRemoved(address _operator);
}
