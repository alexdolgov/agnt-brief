// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title IStakingHooks
 * @notice Interface for staking hooks that can be implemented to extend functionality
 */
interface IStakingHooks {
  /**
   * @notice Called before tokens are staked
   * @param pid Pool ID
   * @param user User address
   * @param amount Amount being staked
   * @return shouldContinue Whether the staking should continue
   */
  function beforeStake(
    uint256 pid,
    address user,
    uint256 amount
  ) external returns (bool shouldContinue);

  /**
   * @notice Called after tokens are staked
   * @param pid Pool ID
   * @param user User address
   * @param amount Amount that was staked
   */
  function afterStake(uint256 pid, address user, uint256 amount) external;

  /**
   * @notice Called before tokens are unstaked (before lock time)
   * @param pid Pool ID
   * @param user User address
   * @param amount Amount being unstaked
   * @return shouldContinue Whether the unstaking should continue
   */
  function beforeUnstake(
    uint256 pid,
    address user,
    uint256 amount
  ) external returns (bool shouldContinue);

  /**
   * @notice Called after tokens are unstaked (before lock time)
   * @param pid Pool ID
   * @param user User address
   * @param amount Amount that was unstaked
   */
  function afterUnstake(uint256 pid, address user, uint256 amount) external;

  /**
   * @notice Called before claiming rewards
   * @param pid Pool ID
   * @param user User address
   * @param principal Principal amount
   * @param reward Calculated reward amount
   * @return newReward Modified reward amount (can be increased/decreased)
   */
  function beforeClaim(
    uint256 pid,
    address user,
    uint256 principal,
    uint256 reward
  ) external returns (uint256 newReward);

  /**
   * @notice Called after claiming rewards
   * @param pid Pool ID
   * @param user User address
   * @param principal Principal amount claimed
   * @param reward Reward amount claimed
   */
  function afterClaim(
    uint256 pid,
    address user,
    uint256 principal,
    uint256 reward
  ) external;

  /**
   * @notice Called before early withdrawal
   * @param pid Pool ID
   * @param user User address
   * @param stakedAmount Original staked amount
   * @param penaltyAmount Calculated penalty amount
   * @return newPenaltyAmount Modified penalty amount
   */
  function beforeEarlyWithdraw(
    uint256 pid,
    address user,
    uint256 stakedAmount,
    uint256 penaltyAmount
  ) external returns (uint256 newPenaltyAmount);

  /**
   * @notice Called after early withdrawal
   * @param pid Pool ID
   * @param user User address
   * @param withdrawAmount Amount withdrawn
   * @param penaltyAmount Penalty amount applied
   */
  function afterEarlyWithdraw(
    uint256 pid,
    address user,
    uint256 withdrawAmount,
    uint256 penaltyAmount
  ) external;

  /**
   * @notice Called when calculating rewards (read-only)
   * @param pid Pool ID
   * @param user User address
   * @param baseReward Base calculated reward
   * @return enhancedReward Enhanced reward with hook modifications
   */
  function enhanceReward(
    uint256 pid,
    address user,
    uint256 baseReward
  ) external view returns (uint256 enhancedReward);

  /**
   * @notice Called when calculating penalties (read-only)
   * @param pid Pool ID
   * @param user User address
   * @param stakedAmount Staked amount
   * @param basePenalty Base calculated penalty
   * @return enhancedPenalty Enhanced penalty with hook modifications
   */
  function enhancePenalty(
    uint256 pid,
    address user,
    uint256 stakedAmount,
    uint256 basePenalty
  ) external view returns (uint256 enhancedPenalty);
}
