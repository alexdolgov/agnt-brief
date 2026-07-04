// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

/// @title LIQStakingDistributor
/// @notice Stake LIQ to earn protocol revenue share and multi-token rewards
/// @dev OZ v5 compatible; uses mulDiv for safe reward accounting; supports ETH rewards (token=address(0))
contract LIQStakingDistributor is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ========= Errors =========
    error ZeroAddress();
    error InvalidAmount();
    error NotEnoughStaked();
    error BadETHValue();
    error IndexOutOfBounds();
    error UnauthorizedRewardNotifier();

    // ========= Constants / Immutables =========

    /// @notice LIQ token being staked
    address public immutable LIQ;

    /// @notice Accumulator precision
    uint256 public constant PRECISION = 1e18;

    /// @notice Mandatory stake lock period
    uint256 public constant LOCK_PERIOD = 7 days;

    // ========= Staking storage =========

    /// @notice Total LIQ staked
    uint256 public totalLIQStaked;

    /// @notice User -> staked LIQ
    mapping(address => uint256) public balanceOf;

    /// @notice User -> earliest time they may unstake
    mapping(address => uint256) public unlockTime;

    /// @notice Authorized accounts that may notify rewards (vault/treasury/owner)
    mapping(address => bool) public rewardNotifiers;

    // ========= Rewards storage =========

    /// @dev Ordered list of reward tokens (address(0) = ETH)
    address[] private _rewardTokens;

    /// @dev Fast existence check for reward token list
    mapping(address => bool) public tokenExists;

    /// @dev Token -> global accRewardPerShare
    mapping(address => uint256) public accRewardPerShare;

    /// @dev Token -> queued rewards when no stakers
    mapping(address => uint256) public queuedRewards;

    /// @dev User -> Token -> reward debt (acc at last sync for the user)
    mapping(address => mapping(address => uint256)) public rewardDebt;

    // ========= Events =========
    event LIQStaked(address indexed user, uint256 amount, uint256 unlockTime);
    event LIQUnstaked(address indexed user, uint256 amount);
    event RewardNotified(address indexed token, uint256 amount, uint256 distributedPerShare);
    event RewardClaimed(address indexed user, address indexed token, uint256 amount);
    event RewardNotifierSet(address indexed notifier, bool authorized);
    event EmergencyWithdraw(address indexed user, uint256 amount);

    // ========= Constructor =========

    /// @param _LIQ LIQ token address
    /// @param _vault PermalockVault (authorized notifier)
    /// @param _treasury Treasury (authorized notifier)
    constructor(address _LIQ, address _vault, address _treasury) Ownable(msg.sender) {
        if (_LIQ == address(0) || _vault == address(0) || _treasury == address(0)) revert ZeroAddress();
        LIQ = _LIQ;
        rewardNotifiers[_vault] = true;
        rewardNotifiers[_treasury] = true;
        rewardNotifiers[msg.sender] = true; // owner initial notifier
    }

    // ========= Admin =========

    /// @notice Authorize/deauthorize a reward notifier
    function setRewardNotifier(address notifier, bool authorized) external onlyOwner {
        if (notifier == address(0)) revert ZeroAddress();
        rewardNotifiers[notifier] = authorized;
        emit RewardNotifierSet(notifier, authorized);
    }

    // ========= Views =========

    /// @notice Return all reward token addresses (address(0) = ETH)
    function getRewardTokens() external view returns (address[] memory) {
        return _rewardTokens;
    }

    /// @notice Reward tokens array length
    function rewardTokensLength() external view returns (uint256) {
        return _rewardTokens.length;
    }

    /// @notice Reward token at index
    function rewardTokens(uint256 index) external view returns (address) {
        if (index >= _rewardTokens.length) revert IndexOutOfBounds();
        return _rewardTokens[index];
    }

    /// @notice Pending rewards for user across all tokens
    /// @return tokens List of reward tokens (address(0)=ETH)
    /// @return amounts Pending amounts for each token
    function getPendingRewards(address account)
        external
        view
        returns (address[] memory tokens, uint256[] memory amounts)
    {
        uint256 len = _rewardTokens.length;
        tokens = new address[](len);
        amounts = new uint256[](len);

        uint256 staked = balanceOf[account];
        for (uint256 i = 0; i < len; i++) {
            address t = _rewardTokens[i];
            tokens[i] = t;
            if (staked == 0) {
                amounts[i] = 0;
            } else {
                uint256 acc = accRewardPerShare[t];
                uint256 debt = rewardDebt[account][t];
                amounts[i] = (acc > debt) ? Math.mulDiv(staked, acc - debt, PRECISION) : 0;
            }
        }
    }

    /// @notice Whether `user` is past the lock and may unstake
    function canUnstake(address user) external view returns (bool) {
        return block.timestamp >= unlockTime[user];
    }

    /// @notice Seconds remaining until `user` unlock
    function timeUntilUnlock(address user) external view returns (uint256) {
        uint256 t = unlockTime[user];
        return (block.timestamp >= t) ? 0 : (t - block.timestamp);
    }

    // ========= Staking =========

    /// @notice Stake LIQ with a 7-day lock
    /// @dev Flush queued rewards BEFORE changing balances so new stake doesn’t share past queued rewards
    function stake(uint256 amount) external nonReentrant {
        if (amount == 0) revert InvalidAmount();

        // If there are existing stakers, distribute any queued rewards to them first
        if (totalLIQStaked > 0) _flushQueuedRewards();

        // Pay any pending rewards to this user based on current acc values
        _harvest(msg.sender);

        // Pull LIQ and update balances
        IERC20(LIQ).safeTransferFrom(msg.sender, address(this), amount);
        balanceOf[msg.sender] += amount;
        totalLIQStaked += amount;

        // Extend lock, never shorten
        uint256 newUnlock = block.timestamp + LOCK_PERIOD;
        if (newUnlock > unlockTime[msg.sender]) {
            unlockTime[msg.sender] = newUnlock;
        }

        // Snapshot user debts to the latest acc after potential flush
        _writeRewardDebts(msg.sender);

        emit LIQStaked(msg.sender, amount, unlockTime[msg.sender]);
    }

    /// @notice Unstake LIQ (must be unlocked)
    function unstake(uint256 amount) external nonReentrant {
        if (amount == 0) revert InvalidAmount();
        if (balanceOf[msg.sender] < amount) revert NotEnoughStaked();
        require(block.timestamp >= unlockTime[msg.sender], "Still locked");

        // Distribute queued rewards to current stakers (if any), so harvest reflects them
        if (totalLIQStaked > 0) _flushQueuedRewards();

        _harvest(msg.sender);

        balanceOf[msg.sender] -= amount;
        totalLIQStaked -= amount;

        _writeRewardDebts(msg.sender);

        IERC20(LIQ).safeTransfer(msg.sender, amount);
        emit LIQUnstaked(msg.sender, amount);
    }

    /// @notice Emergency withdraw LIQ without claiming rewards (forfeits rewards)
    function emergencyWithdraw() external nonReentrant {
        uint256 amount = balanceOf[msg.sender];
        if (amount == 0) revert InvalidAmount();

        // No harvest; user forfeits pending rewards by resetting debts
        balanceOf[msg.sender] = 0;
        totalLIQStaked -= amount;

        _writeRewardDebts(msg.sender);

        IERC20(LIQ).safeTransfer(msg.sender, amount);
        emit EmergencyWithdraw(msg.sender, amount);
    }

    /// @notice Exit completely (claim rewards and unstake all, if unlocked)
    function exit() external nonReentrant {
        require(block.timestamp >= unlockTime[msg.sender], "Still locked");

        if (totalLIQStaked > 0) _flushQueuedRewards();
        _harvest(msg.sender);

        uint256 amount = balanceOf[msg.sender];
        if (amount > 0) {
            balanceOf[msg.sender] = 0;
            totalLIQStaked -= amount;
            IERC20(LIQ).safeTransfer(msg.sender, amount);
            emit LIQUnstaked(msg.sender, amount);
        }

        _writeRewardDebts(msg.sender);
    }

    // ========= Claims =========

    /// @notice Claim all pending rewards
    function claimRewards() external nonReentrant {
        if (totalLIQStaked > 0) _flushQueuedRewards();
        _harvest(msg.sender);
        _writeRewardDebts(msg.sender);
    }

    /// @notice Claim a single reward token
    function claimReward(address token) external nonReentrant {
        if (totalLIQStaked > 0) _flushQueuedRewards();
        _harvestOne(msg.sender, token);
        _writeOneRewardDebt(msg.sender, token);
    }

    // ========= Reward distribution =========

    /// @notice Notify new rewards for `token` (address(0) = ETH). Only notifiers may call.
    /// @dev If there are no stakers, rewards are queued; otherwise distributed immediately.
    function notifyRewardAmount(address token, uint256 amount) external payable nonReentrant {
        if (!rewardNotifiers[msg.sender]) revert UnauthorizedRewardNotifier();

        if (token == address(0)) {
            if (msg.value != amount) revert BadETHValue();
        } else {
            if (amount == 0) revert InvalidAmount();
            IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        }

        _addRewardTokenIfNeeded(token);

        if (totalLIQStaked == 0) {
            queuedRewards[token] += amount;
            emit RewardNotified(token, amount, 0);
            return;
        }

        uint256 inc = Math.mulDiv(amount, PRECISION, totalLIQStaked);
        accRewardPerShare[token] += inc;
        emit RewardNotified(token, amount, inc);
    }

    // ========= Internals =========

    function _harvest(address user) internal {
        uint256 staked = balanceOf[user];
        if (staked == 0) return;

        uint256 len = _rewardTokens.length;
        for (uint256 i = 0; i < len; i++) {
            _harvestOne(user, _rewardTokens[i]);
        }
    }

    function _harvestOne(address user, address token) internal {
        uint256 staked = balanceOf[user];

        if (staked == 0) {
            rewardDebt[user][token] = accRewardPerShare[token];
            return;
        }

        uint256 acc = accRewardPerShare[token];
        uint256 debt = rewardDebt[user][token];
        if (acc > debt) {
            uint256 pending = Math.mulDiv(staked, acc - debt, PRECISION);
            if (pending > 0) {
                if (token == address(0)) {
                    (bool ok, ) = user.call{value: pending}("");
                    require(ok, "ETH transfer failed");
                } else {
                    IERC20(token).safeTransfer(user, pending);
                }
                emit RewardClaimed(user, token, pending);
            }
        }

        rewardDebt[user][token] = acc;
    }

    function _writeRewardDebts(address user) internal {
        uint256 len = _rewardTokens.length;
        for (uint256 i = 0; i < len; i++) {
            rewardDebt[user][_rewardTokens[i]] = accRewardPerShare[_rewardTokens[i]];
        }
    }

    function _writeOneRewardDebt(address user, address token) internal {
        rewardDebt[user][token] = accRewardPerShare[token];
    }

    function _addRewardTokenIfNeeded(address token) internal {
        if (!tokenExists[token]) {
            tokenExists[token] = true;
            _rewardTokens.push(token);
        }
    }

    /// @dev Distribute queued rewards to current stakers (no-op if totalLIQStaked==0)
    function _flushQueuedRewards() internal {
        if (totalLIQStaked == 0) return;

        uint256 len = _rewardTokens.length;
        for (uint256 i = 0; i < len; i++) {
            address t = _rewardTokens[i];
            uint256 q = queuedRewards[t];
            if (q == 0) continue;

            queuedRewards[t] = 0;
            uint256 inc = Math.mulDiv(q, PRECISION, totalLIQStaked);
            accRewardPerShare[t] += inc;

            emit RewardNotified(t, q, inc);
        }
    }

    receive() external payable {}
}
