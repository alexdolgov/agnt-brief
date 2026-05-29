// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {UpgradeableGovernable} from "src/governance/UpgradeableGovernable.sol";

abstract contract UpgradeableOperable is UpgradeableGovernable {
    /**
     * @notice Modifier if msg.sender has not Operator role revert.
     */
    modifier onlyOperator() {
        require(hasRole(OPERATOR, msg.sender), "Caller Not OP");

        _;
    }

    /**
     * @notice Only msg.sender with OPERATOR or GOVERNOR role can call the function.
     */
    modifier onlyGovernorOrOperator() {
        require(hasRole(OPERATOR, msg.sender) || hasRole(GOVERNOR, msg.sender), "Invalid Caller");
        _;
    }

    /**
     * @notice Grant Operator role to _newOperator.
     */
    function addOperator(address _newOperator) external onlyGovernor {
        grantRole(OPERATOR, _newOperator);

        emit OperatorAdded(_newOperator);
    }

    /**
     * @notice Remove Operator role from _operator.
     */
    function removeOperator(address _operator) external onlyGovernor {
        revokeRole(OPERATOR, _operator);

        emit OperatorRemoved(_operator);
    }

    event OperatorAdded(address _newOperator);
    event OperatorRemoved(address _operator);
}
