// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {
  IERC20,
  SafeERC20
} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import "./IStakingHooks.sol";

/**
 * @title HarmonixStakingContract
 * @author Harmonix Team
 * @notice Production-ready Staking Contract with Hook Pattern for extensibility.
 *
 * ARCHITECTURE:
 * ✅ Hook Pattern - Extensible functionality without proxy complexity
 * ✅ Direct Deployment - No proxy overhead, maximum compatibility
 * ✅ Configurable Hooks - Different hooks per pool for flexibility
 * ✅ Fallback Logic - Works without hooks for basic functionality
 *
 * KEY FEATURES:
 * ✅ Configurable Penalty Rates - Adjustable per pool (0-50%)
 * ✅ Multi-token Support - Different tokens for staking and rewards
 * ✅ Pool Management - Create and manage multiple staking pools
 * ✅ Emergency Controls - Pause/unpause functionality
 * ✅ Gas Optimized - Efficient storage and computation
 * ✅ Block Explorer Ready - All functions visible and verified
 * ✅ Hook Extensibility - Plugin architecture for enhanced features
 *
 * HOOK BENEFITS:
 * - Add loyalty bonuses via hooks
 * - Implement dynamic penalties via hooks
 * - Custom reward calculations via hooks
 * - Analytics and monitoring via hooks
 * - Future feature additions without contract changes
 */
