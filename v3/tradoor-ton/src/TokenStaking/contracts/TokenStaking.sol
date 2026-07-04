// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/// @title Lock-Options Staking with Adjustable Emission Rate & Top-ups
/// @notice - Stake token X; Rewards token T is funded to the pool and streamed out at `rewardRate`
///         - Admin can top-up rewards (T) anytime via `fund()`
///         - Admin can adjust emission `rewardRate` anytime via `setRewardRate()`
///         - User can open positions with discrete lock periods (7/14/28 days), each with its own multiplier
///         - After lock is over, user can withdraw principal anytime; multiplier stays the same for accounting
///         - Rewards accrue linearly over time but can only be claimed for positions whose lock has ended
contract TokenStaking is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ------------------------
    // Config
    // ------------------------
    IERC20 public immutable stakingToken;   // X
    IERC20 public immutable rewardsToken;   // T

    // lock durations (seconds) & multipliers (1e18 = 1.0x)
    uint256 public constant ONE = 1e18;
    uint256[] public lockDurations;
    uint256[] public lockMultipliers;

    // emission control
    uint256 public rewardRate;          // T per second (streaming rate)
    uint256 public lastUpdate;          // last emission update timestamp
    uint256 public accRewardPerWeight;  // global accumulator, scaled by 1e18
    uint256 public totalWeight;         // sum of all positions' weights

    // rewards budget tracking
    // rewardsRemaining decreases when emissions accrue (in _update())
    uint256 public rewardsRemaining;

    // ------------------------
    // User position
    // ------------------------
    struct Position {
        uint256 stakeTime;       // timestamp when position was created
        uint256 amount;          // staked X
        uint256 weight;          // amount * multiplier / 1e18
        uint256 lockEnd;         // unlock timestamp
        uint256 rewardDebt;      // weight * accRewardPerWeight / 1e18 (at last sync)
    }

    mapping(address => Position[]) public positions;

    // ------------------------
    // Events
    // ------------------------
    event Staked(address indexed user, uint256 indexed pid, uint256 amount, uint8 lockIndex, uint256 multiplier, uint256 lockEnd);
    event Withdrawn(address indexed user, uint256 indexed pid, uint256 amount);
    event RewardClaimed(address indexed user, uint256 amount);
    event Funded(address indexed from, uint256 amount);
    event RewardRateUpdated(uint256 oldRate, uint256 newRate);
    event Emitted(uint256 amount, uint256 newAccRewardPerWeight, uint256 rewardsRemaining);
    event LockOptionsUpdated(uint256[] durations, uint256[] multipliers);

    // ------------------------
    // Constructor
    // ------------------------
    constructor(address _stakingToken, address _rewardsToken, address _owner) {
        require(_stakingToken != address(0) && _rewardsToken != address(0), "zero addr");
        stakingToken = IERC20(_stakingToken);
        rewardsToken = IERC20(_rewardsToken);
        _transferOwnership(_owner);
        lastUpdate = block.timestamp;

        // default: 7/14/28 days
        lockDurations.push(7 days);
        lockDurations.push(14 days);
        lockDurations.push(28 days);

        // default multipliers: [1.0x, 1.5x, 2.0x] in 1e18 precision
        lockMultipliers.push(ONE);   // 1.0x
        lockMultipliers.push(15 * ONE / 10); // 1.5x
        lockMultipliers.push(2 * ONE);  // 2.0x
    }

    // ------------------------
    // Admin
    // ------------------------

    /// @notice Admin funds rewards (T) into the contract; increases `rewardsRemaining`
    function fund(uint256 amount) external nonReentrant onlyOwner {
        require(amount > 0, "amount=0");
        rewardsToken.safeTransferFrom(msg.sender, address(this), amount);
        rewardsRemaining += amount;
        emit Funded(msg.sender, amount);
    }

    /// @notice Admin can adjust emission rate (T/sec) anytime
    function setRewardRate(uint256 newRate) external onlyOwner {
        _update();
        rewardRate = newRate;
        emit RewardRateUpdated(rewardRate, newRate);
    }

    /// @notice Admin can adjust lock options (durations & multipliers)
    function setLockOptions(uint256[] calldata durations, uint256[] calldata multipliers) external onlyOwner {
        require(durations.length == multipliers.length, "len mismatch");
        require(durations.length > 0, "empty");

        delete lockDurations;
        delete lockMultipliers;

        for (uint256 i = 0; i < durations.length; i++) {
            require(durations[i] > 0, "duration=0");
            require(multipliers[i] >= 1e17, "too small"); // >=0.1x
            lockDurations.push(durations[i]);
            lockMultipliers.push(multipliers[i]);
        }

        emit LockOptionsUpdated(durations, multipliers);
    }

    // ------------------------
    // Core accounting
    // ------------------------

    /// @notice Pulls time forward, emits rewards according to `rewardRate`, updates accRewardPerWeight,
    /// and decrements `rewardsRemaining`. If no stakers, emission pauses (no burning)
    function _update() internal {
        uint256 time = block.timestamp;
        if (time <= lastUpdate) return;

        uint256 duration = time - lastUpdate;
        lastUpdate = time;

        if (rewardRate == 0 || totalWeight == 0) return;

        uint256 toEmit = duration * rewardRate;
        if (toEmit > rewardsRemaining) {
            toEmit = rewardsRemaining; // stop when budget runs out
        }

        if (toEmit > 0) {
            rewardsRemaining -= toEmit;
            // scale by 1e18 to preserve precision
            accRewardPerWeight += (toEmit * ONE) / totalWeight;
            emit Emitted(toEmit, accRewardPerWeight, rewardsRemaining);
        }
    }

    // ------------------------
    // User actions
    // ------------------------

    /// @notice Open a new position with one of the discrete lock options: 0=7d, 1=14d, 2=28d by default
    function stake(uint256 amount, uint8 lockIndex) external nonReentrant {
        require(amount > 0, "amount=0");
        require(lockIndex < lockDurations.length, "bad lockIndex");

        _update();

        // compute position parameters
        uint256 multiplier = lockMultipliers[lockIndex];
        uint256 weight = (amount * multiplier) / ONE;
        uint256 lockEnd = block.timestamp + lockDurations[lockIndex];

        // book keeping
        uint256 rewardDebt = (weight * accRewardPerWeight) / ONE;
        positions[msg.sender].push(
            Position({
                stakeTime: block.timestamp,
                amount: amount,
                weight: weight,
                lockEnd: lockEnd,
                rewardDebt: rewardDebt
            })
        );

        totalWeight += weight;

        // pull funds
        stakingToken.safeTransferFrom(msg.sender, address(this), amount);

        emit Staked(msg.sender, positions[msg.sender].length - 1, amount, lockIndex, multiplier, lockEnd);
    }

    /// @notice Withdraw principal for an unlocked position
    function withdraw(uint256 pid, uint256 amount) external nonReentrant {
        _update();

        Position storage p = _pos(msg.sender, pid);
        require(block.timestamp >= p.lockEnd, "still locked");
        require(amount > 0 && amount <= p.amount, "invalid amount");

        // compute pending rewards
        uint256 pending = ((p.weight * accRewardPerWeight) / ONE) - p.rewardDebt;
        if (pending > 0) {
            rewardsToken.safeTransfer(msg.sender, pending);
            emit RewardClaimed(msg.sender, pending);
        }

        // update position
        uint256 weightToRemove = (p.weight * amount) / p.amount;
        totalWeight -= weightToRemove;

        p.amount -= amount;
        p.weight -= weightToRemove;
        p.rewardDebt = (p.weight * accRewardPerWeight) / ONE;
        if (p.amount == 0) {
            _removePosition(msg.sender, pid); // remove from positions array
        }

        stakingToken.safeTransfer(msg.sender, amount);
        emit Withdrawn(msg.sender, pid, amount);
    }

    /// @notice Internal helper to remove a position by index
    function _removePosition(address user, uint256 index) internal {
        require(index < positions[user].length, "Invalid index");

        uint256 lastIndex = positions[user].length - 1;
        if (index != lastIndex) {
            positions[user][index] = positions[user][lastIndex];
        }
        positions[user].pop();
    }

    /// @notice Claim all unlocked rewards across user's positions (only those whose lock ended)
    function claim() external nonReentrant {
        _update();

        Position[] storage arr = positions[msg.sender];
        uint256 _acc = accRewardPerWeight;
        uint256 len = arr.length;

        uint256 claimed;
        for (uint256 i = 0; i < len; i++) {
            Position storage p = arr[i];
            if (block.timestamp < p.lockEnd) continue; // only unlocked positions can claim

            // pending = weight * acc - rewardDebt
            uint256 pending = ((p.weight * _acc) / ONE) - p.rewardDebt;
            if (pending > 0) {
                claimed += pending;
                // sync rewardDebt to current acc
                p.rewardDebt = (p.weight * _acc) / ONE;
            }
        }

        if (claimed > 0) {
            // Safety: the contract should hold enough rewards since we only let emissions reduce rewardsRemaining.
            rewardsToken.safeTransfer(msg.sender, claimed);
            emit RewardClaimed(msg.sender, claimed);
        }
    }

    // ------------------------
    // Views
    // ------------------------

    /// @notice View total unlocked-but-unclaimed rewards for `user` if claiming now
    function pendingUnlockedRewards(address user) external view returns (uint256 total) {
        (uint256 _acc, ) = _previewAccAfterUpdate();
        Position[] storage arr = positions[user];
        uint256 len = arr.length;
        for (uint256 i = 0; i < len; i++) {
            Position storage p = arr[i];
            if (block.timestamp < p.lockEnd) continue;
            uint256 pending = ((p.weight * _acc) / ONE) - p.rewardDebt;
            total += pending;
        }
    }

    /// @notice View total (including still-locked) pending rewards for `user`
    function pendingAllRewards(address user) external view returns (uint256 total) {
        (uint256 _acc, ) = _previewAccAfterUpdate();
        Position[] storage arr = positions[user];
        uint256 len = arr.length;
        for (uint256 i = 0; i < len; i++) {
            Position storage p = arr[i];
            uint256 pending = ((p.weight * _acc) / ONE) - p.rewardDebt;
            total += pending;
        }
    }

    /// @notice Get all positions for a user
    function getAllPosition(address user) external view returns (Position[] memory) {
        return positions[user];
    }

    /// @notice Helper to read a position
    function getPosition(address user, uint256 pid) external view returns (Position memory) {
        return positions[user][pid];
    }

    // ------------------------
    // Internals & helpers
    // ------------------------

    /// @notice Internal helper to get a position by user and pid
    function _pos(address user, uint256 pid) internal view returns (Position storage p) {
        require(pid < positions[user].length, "bad pid");
        p = positions[user][pid];
    }

    /// @notice Simulate `_update()` for view functions
    function _previewAccAfterUpdate() internal view returns (uint256 _acc, uint256 _rewardsRemaining) {
        _acc = accRewardPerWeight;
        _rewardsRemaining = rewardsRemaining;

        uint256 time = block.timestamp;
        if (time <= lastUpdate) return (_acc, _rewardsRemaining);
        if (rewardRate == 0 || totalWeight == 0) return (_acc, _rewardsRemaining);

        uint256 duration = time - lastUpdate;
        uint256 toEmit = duration * rewardRate;
        if (toEmit > _rewardsRemaining) {
            toEmit = _rewardsRemaining;
        }
        if (toEmit > 0) {
            _rewardsRemaining -= toEmit;
            _acc += (toEmit * ONE) / totalWeight;
        }
    }
}