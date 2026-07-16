// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IStakeNOONRewarder {
    struct RewardDistribution {
        bytes32 merkleRoot;
        uint256 additionalReward;
        uint256 distributionId;
        bool isActive;
    }

    struct RewardClaim {
        uint256 amount;
        bytes32[] proof;
    }

    event RewarderInitialized(address indexed noon, address indexed owner);
    event RewardDistributionCreated(uint256 indexed distributionId, bytes32 merkleRoot, uint256 additionalReward);
    event RewardClaimed(address indexed user, uint256 amount, uint256 indexed distributionId);
    event RewardDistributionEnded(uint256 indexed distributionId);
    event LeftoverRecovered(address indexed to, uint256 amount);

    function initialize(address _noon, address initialOwner) external;

    function createRewardDistribution(bytes32 merkleRoot, uint256 additionalReward) external;

    function claimReward(RewardClaim calldata claim) external;

    function endRewardDistribution() external;

    function recoverLeftoverRewards(address to, uint256 amount) external;

    function getTotalClaimedAmount(address user) external view returns (uint256);

    function noon() external view returns (IERC20);

    function currentDistributionId() external view returns (uint256);

    function currentDistribution() external view returns (bytes32 merkleRoot, uint256 additionalReward, uint256 distributionId, bool isActive);

    function claimedAmounts(address user) external view returns (uint256);
}
