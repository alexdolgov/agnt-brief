// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

import '@openzeppelin/contracts/interfaces/IERC20.sol';

/// @dev https://snowtrace.io/address/0x2b2C81e08f1Af8835a78Bb2A90AE924ACE0eA4bE
interface ISAVAX is IERC20 {
  struct UnlockRequest {
    // The timestamp at which the `shareAmount` was requested to be unlocked
    uint startedAt;
    // The amount of shares to burn
    uint shareAmount;
  }

  /**
   * @notice Get a specific unlock request for a user by index
   * @param user User address
   * @param index Index of the unlock request
   * @return The UnlockRequest struct at the given index
   */
  function userUnlockRequests(address user, uint index) external view returns (UnlockRequest memory);

  function userSharesInCustody(address user) external view returns (uint);

  function submit() external payable returns (uint);

  function getSharesByPooledAvax(uint avaxAmount) external view returns (uint);

  function getPooledAvaxByShares(uint sharesAmount) external view returns (uint);

  /**
   * @notice Start unlocking cooldown period for `shareAmount` AVAX
   * @param shareAmount Amount of shares to unlock
   */
  function requestUnlock(uint shareAmount) external;

  /**
   * @notice Get the number of active unlock requests by user
   * @param user User address
   */
  function getUnlockRequestCount(address user) external view returns (uint);

  /**
   * @notice Redeem all redeemable AVAX from all unlocks
   */
  function redeem() external;

  /**
   * @notice Redeem all sAVAX held in custody for overdue unlock requests
   */
  function redeemOverdueShares() external;
}
