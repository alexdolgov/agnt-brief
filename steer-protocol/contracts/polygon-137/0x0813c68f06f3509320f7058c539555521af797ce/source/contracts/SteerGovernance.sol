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
import "./interfaces/ISteerGovernance.sol";

contract SteerGovernance is
    ISteerGovernance,
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
    address internal internalGovernanceTimeLock;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize(
        ERC20VotesUpgradeable _token,
        TimelockControllerUpgradeable _timelock
    ) public initializer {
        __Governor_init("SteerGovernance");
        __GovernorSettings_init(
            14400 /* 2 Days of voting delay*/,
            36000 /* 5 Days of voting period */,
            100e18 /* Voters need atleast 100 tokens to vote */
        );
        __GovernorCompatibilityBravo_init();
        __GovernorVotes_init(_token);
        __GovernorVotesQuorumFraction_init(2 /* 2% */);
        __GovernorTimelockControl_init(_timelock);
        __Ownable_init();
        __UUPSUpgradeable_init();
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
        return super.propose(targets, values, calldatas, description);
    }

    function proposalThreshold()
        public
        view
        override(GovernorUpgradeable, GovernorSettingsUpgradeable)
        returns (uint256)
    {
        return super.proposalThreshold();
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
        return super._cancel(targets, values, calldatas, descriptionHash);
    }

    /// @dev Use this function to set address of Internal Governance Timelock.
    /// @dev This function can only be called once while deployment.
    /// @param _internalGovernanceTimeLock is the address of Internal Governance Timelock.
    function setInternalGovernanceTimeLockOnce(
        address _internalGovernanceTimeLock
    ) external onlyOwner {
        require(internalGovernanceTimeLock == address(0), "Already Set");
        internalGovernanceTimeLock = _internalGovernanceTimeLock;
    }

    /// @dev This function can cancel a proposal irrespective of votes on it.
    /// @dev This function can only be called by Internal Governance Timelock.
    ///So only after there are enough votes in Internal Governance this function can be called.
    function cancelByInternalGovernance(
        address[] memory targets,
        uint256[] memory values,
        bytes[] memory calldatas,
        bytes32 descriptionHash
    ) public {
        require(
            msg.sender == internalGovernanceTimeLock,
            "Not Internal Governance"
        );
        _cancel(targets, values, calldatas, descriptionHash);
        emit CancelledByInternalGovernance(
            targets,
            values,
            calldatas,
            descriptionHash
        );
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
}
