// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {EnumerableMap} from "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import {VotingEscrowTokenBase} from "src/dao/ve/VotingEscrow/VotingEscrowTokenBase.sol";
import {UserVeLockStakingRewards} from "src/dao/UserVeLockStakingRewards.sol";

import {IVeToken} from "src/interfaces/dao/ve/IVeToken.sol";
import {IVotingEscrowPollen} from "src/interfaces/dao/ve/IVotingEscrowPollen.sol";
import {IUserVeLockStakingRewards} from "src/interfaces/dao/IUserVeLockStakingRewards.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";

import {MiniHelpers} from "src/libraries/ve/MiniHelpers.sol";
import {Errors} from "src/libraries/ve/Errors.sol";

import "src/libraries/ve/VeHistoryLib.sol";

/**
 * @title  VotingEscrowPollen
 * @author Beraborrow
 * @notice This contract is a voting escrow.
 *         It allows users to lock their tokens for a specified period of time
 *         and receive vePOLLEN tokens in return. The vePOLLEN tokens represent the user's voting
 *         power and can be used to participate in directing pollen emissions to rewards vaults
 *         This contract is based out of Pendle's implementation of veToken:
 *         https://github.com/pendle-finance/pendle-core-v2-public/blob/main/contracts/LiquidityMining/VotingEscrow/VotingEscrowPendleMainchain.sol
 *         The cross-chain messaging logic has been removed.
 */
