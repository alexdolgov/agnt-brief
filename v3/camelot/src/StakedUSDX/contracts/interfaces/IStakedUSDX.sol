// SPDX-License-Identifier: LGPL-3.0
pragma solidity 0.8.20;

interface IStakedUSDX {
  struct UserCooldown {
    uint104 cooldownEnd;
    uint256 underlyingAmount;
  }

  event RewardsReceived(uint256 amount);
  event LockedAmountRedistributed(address indexed from, address indexed to, uint256 amount);
  event CooldownDurationUpdated(uint24 previousDuration, uint24 newDuration);
  event ConfigPoolLimit(uint256 previousMaxDeposit, uint256 newMaxDeposit);
  event PausedDeposit(address account);
  event UnpausedDeposit(address account);
  event PausedWithdraw(address account);
  event UnpausedWithdraw(address account);

  /**
   * @notice Allows the rewarder to transfer rewards from the controller contract into this contract.
   * @param amount The amount of rewards to transfer.
   */
  function transferInRewards(uint256 amount) external;

  /**
   * @notice Claim the staking amount after the cooldown has finished. The address can only retire the full amount of assets.
   * @dev unstake can be called after cooldown have been set to 0, to let accounts to be able to claim remaining assets locked at Silo
   * @param receiver Address to send the assets by the staker
   */
  function unstake(address receiver) external;

  /**
   * @notice redeem assets and starts a cooldown to claim the converted underlying asset
   * @param assets assets to redeem
   */
  function cooldownAssets(uint256 assets) external returns (uint256);

  /**
   * @notice redeem shares into assets and starts a cooldown to claim the converted underlying asset
   * @param shares shares to redeem
   */
  function cooldownShares(uint256 shares) external returns (uint256);

  /**
   * @notice Set cooldown duration.
   * If cooldown duration is set to zero, the StakedUSDX behavior changes to follow ERC4626 standard and disables cooldownShares and cooldownAssets methods.
   * If cooldown duration is greater than zero, the ERC4626 withdrawal and redeem functions are disabled, breaking the ERC4626 standard, and enabling the cooldownShares and the cooldownAssets functions.
   * @param duration Duration of the cooldown
   */
  function setCooldownDuration(uint24 duration) external;

  /**
   * @notice Config pool limit
   * @param _poolDepositLimit Max pool deposit
   */
  function configPoolLimit(uint256 _poolDepositLimit) external;

  /**
   * @dev Pauses deposit.
   * @notice Only callable by addresses with the owner.
   */
  function pauseDeposit() external;

  /**
   * @dev Unpauses deposit.
   * @notice Only callable by addresses with the owner.
   */
  function unpauseDeposit() external;

  /**
   * @dev Pauses withdraw.
   * @notice Only callable by addresses with the owner.
   */
  function pauseWithdraw() external;

  /**
   * @dev Unpauses withdraw.
   * @notice Only callable by addresses with the owner.
   */
  function unpauseWithdraw() external;

  /**
   * @dev Whether the address is on the blacklist.
   * @param _address The address to blacklist.
   * @param isFullBlacklisting Soft or full blacklisting level.
   * @return Whether the address is on the blacklist.
   */
  function isBlacklist(address _address, bool isFullBlacklisting) external view returns (bool);

  /**
   * @notice Allows the blacklist managers to blacklist addresses.
   * @param target The address to blacklist.
   * @param isFullBlacklisting Soft or full blacklisting level.
   */
  function addToBlacklist(address target, bool isFullBlacklisting) external;

  /**
   * @notice Allows the blacklist managers to un-blacklist addresses.
   * @param target The address to un-blacklist.
   * @param isFullBlacklisting Soft or full blacklisting level.
   */
  function removeFromBlacklist(address target, bool isFullBlacklisting) external;

  /**
   * @dev Check if an address has the Rewarder Manager role.
   * @param _rewarder The address to check.
   * @return Whether the address has the Rewarder Manager role.
   */
  function isRewarder(address _rewarder) external view returns (bool);

  /**
   * @dev Add an address as a Rewarder Manager.
   * @notice Only callable by addresses with the owner.
   * @param _rewarder The address to grant the Rewarder Manager role.
   */
  function addRewarder(address _rewarder) external;

  /**
   * @dev Remove an address from the Rewarder Manager role.
   * @notice Only callable by addresses with the owner.
   * @param _rewarder The address to revoke the Rewarder Manager role from.
   */
  function removeRewarder(address _rewarder) external;

  /**
   * @dev Check if an address has the Blacklist Manager role.
   * @param _manager The address to check.
   * @return Whether the address has the Blacklist Manager role.
   */
  function isBlacklistManager(address _manager) external view returns (bool);

  /**
   * @dev Add an address as a Blacklist Manager.
   * @notice Only callable by addresses with the owner.
   * @param _manager The address to grant the Blacklist Manager role.
   */
  function addBlacklistManager(address _manager) external;

  /**
   * @dev Remove an address from the Blacklist Manager role.
   * @notice Only callable by addresses with the owner.
   * @param _manager The address to revoke the Blacklist Manager role from.
   */
  function removeBlacklistManager(address _manager) external;

  /**
   * @notice Allows the owner to rescue tokens accidentally sent to the contract.
   * Note that the owner cannot rescue USDX tokens because they functionally sit here
   * and belong to stakers but can rescue staked USDX as they should never actually
   * sit in this contract and a staker may well transfer them here by accident.
   * @param token The token to be rescued.
   * @param amount The amount of tokens to be rescued.
   * @param to Where to send rescued tokens
   */
  function rescueTokens(address token, uint256 amount, address to) external;

  /**
   * @dev Burns the full restricted user amount and mints to the desired owner address.
   * @param from The address to burn the entire balance, with the FULL_RESTRICTED_STAKER_ROLE
   * @param to The address to mint the entire balance of "from" parameter.
   */
  function redistributeLockedAmount(address from, address to) external;

  /**
   * @notice Returns the amount of USDX tokens that are unvested in the contract.
   */
  function getUnvestedAmount() external view returns (uint256);
}
