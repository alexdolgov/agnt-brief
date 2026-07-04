// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {BaseContract} from "common-contracts/base-contracts/BaseContract.sol";
import {UNLOCK_SCOPE, LOCK_SCOPE} from "@src/common/constants/Scopes.sol";
import {ISPRVault} from "@src/spreads-vault/core/ISPRVault.sol";

import {GlobalCheckpoint} from "../structs/GlobalCheckpoint.sol";
import {
    ZeroAmount,
    InvalidDuration,
    LockNotFound,
    InsufficientAmount,
    TooManyLocks,
    InvalidLockId,
    InvalidTimestamp
} from "@src/spreads-vault/errors/ErrorsV2.sol";
import {Checkpoint} from "../structs/Checkpoint.sol";
import {RewardsClaimed, EmergencyWithdraw} from "../events/EventsV2.sol";
import {PRECISION, BASIS_POINTS, SECONDS_PER_WEEK} from "@src/spreads-vault/libs/AirdropConstants.sol";

import "@src/common/constants/Contracts.sol";
import {IAirdropVault} from "./IAirdropVault.sol";
import {IVaultManagerRepository} from "@src/spreads-vault/repositories/IVaultManagerRepository.sol";
import {LockPosition} from "../structs/LockPosition.sol";
import {OPERATOR_ROLE, EMERGENCY_ROLE} from "@src/common/access-management/Roles.sol";

