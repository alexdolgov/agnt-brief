// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct Tally {
    uint256 abstain;
    uint256 yes;
    uint256 no;
}

enum VotingMode {
    Standard,
    EarlyExecution,
    VoteReplacement
}

struct ProposalParameters {
    VotingMode votingMode;
    uint32 supportThreshold;
    uint64 startDate;
    uint64 endDate;
    uint64 snapshotTimepoint;
    uint256 minVotingPower;
}

struct Action {
    address to;
    uint256 value;
    bytes data;
}

/// @notice Specifies the type of operation to perform.
enum Operation {
    Call,
    DelegateCall
}

struct TargetConfig {
    address target;
    Operation operation;
}


interface IYbPlugin {
    function vote(uint256 _proposalId, Tally calldata _tally, bool _tryEarlyExecution) external;
    function getProposal(uint256 _proposalId)
        external
        view
        returns (
            bool open,
            bool executed,
            ProposalParameters memory parameters,
            Tally memory tally,
            Action[] memory actions,
            uint256 allowFailureMap,
            TargetConfig memory targetConfig
        );
    function getDecayMidpointBasisPoints() external view returns (uint32);
    function getVotingToken() external view returns (address);
    function getVotes(uint256 proposalId, address account) external view returns(Tally memory);
}

interface IVotingToken {
    function getPastVotes(address account, uint256 timepoint) external view returns (uint256);
}