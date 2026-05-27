// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {IExecutionStrategy} from "../interfaces/IExecutionStrategy.sol";
import {MetaTransaction, Proposal, ProposalStatus, FinalizationStatus, Operation} from "../interfaces/Types.sol";

/// @title Simple execution strategy
/// @notice Used to execute proposal transactions on reaching the quorum and proposal voting end
contract SimpleQuorumImmediateExecutionStrategy is IExecutionStrategy {

    /// @notice The space that can execute transactions with this strategy
    address public immutable space;

    /// @notice The quorum that must be reached to execute a proposal
    uint256 public immutable quorum;

    modifier onlySpace() {
        if (msg.sender != space) revert CallerNotSpaceException();
        _;
    }

    constructor(address _space, uint256 _quorum) {
        space = _space;
        quorum = _quorum;
    }

    function getProposalStatus(Proposal memory proposal, uint256 votesFor, uint256 votesAgainst, uint256 votesAbstain)
        public
        view
        override
        returns (ProposalStatus)
    {
        bool accepted = _quorumReached(quorum, votesFor, votesAbstain) && _supported(votesFor, votesAgainst);
        if (proposal.finalizationStatus == FinalizationStatus.Cancelled) {
            return ProposalStatus.Cancelled;
        } else if (proposal.finalizationStatus == FinalizationStatus.Executed) {
            return ProposalStatus.Executed;
        } else if (block.number < proposal.startBlockNumber) {
            return ProposalStatus.VotingDelay;
        } else if (block.number < proposal.minEndBlockNumber) {
            return ProposalStatus.VotingPeriod;
        } else if (block.number < proposal.maxEndBlockNumber) {
            if (accepted) {
                return ProposalStatus.VotingPeriodAccepted;
            } else {
                return ProposalStatus.VotingPeriod;
            }
        } else if (accepted) {
            return ProposalStatus.Accepted;
        } else {
            return ProposalStatus.Rejected;
        }
    }

    function execute(
        uint256,
        Proposal memory proposal,
        uint256 votesFor,
        uint256 votesAgainst,
        uint256 votesAbstain,
        bytes memory payload
    ) external override onlySpace {
        ProposalStatus proposalStatus = getProposalStatus(proposal, votesFor, votesAgainst, votesAbstain);
        if (proposalStatus != ProposalStatus.Accepted) {
            revert InvalidProposalStatus(proposalStatus);
        }

        MetaTransaction[] memory transactions = abi.decode(payload, (MetaTransaction[]));
        for (uint256 i = 0; i < transactions.length; i++) {
            bool success;
            if (transactions[i].operation == Operation.Call) {
                // solhint-disable-next-line avoid-low-level-calls
                (success,) = transactions[i].to.call{value: transactions[i].value}(transactions[i].data);
            } else {
                revert InvalidDelegateCallOperation();
            }
            if (!success) revert ExecutionFailed();
        }
    }

    receive() external payable {}

    /// @notice Returns the strategy type string.
    function getStrategyType() external pure override returns (string memory) {
        return "SimpleQuorumImmediateExecution";
    }

    function _quorumReached(uint256 _quorum, uint256 _votesFor, uint256 _votesAbstain) internal pure returns (bool) {
        uint256 forAndAbstainVotesTotal = _votesFor + _votesAbstain;
        return forAndAbstainVotesTotal >= _quorum;
    }

    function _supported(uint256 _votesFor, uint256 _votesAgainst) internal pure returns (bool) {
        return _votesFor > _votesAgainst;
    }
}