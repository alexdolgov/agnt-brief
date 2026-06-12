// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.12;

import "@openzeppelin/contracts-upgradeable/governance/GovernorUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/governance/extensions/GovernorSettingsUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/governance/compatibility/GovernorCompatibilityBravoUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/governance/extensions/GovernorVotesUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/governance/extensions/GovernorVotesQuorumFractionUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/governance/extensions/GovernorTimelockControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "./interfaces/IInternalGovernance.sol";

contract InternalGovernance is
    IInternalGovernance,
    Initializable,
    GovernorUpgradeable,
    GovernorSettingsUpgradeable,
    GovernorCompatibilityBravoUpgradeable,
    GovernorVotesUpgradeable,
    GovernorVotesQuorumFractionUpgradeable,
    GovernorTimelockControlUpgradeable,
    OwnableUpgradeable,
    UUPSUpgradeable
{
    address private steerTimelock;
    mapping(address => bool) public hasVotingPower;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize(
        ERC20VotesUpgradeable _token,
        TimelockControllerUpgradeable _timelock,
        address _steerTimeLock,
        address[] calldata _voters
    ) public initializer {
        __Governor_init("SteerGovernance");
        __GovernorSettings_init(
            3600 /* 12 Hours of voting delay*/,
            3600 /* 12 Hours of voting period*/,
            100e18 /* Voters need 100 tokens to vote */
        );
        __GovernorCompatibilityBravo_init();
        __GovernorVotes_init(_token);
        __GovernorVotesQuorumFraction_init(2 /* 2% */);
        __GovernorTimelockControl_init(_timelock);
        __Ownable_init();
        __UUPSUpgradeable_init();
        steerTimelock = _steerTimeLock;
        giveVotingPowerDuringDeployment(_voters);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    function votingDelay()
        public
        view
        override(IGovernorUpgradeable, GovernorSettingsUpgradeable)
        returns (uint256)
    {
        return super.votingDelay();
    }

    function votingPeriod()
        public
        view
        override(IGovernorUpgradeable, GovernorSettingsUpgradeable)
        returns (uint256)
    {
        return super.votingPeriod();
    }

    function proposalThreshold()
        public
        view
        override(GovernorUpgradeable, GovernorSettingsUpgradeable)
        returns (uint256)
    {
        return super.proposalThreshold();
    }

    function quorum(
        uint256 blockNumber
    )
        public
        view
        override(IGovernorUpgradeable, GovernorVotesQuorumFractionUpgradeable)
        returns (uint256)
    {
        return super.quorum(blockNumber);
    }

    function getVotes(
        address account,
        uint256 blockNumber
    )
        public
        view
        override(IGovernorUpgradeable, GovernorVotesUpgradeable)
        returns (uint256)
    {
        return super.getVotes(account, blockNumber);
    }

    function state(
        uint256 proposalId
    )
        public
        view
        override(
            GovernorUpgradeable,
            IGovernorUpgradeable,
            GovernorTimelockControlUpgradeable
        )
        returns (ProposalState)
    {
        return super.state(proposalId);
    }

    /**
     * @dev propose a new governance action.
     * @param targets the target address of each proposed action.
     * @param values the ETH value of each proposed action.
     * @param calldatas the calldata of each proposed action.
     * @param description the description of this governance action.
     */
    function propose(
        address[] memory targets,
        uint256[] memory values,
        bytes[] memory calldatas,
        string memory description
    )
        public
        override(
            GovernorUpgradeable,
            GovernorCompatibilityBravoUpgradeable,
            IGovernorUpgradeable
        )
        returns (uint256)
    {
        require(
            hasVotingPower[msg.sender],
            "You don't have power to make proposal"
        );
        return super.propose(targets, values, calldatas, description);
    }

    /**
     * @dev propose a new governance action, with signatures from other signers
     * @param targets the target address of each proposed action.
     * @param signatures extra signatures for bravo governance
     * @param values the ETH value of each proposed action.
     * @param calldatas the calldata of each proposed action.
     * @param description the description of this governance action.
     */
    function propose(
        address[] memory targets,
        uint256[] memory values,
        string[] memory signatures,
        bytes[] memory calldatas,
        string memory description
    )
        public
        override(GovernorCompatibilityBravoUpgradeable)
        returns (uint256)
    {
        require(
            hasVotingPower[msg.sender],
            "You don't have power to make proposal"
        );
        return
            super.propose(targets, values, signatures, calldatas, description);
    }

    /*
     * @dev vote on a proposal handler
     * @param proposalId the ID of this proposal
     * @param account account that is voting
     * @param support is the vote being cast--0 for against, 1 for for, 2 for abstain.
     * @param reason is the reason for the vote being cast.
     * @dev call castVote to actually access this function.
     */
    function _castVote(
        uint256 proposalId,
        address account,
        uint8 support,
        string memory reason
    ) internal override(GovernorUpgradeable) returns (uint256) {
        require(
            hasVotingPower[msg.sender],
            "You don't have power to cast vote"
        );
        return super._castVote(proposalId, account, support, reason);
    }

    function _execute(
        uint256 proposalId,
        address[] memory targets,
        uint256[] memory values,
        bytes[] memory calldatas,
        bytes32 descriptionHash
    )
        internal
        override(GovernorUpgradeable, GovernorTimelockControlUpgradeable)
    {
        super._execute(
            proposalId,
            targets,
            values,
            calldatas,
            descriptionHash
        );
    }

    function _cancel(
        address[] memory targets,
        uint256[] memory values,
        bytes[] memory calldatas,
        bytes32 descriptionHash
    )
        internal
        override(GovernorUpgradeable, GovernorTimelockControlUpgradeable)
        returns (uint256)
    {
        require(hasVotingPower[msg.sender], "You don't have power to cancel");
        return super._cancel(targets, values, calldatas, descriptionHash);
    }

    function _executor()
        internal
        view
        override(GovernorUpgradeable, GovernorTimelockControlUpgradeable)
        returns (address)
    {
        return super._executor();
    }

    function supportsInterface(
        bytes4 interfaceId
    )
        public
        view
        override(
            GovernorUpgradeable,
            IERC165Upgradeable,
            GovernorTimelockControlUpgradeable
        )
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    /// @dev Use this function to give the ability to vote in the proposals made in this contract.
    /// @dev Only Steer Governance Timelock can call this function.
    /// @param _recipients is the array of addresses that should be given the ability to vote.
    function giveVotingPower(address[] calldata _recipients) external {
        require(msg.sender == steerTimelock, "Steer Governance");

        uint256 recipientCount = _recipients.length;
        for (uint256 i; i != recipientCount; ++i) {
            hasVotingPower[_recipients[i]] = true;
        }

        emit VotingPowerGiven(_recipients);
    }

    function giveVotingPowerDuringDeployment(
        address[] calldata _recipients
    ) internal {
        uint256 recipientCount = _recipients.length;
        for (uint256 i; i != recipientCount; ++i) {
            hasVotingPower[_recipients[i]] = true;
        }

        emit VotingPowerGiven(_recipients);
    }

    /// @dev Use this function to remove the ability to vote in the proposals made in this contract.
    /// @dev Only Steer Governance Timelock can call this function.
    /// @param _recipients is the array of addresses whose ability to vote should be removed.
    function removeVotingPower(address[] calldata _recipients) external {
        require(msg.sender == steerTimelock, "Steer Governance");

        uint256 recipientCount = _recipients.length;
        for (uint256 i; i != recipientCount; ++i) {
            hasVotingPower[_recipients[i]] = false;
        }

        emit VotingPowerRemoved(_recipients);
    }
}
