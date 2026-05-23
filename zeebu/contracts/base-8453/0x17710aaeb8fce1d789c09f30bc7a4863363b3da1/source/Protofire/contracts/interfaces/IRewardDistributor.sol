// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

interface IRewardDistributor {
    struct RewardDistributionInfo {
        uint32 rewardTimestamp;
        address token;
        uint256 amount;
    }

    struct RewardDistributionInternalInfo {
        uint256 claimedBalances;
        uint256 claimedRewardAmount;
        address rewardProvider;
        bool isRemoved;
    }

    struct ClaimInfo {
        address token;
        uint256 amount;
        uint256 veBalanceOfUser;
    }

    error RewardDistributor__ZeroAddress();
    error RewardDistributor__ZeroAmount();
    error RewardDistributor__NoTotalSupply(uint256 timestamp);
    error RewardDistributor__TotalSupplyIsNotZero(uint256 timestamp);
    error RewardDistributor__BadRewardDistributionId(
        uint256 rewardDistributionId
    );
    error RewardDistributor__RewardDistributionIdsAreNotInAscendingOrder();
    error RewardDistributor__NotRewardProvider(
        uint256 rewardDistributionId,
        address user,
        address rewardProvider
    );
    error RewardDistributor__RewardDistributionShouldBeInThePastToRemoveIt(
        uint256 rewardDistributionId,
        uint256 blockTimestamp,
        uint256 rewardTimestamp
    );
    error RewardDistributor__RewardDistributionIsRemoved(
        uint256 rewardDistributionId
    );

    event AddedRewardDistribution(
        address indexed sender,
        address indexed token,
        uint256 amount,
        uint256 rewardTimestamp
    );
    event RemovedRewardDistribution(
        uint256 indexed rewardDistributionId,
        address indexed rewardProvider,
        address indexed token,
        uint256 amount
    );
    event RewardDistributionClaimed(
        address indexed user,
        uint256 indexed rewardDistributionId,
        address indexed token,
        uint256 amount
    );

    function votingEscrow() external view returns (address);

    function REWARD_DISTRIBUTOR_ROLE() external view returns (bytes32);

    function initialize(address _votingEscrow, address admin) external;

    function addRewardDistributions(
        RewardDistributionInfo[] memory _newRewardDistributions
    ) external;

    function addRewardDistribution(
        RewardDistributionInfo memory _newRewardDistribution
    ) external;

    function claim(
        uint256[] memory rewardDistributionIds
    ) external returns (ClaimInfo[] memory claims);

    function claimable(
        address user,
        uint256[] memory rewardDistributionIds
    ) external view returns (ClaimInfo[] memory claims);

    function rewardDistributionsLength() external view returns (uint256);

    function rewardDistributions()
        external
        view
        returns (RewardDistributionInfo[] memory);

    function rewardDistribution(
        uint256 rewardDistributionId
    ) external view returns (RewardDistributionInfo memory);
}
