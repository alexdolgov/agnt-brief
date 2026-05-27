// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {Governor} from "@openzeppelin/contracts/governance/Governor.sol";
import {GovernorCountingSimple} from "@openzeppelin/contracts/governance/extensions/GovernorCountingSimple.sol";
import {GovernorSettings} from "@openzeppelin/contracts/governance/extensions/GovernorSettings.sol";
import {GovernorVotesComp} from "@openzeppelin/contracts/governance/extensions/GovernorVotesComp.sol";
import {GovernorVotesQuorumFraction} from
    "@openzeppelin/contracts/governance/extensions/GovernorVotesQuorumFraction.sol";
import {ERC20VotesComp} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20VotesComp.sol";

contract TallyGovernor is
    Governor,
    GovernorCountingSimple,
    GovernorVotesComp
{
    /// @notice Voting delay in seconds
    uint256 internal _votingDelay;

    /// @notice Voting period in seconds
    uint256 internal _votingPeriod;

    /// @notice Proposal threshold in votes
    uint256 internal _proposalThreshold;

    /// @notice Quorum in votes
    uint256 public quorumThreshold;

    constructor(
        ERC20VotesComp _gearToken,
        uint256 votingDelay_,
        uint256 votingPeriod_,
        uint256 proposalThreshold_,
        uint256 _quorumThreshold
    )
        Governor("GearboxTallyGovernor")
        GovernorVotesComp(_gearToken)
    {
        _votingDelay = votingDelay_;
        _votingPeriod = votingPeriod_;
        _proposalThreshold = proposalThreshold_;
        quorumThreshold = _quorumThreshold;
    }

    function votingDelay() public view override returns (uint256) {
        return _votingDelay;
    }

    function votingPeriod() public view override returns (uint256) {
        return _votingPeriod;
    }

    function proposalThreshold() public view override returns (uint256) {
        return _proposalThreshold;
    }

    function quorum(uint256) public view override returns (uint256) {
        return quorumThreshold;
    }
}
