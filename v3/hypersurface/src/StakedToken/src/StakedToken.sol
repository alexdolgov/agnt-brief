// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IERC20} from '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {SafeERC20} from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {RewardsManager} from './RewardsManager.sol';
import {RoleManager} from './utils/RoleManager.sol';
import {ERC20} from '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import {IStakedToken} from './interfaces/IStakedToken.sol';
import {Pausable} from '@openzeppelin/contracts/utils/Pausable.sol';
/**
 * @title StakedToken
 * @notice Token contract allowing users to stake an underlying token and earn rewards, 
 *         with slashing capability and cooldown-based unstaking.
 */
contract StakedToken is IStakedToken, RoleManager, RewardsManager, ERC20, Pausable {
  using SafeERC20 for IERC20;

  // ----------------------------
  // -----------Constants--------
  // ----------------------------

  /**
   * @notice Role constant for slashing admin
   */
  uint256 public constant SLASH_ADMIN_ROLE = 0;

  /**
   * @notice Role constant for cooldown admin
   */
  uint256 public constant COOLDOWN_ADMIN_ROLE = 1;

  /**
   * @notice Role constant for an entity that can trigger claims on behalf of users
   */
  uint256 public constant CLAIM_HELPER_ROLE = 2;

  /**
  * @notice Role constant for an entity that can pause the contract
   */

  uint public constant PAUSE_ADMIN_ROLE = 3;
  /**
   * @notice Initial exchange rate set upon initialization (1e18)
   */
  uint256 public constant INITIAL_EXCHANGE_RATE = 1e18;

  /**
   * @notice Exchange rate unit (1e18)
   */
  uint256 public constant EXCHANGE_RATE_UNIT = 1e18;

  /**
   * @notice Initial emission rate set upon initialization (1e17)
   */
  uint256 public constant INITIAL_EMISSION_RATE = 1e17;
  // ----------------------------
  // ----------Immutables--------
  // ----------------------------

  /**
   * @notice The token users stake
   */
  IERC20 public immutable STAKED_TOKEN;

  /**
   * @notice The token distributed as rewards
   */
  IERC20 public immutable REWARD_TOKEN;

  /**
   * @notice Window (in seconds) after cooldown in which a user can unstake
   */
  uint256 public unstakeWindow;

  /**
   * @notice Address holding reward tokens to be pulled from
   */
  address public rewardsVault;

  // ----------------------------
  // -------Storage / State------
  // ----------------------------


  /**
   * @notice Whether a slashing event has been triggered but not yet settled
   */
  bool public inPostSlashingPeriod;

  /**
  @notice Whether cooldown is enabled in post slashing period
   */
  bool public coolDownEnabledInPostSlashinPeriod;

  /**
   * @notice The total duration (seconds) of the cooldown period
   */
  uint256 internal _cooldownSeconds;

  /**
   * @notice The maximum percentage that can be slashed at once
   */
  uint256 internal _maxSlashablePercentage;

  /**
   * @notice Current exchange rate between staked tokens (underlying) and shares
   */
  uint256 internal _currentExchangeRate;

  /**
   * @notice Records each user's cooldown data
   */
  mapping(address => CooldownSnapshot) public stakersCooldowns;

  /**
   * @notice Tracks pending claimable rewards for each user
   */
  mapping(address staker => uint256 rewards) public stakerRewardsToClaim;


  //-----Modifiers--------------

  modifier onlySlashingAdmin() {
    require(
      msg.sender == getAdmin(SLASH_ADMIN_ROLE),
      'CALLER_NOT_SLASHING_ADMIN'
    );
    _;
  }

  modifier onlyCooldownAdmin() {
    require(
      msg.sender == getAdmin(COOLDOWN_ADMIN_ROLE),
      'CALLER_NOT_COOLDOWN_ADMIN'
    );
    _;
  }

  modifier onlyClaimHelper() {
    require(
      msg.sender == getAdmin(CLAIM_HELPER_ROLE),
      'CALLER_NOT_CLAIM_HELPER'
    );
    _;
  }

  modifier onlyPauseAdmin() {
    require(
      msg.sender == getAdmin(PAUSE_ADMIN_ROLE),
      'CALLER_NOT_PAUSE_ADMIN'
    );
    _;
  }

  // ----------------------------
  // ---------Constructor--------
  // ----------------------------

  /**
   * @notice Constructor to initialize the StakedToken contract
   * @param stakedToken The token to be staked by users
   * @param rewardToken The token distributed as rewards
   * @param _unstakeWindow The window (in seconds) after cooldown in which users can unstake
   * @param _rewardsVault The address from which rewards will be pulled
   * @param emissionManager The address controlling the emission rate
   * @param distributionDuration Duration (in seconds) for which emissions are distributed
   * @param slashingAdmin Address granted the slashing admin role
   * @param cooldownPauseAdmin Address granted the cooldown admin role
   * @param claimHelper Address granted the claim helper role
   * @param maxSlashablePercentage Maximum slashing percentage
   * @param cooldownSeconds Cooldown duration (in seconds) before unstaking
   */
  constructor(
    address stakedToken,
    address rewardToken,
    uint256 _unstakeWindow,
    address _rewardsVault,
    address emissionManager,
    uint128 distributionDuration,
    address slashingAdmin,
    address cooldownPauseAdmin,
    address claimHelper,
    uint256 maxSlashablePercentage,
    uint256 cooldownSeconds,
    address pauseAdmin
  )
    ERC20("STAKED_AVNT", "stkAVNT")
    RewardsManager(emissionManager, distributionDuration)
  {
    STAKED_TOKEN = IERC20(stakedToken);
    REWARD_TOKEN = IERC20(rewardToken);
    unstakeWindow = _unstakeWindow;
    rewardsVault = _rewardsVault;

    _initialize(slashingAdmin, cooldownPauseAdmin, claimHelper, pauseAdmin, maxSlashablePercentage, cooldownSeconds);
    _updateEmissionRate(INITIAL_EMISSION_RATE, 0);
  }

  // ----------------------------
  // ---------External-----------
  // ----------------------------

  /**
   * @notice Updates the emission rate with respect to total staked supply
   * @param _newEmissionRate The new emission rate
   */
  function configureEmissionRate(uint256 _newEmissionRate) external {
    require(msg.sender == emissionsManager, 'ONLY_EMISSION_MANAGER');
    _updateEmissionRate(_newEmissionRate, totalSupply());
  }
  /**
   * @notice Updates the distribution end timestamp
   * @param _newDistributionEnd The new distribution end timestamp
   */
  function updateDistributionEnd(uint256 _newDistributionEnd) external {
    require(msg.sender == emissionsManager, 'ONLY_EMISSION_MANAGER');
    _updateGlobalIndex(totalSupply());

    distributionEnd = _newDistributionEnd;
    emit DistributionEndUpdated(_newDistributionEnd);
  }

  /**
   * @notice Updates the rewards vault address
   * @param _newRewardsVault The new rewards vault address
   */
  function updateRewardsVault(address _newRewardsVault) external onlyPauseAdmin{
    require(_newRewardsVault != address(0), 'ZERO_ADDRESS');
    rewardsVault = _newRewardsVault;
    emit RewardsVaultUpdated(rewardsVault);
  }

  /**
   * @notice Updates the emissions manager address
   * @param _newEmissionsManager The new emissions manager address
   */
  function updateEmissionsManager(address _newEmissionsManager) external onlyPauseAdmin{
    require(_newEmissionsManager != address(0), 'ZERO_ADDRESS');
    emissionsManager = _newEmissionsManager;
    emit EmissionsManagerUpdated(emissionsManager);
  }

  /**
    * @notice Pauses the contract
    */
  function pause() external onlyPauseAdmin {
      _pause();
  }

  /**
    * @notice Unpauses the contract
    */
  function unpause() external onlyPauseAdmin {
      _unpause();
  }

  /**
   * @notice Initiates cooldown for the caller's staked tokens
   */
  function cooldown() external {
    _cooldown(msg.sender);
  }

  /**
   * @notice Initiates cooldown on behalf of a user
   * @param from The user address for which cooldown is triggered
   */
  function cooldownOnBehalfOf(address from) external onlyClaimHelper {
    _cooldown(from);
  }

  /**
   * @notice Stakes tokens from the caller, transferring the newly minted shares to `to`
   * @param to Address to receive the minted shares
   * @param amount Amount of tokens to stake
   */
  function stake(address to, uint256 amount) external{
    _stake(msg.sender, to, amount);
  }

  /**
   * @notice Redeems staked tokens for the caller
   * @param to Address to receive the underlying tokens
   * @param amount Number of shares to redeem
   */
  function redeem(address to, uint256 amount) external {
    _redeem(msg.sender, to, amount);
  }

  /**
   * @notice Redeems staked tokens on behalf of a user
   * @param from The user from whom shares are redeemed
   * @param to Address to receive the underlying
   * @param amount Number of shares to redeem
   */
  function redeemOnBehalf(address from, address to, uint256 amount) external onlyClaimHelper {
    _redeem(from, to, amount);
  }

  /**
   * @notice Claims rewards for the caller
   * @param to Address to receive the rewards
   * @param amount Amount of rewards to claim
   */
  function claimRewards(address to, uint256 amount) external {
    _claimRewards(msg.sender, to, amount);
  }

  /**
   * @notice Claims rewards on behalf of a user
   * @param from The user whose rewards are claimed
   * @param to Address to receive the rewards
   * @param amount The amount to claim
   * @return The actual amount of rewards claimed
   */
  function claimRewardsOnBehalf(
    address from,
    address to,
    uint256 amount
  ) external onlyClaimHelper returns (uint256) {
    return _claimRewards(from, to, amount);
  }

  /**
   * @notice Claims rewards for the caller, then redeems staked tokens in a single call
   * @param to Address to receive the rewards and redeemed tokens
   * @param claimAmount Amount of rewards to claim
   * @param redeemAmount Number of shares to redeem
   */
  function claimRewardsAndRedeem(
    address to,
    uint256 claimAmount,
    uint256 redeemAmount
  ) external {
    _claimRewards(msg.sender, to, claimAmount);
    _redeem(msg.sender, to, redeemAmount);
  }

  /**
   * @notice Claims rewards and redeems tokens on behalf of a user
   * @param from The user whose rewards are claimed and shares are redeemed
   * @param to Address to receive the rewards and redeemed tokens
   * @param claimAmount Amount of rewards to claim
   * @param redeemAmount Number of shares to redeem
   */
  function claimRewardsAndRedeemOnBehalf(
    address from,
    address to,
    uint256 claimAmount,
    uint256 redeemAmount
  ) external onlyClaimHelper {
    _claimRewards(from, to, claimAmount);
    _redeem(from, to, redeemAmount);
  }

  /**
   * @notice Slashes staked tokens within the allowed percentage
   * @param destination The address receiving the slashed tokens
   * @param amount The proposed slash amount (could be reduced if it exceeds maxSlashable)
   * @return The actual amount slashed
   */
  function slash(address destination, uint256 amount)
    external
    onlySlashingAdmin
    returns (uint256)
  {
    require(!inPostSlashingPeriod, 'PREVIOUS_SLASHING_NOT_SETTLED');
    require(amount > 0, 'ZERO_AMOUNT');

    uint256 currentShares = totalSupply();
    uint256 balance = previewRedeem(currentShares);

    uint256 maxSlashable = balance*(_maxSlashablePercentage)/100;
    require(amount <= maxSlashable, 'AMOUNT_EXCEEDS_MAX_SLASHABLE');

    inPostSlashingPeriod = true;
    _updateExchangeRate(_getExchangeRate(balance - amount, currentShares));

    STAKED_TOKEN.safeTransfer(destination, amount);

    emit Slashed(destination, amount);
    return amount;
  }

  /**
   * @notice Returns previously slashed funds to re-increase the exchange rate
   * @param amount Amount of tokens being returned
   */
  function returnFunds(uint256 amount) external onlySlashingAdmin {
    uint256 currentShares = totalSupply();
    uint256 assets = previewRedeem(currentShares);
    _updateExchangeRate(_getExchangeRate(assets + amount, currentShares));

    STAKED_TOKEN.safeTransferFrom(msg.sender, address(this), amount);
    emit FundsReturned(amount);
  }

  /**
   * @notice Concludes an ongoing slashing event, allowing normal operations again
   */
  function settleSlashing() external onlySlashingAdmin {
    inPostSlashingPeriod = false;
    emit SlashingSettled();
  }
  /**
  * @notice Set whether cooldown is enabled in post slashing period
   */
  function setCoolDownInPostSlashinPeriod(bool _isEnabled) external onlyCooldownAdmin{
    coolDownEnabledInPostSlashinPeriod = _isEnabled;
  }

  /**
   * @notice Updates the maximum slashing percentage
   * @param percentage The new maximum slash percentage
   */
  function setMaxSlashablePercentage(uint256 percentage) external  onlySlashingAdmin {
    _setMaxSlashablePercentage(percentage);
  }

  /**
   * @notice Returns the current maximum slashing percentage
   * @return The max slashable percentage
   */
  function getMaxSlashablePercentage() external view  returns (uint256) {
    return _maxSlashablePercentage;
  }

  /**
   * @notice Updates the cooldown duration
   * @param cooldownSeconds The new cooldown period in seconds
   */
  function setCooldownSeconds(uint256 cooldownSeconds) external onlyCooldownAdmin {
    _setCooldownSeconds(cooldownSeconds);
  }

  function setUnstakeWindow(uint256 _unstakeWindow) external onlyCooldownAdmin {
    unstakeWindow = _unstakeWindow;
  }

  /**
   * @notice Returns the current cooldown duration
   * @return The cooldown duration in seconds
   */
  function getCooldownSeconds() external view returns (uint256) {
    return _cooldownSeconds;
  }

  /**
   * @notice Returns the current cooldown duration (named function for external usage)
   * @return The cooldown duration in seconds
   */
  function COOLDOWN_SECONDS() external view returns (uint256) {
    return _cooldownSeconds;
  }

  // ----------------------------
  // ----------Public------------
  // ----------------------------

  /**
   * @notice Returns the current exchange rate
   * @return The exchange rate as a uint256
   */
  function getExchangeRate() external view virtual  returns (uint256) {
    return _currentExchangeRate;
  }

  /**
   * @notice Returns how many underlying tokens can be redeemed for the given shares
   * @param shares Number of shares to redeem
   * @return Amount of underlying tokens redeemable
   */
  function previewRedeem(uint256 shares) public view virtual  returns (uint256) {
    return (EXCHANGE_RATE_UNIT * shares) / _currentExchangeRate;
  }

  function previewStake(uint256 assets) public view returns (uint256) {
    return (assets * _currentExchangeRate) / EXCHANGE_RATE_UNIT;
  }

  // ----------------------------
  // ---------Internal-----------
  // ----------------------------

  /**
   * @notice Internal setup function for initial admin roles and base parameters
   * @param slashingAdmin Address to assign the slashing admin role
   * @param cooldownPauseAdmin Address to assign the cooldown admin role
   * @param claimHelper Address to assign the claim helper role
   * @param pauseAdmin Address to pause open methods
   * @param maxSlashablePercentage The maximum slash percentage
   * @param cooldownSeconds The cooldown duration in seconds
   */
  function _initialize(
    address slashingAdmin,
    address cooldownPauseAdmin,
    address claimHelper,
    address pauseAdmin,
    uint256 maxSlashablePercentage,
    uint256 cooldownSeconds
  ) internal {
    require(
      slashingAdmin != address(0) &&
      cooldownPauseAdmin != address(0) &&
      claimHelper != address(0) &&
      pauseAdmin != address(0),
      'ZERO_ADDRESS'
    );
    InitAdmin[] memory initAdmins = new InitAdmin[](4);
    initAdmins[0] = InitAdmin(SLASH_ADMIN_ROLE, slashingAdmin);
    initAdmins[1] = InitAdmin(COOLDOWN_ADMIN_ROLE, cooldownPauseAdmin);
    initAdmins[2] = InitAdmin(CLAIM_HELPER_ROLE, claimHelper);
    initAdmins[3] = InitAdmin(PAUSE_ADMIN_ROLE, pauseAdmin);

    _initAdmins(initAdmins);

    _setMaxSlashablePercentage(maxSlashablePercentage);
    _setCooldownSeconds(cooldownSeconds);
    _updateExchangeRate(INITIAL_EXCHANGE_RATE);
  }

  /**
   * @notice Initiates cooldown for a given user
   * @param from The user initiating cooldown
   */
  function _cooldown(address from) internal {
    uint256 amount = balanceOf(from);
    require(amount != 0, 'INVALID_BALANCE_ON_COOLDOWN');
    stakersCooldowns[from] = CooldownSnapshot({
      timestamp: uint40(block.timestamp),
      amount: amount
    });

    emit Cooldown(from, amount, block.timestamp);
  }

  /**
   * @notice Internal logic to stake tokens on behalf of the `from` address
   * @param from The address providing tokens
   * @param to The address receiving the minted shares
   * @param amount The amount of tokens to stake
   */
  function _stake(address from, address to, uint256 amount) internal whenNotPaused {
    require(!inPostSlashingPeriod, 'SLASHING_ONGOING');
    require(amount != 0, 'INVALID_ZERO_AMOUNT');

    uint256 balanceTo = balanceOf(to);
    uint256 accruedRewards = _updateUserIndex(to, balanceTo, totalSupply());
    if (accruedRewards != 0) {
      stakerRewardsToClaim[to] += accruedRewards;
      emit RewardsAccrued(to, accruedRewards);
    }

    uint256 sharesToMint = previewStake(amount);
    require(sharesToMint != 0, 'INVALID_ZERO_SHARES');

    STAKED_TOKEN.safeTransferFrom(from, address(this), amount);
    _mint(to, sharesToMint);

    emit Staked(from, to, amount, sharesToMint);
  }

  /**
   * @notice Redeems staked tokens (burns shares, transfers underlying to `to`)
   * @param from The address that owns the shares
   * @param to The address receiving the underlying tokens
   * @param amount The number of shares to redeem
   */
  function _redeem(address from, address to, uint256 amount) internal whenNotPaused {
    require(amount != 0, 'INVALID_ZERO_AMOUNT');

    CooldownSnapshot memory cooldownSnapshot = stakersCooldowns[from];
    bool mustEnforceCooldown = !inPostSlashingPeriod || coolDownEnabledInPostSlashinPeriod;
    if (mustEnforceCooldown) {
      require(cooldownSnapshot.timestamp != 0, "NO_COOLDOWN_INITIATED");
      require(
        block.timestamp >= cooldownSnapshot.timestamp + _cooldownSeconds,
        'INSUFFICIENT_COOLDOWN'
      );
      require(
        block.timestamp - (cooldownSnapshot.timestamp + _cooldownSeconds) <= unstakeWindow,
        'UNSTAKE_WINDOW_FINISHED'
      );
    }

    uint256 balanceFrom = balanceOf(from);
    uint256 maxRedeemable = inPostSlashingPeriod ? balanceFrom : cooldownSnapshot.amount;
    require(maxRedeemable != 0, 'INVALID_ZERO_MAX_REDEEMABLE');

    uint256 toRedeem = amount > maxRedeemable ? maxRedeemable : amount;

    _updateCurrentUnclaimedRewards(from, balanceFrom, true);

    uint256 underlyingToRedeem = previewRedeem(toRedeem);
    _burn(from, toRedeem);

    if (cooldownSnapshot.timestamp != 0) {
      if (cooldownSnapshot.amount <= toRedeem) {
        delete stakersCooldowns[from];
      } else {
        stakersCooldowns[from].amount = (cooldownSnapshot.amount - toRedeem);
      }
    }

    STAKED_TOKEN.safeTransfer(to, underlyingToRedeem);
    emit Redeem(from, to, underlyingToRedeem, toRedeem);
  }

  /**
   * @notice Claims rewards for a specific user to a given address
   * @param from The user whose rewards are being claimed
   * @param to The address receiving the claimed rewards
   * @param amount The requested amount to claim
   * @return The actual amount claimed
   */
  function _claimRewards(address from, address to, uint256 amount) internal whenNotPaused returns (uint256) {
    require(amount != 0, 'INVALID_ZERO_AMOUNT');
    uint256 newTotalRewards = _updateCurrentUnclaimedRewards(from, balanceOf(from), false);

    uint256 toClaim = amount > newTotalRewards ? newTotalRewards : amount;
    require(toClaim != 0, 'INVALID_ZERO_AMOUNT');

    stakerRewardsToClaim[from] = newTotalRewards - toClaim;
    REWARD_TOKEN.safeTransferFrom(rewardsVault, to, toClaim);

    emit RewardsClaimed(from, to, toClaim);
    return toClaim;
  }

  /**
   * @notice Updates the user's unclaimed rewards by updating user index
   * @param user The user for which to update the rewards
   * @param userBalance The current share balance of the user
   * @param updateStorage Whether to update storage with the new reward total
   * @return The updated total unclaimed rewards for the user
   */
  function _updateCurrentUnclaimedRewards(
    address user,
    uint256 userBalance,
    bool updateStorage
  ) internal returns (uint256) {
    uint256 accruedRewards = _updateUserIndex(user, userBalance, totalSupply());
    uint256 unclaimedRewards = stakerRewardsToClaim[user] + accruedRewards;

    if (accruedRewards != 0) {
      if (updateStorage) {
        stakerRewardsToClaim[user] = unclaimedRewards;
      }
      emit RewardsAccrued(user, accruedRewards);
    }
    return unclaimedRewards;
  }

  /**
   * @notice Sets the maximum slashing percentage
   * @param percentage The new slashing percentage (< 100%)
   */
  function _setMaxSlashablePercentage(uint256 percentage) internal {
    require(percentage < 100, "INVALID_SLASHABLE_PERCENT");
    _maxSlashablePercentage = percentage;
    emit MaxSlashablePercentageChanged(percentage);
  }

  /**
   * @notice Sets the cooldown period in seconds
   * @param cooldownSeconds The new cooldown duration
   */
  function _setCooldownSeconds(uint256 cooldownSeconds) internal {
    _cooldownSeconds = cooldownSeconds;
    emit CooldownSecondsChanged(cooldownSeconds);
  }

  /**
   * @notice Updates the exchange rate and emits an event
   * @param newExchangeRate The new exchange rate to set
   */
  function _updateExchangeRate(uint256 newExchangeRate) internal virtual {
    require(newExchangeRate != 0, 'ZERO_EXCHANGE_RATE');
    _currentExchangeRate = newExchangeRate;
    emit ExchangeRateChanged(newExchangeRate);
  }

  /**
   * @notice Computes a new exchange rate given total assets and total shares
   * @dev Always rounds up to ensure 100% backing
   * @param totalAssets The total underlying tokens in the contract
   * @param totalShares The total minted shares
   * @return Exchange rate with 18-decimal precision
   */
  function _getExchangeRate(uint256 totalAssets, uint256 totalShares)
    internal
    pure
    returns (uint256)
  {
    // ( (totalShares * EXCHANGE_RATE_UNIT) + totalAssets - 1 ) / totalAssets
    // to ensure rounding up
    return
      (((totalShares * EXCHANGE_RATE_UNIT) + totalAssets - 1) / totalAssets);
  }

    /**
     * @dev Overriding `_update` to insert custom logic for all transfers,
     *      including minting (from == address(0)) and burning (to == address(0)).
     */
    function _update(address from, address to, uint256 amount)
        internal
        virtual
        override
    {
        uint256 balanceFrom = balanceOf(from);
        _updateCurrentUnclaimedRewards(from, balanceFrom, true);

        if (from != to) {
          uint256 balanceTo = balanceOf(to);
          _updateCurrentUnclaimedRewards(to, balanceTo, true);

          CooldownSnapshot memory senderCooldown = stakersCooldowns[from];
          if (senderCooldown.timestamp != 0) {
              if (balanceFrom == amount) {
              delete stakersCooldowns[from];
              } else if (balanceFrom - amount < senderCooldown.amount) {
              stakersCooldowns[from].amount = balanceFrom - amount;
              }
          }
        }
        super._update(from, to, amount);
    }
}
