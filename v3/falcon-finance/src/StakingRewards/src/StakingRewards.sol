// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {AccessControlEnumerable} from "@openzeppelin/contracts/access/extensions/AccessControlEnumerable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IStakingRewards} from "./IStakingRewards.sol";

/// @title StakingRewards
/// @notice The `StakingRewards` contracts allows to stake an ERC20 token to receive as reward another ERC20
/// @dev This contracts is managed by the reward distributor and implements the staking interface
contract StakingRewards is IStakingRewards, AccessControlEnumerable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /// @notice User cooldown parameters
    struct UserCooldown {
        uint104 cooldownEnd;
        uint256 underlyingAmount;
    }

    // ============================ References to contracts ========================

    /// @notice ERC20 token given as reward
    IERC20 public immutable rewardToken;

    /// @notice ERC20 token used for staking
    IERC20 public immutable stakingToken;

    /// @notice Base of the staked token, it is going to be used in the case of sanTokens
    /// which are not in base 10**18
    uint256 public immutable stakingBase;

    /// @notice Rewards Distribution contract for this staking contract
    address public rewardsDistribution;

    // ============================ System parameters ==============================

    uint24 public constant MAX_COOLDOWN_DURATION = 90 days;

    uint256 public constant MAX_LOCKUP_DURATION = 730 days;

    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    /// @notice Cooldown duration
    uint24 public cooldownDuration;

    /// @notice User cooldowns
    mapping(address => UserCooldown) public cooldowns;

    /// @notice Lockup duration
    uint256 public lockupDuration;

    /// @notice User deposit time
    mapping(address => uint256) public depositAt;

    /// @notice Silo for staking token in cooldown
    uint256 public silo;

    /// @notice Max cap for staking token deposits
    uint256 public cap;

    // ============================ Staking parameters =============================

    /// @notice Time at which distribution ends
    uint256 public periodFinish;

    /// @notice Reward per second given to the staking contract, split among the staked tokens
    uint256 public rewardRate;

    /// @notice Duration of the reward distribution
    uint256 public rewardsDuration;

    /// @notice Last time `rewardPerTokenStored` was updated
    uint256 public lastUpdateTime;

    /// @notice Helps to compute the amount earned by someone
    /// Cumulates rewards accumulated for one token since the beginning.
    /// Stored as a uint so it is actually a float times the base of the reward token
    uint256 public rewardPerTokenStored;

    /// @notice Stores for each account the `rewardPerToken`: we do the difference
    /// between the current and the old value to compute what has been earned by an account
    mapping(address => uint256) public userRewardPerTokenPaid;

    /// @notice Stores for each account the accumulated rewards
    mapping(address => uint256) public rewards;

    uint256 internal _totalSupply;

    mapping(address => uint256) internal _balances;

    // ============================ Events =========================================

    event RewardAdded(uint256 reward);

    event Staked(address indexed user, uint256 amount);

    event Withdrawn(address indexed user, uint256 amount);

    event RewardPaid(address indexed user, uint256 reward);

    event Recovered(address indexed tokenAddress, address indexed to, uint256 amount);

    event RewardsDistributionUpdated(address indexed _rewardsDistribution);

    event RewardsDurationUpdated(uint256 previousDuration, uint256 newDuration);

    event Cooldown(address indexed user, uint256 amount);

    event CooldownDurationUpdated(uint24 previousDuration, uint24 newDuration);

    event LockupDurationUpdated(uint256 previousDuration, uint256 newDuration);

    event CapUpdated(uint256 previousCap, uint256 newCap);

    event FundsPulled(address indexed caller, uint256 amount);

    event FundsPut(address indexed caller, uint256 amount);

    // ============================ Constructor ====================================

    /// @notice Initializes the staking contract with a first set of parameters
    /// @param _admin Address owning the rewards contract
    /// @param _manager Address managing the staking token
    /// @param _rewardsDistribution Address owning the rewards token
    /// @param _rewardToken ERC20 token given as reward
    /// @param _stakingToken ERC20 token used for staking
    /// @param _rewardsDuration Duration of the staking contract
    /// @param _cooldownDuration The duration of the cooldown period
    /// @param _lockupDuration The duration of the lockup period
    /// @param _cap Max cap for staking token deposits
    constructor(
        address _admin,
        address _manager,
        address _rewardsDistribution,
        address _rewardToken,
        address _stakingToken,
        uint256 _rewardsDuration,
        uint24 _cooldownDuration,
        uint256 _lockupDuration,
        uint256 _cap
    ) {
        require(_admin != address(0), "admin not set");
        require(_manager != address(0), "manager not set");
        require(_stakingToken != address(0), "stakingToken not set");
        require(_rewardToken != address(0), "rewardToken not set");
        require(_stakingToken != _rewardToken, "stakingToken and rewardToken must be different");
        require(_rewardsDistribution != address(0), "rewardsDistribution not set");
        require(_rewardsDuration != 0, "rewardsDuration not set");
        require(_cooldownDuration <= MAX_COOLDOWN_DURATION, "cooldownDuration exceeds max");
        require(_lockupDuration <= MAX_LOCKUP_DURATION, "lockupDuration exceeds max");

        // We are not checking the compatibility of the reward token between the distributor and this contract here
        // because it is checked by the `RewardsDistributor` when activating the staking contract
        // Parameters
        rewardToken = IERC20(_rewardToken);
        stakingToken = IERC20(_stakingToken);
        rewardsDuration = _rewardsDuration;
        rewardsDistribution = _rewardsDistribution;
        cooldownDuration = _cooldownDuration;
        lockupDuration = _lockupDuration;
        cap = _cap;

        stakingBase = 10 ** IERC20Metadata(_stakingToken).decimals();

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(MANAGER_ROLE, _manager);
    }

    // ============================ Modifiers ======================================

    /// @notice Checks to see if it is the `rewardsDistribution` calling this contract
    /// @dev There is no Access Control here, because it can be handled cheaply through these modifiers
    modifier onlyRewardsDistribution() {
        _onlyRewardsDistribution();
        _;
    }

    function _onlyRewardsDistribution() internal view {
        require(msg.sender == rewardsDistribution, "Not rewardsDistribution");
    }

    /// @notice Checks to see if the calling address is the zero address
    /// @param account Address to check
    modifier zeroCheck(address account) {
        _zeroCheck(account);
        _;
    }

    function _zeroCheck(address account) internal pure {
        require(account != address(0), "Zero address");
    }

    /// @notice Called frequently to update the staking parameters associated to an address
    /// @param account Address of the account to update
    modifier updateReward(address account) {
        _updateReward(account);
        _;
    }

    function _updateReward(address account) internal {
        rewardPerTokenStored = rewardPerToken();
        lastUpdateTime = lastTimeRewardApplicable();
        if (account != address(0)) {
            rewards[account] = earned(account);
            userRewardPerTokenPaid[account] = rewardPerTokenStored;
        }
    }

    /// @notice Checks if cooldown is off
    modifier ensureCooldownOff() {
        _ensureCooldownOff();
        _;
    }

    function _ensureCooldownOff() internal view {
        require(cooldownDuration == 0, "Cooldown not off");
    }

    /// @notice Checks if cooldown is on
    modifier ensureCooldownOn() {
        _ensureCooldownOn();
        _;
    }

    function _ensureCooldownOn() internal view {
        require(cooldownDuration > 0, "Cooldown not on");
    }

    /// @notice Checks if lockup has elapsed
    modifier lockupElapsed(address account) {
        _lockupElapsed(account);
        _;
    }

    function _lockupElapsed(address account) internal view {
        require(block.timestamp >= depositAt[account] + lockupDuration, "Lockup not ended");
    }

    // ============================ View functions =================================

    /// @notice Accesses the total supply
    /// @dev Used instead of having a public variable to respect the ERC20 standard
    function totalSupply() external view returns (uint256) {
        return _totalSupply;
    }

    /// @notice Accesses the number of token staked by an account
    /// @param account Account to query the balance of
    /// @dev Used instead of having a public variable to respect the ERC20 standard
    function balanceOf(address account) external view returns (uint256) {
        return _balances[account];
    }

    /// @notice Queries the last timestamp at which a reward was distributed
    /// @dev Returns the current timestamp if a reward is being distributed and the end of the staking
    /// period if staking is done
    function lastTimeRewardApplicable() public view returns (uint256) {
        return Math.min(block.timestamp, periodFinish);
    }

    /// @notice Used to actualize the `rewardPerTokenStored`
    /// @dev It adds to the reward per token: the time elapsed since the `rewardPerTokenStored` was
    /// last updated multiplied by the `rewardRate` divided by the number of tokens
    function rewardPerToken() public view returns (uint256) {
        if (_totalSupply == 0) {
            return rewardPerTokenStored;
        }
        return rewardPerTokenStored
            + (((lastTimeRewardApplicable() - lastUpdateTime) * rewardRate * stakingBase) / _totalSupply);
    }

    /// @notice Returns how much a given account earned rewards
    /// @param account Address for which the request is made
    /// @return How much a given account earned rewards
    /// @dev It adds to the rewards the amount of reward earned since last time that is the difference
    /// in reward per token from now and last time multiplied by the number of tokens staked by the person
    function earned(address account) public view returns (uint256) {
        return
            (_balances[account] * (rewardPerToken() - userRewardPerTokenPaid[account])) / stakingBase + rewards[account];
    }

    // ======================== Mutative functions forked ==========================

    /// @notice Withdraw with a cooldown period
    /// @param amount The amount of assets to cooldown for withdrawal
    /// @dev Can only cooldown after lockup duration has elapsed
    function cooldown(uint256 amount) external ensureCooldownOn lockupElapsed(msg.sender) updateReward(msg.sender) {
        require(amount > 0, "Zero amount");
        require(amount <= _balances[msg.sender], "Exceeded balance");

        cooldowns[msg.sender].cooldownEnd = uint104(block.timestamp) + cooldownDuration;
        cooldowns[msg.sender].underlyingAmount += amount;
        silo += amount;
        _totalSupply = _totalSupply - amount;
        _balances[msg.sender] = _balances[msg.sender] - amount;
        emit Cooldown(msg.sender, amount);
    }

    /// @notice Lets someone stake a given amount of `stakingTokens`
    /// @param amount Amount of ERC20 staking token that the `msg.sender` wants to stake
    function stake(uint256 amount) external nonReentrant updateReward(msg.sender) {
        _stake(amount, msg.sender);
    }

    /// @notice Lets a user unstake cooldown collateral from the staking contract
    /// @dev Can only unstake after cooldown duration has elapsed
    function unstake() public nonReentrant updateReward(msg.sender) {
        UserCooldown storage userCooldown = cooldowns[msg.sender];
        uint256 amount = userCooldown.underlyingAmount;
        require(amount > 0, "Zero cooldown assets");
        if (cooldownDuration > 0) {
            require(block.timestamp >= userCooldown.cooldownEnd, "Cooldown not ended");
        }

        userCooldown.cooldownEnd = 0;
        userCooldown.underlyingAmount = 0;
        silo -= amount;
        stakingToken.safeTransfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }

    /// @notice Lets a user withdraw a given amount of collateral from the staking contract
    /// @param amount Amount of the ERC20 staking token that the `msg.sender` wants to withdraw
    /// @dev Can only withdraw after lockup duration has elapsed
    function withdraw(uint256 amount)
        public
        ensureCooldownOff
        lockupElapsed(msg.sender)
        nonReentrant
        updateReward(msg.sender)
    {
        require(amount > 0, "Zero amount");
        _totalSupply = _totalSupply - amount;
        _balances[msg.sender] = _balances[msg.sender] - amount;
        stakingToken.safeTransfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }

    /// @notice Triggers a payment of the reward earned to the msg.sender
    function getReward() public nonReentrant updateReward(msg.sender) {
        uint256 reward = rewards[msg.sender];
        if (reward > 0) {
            rewards[msg.sender] = 0;
            rewardToken.safeTransfer(msg.sender, reward);
            emit RewardPaid(msg.sender, reward);
        }
    }

    /// @notice Exits someone
    /// @dev This function lets the caller withdraw its staking and claim rewards
    // Attention here, there may be reentrancy attacks because of the following call
    // to an external contract done before other things are modified, yet since the `rewardToken`
    // is mostly going to be a trusted contract controlled by governance,
    // this is not an issue. If the `rewardToken` changes to an untrusted contract, this need to be updated.
    function exit() external {
        withdraw(_balances[msg.sender]);
        getReward();
    }

    /// @notice Internal function to stake called by `stake`
    /// @param amount Amount to stake
    /// @param onBehalf Address to stake on behalf of
    /// @dev Before calling this function, it has already been verified whether this address was a zero address or not
    function _stake(uint256 amount, address onBehalf) internal {
        require(amount > 0, "Zero amount");
        if (cap > 0) {
            require(amount + _totalSupply <= cap, "Exceeded cap");
        }
        depositAt[onBehalf] = block.timestamp;
        stakingToken.safeTransferFrom(msg.sender, address(this), amount);
        _totalSupply = _totalSupply + amount;
        _balances[onBehalf] = _balances[onBehalf] + amount;
        emit Staked(onBehalf, amount);
    }

    // ====================== Restricted Functions =================================

    /// @notice Adds rewards to be distributed
    /// @param reward Amount of reward tokens to distribute
    /// @dev Reward tokens transferred from `rewardsDistribution` and will be distributed during
    /// `rewardsDuration` set previously
    function notifyRewardAmount(uint256 reward)
        external
        override
        onlyRewardsDistribution
        nonReentrant
        updateReward(address(0))
    {
        rewardToken.safeTransferFrom(msg.sender, address(this), reward);
        if (block.timestamp >= periodFinish) {
            // If no reward is currently being distributed, the new rate is just `reward / duration`
            rewardRate = reward / rewardsDuration;
        } else {
            // Otherwise, cancel the future reward and add the amount left to distribute to reward
            uint256 remaining = periodFinish - block.timestamp;
            uint256 leftover = remaining * rewardRate;
            rewardRate = (reward + leftover) / rewardsDuration;
        }

        // Ensures the provided reward amount is not more than the balance in the contract.
        // This keeps the reward rate in the right range, preventing overflows due to
        // very high values of `rewardRate` in the earned and `rewardsPerToken` functions;
        // Reward + leftover must be less than 2^256 / 10^18 to avoid overflow.
        uint256 balance = rewardToken.balanceOf(address(this));
        require(rewardRate <= balance / rewardsDuration, "Invalid rewardRate");

        lastUpdateTime = block.timestamp;
        periodFinish = block.timestamp + rewardsDuration; // Change the duration
        emit RewardAdded(reward);
    }

    /// @notice Withdraws staking tokens
    /// @param amount Amount to withdraw
    function pullFunds(uint256 amount) external onlyRole(MANAGER_ROLE) {
        stakingToken.safeTransfer(msg.sender, amount);
        emit FundsPulled(msg.sender, amount);
    }

    /// @notice Deposits staking tokens
    /// @param amount Amount to deposit
    function putFunds(uint256 amount) external onlyRole(MANAGER_ROLE) {
        stakingToken.safeTransferFrom(msg.sender, address(this), amount);
        emit FundsPut(msg.sender, amount);
    }

    /// @notice Withdraws ERC20 tokens that could accrue on this contract
    /// @param tokenAddress Address of the ERC20 token to withdraw
    /// @param to Address to transfer to
    /// @param amount Amount to transfer
    /// @dev A use case would be to claim tokens if the staked tokens accumulate rewards
    function recoverERC20(address tokenAddress, address to, uint256 amount)
        external
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        require(tokenAddress != address(stakingToken), "Cannot recover stakingToken");
        require(tokenAddress != address(rewardToken), "Cannot recover rewardToken");

        IERC20(tokenAddress).safeTransfer(to, amount);
        emit Recovered(tokenAddress, to, amount);
    }

    /// @notice Changes the rewards distributor associated to this contract
    /// @param _rewardsDistribution Address of the new rewards distributor contract
    /// @dev A compatibility check of the reward token is already performed in the current `RewardsDistributor` implementation
    /// which has right to call this function
    function setRewardsDistribution(address _rewardsDistribution) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        rewardsDistribution = _rewardsDistribution;
        emit RewardsDistributionUpdated(_rewardsDistribution);
    }

    /**
     * @notice Sets duration of the reward distribution
     * @param _rewardsDuration The duration of the cooldown period
     */
    function setRewardsDuration(uint256 _rewardsDuration) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_rewardsDuration != 0, "rewardsDuration cannot be zero");
        require(block.timestamp >= periodFinish, "Current distribution must end");
        uint256 previousDuration = rewardsDuration;
        require(previousDuration != _rewardsDuration, "duration not changed");

        rewardsDuration = _rewardsDuration;
        emit RewardsDurationUpdated(previousDuration, _rewardsDuration);
    }

    /// @notice Sets the cooldown duration for withdrawals
    /// @param _cooldownDuration The duration of the cooldown period
    /// @dev If the cooldown duration changes, the unstake time will change accordingly
    function setCooldownDuration(uint24 _cooldownDuration) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint24 previousDuration = cooldownDuration;
        require(previousDuration != _cooldownDuration, "duration not changed");
        require(_cooldownDuration <= MAX_COOLDOWN_DURATION, "duration exceeds max");

        cooldownDuration = _cooldownDuration;
        emit CooldownDurationUpdated(previousDuration, _cooldownDuration);
    }

    /// @notice Sets the lockup duration for withdrawals
    /// @param _lockupDuration The duration of the lockup period
    /// @dev If the lockup duration changes, the withdraw and unstake time will change accordingly
    function setLockupDuration(uint256 _lockupDuration) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 previousDuration = lockupDuration;
        require(previousDuration != _lockupDuration, "duration not changed");
        require(_lockupDuration <= MAX_LOCKUP_DURATION, "duration exceeds max");

        lockupDuration = _lockupDuration;
        emit LockupDurationUpdated(previousDuration, _lockupDuration);
    }

    /**
     * @notice Sets max cap for staking token deposits
     * @param _cap Max cap amount for staking token deposits
     */
    function setCap(uint256 _cap) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 previousCap = cap;
        require(previousCap != _cap, "cap not changed");

        cap = _cap;
        emit CapUpdated(previousCap, _cap);
    }
}