contract VotingEscrowPollen is VotingEscrowTokenBase, IVotingEscrowPollen {
    using SafeERC20 for IERC20;
    using VeBalanceLib for VeBalance;
    using VeBalanceLib for LockedPosition;
    using Checkpoints for Checkpoints.History;
    using EnumerableMap for EnumerableMap.UintToAddressMap;

    IMetaBeraborrowCore public immutable metaBeraborrowCore;

    IERC20 public immutable sharesToken;

    address public immutable staking;
    address public pollenRouter;
    uint128 public constant WAD = 1e18;
    uint128 public minPenalty = 1e17; // 10% in new scale (was 1000 = 10% in old scale)

    uint128 public lastSlopeChangeAppliedAt;

    // [wTime] => slopeChanges
    mapping(uint128 => uint128) public slopeChanges;

    // Saving totalSupply checkpoint for each week, later can be used for reward accounting
    // [wTime] => totalSupply
    mapping(uint128 => uint128) public totalSupplyAt;

    // Saving VeBalance checkpoint for users of each week, can later use binary search
    // to ask for their vePollen balance at any wTime
    mapping(address => Checkpoints.History) internal userHistory;

    // [user] => [UserVeLockStakingRewards]
    mapping(address => address) public userToStakingRewards;

    modifier onlyOwner() {
        require(msg.sender == metaBeraborrowCore.owner(), "Not owner");
        _;
    }

    constructor(IERC20 _sharesToken, address _staking, address _metaberaborrowCore, address _pollenRouter) {
        sharesToken = _sharesToken;
        staking = _staking;
        metaBeraborrowCore = IMetaBeraborrowCore(_metaberaborrowCore);
        pollenRouter = _pollenRouter;

        lastSlopeChangeAppliedAt = WeekMath.getCurrentWeekStart();
    }

    /**
     * @notice increases the lock position of a user (amount and/or expiry). Applicable even when
     * user has no position or the current position has expired.
     * @param additionalAmountToLock token amount to be pulled in from user to lock.
     * @param newExpiry new lock expiry. Must be a valid week beginning, and resulting lock
     * duration (since `block.timestamp`) must be within the allowed range.
     * @dev Will revert if resulting position has zero lock amount.
     * @dev See `_increasePosition()` for details on inner workings.
     */
    function increaseLockPosition(
        uint128 additionalAmountToLock,
        uint128 newExpiry,
        address user
    ) public returns (uint128 newVeBalance) {
        if (msg.sender != pollenRouter) {
            user = msg.sender;
        }     

        if (!WeekMath.isValidWTime(newExpiry))
            revert Errors.InvalidWTime(newExpiry);
        if (MiniHelpers.isTimeInThePast(newExpiry))
            revert Errors.ExpiryInThePast(newExpiry);

        if (newExpiry < positionData[user].expiry)
            revert Errors.VENotAllowedReduceExpiry();

        if (newExpiry > block.timestamp + MAX_LOCK_TIME)
            revert Errors.VEExceededMaxLockTime();
        if (newExpiry < block.timestamp + MIN_LOCK_TIME)
            revert Errors.VEInsufficientLockTime();

        uint128 newTotalAmountLocked = additionalAmountToLock +
            positionData[user].amount;
        if (newTotalAmountLocked == 0) revert Errors.VEZeroAmountLocked();

        uint128 additionalDurationToLock = newExpiry -
            positionData[user].expiry;

        
        if (additionalAmountToLock > 0) {
            sharesToken.safeTransferFrom(
                msg.sender, // if sender is router router holds shares token, if not user == msg.sender
                address(this),
                additionalAmountToLock
            );
        }

        newVeBalance = _increasePosition(
            user,
            additionalAmountToLock,
            additionalDurationToLock
        );

        if (additionalAmountToLock > 0) {
            if (userToStakingRewards[user] == address(0)) {
                bytes32 _salt = keccak256(
                    abi.encodePacked(user, address(this))
                );

                address accountant = address(
                    new UserVeLockStakingRewards{salt: _salt}(
                        user,
                        address(this),
                        staking,
                        address(sharesToken)
                    )
                );

                userToStakingRewards[user] = accountant;

                emit CreateUserVeLockStakingRewards(user, accountant);
            }

            sharesToken.safeIncreaseAllowance(
                userToStakingRewards[user],
                additionalAmountToLock
            );
            IUserVeLockStakingRewards(userToStakingRewards[user])
                .depositForVeLock(additionalAmountToLock);
        }

        emit NewLockPosition(user, newTotalAmountLocked, newExpiry);
    }

    /**
     * @notice Withdraws an expired lock position, returns locked token back to user
     * @dev reverts if position is not expired, or if no locked token to withdraw
     */
    function withdraw(address user) external returns (uint128 amount) {
        address receiver = pollenRouter;
        if (msg.sender != pollenRouter) {
            user = msg.sender;
            receiver = user;
        }

        amount = positionData[user].amount;

        if (!_isPositionExpired(user)) {
            uint128 penaltyInBp = _getPenaltyInBp(user);
            amount = amount * (WAD - penaltyInBp) / WAD;
        }

        if (amount == 0) revert Errors.VEZeroPosition();

        delete positionData[user];

        IUserVeLockStakingRewards(userToStakingRewards[user]).withdrawForVeLock(
            amount
        );
        sharesToken.safeTransfer(receiver, amount);

        emit Withdraw(user, amount);
    }

    function setPollenRouter(address _pollenRouter) external onlyOwner {
        pollenRouter = _pollenRouter;
    }

    function setMinPenalty(uint128 _minPenalty) external onlyOwner {
        if (_minPenalty > WAD) revert Errors.InvalidPenaltyRatio(_minPenalty);
        minPenalty = _minPenalty;
    }

    /**
     * @notice update & return the current totalSupply
     */
    function totalSupplyCurrent()
        public
        virtual
        override(IVeToken, VotingEscrowTokenBase)
        returns (uint128)
    {
        (VeBalance memory supply, ) = _applySlopeChange();
        return supply.getCurrentValue();
    }

    function getUserHistoryLength(
        address user
    ) external view returns (uint256) {
        return userHistory[user].length();
    }

    function getUserHistoryAt(
        address user,
        uint256 index
    ) external view returns (Checkpoint memory) {
        return userHistory[user].get(index);
    }

    function getPenaltyInBp(address user) external view returns (uint128) {
        return _getPenaltyInBp(user);
    }

    /**
     * @notice this function calculates a linear penalty ratio based on time left to withdraw
     * @dev Calculates weighted penalty by iterating through all deposit history
     * @dev Detects fresh deposits after withdrawal to prevent gaming
     */
    function _getPenaltyInBp(address user) internal view returns (uint128) {
        LockedPosition memory position = positionData[user];
        uint256 historyLength = userHistory[user].length();
        
        if (historyLength == 0) {
            return 0;
        }
        
        return _calculateWeightedHistoryPenalty(user, position, historyLength);
    }

    /**
     * @notice Calculates weighted penalty based on deposit history
     */
    function _calculateWeightedHistoryPenalty(
        address user,
        LockedPosition memory position,
        uint256 historyLength // 1
    ) internal view returns (uint128) {
        uint256 totalWeightedPenalty;
        uint256 totalAmount;

        // Search for first checkpoint after last withdrawal or position creation
        uint256 startIndex;
        for (uint256 i = historyLength - 1; i > 0; i--) {
            Checkpoint memory checkpoint = userHistory[user].get(i);
            if (checkpoint.lastUpdateTimestamp <= position.createdAt) {
                startIndex = i;
                break;
            }
        }

        for (uint256 i = startIndex; i < historyLength; i++) {
            Checkpoint memory checkpoint = userHistory[user].get(i);

            uint256 checkpointAmount = checkpoint.value.bias * MAX_LOCK_TIME / position.expiry;
            
            if (checkpointAmount == 0) continue;

            uint256 penaltyRatio = _calculatePenaltyRatio(checkpoint.lastUpdateTimestamp, position.expiry);
            
            if (penaltyRatio > 0) {
                totalWeightedPenalty += checkpointAmount * penaltyRatio;
                totalAmount += checkpointAmount;
            }
        }
        
        if (totalAmount == 0) {
            return WAD;
        }

        uint256 finalPenalty = totalWeightedPenalty / totalAmount;
        
        return uint128(Math.max(finalPenalty, minPenalty));
    }

    /**
     * @notice Core penalty calculation logic - calculates penalty ratio based on time elapsed
     * @param startTime The start time for penalty calculation (could be createdAt or lastUpdateTimestamp)
     * @param expiryTime The expiry time of the position
     * @return penaltyRatio The calculated penalty ratio in basis points
     */
    function _calculatePenaltyRatio(uint128 startTime, uint128 expiryTime) internal view returns (uint128) {
        uint128 timeElapsed = uint128(block.timestamp - startTime);
        uint128 totalDuration = uint128(expiryTime - startTime);
        
        if (timeElapsed >= totalDuration) {
            return 0; // no penalty as position is finalized
        }
        
        uint128 percentageElapsedInBp = (timeElapsed * WAD) / totalDuration;
        uint128 percentageRemainingInBp = WAD - percentageElapsedInBp;
        uint128 penaltyRatio = percentageRemainingInBp;
        
        return uint128(Math.max(penaltyRatio, minPenalty));
    }

    /**
     * @notice increase the locking position of the user
     * @dev works by simply removing the old position from all relevant data (as if the user has
     * never locked) and then add in the new position
     */
    function _increasePosition(
        address user,
        uint128 amountToIncrease,
        uint128 durationToIncrease
    ) internal returns (uint128) {
        LockedPosition memory oldPosition = positionData[user];

        (VeBalance memory newSupply, ) = _applySlopeChange();

        if (!MiniHelpers.isCurrentlyExpired(oldPosition.expiry)) {
            // remove old position not yet expired
            VeBalance memory oldBalance = oldPosition.convertToVeBalance();
            newSupply = newSupply.sub(oldBalance);
            slopeChanges[oldPosition.expiry] -= oldBalance.slope;
        }

        uint128 createdAt = oldPosition.createdAt;

        if (createdAt == 0) { 
            createdAt = uint128(block.timestamp);
        }

        LockedPosition memory newPosition = LockedPosition(
            oldPosition.amount + amountToIncrease,
            oldPosition.expiry + durationToIncrease,
            createdAt
        );

        VeBalance memory newBalance = newPosition.convertToVeBalance();
        // add new position
        newSupply = newSupply.add(newBalance);
        slopeChanges[newPosition.expiry] += newBalance.slope;

        _totalSupply = newSupply;
        positionData[user] = newPosition;
        userHistory[user].push(newBalance);
        return newBalance.getCurrentValue();
    }

    /**
     * @notice updates the totalSupply, processing all slope changes of past weeks. At the same time,
     * set the finalized totalSupplyAt
     */
    function _applySlopeChange() internal returns (VeBalance memory, uint128) {
        VeBalance memory supply = _totalSupply;
        uint128 wTime = lastSlopeChangeAppliedAt;
        uint128 currentWeekStart = WeekMath.getCurrentWeekStart();

        if (wTime >= currentWeekStart) {
            return (supply, wTime);
        }

        while (wTime < currentWeekStart) {
            wTime += WEEK;
            supply = supply.sub(slopeChanges[wTime], wTime);
            totalSupplyAt[wTime] = supply.getValueAt(wTime);
        }

        _totalSupply = supply;
        lastSlopeChangeAppliedAt = wTime;

        return (supply, wTime);
    }
}
