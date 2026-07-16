// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {AccessManagedUpgradeable} from "@openzeppelin-upgradeable/contracts/access/manager/AccessManagedUpgradeable.sol";
import {BeaconProxy} from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import {IGovernanceRegistry} from "../interfaces/IGovernanceRegistry.sol";
import {IVotingRewardsFactory} from "../interfaces/factories/IVotingRewardsFactory.sol";
import {FeesVotingReward} from "../rewards/FeesVotingReward.sol";
import {BribeVotingReward} from "../rewards/BribeVotingReward.sol";
import {IReward} from "../interfaces/IReward.sol";
import {IAccessManager} from "@openzeppelin-upgradeable/contracts/access/manager/AccessManagerUpgradeable.sol";
import {Roles} from "../libraries/Roles.sol";

contract VotingRewardsFactory is IVotingRewardsFactory, AccessManagedUpgradeable {
    bytes4 constant _DEPOSIT_SELECTOR = IReward._deposit.selector;
    bytes4 constant _WITHDRAW_SELECTOR = IReward._withdraw.selector;
    bytes4 constant GET_REWARD_SELECTOR = IReward.getReward.selector;
    bytes4 constant NOTIFY_REWARD_AMOUNT_SELECTOR = IReward.notifyRewardAmount.selector;

    /// @inheritdoc IVotingRewardsFactory
    address public governanceRegistry;

    constructor() {
        _disableInitializers();
    }

    function initialize(address _authority, address _governanceRegistry) public initializer {
        __AccessManaged_init(_authority);
        governanceRegistry = _governanceRegistry;
    }

    /// @inheritdoc IVotingRewardsFactory
    function createRewards(
        address[] memory _rewards
    ) external restricted returns (address feesVotingReward, address bribeVotingReward) {
        feesVotingReward = address(
            new BeaconProxy(
                IGovernanceRegistry(governanceRegistry).feesVotingRewardsBeacon(),
                abi.encodeWithSelector(FeesVotingReward.initialize.selector, authority(), governanceRegistry, _rewards)
            )
        );
        bribeVotingReward = address(
            new BeaconProxy(
                IGovernanceRegistry(governanceRegistry).bribeVotingRewardsBeacon(),
                abi.encodeWithSelector(BribeVotingReward.initialize.selector, authority(), governanceRegistry, _rewards)
            )
        );
        address initialAuthority = authority();
        IAccessManager(initialAuthority).setTargetFunctionRole(
            feesVotingReward,
            _getVRVoterReservedFunctionsSelectors(),
            Roles.VOTER_ROLE
        );
        IAccessManager(initialAuthority).setTargetFunctionRole(
            bribeVotingReward,
            _getVRVoterReservedFunctionsSelectors(),
            Roles.VOTER_ROLE
        );
        IAccessManager(initialAuthority).setTargetFunctionRole(
            feesVotingReward,
            _getVRNotifyRewardAmountSelectors(),
            Roles.FEES_VOTING_REWARDS_DISTRIBUTOR_ROLE
        );
        IAccessManager(initialAuthority).setTargetFunctionRole(
            feesVotingReward,
            _getRegistrySettersSelectors(),
            Roles.REGISTRY_ROLE
        );
        IAccessManager(initialAuthority).setTargetFunctionRole(
            bribeVotingReward,
            _getVRNotifyRewardAmountSelectors(),
            Roles.REGISTRY_ROLE
        );
    }

    /// @inheritdoc IVotingRewardsFactory
    function setGovernanceRegistry(address _governanceRegistry) external restricted {
        if (_governanceRegistry == address(0)) revert InvalidGovernanceRegistry();
        if (_governanceRegistry == governanceRegistry) revert GovernanceRegistryAlreadySet();
        address oldGovernanceRegistry = governanceRegistry;
        governanceRegistry = _governanceRegistry;
        emit GovernanceRegistryChange(oldGovernanceRegistry, _governanceRegistry);
    }

    /// @notice Getter for selectors of Reward's functions reserved to Voter contract, used for access management
    function _getVRVoterReservedFunctionsSelectors() internal pure returns (bytes4[] memory) {
        bytes4[] memory selectors = new bytes4[](3);
        selectors[0] = _DEPOSIT_SELECTOR;
        selectors[1] = _WITHDRAW_SELECTOR;
        selectors[2] = GET_REWARD_SELECTOR;
        return selectors;
    }

    /// @notice Getter for selectors of VotingReward's notifyRewardAmount function, used for access management
    function _getVRNotifyRewardAmountSelectors() internal pure returns (bytes4[] memory) {
        bytes4[] memory selectors = new bytes4[](1);
        selectors[0] = NOTIFY_REWARD_AMOUNT_SELECTOR;
        return selectors;
    }

    /// @notice Getter for selectors of VotingReward's setGovernanceRegistry function, used for access management
    function _getRegistrySettersSelectors() internal pure returns (bytes4[] memory) {
        bytes4[] memory selectors = new bytes4[](1);
        selectors[0] = IReward.setGovernanceRegistry.selector;
        return selectors;
    }
}
