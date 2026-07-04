// The following code is based on the Shardlabs' source code of Lido for Polygon
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.25;

interface INodeOperatorRegistry {
    /// @notice Node Operator Registry Statuses
    /// StakeManager statuses: https://github.com/maticnetwork/contracts/blob/v0.3.0-backport/contracts/staking/stakeManager/StakeManagerStorage.sol#L13
    /// ACTIVE: (validator.status == status.Active && validator.deactivationEpoch == 0)
    /// JAILED: (validator.status == status.Locked && validator.deactivationEpoch == 0)
    /// EJECTED: ((validator.status == status.Active || validator.status == status.Locked) && validator.deactivationEpoch != 0)
    /// UNSTAKED: (validator.status == status.Unstaked)
    enum NodeOperatorRegistryStatus {
        INACTIVE,
        ACTIVE,
        JAILED,
        EJECTED,
        UNSTAKED
    }

    /// @notice The full node operator struct.
    /// @param validatorId the validator id on stakeManager.
    /// @param commissionRate rate of each operator
    /// @param validatorShare the validator share address of the validator.
    /// @param rewardAddress the reward address.
    /// @param delegation delegation.
    /// @param status the status of the node operator in the stake manager.
    struct FullNodeOperatorRegistry {
        uint256 validatorId;
        uint256 commissionRate;
        address validatorShare;
        address rewardAddress;
        bool delegation;
        NodeOperatorRegistryStatus status;
    }

    /// @notice The node operator struct
    /// @param validatorShare the validator share address of the validator.
    /// @param rewardAddress the reward address.
    struct ValidatorData {
        address validatorShare;
        address rewardAddress;
    }

    function addNodeOperator(uint256 validatorId, address rewardAddress)
        external;

    function exitNodeOperatorRegistry() external;

    function removeNodeOperator(uint256 validatorId) external;

    function removeInvalidNodeOperator(uint256 validatorId) external;

    function setKnBONEAddress(address newKnBONE) external;

    function setRewardAddress(address newRewardAddress) external;

    function setDistanceThreshold(uint256 distanceThreshold) external;

    function setMinRequestWithdrawRange(uint8 minRequestWithdrawRange) external;

    function setMaxWithdrawPercentagePerRebalance(
        uint256 maxWithdrawPercentagePerRebalance
    ) external;

    function listDelegatedNodeOperators()
        external
        view
        returns (ValidatorData[] memory);

    function listWithdrawNodeOperators()
        external
        view
        returns (ValidatorData[] memory);

    function getValidatorsDelegationAmount(uint256 amountToDelegate)
        external
        view
        returns (
            ValidatorData[] memory validators,
            uint256[] memory operatorRatiosToDelegate,
            uint256 totalRatio
        );

    function getValidatorsRebalanceAmount(uint256 totalBuffered)
        external
        view
        returns (
            ValidatorData[] memory validators,
            uint256[] memory operatorRatiosToRebalance,
            uint256 totalRatio,
            uint256 totalToWithdraw
        );

    function getValidatorsRequestWithdraw(uint256 _withdrawAmount)
        external
        view
        returns (
            ValidatorData[] memory validators,
            uint256 totalDelegated,
            uint256[] memory bigNodeOperatorIds,
            uint256[] memory smallNodeOperatorIds,
            uint256[] memory operatorAmountCanBeRequested,
            uint256 totalValidatorToWithdrawFrom
        );

    function getNodeOperator(uint256 validatorId)
        external
        view
        returns (FullNodeOperatorRegistry memory operatorStatus);

    function getNodeOperator(address rewardAddress)
        external
        view
        returns (FullNodeOperatorRegistry memory operatorStatus);

    function getNodeOperatorStatus(uint256 validatorId)
        external
        view
        returns (NodeOperatorRegistryStatus operatorStatus);

    function getValidatorIds() external view returns (uint256[] memory);

    function getProtocolStats()
        external
        view
        returns (
            bool isBalanced,
            uint256 distanceThreshold,
            uint256 minAmount,
            uint256 maxAmount
        );

    function getStats()
        external
        view
        returns (
            uint256 inactiveNodeOperator,
            uint256 activeNodeOperator,
            uint256 jailedNodeOperator,
            uint256 ejectedNodeOperator,
            uint256 unstakedNodeOperator
        );

    ////////////////////////////////////////////////////////////
    /////                                                    ///
    /////                 ***EVENTS***                       ///
    /////                                                    ///
    ////////////////////////////////////////////////////////////

    /// @notice Add Node Operator event
    /// @param validatorId validator id.
    /// @param rewardAddress reward address.
    event AddNodeOperator(uint256 validatorId, address rewardAddress);

    /// @notice Remove Node Operator event.
    /// @param validatorId validator id.
    /// @param rewardAddress reward address.
    event RemoveNodeOperator(uint256 validatorId, address rewardAddress);

    /// @notice Remove Invalid Node Operator event.
    /// @param validatorId validator id.
    /// @param rewardAddress reward address.
    event RemoveInvalidNodeOperator(uint256 validatorId, address rewardAddress);

    /// @notice Set knBONE address event.
    /// @param oldKnBONE old knBONE address.
    /// @param newKnBONE new knBONE address.
    event SetKnBONEAddress(address oldKnBONE, address newKnBONE);

    /// @notice Set reward address event.
    /// @param validatorId the validator id.
    /// @param oldRewardAddress old reward address.
    /// @param newRewardAddress new reward address.
    event SetRewardAddress(
        uint256 validatorId,
        address oldRewardAddress,
        address newRewardAddress
    );

    /// @notice Emit when the distance threshold is changed.
    /// @param oldDistanceThreshold the old distance threshold.
    /// @param newDistanceThreshold the new distance threshold.
    event SetDistanceThreshold(
        uint256 oldDistanceThreshold,
        uint256 newDistanceThreshold
    );

    /// @notice Emit when the min request withdraw range is changed.
    /// @param oldMinRequestWithdrawRange the old min request withdraw range.
    /// @param newMinRequestWithdrawRange the new min request withdraw range.
    event SetMinRequestWithdrawRange(
        uint8 oldMinRequestWithdrawRange,
        uint8 newMinRequestWithdrawRange
    );

    /// @notice Emit when the max withdraw percentage per rebalance is changed.
    /// @param oldMaxWithdrawPercentagePerRebalance the old max withdraw percentage per rebalance.
    /// @param newMaxWithdrawPercentagePerRebalance the new max withdraw percentage per rebalance.
    event SetMaxWithdrawPercentagePerRebalance(
        uint256 oldMaxWithdrawPercentagePerRebalance,
        uint256 newMaxWithdrawPercentagePerRebalance
    );

    /// @notice Emit when the node operator exits the registry
    /// @param validatorId node operator id
    /// @param rewardAddress node operator reward address
    event ExitNodeOperator(uint256 validatorId, address rewardAddress);
}
