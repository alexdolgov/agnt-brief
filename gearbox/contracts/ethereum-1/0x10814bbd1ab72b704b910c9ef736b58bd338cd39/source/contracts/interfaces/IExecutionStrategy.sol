pragma solidity ^0.8.18;

import { Proposal, ProposalStatus } from "./Types.sol";

interface IExecutionStrategyErrors {
    /// @notice Thrown when a proposal execution fails
    error ExecutionFailed();
    /// @notice Thrown when the caller is not the space
    error CallerNotSpaceException();
    /// @notice Thrown when attempting to delegate call when executing a proposal
    error InvalidDelegateCallOperation();
    /// @notice Thrown when attempting to execute a proposal that is not accepted
    error InvalidProposalStatus(ProposalStatus status);
}

interface IExecutionStrategy is IExecutionStrategyErrors {
    function execute(
        uint256 proposalId,
        Proposal memory proposal,
        uint256 votesFor,
        uint256 votesAgainst,
        uint256 votesAbstain,
        bytes memory payload
    ) external;

    function getProposalStatus(
        Proposal memory proposal,
        uint256 votesFor,
        uint256 votesAgainst,
        uint256 votesAbstain
    ) external view returns (ProposalStatus);

    function getStrategyType() external view returns (string memory);
}