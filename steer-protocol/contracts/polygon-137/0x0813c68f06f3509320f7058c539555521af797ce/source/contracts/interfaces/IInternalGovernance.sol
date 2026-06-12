// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.12;

interface IInternalGovernance {
    event VotingPowerGiven(address[] recipients);
    event VotingPowerRemoved(address[] recipients);

    function giveVotingPower(address[] memory _recipients) external;

    function removeVotingPower(address[] memory _recipients) external;
}
