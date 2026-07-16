// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IRefTreeStorage} from './Interfaces.sol';
import {RefProgramBase} from './RefProgramBase.sol';
import {LockableStaking} from './LockableStaking.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/security/ReentrancyGuard.sol';
import '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';

contract LpStaking is ReentrancyGuard, RefProgramBase, LockableStaking {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;
    uint256 constant _ACCURACY_ = 1e18;
    uint256 constant _OVERFLOW_LIMITER_ = type(uint256).max / _ACCURACY_;

    /* ========== STATE VARIABLES ========== */

    IERC20 public rewardsToken;
    IERC20 public stakingToken;
    uint256 public periodFinish;
    uint256 public rewardRate;
    uint256 public rewardsDuration = 7 days;
    uint256 public lastUpdateTime;
    /// @notice multiplied by _ACCURACY_
    uint256 public rewardPerTokenStored;

    /// @notice multiplied by _ACCURACY_
    mapping(address => uint256) public userRewardPerTokenPaid;
    mapping(address => uint256) public rewards;

    uint256 private _totalSupply;
    mapping(address => uint256) private _balances;

    /* ========== CONSTRUCTOR ========== */

    constructor(
        IERC20 rewardsToken_,
        IERC20 stakingToken_,
        IRefTreeStorage refTreeStorage_
    ) RefProgramBase(refTreeStorage_) {
        rewardsToken = rewardsToken_;
        stakingToken = stakingToken_;
    }

    /* ========== VIEWS ========== */

    function totalSupply() external view returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) external view returns (uint256) {
        return _balances[account];
    }

    function lastTimeRewardApplicable() public view returns (uint256) {
        return block.timestamp < periodFinish ? block.timestamp : periodFinish;
    }

    /// @notice multiplied by _ACCURACY_
    function rewardPerToken() public view returns (uint256 value) {
        value = rewardPerTokenStored;
        if (_totalSupply > 0) {
            uint256 timePassed = lastTimeRewardApplicable() - lastUpdateTime;
            value += (timePassed * rewardRate * _ACCURACY_) / _totalSupply;
        }
    }

    function earned(address account) public view returns (uint256 value) {
        uint256 rewardPerTokenEarned = rewardPerToken() - userRewardPerTokenPaid[account];
        value = (_balances[account] * rewardPerTokenEarned) / _ACCURACY_ + rewards[account];
    }

    function getRewardForDuration() external view returns (uint256) {
        return rewardRate * rewardsDuration;
    }

    function infoBundle(address user)
        external
        view
        returns (
            uint256 bal,
            uint256 all,
            uint256 earned_,
            uint256 staked
        )
    {
        bal = stakingToken.balanceOf(user);
        all = stakingToken.allowance(user, address(this));
        earned_ = earned(user);
        staked = _balances[user];
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function stake(uint256 amount, address referer) external nonReentrant updateReward(msg.sender) {
        require(amount > 0, 'Cannot stake 0');
        _totalSupply += amount;
        _balances[msg.sender] += amount;
        stakingToken.safeTransferFrom(msg.sender, address(this), amount);
        _trySetReferer(msg.sender, referer);
        emit Staked(msg.sender, amount);
    }

    function _canWithdraw(address user, uint256 amount) internal view returns (bool) {
        LockInfo storage l = _lockInfo[user];
        // Always allow to withdraw non-locked amount
        if (_balances[user] - amount >= l.amount) return true;
        // Allow to withdraw any amount after the lock period passed
        if (block.timestamp >= l.until) return true;
        // If neither are true then last chance - query agent for unlock possibility
        // And if it returns true, allow any amount
        return l.agent.exceptionalUnlockPossible(user, l.payload);
    }

    function withdraw(uint256 amount) public nonReentrant updateReward(msg.sender) {
        require(amount > 0, 'Cannot withdraw 0');
        require(_canWithdraw(msg.sender, amount), 'Withdraw blocked by agent');
        _totalSupply -= amount;
        _balances[msg.sender] -= amount;
        stakingToken.safeTransfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }

    function getReward() public nonReentrant updateReward(msg.sender) {
        uint256 reward = rewards[msg.sender];
        if (reward > 0) {
            rewards[msg.sender] = 0;
            rewardsToken.safeTransfer(msg.sender, reward);
            emit RewardPaid(msg.sender, reward);
        }
    }

    function exit() external {
        withdraw(_balances[msg.sender]);
        getReward();
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function notifyRewardAmount(uint256 reward) public onlyOwner updateReward(address(0)) {
        uint256 leftover = periodFinish > block.timestamp ? (periodFinish - block.timestamp) * rewardRate : 0;
        uint256 rewardAmount = reward + leftover;
        // Ensure the provided reward amount is not more than the balance in the contract.
        require(rewardsToken.balanceOf(address(this)) >= rewardAmount, 'Provided reward too high');
        // Prevent overflows in the future. Practically unnecessary, but depends on rewardToken parameters
        require(rewardAmount < _OVERFLOW_LIMITER_);

        rewardRate = rewardAmount / rewardsDuration;

        lastUpdateTime = block.timestamp;
        periodFinish = block.timestamp + rewardsDuration;
        emit RewardAdded(reward);
    }

    function supplyAndNotify(uint256 reward) external {
        rewardsToken.safeTransferFrom(msg.sender, address(this), reward);
        notifyRewardAmount(reward);
    }

    // Added to support recovering LP Rewards from other systems such as BAL to be distributed to holders
    function recoverERC20(IERC20 token, uint256 tokenAmount) external onlyOwner {
        require(token != stakingToken, 'Cannot withdraw the staking token');
        token.safeTransfer(owner(), tokenAmount);
        emit Recovered(token, tokenAmount);
    }

    function setRewardsDuration(uint256 _rewardsDuration) external onlyOwner {
        require(
            block.timestamp > periodFinish,
            'Previous rewards period must be complete before changing the duration for the new period'
        );
        rewardsDuration = _rewardsDuration;
        emit RewardsDurationUpdated(rewardsDuration);
    }

    /* ========== MODIFIERS ========== */

    modifier updateReward(address account) {
        rewardPerTokenStored = rewardPerToken();
        lastUpdateTime = lastTimeRewardApplicable();
        if (account != address(0)) {
            rewards[account] = earned(account);
            userRewardPerTokenPaid[account] = rewardPerTokenStored;
        }
        _;
    }

    /* ========== EVENTS ========== */

    event RewardAdded(uint256 reward);
    event Staked(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event RewardPaid(address indexed user, uint256 reward);
    event RewardsDurationUpdated(uint256 newDuration);
    event Recovered(IERC20 token, uint256 amount);
}
