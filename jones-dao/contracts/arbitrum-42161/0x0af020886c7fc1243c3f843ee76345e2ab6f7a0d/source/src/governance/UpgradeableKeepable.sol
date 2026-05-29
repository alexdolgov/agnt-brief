// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {UpgradeableGovernable} from "src/governance/UpgradeableGovernable.sol";

abstract contract UpgradeableKeepable is UpgradeableGovernable {
    /**
     * @notice Modifier if msg.sender has not KEEPER role revert.
     */
    modifier onlyKeeper() {
        require(hasRole(KEEPER, msg.sender), "Caller Not Keeper");

        _;
    }

    /**
     * @notice Only msg.sender with OPERATOR or KEEPER role can call the function.
     */
    modifier onlyGovernorOrKeeper() {
        require(hasRole(KEEPER, msg.sender) || hasRole(GOVERNOR, msg.sender), "Invalid Caller");
        _;
    }

    /**
     * @notice Grant KEEPER role to _newKeeper.
     */
    function addKeeper(address _newKeeper) external onlyGovernor {
        grantRole(KEEPER, _newKeeper);

        emit KeeperAdded(_newKeeper);
    }

    /**
     * @notice Remove KEEPER role from _keeper.
     */
    function removeKeeper(address _keeper) external onlyGovernor {
        revokeRole(KEEPER, _keeper);

        emit KeeperRemoved(_keeper);
    }

    event KeeperAdded(address _newKeeper);
    event KeeperRemoved(address _keeper);
}
