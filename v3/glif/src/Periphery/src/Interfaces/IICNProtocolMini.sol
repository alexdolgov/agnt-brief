// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

interface IICNProtocolMini {
    error InvalidScalerNode();

    enum ProtocolScalerNodeStatus {
        None,
        Registered,
        Active,
        Booked,
        Offboarded
    }

    struct UserDelegation {
        uint256 availableLockedTokens;
        uint256 apyScalingFactor;
        uint256 unlockTimestamp;
        NodeDelegation[] nodeDelegations;
    }

    struct NodeDelegation {
        uint256 nodeId;
        uint256 amount;
        uint256 undelegationAllowedAfterTimestamp;
        uint256 reclaimAllowedAfterEra;
        uint256 delegatorBaseIncentiveAccumulationCheckpoint;
        uint256 nodeRewardAccumulationPerICNTCheckpoint;
    }

    struct PendingUserRewardClaims {
        uint256 amount;
        uint256 unlockTimestamp;
    }

    function unclaimedDelegationRewards(address delegator, uint256 userDelegationIndex, uint256 nodeDelegationIndex)
        external
        view
        returns (uint256);

    function initiateDelegationRewardsClaim(uint256 userDelegationIndex, uint256 nodeDelegationIndex) external;

    function undelegateCollateral(uint256 userDelegationIndex, uint256 nodeDelegationIndex) external;

    function reclaimUndelegatedCollateral(uint256 userDelegationIndex, uint256 nodeDelegationIndex) external;

    function getDelegation(address delegator, uint256 userDelegationIndex) external view returns (UserDelegation memory);

    function getDelegations(address delegator) external view returns (UserDelegation[] memory);

    function getPendingDelegatorRewardsClaims(address delegator) external view returns (PendingUserRewardClaims[] memory);

    function withdrawUnlockedDelegatedTokens(uint256 userDelegationIndex, uint256 amount) external;

    function delegateCollateral(uint256 nodeID, uint256 amount, uint256 lockupDuration) external;

    function delegateLockedCollateral(uint256 nodeId, uint256 amount, uint256 lockedDelegationIndex) external;

    function claimDelegationRewards(uint256 rewardIdx) external;

    function getAllowRewardClaimDelayAfterStakingInSeconds() external view returns (uint256);

    function calculateMaxApy(uint256 collateralizationRatio) external view returns (uint256);

    function getTotalDelegatedICNT() external view returns (uint256);

    function getLastRewardCommitmentTimestamp() external view returns (uint256);

    function getAllowReclaimDelayAfterUnstakeInEras() external view returns (uint256);

    function getProtocolScalerNodeStatus(uint256 scalerNodeId) external view returns (ProtocolScalerNodeStatus);
}