contract HarmonixStakingWithHooks is Ownable, ReentrancyGuard, Pausable {
  using SafeERC20 for IERC20;

  // --- Constants ---
  uint256 public constant APR_PRECISION = 10000; // Represents 100%, e.g., 50% APR is 5000.
  uint256 public constant SECONDS_PER_DAY = 86400;
  uint256 public constant MAX_PENALTY_RATE = 5000; // 50% maximum penalty rate

  // --- Structs ---

  struct PoolInfo {
    IERC20 stakingToken;
    IERC20 rewardToken;
    uint256 startTime; // Pool opens for deposits.
    uint256 lockTime; // Deposits and normal withdrawals are disabled.
    uint256 maturityTime; // Users can claim principal + rewards.
    uint256 apr; // Annual Percentage Rate (using APR_PRECISION).
    uint256 minDeposit;
    uint256 maxDeposit;
    uint256 maxPoolCap; // Maximum total tokens staked in this pool.
    uint256 totalStaked;
    uint256 penaltyRate; // Early withdrawal penalty rate (using APR_PRECISION).
    bool isPaused;
  }

  struct UserInfo {
    uint256 amount; // Amount of tokens staked by the user.
    bool hasClaimed; // True if the user has claimed rewards or withdrawn early.
  }

  // --- State Variables ---

  // Pool information
  PoolInfo[] public pools;

  // User information per pool
  mapping(uint256 => mapping(address => UserInfo)) public userInfo; // pid => user => UserInfo

  // Hook contracts per pool (optional)
  mapping(uint256 => IStakingHooks) public poolHooks; // pid => hooks contract

  // Global hooks (applies to all pools if no pool-specific hooks)
  IStakingHooks public globalHooks;

  // Wallet addresses
  address public rewardWallet;
  address public penaltyWallet;

  uint256 public earlyWithdrawThreshold; // Minimum percentage of lock time required to allow early withdrawal

  // --- Events ---

  event PoolCreated(
    uint256 indexed pid,
    address indexed stakingToken,
    address indexed rewardToken,
    uint256 startTime,
    uint256 lockTime,
    uint256 maturityTime,
    uint256 apr,
    uint256 penaltyRate
  );

  event Staked(address indexed user, uint256 indexed pid, uint256 amount);
  event Claimed(
    address indexed user,
    uint256 indexed pid,
    uint256 principal,
    uint256 reward
  );
  event EarlyWithdrawn(
    address indexed user,
    uint256 indexed pid,
    uint256 principal,
    uint256 penalty
  );
  event PoolPaused(uint256 indexed pid);
  event PoolUnpaused(uint256 indexed pid);
  event PenaltyRateUpdated(
    uint256 indexed pid,
    uint256 oldRate,
    uint256 newRate
  );
  event EarlyWithdrawThresholdUpdated(
    uint256 oldThreshold,
    uint256 newThreshold
  );

  // Hook events
  event PoolHooksSet(uint256 indexed pid, address hooks);
  event GlobalHooksSet(address hooks);
  event HookExecuted(uint256 indexed pid, address user, string hookType);

  // --- Modifiers ---

  modifier poolExists(uint256 _pid) {
    require(_pid < pools.length, "HarmonixStakingHooks: Pool does not exist");
    _;
  }

  modifier poolActive(uint256 _pid) {
    require(!pools[_pid].isPaused, "HarmonixStakingHooks: Pool is paused");
    _;
  }

  // --- Constructor ---

  constructor(
    address _initialOwner,
    address _rewardWallet,
    address _penaltyWallet
  ) Ownable(_initialOwner) {
    require(
      _rewardWallet != address(0),
      "HarmonixStakingHooks: Reward wallet cannot be zero address"
    );
    require(
      _penaltyWallet != address(0),
      "HarmonixStakingHooks: Penalty wallet cannot be zero address"
    );

    rewardWallet = _rewardWallet;
    penaltyWallet = _penaltyWallet;
  }

  // --- Admin Functions ---

  function createPool(
    address _stakingToken,
    address _rewardToken,
    uint256 _startTime,
    uint256 _lockTime,
    uint256 _maturityTime,
    uint256 _apr,
    uint256 _minDeposit,
    uint256 _maxDeposit,
    uint256 _maxPoolCap,
    uint256 _penaltyRate
  ) external onlyOwner {
    require(
      _stakingToken != address(0),
      "HarmonixStakingHooks: Staking token cannot be zero address"
    );
    require(
      _rewardToken != address(0),
      "HarmonixStakingHooks: Reward token cannot be zero address"
    );
    require(
      _startTime < _lockTime,
      "HarmonixStakingHooks: Start time must be before lock time"
    );
    require(
      _lockTime < _maturityTime,
      "HarmonixStakingHooks: Lock time must be before maturity time"
    );
    require(_apr > 0, "HarmonixStakingHooks: APR must be greater than 0");
    require(
      _minDeposit > 0,
      "HarmonixStakingHooks: Min deposit must be greater than 0"
    );
    require(
      _maxDeposit >= _minDeposit,
      "HarmonixStakingHooks: Max deposit must be >= min deposit"
    );
    require(
      _maxPoolCap >= _maxDeposit,
      "HarmonixStakingHooks: Pool cap must be >= max deposit"
    );
    require(
      _penaltyRate <= MAX_PENALTY_RATE,
      "HarmonixStakingHooks: Penalty rate too high"
    );

    uint256 pid = pools.length;
    pools.push(
      PoolInfo({
        stakingToken: IERC20(_stakingToken),
        rewardToken: IERC20(_rewardToken),
        startTime: _startTime,
        lockTime: _lockTime,
        maturityTime: _maturityTime,
        apr: _apr,
        minDeposit: _minDeposit,
        maxDeposit: _maxDeposit,
        maxPoolCap: _maxPoolCap,
        totalStaked: 0,
        penaltyRate: _penaltyRate,
        isPaused: false
      })
    );

    emit PoolCreated(
      pid,
      _stakingToken,
      _rewardToken,
      _startTime,
      _lockTime,
      _maturityTime,
      _apr,
      _penaltyRate
    );
  }

  function setPenaltyRate(
    uint256 _pid,
    uint256 _penaltyRate
  ) external onlyOwner poolExists(_pid) {
    require(
      _penaltyRate <= MAX_PENALTY_RATE,
      "HarmonixStakingHooks: Penalty rate too high"
    );

    uint256 oldRate = pools[_pid].penaltyRate;
    pools[_pid].penaltyRate = _penaltyRate;

    emit PenaltyRateUpdated(_pid, oldRate, _penaltyRate);
  }

  function setPoolHooks(
    uint256 _pid,
    address _hooks
  ) external onlyOwner poolExists(_pid) {
    poolHooks[_pid] = IStakingHooks(_hooks);
    emit PoolHooksSet(_pid, _hooks);
  }

  function setGlobalHooks(address _hooks) external onlyOwner {
    globalHooks = IStakingHooks(_hooks);
    emit GlobalHooksSet(_hooks);
  }

  function pausePool(uint256 _pid) external onlyOwner poolExists(_pid) {
    pools[_pid].isPaused = true;
    emit PoolPaused(_pid);
  }

  function unpausePool(uint256 _pid) external onlyOwner poolExists(_pid) {
    pools[_pid].isPaused = false;
    emit PoolUnpaused(_pid);
  }

  function pause() external onlyOwner {
    _pause();
  }

  function unpause() external onlyOwner {
    _unpause();
  }

  function setRewardWallet(address _rewardWallet) external onlyOwner {
    require(
      _rewardWallet != address(0),
      "HarmonixStakingHooks: Reward wallet cannot be zero address"
    );
    rewardWallet = _rewardWallet;
  }

  function setPenaltyWallet(address _penaltyWallet) external onlyOwner {
    require(
      _penaltyWallet != address(0),
      "HarmonixStakingHooks: Penalty wallet cannot be zero address"
    );
    penaltyWallet = _penaltyWallet;
  }

  function setEarlyWithdrawThreshold(uint256 _threshold) external onlyOwner {
    require(
      _threshold <= 10000,
      "HarmonixStakingHooks: Threshold cannot exceed 100%"
    );
    uint256 oldThreshold = earlyWithdrawThreshold;
    earlyWithdrawThreshold = _threshold;
    emit EarlyWithdrawThresholdUpdated(oldThreshold, _threshold);
  }

  // --- User Functions ---

  function stake(
    uint256 _pid,
    uint256 _amount
  ) external nonReentrant whenNotPaused poolExists(_pid) {
    PoolInfo storage pool = pools[_pid];
    UserInfo storage user = userInfo[_pid][msg.sender];

    require(
      block.timestamp >= pool.startTime,
      "HarmonixStakingHooks: Pool not started"
    );
    require(
      block.timestamp < pool.lockTime,
      "HarmonixStakingHooks: Pool is locked"
    );
    require(!pool.isPaused, "HarmonixStakingHooks: Pool is paused");
    require(!user.hasClaimed, "HarmonixStakingHooks: User has already claimed");
    require(
      _amount >= pool.minDeposit,
      "HarmonixStakingHooks: Amount below minimum deposit"
    );
    require(
      user.amount + _amount <= pool.maxDeposit,
      "HarmonixStakingHooks: Exceeds maximum deposit per user"
    );
    require(
      pool.totalStaked + _amount <= pool.maxPoolCap,
      "HarmonixStakingHooks: Exceeds pool capacity"
    );

    // Execute before stake hook
    IStakingHooks hooks = _getHooks(_pid);
    if (address(hooks) != address(0)) {
      bool shouldContinue = hooks.beforeStake(_pid, msg.sender, _amount);
      require(shouldContinue, "HarmonixStakingHooks: Hook rejected stake");
      emit HookExecuted(_pid, msg.sender, "beforeStake");
    }

    // Transfer tokens from user to contract
    pool.stakingToken.safeTransferFrom(msg.sender, address(this), _amount);

    // Update user and pool state
    user.amount += _amount;
    pool.totalStaked += _amount;

    // Execute after stake hook
    if (address(hooks) != address(0)) {
      hooks.afterStake(_pid, msg.sender, _amount);
      emit HookExecuted(_pid, msg.sender, "afterStake");
    }

    emit Staked(msg.sender, _pid, _amount);
  }

  function claim(
    uint256 _pid
  ) external nonReentrant whenNotPaused poolExists(_pid) {
    PoolInfo storage pool = pools[_pid];
    UserInfo storage user = userInfo[_pid][msg.sender];

    require(user.amount > 0, "HarmonixStakingHooks: No staked amount");
    require(!user.hasClaimed, "HarmonixStakingHooks: Already claimed");
    require(
      block.timestamp >= pool.maturityTime,
      "HarmonixStakingHooks: Pool not matured"
    );

    uint256 principal = user.amount;
    uint256 baseReward = _calculateBaseReward(_pid, msg.sender);
    uint256 finalReward = baseReward;

    // Execute before claim hook
    IStakingHooks hooks = _getHooks(_pid);
    if (address(hooks) != address(0)) {
      finalReward = hooks.beforeClaim(_pid, msg.sender, principal, baseReward);
      emit HookExecuted(_pid, msg.sender, "beforeClaim");
    }

    // Mark as claimed
    user.hasClaimed = true;
    pool.totalStaked -= principal;

    // Transfer principal back to user
    pool.stakingToken.safeTransfer(msg.sender, principal);

    // Transfer reward from reward wallet to user
    if (finalReward > 0) {
      pool.rewardToken.safeTransferFrom(rewardWallet, msg.sender, finalReward);
    }

    // Execute after claim hook
    if (address(hooks) != address(0)) {
      hooks.afterClaim(_pid, msg.sender, principal, finalReward);
      emit HookExecuted(_pid, msg.sender, "afterClaim");
    }

    emit Claimed(msg.sender, _pid, principal, finalReward);
  }

  function earlyWithdraw(
    uint256 _pid
  ) external nonReentrant whenNotPaused poolExists(_pid) {
    PoolInfo storage pool = pools[_pid];
    UserInfo storage user = userInfo[_pid][msg.sender];

    require(user.amount > 0, "HarmonixStakingHooks: No staked amount");
    require(!user.hasClaimed, "HarmonixStakingHooks: Already claimed");
    require(
      block.timestamp >= pool.lockTime,
      "HarmonixStakingHooks: Pool is still locked"
    );
    require(
      block.timestamp < pool.maturityTime,
      "HarmonixStakingHooks: Pool matured, use claim instead"
    );

    uint256 elapsedLockTime = block.timestamp - pool.lockTime;
    uint256 requiredLockTime = ((pool.maturityTime - pool.lockTime) *
      earlyWithdrawThreshold) / 10000;
    require(
      elapsedLockTime >= requiredLockTime,
      "HarmonixStakingHooks: Minimum lock time not met for early withdrawal"
    );

    uint256 stakedAmount = user.amount;
    uint256 penalty = (stakedAmount * pool.penaltyRate) / APR_PRECISION;
    uint256 withdrawAmount = stakedAmount - penalty;

    // Execute before early withdraw hook
    IStakingHooks hooks = _getHooks(_pid);
    if (address(hooks) != address(0)) {
      penalty = hooks.beforeEarlyWithdraw(
        _pid,
        msg.sender,
        stakedAmount,
        penalty
      );
      emit HookExecuted(_pid, msg.sender, "beforeEarlyWithdraw");
    }

    // Mark as claimed
    user.hasClaimed = true;
    pool.totalStaked -= stakedAmount;

    // Transfer remaining amount to user
    pool.stakingToken.safeTransfer(msg.sender, withdrawAmount);

    // Transfer penalty to penalty wallet
    if (penalty > 0) {
      pool.stakingToken.safeTransfer(penaltyWallet, penalty);
    }

    // Execute after early withdraw hook
    if (address(hooks) != address(0)) {
      hooks.afterEarlyWithdraw(_pid, msg.sender, withdrawAmount, penalty);
      emit HookExecuted(_pid, msg.sender, "afterEarlyWithdraw");
    }

    emit EarlyWithdrawn(msg.sender, _pid, withdrawAmount, penalty);
  }

  function unstake(
    uint256 _pid
  ) external nonReentrant whenNotPaused poolExists(_pid) {
    PoolInfo storage pool = pools[_pid];
    UserInfo storage user = userInfo[_pid][msg.sender];

    require(user.amount > 0, "HarmonixStakingHooks: No staked amount");
    require(
      block.timestamp < pool.lockTime,
      "HarmonixStakingHooks: Pool is locked"
    );

    uint256 stakedAmount = user.amount;

    // Reset user state
    user.amount = 0;

    // Update pool state
    pool.totalStaked -= stakedAmount;

    // Transfer tokens back to user
    pool.stakingToken.safeTransfer(msg.sender, stakedAmount);

    emit EarlyWithdrawn(msg.sender, _pid, stakedAmount, 0);
  }

  // --- Internal Functions ---

  function _getHooks(uint256 _pid) internal view returns (IStakingHooks) {
    // Check if pool has specific hooks
    if (address(poolHooks[_pid]) != address(0)) {
      return poolHooks[_pid];
    }

    // Fall back to global hooks
    return globalHooks;
  }

  function _calculateBaseReward(
    uint256 _pid,
    address _user
  ) internal view returns (uint256) {
    PoolInfo memory pool = pools[_pid];
    UserInfo memory user = userInfo[_pid][_user];

    if (user.amount == 0 || user.hasClaimed) {
      return 0;
    }

    uint256 stakingDuration = pool.maturityTime - pool.startTime;
    uint256 annualReward = (user.amount * pool.apr) / APR_PRECISION;
    uint256 reward = (annualReward * stakingDuration) / (365 * SECONDS_PER_DAY);

    return reward;
  }

  function _calculateBasePenalty(
    uint256 _pid,
    address /* _user */,
    uint256 _stakedAmount
  ) internal view returns (uint256) {
    PoolInfo memory pool = pools[_pid];

    // No penalty after maturity time
    if (block.timestamp >= pool.maturityTime) {
      return 0;
    }

    return (_stakedAmount * pool.penaltyRate) / APR_PRECISION;
  }

  // --- View Functions ---

  function calculateReward(
    uint256 _pid,
    address _user
  ) public view poolExists(_pid) returns (uint256) {
    uint256 baseReward = _calculateBaseReward(_pid, _user);

    // Apply hook enhancement if available
    IStakingHooks hooks = _getHooks(_pid);
    if (address(hooks) != address(0)) {
      return hooks.enhanceReward(_pid, _user, baseReward);
    }

    return baseReward;
  }

  function calculateEarlyWithdrawPenalty(
    uint256 _pid,
    address _user
  ) external view poolExists(_pid) returns (uint256) {
    UserInfo memory user = userInfo[_pid][_user];
    if (user.amount == 0) {
      return 0;
    }

    uint256 basePenalty = _calculateBasePenalty(_pid, _user, user.amount);

    // Apply hook enhancement if available
    IStakingHooks hooks = _getHooks(_pid);
    if (address(hooks) != address(0)) {
      return hooks.enhancePenalty(_pid, _user, user.amount, basePenalty);
    }

    return basePenalty;
  }

  function getPoolCount() external view returns (uint256) {
    return pools.length;
  }

  function getPoolHooks(
    uint256 _pid
  ) external view poolExists(_pid) returns (address) {
    return address(poolHooks[_pid]);
  }

  function getGlobalHooks() external view returns (address) {
    return address(globalHooks);
  }

  // --- User Information Functions ---

  /**
   * @notice Get the amount of tokens a user has staked in a specific pool
   * @param _pid Pool ID
   * @param _user User address
   * @return amount Amount of tokens staked by the user
   */
  function getUserStakedAmount(
    uint256 _pid,
    address _user
  ) external view poolExists(_pid) returns (uint256) {
    return userInfo[_pid][_user].amount;
  }

  /**
   * @notice Get estimated reward for a user in a specific pool
   * @param _pid Pool ID
   * @param _user User address
   * @return reward Estimated reward amount (includes hook enhancements if applicable)
   */
  function getUserEstimatedReward(
    uint256 _pid,
    address _user
  ) external view poolExists(_pid) returns (uint256) {
    return calculateReward(_pid, _user);
  }

  /**
   * @notice Get comprehensive user information for a specific pool
   * @param _pid Pool ID
   * @param _user User address
   * @return stakedAmount Amount of tokens staked
   * @return estimatedReward Estimated reward amount
   * @return hasClaimed Whether user has already claimed/withdrawn
   * @return canClaim Whether user can claim rewards (pool has matured)
   * @return canWithdrawEarly Whether user can perform early withdrawal
   */
  function getUserInfo(
    uint256 _pid,
    address _user
  )
    external
    view
    poolExists(_pid)
    returns (
      uint256 stakedAmount,
      uint256 estimatedReward,
      bool hasClaimed,
      bool canClaim,
      bool canWithdrawEarly
    )
  {
    UserInfo memory user = userInfo[_pid][_user];
    PoolInfo memory pool = pools[_pid];

    stakedAmount = user.amount;
    estimatedReward = stakedAmount > 0 && !user.hasClaimed
      ? calculateReward(_pid, _user)
      : 0;
    hasClaimed = user.hasClaimed;
    canClaim =
      !user.hasClaimed &&
      user.amount > 0 &&
      block.timestamp >= pool.maturityTime;
    canWithdrawEarly =
      !user.hasClaimed &&
      user.amount > 0 &&
      block.timestamp >= pool.lockTime &&
      block.timestamp < pool.maturityTime;
  }

  /**
   * @notice Get estimated penalty amount for early withdrawal
   * @param _pid Pool ID
   * @param _user User address
   * @return penalty Estimated penalty amount for early withdrawal
   */
  function getUserEstimatedPenalty(
    uint256 _pid,
    address _user
  ) external view poolExists(_pid) returns (uint256) {
    UserInfo memory user = userInfo[_pid][_user];
    if (user.amount == 0 || user.hasClaimed) {
      return 0;
    }

    uint256 basePenalty = _calculateBasePenalty(_pid, _user, user.amount);

    // Apply hook enhancement if available
    IStakingHooks hooks = _getHooks(_pid);
    if (address(hooks) != address(0)) {
      return hooks.enhancePenalty(_pid, _user, user.amount, basePenalty);
    }

    return basePenalty;
  }

  function isPoolActive(
    uint256 _pid
  ) external view poolExists(_pid) returns (bool) {
    PoolInfo memory pool = pools[_pid];
    return
      !pool.isPaused &&
      block.timestamp >= pool.startTime &&
      block.timestamp < pool.lockTime;
  }

  function isPoolMatured(
    uint256 _pid
  ) external view poolExists(_pid) returns (bool) {
    return block.timestamp >= pools[_pid].maturityTime;
  }

  function canEarlyWithdraw(
    uint256 _pid
  ) external view poolExists(_pid) returns (bool) {
    PoolInfo memory pool = pools[_pid];
    return
      block.timestamp >= pool.lockTime && block.timestamp < pool.maturityTime;
  }

  function hasHooks(
    uint256 _pid
  ) external view poolExists(_pid) returns (bool) {
    return address(_getHooks(_pid)) != address(0);
  }
}
