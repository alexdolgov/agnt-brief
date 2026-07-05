// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.28;

interface IVotingEscrow {
    function createLockFor(uint256 _value, uint256 _lockDuration, address _to) external returns (uint256);
}
