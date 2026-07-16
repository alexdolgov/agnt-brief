// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.2.0
pragma solidity =0.8.26;

import { GovernorVotesQuorumFractionUpgradeable } from
    "@openzeppelin/contracts-upgradeable/governance/extensions/GovernorVotesQuorumFractionUpgradeable.sol";
import { GovernorTimelockControlUpgradeable } from
    "@openzeppelin/contracts-upgradeable/governance/extensions/GovernorTimelockControlUpgradeable.sol";
import { GovernorCountingSimpleUpgradeable } from
    "@openzeppelin/contracts-upgradeable/governance/extensions/GovernorCountingSimpleUpgradeable.sol";
import { GovernorSettingsUpgradeable } from
    "@openzeppelin/contracts-upgradeable/governance/extensions/GovernorSettingsUpgradeable.sol";
import { GovernorStorageUpgradeable } from
    "@openzeppelin/contracts-upgradeable/governance/extensions/GovernorStorageUpgradeable.sol";
import { GovernorVotesUpgradeable } from
    "@openzeppelin/contracts-upgradeable/governance/extensions/GovernorVotesUpgradeable.sol";
import { TimelockControllerUpgradeable } from
    "@openzeppelin/contracts-upgradeable/governance/TimelockControllerUpgradeable.sol";
import { GovernorUpgradeable } from "@openzeppelin/contracts-upgradeable/governance/GovernorUpgradeable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { IVotes } from "@openzeppelin/contracts/governance/utils/IVotes.sol";

/*
 * @title Turtle Governor
 * @dev Governor contract for Turtle DAO
 */
contract TurtleGovernor is
    Initializable,
    GovernorUpgradeable,
    GovernorSettingsUpgradeable,
    GovernorCountingSimpleUpgradeable,
    GovernorStorageUpgradeable,
    GovernorVotesUpgradeable,
    GovernorVotesQuorumFractionUpgradeable,
    GovernorTimelockControlUpgradeable,
    OwnableUpgradeable,
    UUPSUpgradeable
{
    error InvalidAddress();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /*
     * @dev Initialize the Turtle Governor contract
     * @param _token Address of the voting token
     * @param _timelock Address of the timelock contract
     * @param _initialVotingDelay Initial voting delay
     * @param _initialVotingPeriod Initial voting period
     * @param _initialProposalThreshold Initial proposal threshold
     * @param _quorumFraction Quorum fraction
     */
    function initialize(
        IVotes _token,
        TimelockControllerUpgradeable _timelock,
        uint48 _initialVotingDelay,
        uint32 _initialVotingPeriod,
        uint _initialProposalThreshold,
        uint8 _quorumFraction
    ) public initializer {
        // check addresses
        if (address(_token) == address(0)) {
            revert InvalidAddress();
        }
        if (address(_timelock) == address(0)) {
            revert InvalidAddress();
        }

        __Governor_init("TurtleGovernor");
        __GovernorSettings_init(_initialVotingDelay, _initialVotingPeriod, _initialProposalThreshold);
        __GovernorCountingSimple_init();
        __GovernorStorage_init();
        __GovernorVotes_init(_token);
        __GovernorVotesQuorumFraction_init(_quorumFraction);
        __GovernorTimelockControl_init(_timelock);
        __Ownable_init(address(_timelock));
        __UUPSUpgradeable_init();
    }

    // Management functions only intented to be called by the DAO

    /* solhint-disable no-empty-blocks */
    /*
     * @inheritdoc UUPSUpgradeable
     */
    function _authorizeUpgrade(
        address
    ) internal override onlyOwner { }

    /* solhint-enable no-empty-blocks */

    // The following functions are overrides required by Solidity.

    /*
     * @inheritdoc GovernorUpgradeable
     */
    function votingDelay() public view override(GovernorUpgradeable, GovernorSettingsUpgradeable) returns (uint) {
        return super.votingDelay();
    }

    /*
     * @inheritdoc GovernorUpgradeable
     */
    function votingPeriod() public view override(GovernorUpgradeable, GovernorSettingsUpgradeable) returns (uint) {
        return super.votingPeriod();
    }

    /*
     * @inheritdoc GovernorUpgradeable
     */
    function quorum(
        uint blockNumber
    ) public view override(GovernorUpgradeable, GovernorVotesQuorumFractionUpgradeable) returns (uint) {
        return super.quorum(blockNumber);
    }

    /*
     * @inheritdoc GovernorUpgradeable
     */
    function state(
        uint proposalId
    ) public view override(GovernorUpgradeable, GovernorTimelockControlUpgradeable) returns (ProposalState) {
        return super.state(proposalId);
    }

    /*
     * @inheritdoc GovernorUpgradeable
     */
    function proposalNeedsQueuing(
        uint proposalId
    ) public view override(GovernorUpgradeable, GovernorTimelockControlUpgradeable) returns (bool) {
        return super.proposalNeedsQueuing(proposalId);
    }

    /*
     * @inheritdoc GovernorUpgradeable
     */
    function proposalThreshold()
        public
        view
        override(GovernorUpgradeable, GovernorSettingsUpgradeable)
        returns (uint)
    {
        return super.proposalThreshold();
    }

    /*
     * @inheritdoc GovernorUpgradeable
     */
    function _propose(
        address[] memory targets,
        uint[] memory values,
        bytes[] memory calldatas,
        string memory description,
        address proposer
    ) internal override(GovernorUpgradeable, GovernorStorageUpgradeable) returns (uint) {
        return super._propose(targets, values, calldatas, description, proposer);
    }

    /*
     * @inheritdoc GovernorUpgradeable
     */
    function _queueOperations(
        uint proposalId,
        address[] memory targets,
        uint[] memory values,
        bytes[] memory calldatas,
        bytes32 descriptionHash
    ) internal override(GovernorUpgradeable, GovernorTimelockControlUpgradeable) returns (uint48) {
        return super._queueOperations(proposalId, targets, values, calldatas, descriptionHash);
    }

    /*
     * @inheritdoc GovernorUpgradeable
     */
    function _executeOperations(
        uint proposalId,
        address[] memory targets,
        uint[] memory values,
        bytes[] memory calldatas,
        bytes32 descriptionHash
    ) internal override(GovernorUpgradeable, GovernorTimelockControlUpgradeable) {
        super._executeOperations(proposalId, targets, values, calldatas, descriptionHash);
    }

    /*
     * @inheritdoc GovernorUpgradeable
     */
    function _cancel(
        address[] memory targets,
        uint[] memory values,
        bytes[] memory calldatas,
        bytes32 descriptionHash
    ) internal override(GovernorUpgradeable, GovernorTimelockControlUpgradeable) returns (uint) {
        return super._cancel(targets, values, calldatas, descriptionHash);
    }

    /*
     * @inheritdoc GovernorUpgradeable
     */
    function _executor()
        internal
        view
        override(GovernorUpgradeable, GovernorTimelockControlUpgradeable)
        returns (address)
    {
        return super._executor();
    }
}
