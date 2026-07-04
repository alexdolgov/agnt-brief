// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IStakingLockAgent, ILockableStaking} from './Interfaces.sol';
import {Ownable} from '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';

abstract contract LockableStaking is Ownable, ILockableStaking {
    using EnumerableSet for EnumerableSet.AddressSet;
    EnumerableSet.AddressSet _lockAgents;
    mapping(address => LockInfo) _lockInfo;

    // AGENT OPERATIONS

    function lockByAgent(
        address staker,
        uint256 until,
        uint256 amount,
        bytes32 payload
    ) external override {
        require(_lockAgents.contains(msg.sender), 'LOCK: RESTRICTED');
        _lockInfo[staker] = LockInfo({
            until: until,
            amount: amount,
            agent: IStakingLockAgent(msg.sender),
            payload: payload
        });
        emit LockedByAgent(msg.sender, staker, until, amount, payload);
    }

    // SETTERS

    function setLockAgent(address trustedAgent, bool authorized) external onlyOwner {
        require(_lockAgents.contains(trustedAgent) != authorized);
        if (authorized) _lockAgents.add(trustedAgent);
        else _lockAgents.remove(trustedAgent);
        emit LockAgentSet(trustedAgent, authorized);
    }

    // GETTERS

    function isLockAgent(address who) external view returns (bool) {
        return _lockAgents.contains(who);
    }

    function lockInfo(address user) external view override returns (LockInfo memory) {
        return _lockInfo[user];
    }
}