contract AirdropVault is BaseContract, IAirdropVault, ReentrancyGuard {
    using SafeERC20 for ERC20;



    mapping(address => mapping(uint256 => LockPosition)) public userLocks;
    mapping(address => uint256) public userLockCount;

    mapping(address => Checkpoint[]) public userCheckpoints;
    mapping(address => uint256) public userCheckpointCount;

    GlobalCheckpoint[] public globalCheckpoints;
    uint256 public globalCheckpointCount;

    mapping(uint256 => int256) public slopeChanges; 

    mapping(address => uint256) public userInitialWeight;
    uint256 public totalInitialWeight;

    mapping(address => uint256) public pendingRewards;

    mapping(address => uint256) public lastLockBlock;

    address[] private allUsers;
    mapping(address => bool) private isUserTracked;

    uint256 private cachedGlobalVotingPower;


    modifier nonZero(uint256 _amount) {
        if (_amount == 0) revert ZeroAmount();
        _;
    }

    modifier validLock(address user, uint256 lockId) {
        if (lockId >= userLockCount[user]) revert InvalidLockId();
        if (!userLocks[user][lockId].active) revert LockNotFound();
        _;
    }


    constructor(address _beaconAddress) BaseContract(_beaconAddress) {
        globalCheckpoints.push(
            GlobalCheckpoint({timestamp: block.timestamp, totalVotingPower: 0, totalLockedAmount: 0})
        );
        globalCheckpointCount = 1;
        cachedGlobalVotingPower = 0; 
    }


    function _getRepo() internal view returns (IVaultManagerRepository) {
        return IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
    }

    function _getSPRToken() internal view returns (IERC20) {
        return IERC20(_getRepo().getSPRToken());
    }

    function _getRewardDistributor() internal view returns (address) {
        return _getRepo().getAirdropVaultRewardDistributor();
    }


    function lock(uint256 amount, uint256 durationWeeks)
        external
        nonZero(amount)
        whenScopeNotPaused(LOCK_SCOPE)
        nonReentrant
        returns (uint256 lockId)
    {
        if (lastLockBlock[msg.sender] == block.number) {
            revert("Cannot lock multiple times in the same block");
        }

        IVaultManagerRepository repo = _getRepo();

        uint256 minDuration = repo.getMinLockDuration();
        uint256 maxDuration = repo.getMaxLockDuration();
        if (durationWeeks < minDuration || durationWeeks > maxDuration) {
            revert InvalidDuration();
        }

        uint256 minAmount = repo.getMinimumLockAmount();
        if (amount < minAmount) revert InsufficientAmount();

        uint256 maxLocksPerUser = repo.getMaxLocksPerUser();
        if (userLockCount[msg.sender] >= maxLocksPerUser) {
            revert TooManyLocks();
        }

        uint256 weight = calculateLockWeight(durationWeeks);
        uint256 unlockTime = block.timestamp + (durationWeeks * SECONDS_PER_WEEK);

        lockId = userLockCount[msg.sender];
        userLocks[msg.sender][lockId] = LockPosition({
            amount: amount,
            lockDuration: durationWeeks,
            startTime: block.timestamp,
            unlockTime: unlockTime,
            weight: weight,
            active: true
        });

        userLockCount[msg.sender]++;

        int256 slope = int256((amount * weight) / PRECISION);
        slopeChanges[unlockTime] -= slope;

        _updateUserCheckpoint(msg.sender);
        _updateGlobalCheckpoint();

        IERC20 sprToken = _getSPRToken();
        sprToken.transferFrom(msg.sender, address(this), amount);

        uint256 weightedAmount = (amount * weight) / PRECISION;
        userInitialWeight[msg.sender] += weightedAmount;
        totalInitialWeight += weightedAmount;

        lastLockBlock[msg.sender] = block.number;

        if (!isUserTracked[msg.sender]) {
            allUsers.push(msg.sender);
            isUserTracked[msg.sender] = true;
        }

        emit Locked(msg.sender, lockId, amount, durationWeeks, weight, unlockTime);
        emit WeightUpdated(msg.sender, userInitialWeight[msg.sender] - weightedAmount, userInitialWeight[msg.sender]);
    }

    function unlock(uint256 lockId)
        external
        nonReentrant
        whenScopeNotPaused(UNLOCK_SCOPE)
        validLock(msg.sender, lockId)
    {
        LockPosition storage position = userLocks[msg.sender][lockId];
        IVaultManagerRepository repo = _getRepo();

        uint256 penalty = 0;
        uint256 amountToReturn = position.amount;

        if (block.timestamp < position.unlockTime) {
            uint256 penaltyRate = repo.getEarlyUnlockPenaltyRate();
            penalty = (position.amount * penaltyRate) / BASIS_POINTS;
            amountToReturn = position.amount - penalty;
        }

        position.active = false;

        _updateUserCheckpoint(msg.sender);
        _updateGlobalCheckpoint();

        IERC20 sprToken = _getSPRToken();
        if (penalty > 0) {
            address treasury = _getContractAddress(TREASURY_CONTRACT);
            sprToken.transfer(treasury, penalty);
        }
        sprToken.transfer(msg.sender, amountToReturn);

        uint256 weightedAmount = (position.amount * position.weight) / PRECISION;
        userInitialWeight[msg.sender] -= weightedAmount;
        totalInitialWeight -= weightedAmount;

        emit Unlocked(msg.sender, lockId, amountToReturn, penalty);
        emit WeightUpdated(msg.sender, userInitialWeight[msg.sender] + weightedAmount, userInitialWeight[msg.sender]);
    }

    function unlockAll() external whenScopeNotPaused(UNLOCK_SCOPE) nonReentrant {
        uint256 lockCount = userLockCount[msg.sender];
        if (lockCount == 0) revert LockNotFound();

        IVaultManagerRepository repo = _getRepo();
        uint256 penaltyRate = repo.getEarlyUnlockPenaltyRate();

        uint256 totalAmount = 0;
        uint256 totalPenalty = 0;
        uint256 totalWeightReduction = 0;

        for (uint256 i = 0; i < lockCount; i++) {
            LockPosition storage position = userLocks[msg.sender][i];
            if (!position.active) continue;

            uint256 penalty = 0;
            if (block.timestamp < position.unlockTime) {
                penalty = (position.amount * penaltyRate) / BASIS_POINTS;
            }

            totalAmount += position.amount - penalty;
            totalPenalty += penalty;
            totalWeightReduction += (position.amount * position.weight) / PRECISION;

            position.active = false;
            emit Unlocked(msg.sender, i, position.amount - penalty, penalty);
        }

        _updateUserCheckpoint(msg.sender);
        _updateGlobalCheckpoint();

        IERC20 sprToken = _getSPRToken();
        if (totalPenalty > 0) {
            address treasury = _getContractAddress(TREASURY_CONTRACT);
            sprToken.transfer(treasury, totalPenalty);
        }
        sprToken.transfer(msg.sender, totalAmount);

        userInitialWeight[msg.sender] -= totalWeightReduction;
        totalInitialWeight -= totalWeightReduction;

        emit WeightUpdated(
            msg.sender, userInitialWeight[msg.sender] + totalWeightReduction, userInitialWeight[msg.sender]
        );
    }

    function extendLock(uint256 lockId, uint256 newDurationWeeks)
        external
        whenScopeNotPaused(LOCK_SCOPE)
        nonReentrant
        whenNotPaused
        validLock(msg.sender, lockId)
    {
        LockPosition storage position = userLocks[msg.sender][lockId];

        if (newDurationWeeks <= position.lockDuration) {
            revert InvalidDuration();
        }

        IVaultManagerRepository repo = _getRepo();

        uint256 maxDuration = repo.getMaxLockDuration();
        if (newDurationWeeks > maxDuration) {
            revert InvalidDuration();
        }

        uint256 newWeight = calculateLockWeight(newDurationWeeks);
        uint256 newUnlockTime = block.timestamp + (newDurationWeeks * SECONDS_PER_WEEK);

        int256 oldSlope = int256((position.amount * position.weight) / PRECISION);
        int256 newSlope = int256((position.amount * newWeight) / PRECISION);

        slopeChanges[position.unlockTime] += oldSlope; 
        slopeChanges[newUnlockTime] -= newSlope; 

        uint256 oldWeightedAmount = (position.amount * position.weight) / PRECISION;
        uint256 newWeightedAmount = (position.amount * newWeight) / PRECISION;

        position.lockDuration = newDurationWeeks;
        position.unlockTime = newUnlockTime;
        position.weight = newWeight;

        _updateUserCheckpoint(msg.sender);
        _updateGlobalCheckpoint();

        userInitialWeight[msg.sender] = userInitialWeight[msg.sender] - oldWeightedAmount + newWeightedAmount;
        totalInitialWeight = totalInitialWeight - oldWeightedAmount + newWeightedAmount;

        emit LockExtended(msg.sender, lockId, lockId, newDurationWeeks);
        emit Locked(msg.sender, lockId, position.amount, newDurationWeeks, newWeight, newUnlockTime);
    }

    function collateralRewardToSPR(uint256 _amount)
        external
        whenNotPaused
        nonReentrant
        onlyRole(OPERATOR_ROLE)
        nonZero(_amount)
    {
        IVaultManagerRepository repo = _getRepo();

        address collateralToken = repo.getCollateralToken(); 
        address sprVault = _getContractAddress(SPR_VAULT_CONTRACT); 

        ERC20(collateralToken).safeTransferFrom(msg.sender, address(this), _amount);

        ERC20(collateralToken).approve(sprVault, _amount);

        ISPRVault(sprVault).deposit(_amount);
    }

    function _updateUserCheckpoint(address user) internal {
        uint256 oldPower =
            userCheckpointCount[user] > 0 ? userCheckpoints[user][userCheckpointCount[user] - 1].votingPower : 0;

        uint256 currentVotingPower = _calculateCurrentVotingPower(user);

        Checkpoint memory cp = Checkpoint({timestamp: block.timestamp, votingPower: currentVotingPower});

        userCheckpoints[user].push(cp);
        userCheckpointCount[user]++;

        _updateCachedGlobalVotingPower(oldPower, currentVotingPower);
    }

    function _updateCachedGlobalVotingPower(uint256 oldPower, uint256 newPower) internal {
        if (newPower > oldPower) {
            cachedGlobalVotingPower += (newPower - oldPower);
        } else if (oldPower > newPower) {
            cachedGlobalVotingPower -= (oldPower - newPower);
        }
    }

    function _updateGlobalCheckpoint() internal {
        uint256 totalLocked = _calculateTotalLockedAmount();

        GlobalCheckpoint memory cp = GlobalCheckpoint({
            timestamp: block.timestamp,
            totalVotingPower: cachedGlobalVotingPower, 
            totalLockedAmount: totalLocked
        });

        globalCheckpoints.push(cp);
        globalCheckpointCount++;
    }

    function _calculateCurrentVotingPower(address user) internal view returns (uint256) {
        uint256 total = 0;
        uint256 count = userLockCount[user];

        for (uint256 i = 0; i < count; i++) {
            total += getCurrentLockEffectiveWeight(user, i);
        }

        return total;
    }

    function _calculateGlobalVotingPower() internal view returns (uint256) {
        uint256 totalVotingPower = 0;

        for (uint256 i = 0; i < allUsers.length; i++) {
            totalVotingPower += _calculateCurrentVotingPower(allUsers[i]);
        }

        return totalVotingPower;
    }

    function _calculateTotalLockedAmount() internal view returns (uint256) {
        IVaultManagerRepository repo = IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
        address sprToken = repo.getSPRToken();
        return ERC20(sprToken).balanceOf(address(this));
    }

    function balanceOfAt(address user, uint256 timestamp) external view returns (uint256 votingPower) {
        if (timestamp > block.timestamp) revert InvalidTimestamp();

        uint256 count = userCheckpointCount[user];
        if (count == 0) return 0;

        uint256 lower = 0;
        uint256 upper = count - 1;

        if (timestamp < userCheckpoints[user][0].timestamp) {
            return 0;
        }

        if (timestamp >= userCheckpoints[user][upper].timestamp) {
            return userCheckpoints[user][upper].votingPower;
        }

        while (upper > lower) {
            uint256 center = upper - (upper - lower) / 2;
            Checkpoint memory cp = userCheckpoints[user][center];

            if (cp.timestamp == timestamp) {
                return cp.votingPower;
            } else if (cp.timestamp < timestamp) {
                lower = center;
            } else {
                upper = center - 1;
            }
        }

        return userCheckpoints[user][lower].votingPower;
    }

    function totalSupplyAt(uint256 timestamp) external view returns (uint256 totalVotingPower) {
        if (timestamp > block.timestamp) revert InvalidTimestamp();

        if (globalCheckpointCount == 0) return 0;

        uint256 lower = 0;
        uint256 upper = globalCheckpointCount - 1;

        if (timestamp < globalCheckpoints[0].timestamp) {
            return 0;
        }

        if (timestamp >= globalCheckpoints[upper].timestamp) {
            return globalCheckpoints[upper].totalVotingPower;
        }

        while (upper > lower) {
            uint256 center = upper - (upper - lower) / 2;
            GlobalCheckpoint memory cp = globalCheckpoints[center];

            if (cp.timestamp == timestamp) {
                return cp.totalVotingPower;
            } else if (cp.timestamp < timestamp) {
                lower = center;
            } else {
                upper = center - 1;
            }
        }

        return globalCheckpoints[lower].totalVotingPower;
    }

    function calculateLockWeight(uint256 durationWeeks) public view returns (uint256) {
        IVaultManagerRepository repo = _getRepo();

        uint256 minWeight = (repo.getMinLockWeight() * PRECISION) / BASIS_POINTS; 
        uint256 maxWeight = (repo.getMaxLockWeight() * PRECISION) / BASIS_POINTS;
        uint256 optimalDuration = repo.getOptimalLockDuration();
        uint256 minDuration = repo.getMinLockDuration();

        if (durationWeeks <= minDuration) return minWeight;
        if (durationWeeks >= optimalDuration) return maxWeight;

        uint256 weightRange = maxWeight - minWeight;
        uint256 weeksAboveMin = durationWeeks - minDuration;
        uint256 durationRange = optimalDuration - minDuration;

        return minWeight + (weightRange * weeksAboveMin) / durationRange;
    }

    function getCurrentLockEffectiveWeight(address user, uint256 lockId) public view returns (uint256) {
        LockPosition memory pos = userLocks[user][lockId];
        if (!pos.active) return 0;
        if (block.timestamp >= pos.unlockTime) return 0;

        uint256 totalLockTime = pos.lockDuration * SECONDS_PER_WEEK;
        if (totalLockTime == 0) return 0;

        uint256 remaining = pos.unlockTime - block.timestamp;
        uint256 initialWeighted = (pos.amount * pos.weight) / PRECISION;

        return (initialWeighted * remaining) / totalLockTime;
    }

    function getUserCurrentWeight(address user) public view returns (uint256) {
        return _calculateCurrentVotingPower(user);
    }

    function getTotalCurrentVotingPower() external view returns (uint256) {
        if (globalCheckpointCount == 0) return 0;
        return globalCheckpoints[globalCheckpointCount - 1].totalVotingPower;
    }

    function getCachedGlobalVotingPower() external view returns (uint256) {
        return cachedGlobalVotingPower;
    }


    function getLockPosition(address user, uint256 lockId) external view returns (LockPosition memory) {
        return userLocks[user][lockId];
    }

    function getUserLocks(address user) external view returns (LockPosition[] memory) {
        uint256 count = userLockCount[user];
        LockPosition[] memory locks = new LockPosition[](count);

        for (uint256 i = 0; i < count; i++) {
            locks[i] = userLocks[user][i];
        }

        return locks;
    }

    function getUserTotalWeight(address user) external view returns (uint256) {
        return userInitialWeight[user];
    }

    function getTotalVaultWeight() external view returns (uint256) {
        return totalInitialWeight;
    }

    function getUserActiveLocksCount(address user) external view returns (uint256) {
        uint256 count = 0;
        uint256 totalLocks = userLockCount[user];

        for (uint256 i = 0; i < totalLocks; i++) {
            if (userLocks[user][i].active) {
                count++;
            }
        }

        return count;
    }

    function getUserCheckpointCount(address user) external view returns (uint256) {
        return userCheckpointCount[user];
    }

    function getUserCheckpoint(address user, uint256 index) external view returns (Checkpoint memory) {
        require(index < userCheckpointCount[user], "Invalid index");
        return userCheckpoints[user][index];
    }

    function getGlobalCheckpointCount() external view returns (uint256) {
        return globalCheckpointCount;
    }

    function getGlobalCheckpoint(uint256 index) external view returns (GlobalCheckpoint memory) {
        require(index < globalCheckpointCount, "Invalid index");
        return globalCheckpoints[index];
    }

    function getTotalSPRStaked() external view returns (uint256) {
        IVaultManagerRepository repo = IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
        address sprToken = repo.getSPRToken();
        return ERC20(sprToken).balanceOf(address(this));
    }

    function transferForRebalance(address recipient, uint256 amount) external onlySystem {
        require(recipient != address(0), "Invalid recipient");
        require(amount > 0, "Invalid amount");

        IVaultManagerRepository repo = IVaultManagerRepository(_getContractAddress(VAULT_MANAGER_REPO_CONTRACT));
        address sprToken = repo.getSPRToken();

        ERC20(sprToken).safeTransfer(recipient, amount);
    }


    function distributeRewards(address[] calldata users, uint256[] calldata amounts) external {
        require(msg.sender == _getRewardDistributor(), "Not distributor");
        require(users.length == amounts.length, "Length mismatch");

        uint256 totalRewards = 0;
        for (uint256 i = 0; i < users.length; i++) {
            pendingRewards[users[i]] += amounts[i];
            totalRewards += amounts[i];
        }

        IERC20 sprToken = _getSPRToken();
        sprToken.transferFrom(msg.sender, address(this), totalRewards);
    }

    function claimRewards() external nonReentrant {
        uint256 amount = pendingRewards[msg.sender];
        require(amount > 0, "No rewards");

        pendingRewards[msg.sender] = 0;

        IERC20 sprToken = _getSPRToken();
        sprToken.transfer(msg.sender, amount);

        emit RewardsClaimed(msg.sender, amount);
    }


    function emergencyWithdraw(address token, address recipient) external onlyRole(EMERGENCY_ROLE) {
        require(recipient != address(0), "Invalid recipient");
        uint256 balance = ERC20(token).balanceOf(address(this));
        require(balance > 0, "No balance to withdraw");
        ERC20(token).safeTransfer(recipient, balance);
        emit EmergencyWithdraw(token, recipient, balance);
    }
}
