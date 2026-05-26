// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

interface IStakedToken {

  /**
   * @dev Holds cooldown data for a user
   * @param timestamp The time at which cooldown was initiated
   * @param amount The balance of staked tokens at the time of initiating cooldown
   */
  struct CooldownSnapshot {
    uint256 timestamp;
    uint256 amount;
  }

  // ----------------------------
  // ----------Events------------
  // ----------------------------

  /**
   * @notice Emitted when tokens are staked
   * @param from The address staking the tokens
   * @param to The address receiving the staked shares
   * @param amount The amount of tokens staked
   * @param sharesMinted The number of shares minted
   */
  event Staked(address indexed from, address indexed to, uint256 amount, uint256 sharesMinted);

  /**
   * @notice Emitted when the cooldown is triggered for a user
   * @param user The user initiating cooldown
   * @param amount The staked balance at time of cooldown
   * @param timeStamp The time at which cooldown was initiated
   */
  event Cooldown(address indexed user, uint256 amount, uint timeStamp);

  /**
   * @notice Emitted when tokens are redeemed (unstaked)
   * @param from The address redeeming the shares
   * @param to The address receiving the underlying tokens
   * @param underlyingRedeemed Amount of underlying tokens redeemed
   * @param sharesBurnt Shares burnt to redeem the underlying
   */
  event Redeem(address indexed from, address indexed to, uint256 underlyingRedeemed, uint256 sharesBurnt);

  /**
   * @notice Emitted when a user's rewards are accrued
   * @param user The user for whom rewards accrued
   * @param amount The amount of new rewards accrued
   */
  event RewardsAccrued(address indexed user, uint256 amount);

  /**
   * @notice Emitted when rewards are claimed
   * @param from The user from whom claims are drawn
   * @param to The address receiving the rewards
   * @param amount The amount of rewards claimed
   */
  event RewardsClaimed(address indexed from, address indexed to, uint256 amount);

  /**
   * @notice Emitted when the exchange rate changes
   * @param newExchangeRate The updated exchange rate
   */
  event ExchangeRateChanged(uint256 newExchangeRate);

  /**
   * @notice Emitted when slashing occurs
   * @param destination Address receiving slashed tokens
   * @param amount Amount slashed
   */
  event Slashed(address indexed destination, uint256 amount);

  /**
   * @notice Emitted when slashed funds are returned
   * @param amount Amount returned
   */
  event FundsReturned(uint256 amount);

  /**
   * @notice Emitted when slashing is settled
   */
  event SlashingSettled();

  /**
   * @notice Emitted when the maximum slashing percentage is changed
   * @param newPercentage The updated slashing percentage
   */
  event MaxSlashablePercentageChanged(uint256 newPercentage);

  /**
   * @notice Emitted when cooldown seconds are changed
   * @param newCooldownSeconds The updated cooldown period
   */
  event CooldownSecondsChanged(uint256 newCooldownSeconds);

  /**
   * @notice Emitted when the rewards vault is updated
   * @param newRewardsVault The new rewards vault address
   */
  event RewardsVaultUpdated(address newRewardsVault);

  /**
   * @notice Emitted when the emissions manager is updated
   * @param newEmissionsManager The new emissions manager address
   */
  event EmissionsManagerUpdated(address newEmissionsManager);

  /**
  * @notice Emitted when distribution end is updated
  * @param newDistributionEnd The new distribution end
   */
  event DistributionEndUpdated(uint256 newDistributionEnd);
}