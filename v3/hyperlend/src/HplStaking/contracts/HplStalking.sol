// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";

/// @title HplStaking
/// @author HyperLend
/// @notice HyperLend Token (HPL) staking contract
contract HplStaking is Ownable, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          Structs                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice defines a lock period option
    /// @param duration lock duration in seconds (0 = no lock / flexible)
    /// @param multiplierBps reward multiplier in basis points (10000 = 1x, 15000 = 1.5x); used externally, not in this contract
    /// @param unlockFeeBps fee paid for early unlock in basis points
    /// @param isActive whether this lock period is currently available for new stakes
    struct LockPeriod {
        uint256 duration;
        uint256 multiplierBps;
        uint256 unlockFeeBps;
        bool isActive;
    }

    /// @notice represents a user's stake
    /// @param amount amount of tokens staked
    /// @param startTime when the stake was created
    /// @param lockPeriodId ID of the lock period chosen (0 = flexible)
    /// @param unlockFeeBps fee paid for early unlock in basis points (snapshotted so it can't be modified later)
    /// @param isActive whether the stake is still active
    struct Stake {
        uint256 amount;
        uint256 startTime;
        uint256 lockPeriodId;
        uint256 unlockFeeBps;
        bool isActive;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         Variables                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice the token being staked
    IERC20 public immutable stakingToken;

    /// @notice total amount of tokens staked across all users
    uint256 public totalStaked;

    /// @notice mapping of lock period ID to LockPeriod details
    mapping(uint256 => LockPeriod) public lockPeriods;

    /// @notice array of all lock period IDs for iteration
    uint256[] public lockPeriodIds;

    /// @notice counter for generating unique lock period IDs
    uint256 public nextLockPeriodId;

    /// @notice mapping of user address to their stakes
    mapping(address => Stake[]) public userStakes;

    /// @notice minimum amount that can be staked at once
    /// @dev prevents dust Stake positions
    uint256 public minStakeAmount;

    /// @notice address that receives early unlock fees
    address public feeRecipient;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           Events                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    event Staked(
        address indexed user,
        uint256 indexed stakeIndex,
        uint256 amount,
        uint256 lockPeriodId,
        uint256 lockDuration
    );
    event Unstaked(
        address indexed user,
        uint256 indexed stakeIndex,
        uint256 amount,
        uint256 penalty
    );
    event LockPeriodAdded(
        uint256 indexed id,
        uint256 duration,
        uint256 multiplierBps,
        uint256 unlockFeeBps
    );
    event LockPeriodUpdated(
        uint256 indexed id,
        uint256 duration,
        uint256 multiplierBps,
        uint256 unlockFeeBps,
        bool isActive
    );
    event LockPeriodRemoved(uint256 indexed id);
    event MinStakeAmountUpdated(uint256 oldAmount, uint256 newAmount);
    event FeeRecipientUpdated(address oldRecipient, address newRecipient);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           Errors                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    error InvalidAmount();
    error InvalidLockPeriod();
    error StakeNotFound();
    error StakeStillLocked();
    error StakeNotActive();
    error InvalidMultiplier();
    error InvalidAddress();
    error InvalidUnlockFee();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         Functions                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice initializes the staking contract
    /// @param newStakingToken address of the token to be staked
    /// @param newMinStaked minimum amount that can be staked
    constructor(address newStakingToken, uint256 newMinStaked) Ownable(msg.sender) {
        if (newStakingToken == address(0)) revert InvalidAddress();

        stakingToken = IERC20(newStakingToken);
        minStakeAmount = newMinStaked;
        feeRecipient = msg.sender;

        // add the default flexible (no-lock) period
        _addLockPeriod(0, 10000, 0); // 0 duration, 1x multiplier
    }

    /// @notice stake tokens with a specified lock period
    /// @param amount amount of tokens to stake
    /// @param lockPeriodId ID of the lock period to use
    function stake(uint256 amount, uint256 lockPeriodId) external nonReentrant whenNotPaused {
        if (amount == 0 || amount < minStakeAmount) revert InvalidAmount();

        LockPeriod memory lockPeriod = lockPeriods[lockPeriodId];
        if (!lockPeriod.isActive) revert InvalidLockPeriod();

        stakingToken.safeTransferFrom(msg.sender, address(this), amount);

        userStakes[msg.sender].push(
            Stake({
                amount: amount,
                startTime: block.timestamp,
                lockPeriodId: lockPeriodId,
                unlockFeeBps: lockPeriod.unlockFeeBps,
                isActive: true
            })
        );

        totalStaked += amount;

        emit Staked(
            msg.sender,
            userStakes[msg.sender].length - 1,
            amount,
            lockPeriodId,
            lockPeriod.duration
        );
    }

    /// @notice unstake tokens after lock period expires
    /// @param stakeIndex index of the stake to withdraw
    function unstake(uint256 stakeIndex, bool unlockWithPenalty) external nonReentrant {
        if (stakeIndex >= userStakes[msg.sender].length) revert StakeNotFound();

        Stake storage userStake = userStakes[msg.sender][stakeIndex];
        if (!userStake.isActive) revert StakeNotActive();

        uint256 amount = userStake.amount;
        uint256 penalty = 0;

        LockPeriod memory lockPeriod = lockPeriods[userStake.lockPeriodId];
        // unlock time is calculated based on current lockPeriod duration, so admin can "force unlock" stakes early if needed (by updating lockPeriod duration)
        uint256 unlockTime = userStake.startTime + lockPeriod.duration;

        // check that the lock period has passed
        if (userStake.lockPeriodId > 0 && block.timestamp < unlockTime) {
            if (unlockWithPenalty){
                penalty = amount * userStake.unlockFeeBps / 10000;
                amount -= penalty;
            } else {
                revert StakeStillLocked();
            }
        }

        userStake.isActive = false;
        totalStaked -= userStake.amount;

        stakingToken.safeTransfer(msg.sender, amount);
        stakingToken.safeTransfer(feeRecipient, penalty);

        emit Unstaked(msg.sender, stakeIndex, amount, penalty);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           View                             */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice get all stakes for a user
    /// @param user address of the user
    /// @return returnStakes array of stakes
    function getUserStakes(address user) external view returns (Stake[] memory returnStakes) {
        return userStakes[user];
    }

    /// @notice get number of stakes for a user
    /// @param user address of the user
    /// @return returnLen number of stakes
    function getUserStakeCount(address user) external view returns (uint256 returnLen) {
        return userStakes[user].length;
    }

    /// @notice get total staked amount for a user
    /// @param user address of the user
    /// @return returnAmount total staked amount
    function getUserTotalStaked(address user) public view returns (uint256 returnAmount) {
        uint256 total = 0;
        Stake[] storage stakes = userStakes[user];

        for (uint256 i = 0; i < stakes.length; i++) {
            if (stakes[i].isActive) {
                total += stakes[i].amount;
            }
        }

        return total;
    }

    /// @notice get total staked amount for a user (use fixed length and array offset)
    /// @param user address of the user
    /// @param length how many elements do we want to count; 0 if up to the end
    /// @param offset index where we start counting
    /// @return returnAmount total staked amount
    function getUserTotalStakedOffset(address user, uint256 length, uint256 offset) public view returns (uint256 returnAmount) {
        uint256 total = 0;
        Stake[] storage stakes = userStakes[user];
        uint256 stakesLength = stakes.length;

        uint256 len = length > 0 ? offset + length : stakesLength;

        //avoid out-of-bounds reverts
        if (offset > stakesLength) return 0;
        if (len > stakesLength) len = stakesLength; 

        for (uint256 i = offset; i < len; i++) {
            if (stakes[i].isActive) {
                total += stakes[i].amount;
            }
        }

        return total;
    }

    /// @notice Get all active lock periods
    /// @return ids array of lock period IDs
    /// @return periods array of lock period details
    function getActiveLockPeriods() external view returns (uint256[] memory ids, LockPeriod[] memory periods){
        uint256 activeCount = 0;

        // count active periods
        for (uint256 i = 0; i < lockPeriodIds.length; i++) {
            if (lockPeriods[lockPeriodIds[i]].isActive) {
                activeCount++;
            }
        }

        // build arrays
        ids = new uint256[](activeCount);
        periods = new LockPeriod[](activeCount);
        uint256 index = 0;

        for (uint256 i = 0; i < lockPeriodIds.length; i++) {
            if (lockPeriods[lockPeriodIds[i]].isActive) {
                ids[index] = lockPeriodIds[i];
                periods[index] = lockPeriods[lockPeriodIds[i]];
                index++;
            }
        }

        return (ids, periods);
    }

    /// @notice get all lock periods (including inactive)
    /// @return ids array of lock period IDs
    /// @return periods array of lock period details
    function getAllLockPeriods() external view returns (uint256[] memory ids, LockPeriod[] memory periods){
        ids = new uint256[](lockPeriodIds.length);
        periods = new LockPeriod[](lockPeriodIds.length);

        for (uint256 i = 0; i < lockPeriodIds.length; i++) {
            ids[i] = lockPeriodIds[i];
            periods[i] = lockPeriods[lockPeriodIds[i]];
        }

        return (ids, periods);
    }

    /// @notice check if a stake is currently locked
    /// @param user address of the user
    /// @param stakeIndex index of the stake
    /// @return returnIsLocked whether the stake is locked
    function isStakeLocked(address user, uint256 stakeIndex) external view returns (bool returnIsLocked) {
        Stake storage userStake = userStakes[user][stakeIndex];
        LockPeriod memory lockPeriod = lockPeriods[userStake.lockPeriodId];
        uint256 unlockTime = userStake.startTime + lockPeriod.duration;

        return
            userStake.isActive &&
            userStake.lockPeriodId > 0 &&
            block.timestamp < unlockTime;
    }

    /// @notice get remaining lock time for a stake
    /// @param user address of the user
    /// @param stakeIndex index of the stake
    /// @return returnRemaining remaining time in seconds (0 if unlocked)
    function getRemainingLockTime(address user, uint256 stakeIndex) external view returns (uint256 returnRemaining) {
        Stake storage userStake = userStakes[user][stakeIndex];
        LockPeriod memory lockPeriod = lockPeriods[userStake.lockPeriodId];

        if (!userStake.isActive || userStake.lockPeriodId == 0) {
            return 0;
        }

        uint256 unlockTime = userStake.startTime + lockPeriod.duration;
        if (block.timestamp >= unlockTime) {
            return 0;
        }

        return unlockTime - block.timestamp;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      Admin Functions                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice add a new lock period option
    /// @param duration lock duration in seconds
    /// @param multiplierBps reward multiplier in basis points
    /// @param unlockFeeBps early unlock fee in basis points
    function addLockPeriod(uint256 duration, uint256 multiplierBps, uint256 unlockFeeBps) external onlyOwner {
        _addLockPeriod(duration, multiplierBps, unlockFeeBps);
    }

    /// @notice update an existing lock period
    /// @param lockPeriodId ID of the lock period to update
    /// @param duration new duration
    /// @param multiplierBps new multiplier
    /// @param unlockFeeBps new unlock fee
    /// @param isActive whether the period should be active
    function updateLockPeriod(
        uint256 lockPeriodId,
        uint256 duration,
        uint256 multiplierBps,
        uint256 unlockFeeBps,
        bool isActive
    ) external onlyOwner {
        if (multiplierBps < 1000 || multiplierBps > 100000) revert InvalidMultiplier();
        if (lockPeriodId == 0) revert InvalidLockPeriod(); //default lock period can't be modified
        if (duration > lockPeriods[lockPeriodId].duration) revert InvalidLockPeriod(); //duration can't be extended
        if (unlockFeeBps > 10000) revert InvalidUnlockFee();

        lockPeriods[lockPeriodId] = LockPeriod({
            duration: duration,
            multiplierBps: multiplierBps,
            unlockFeeBps: unlockFeeBps,
            isActive: isActive
        });

        emit LockPeriodUpdated(lockPeriodId, duration, multiplierBps, unlockFeeBps, isActive);
    }

    /// @notice deactivate a lock period (prevents new stakes with this period)
    /// @param lockPeriodId ID of the lock period to deactivate
    function deactivateLockPeriod(uint256 lockPeriodId) external onlyOwner {
        if (lockPeriods[lockPeriodId].multiplierBps == 0) revert InvalidLockPeriod();

        lockPeriods[lockPeriodId].isActive = false;

        emit LockPeriodUpdated(
            lockPeriodId,
            lockPeriods[lockPeriodId].duration,
            lockPeriods[lockPeriodId].multiplierBps,
            lockPeriods[lockPeriodId].unlockFeeBps,
            false
        );
    }

    /// @notice reactivate a previously deactivated lock period
    /// @param lockPeriodId ID of the lock period to reactivate
    function reactivateLockPeriod(uint256 lockPeriodId) external onlyOwner {
        if (lockPeriods[lockPeriodId].multiplierBps == 0) revert InvalidLockPeriod();

        lockPeriods[lockPeriodId].isActive = true;

        emit LockPeriodUpdated(
            lockPeriodId,
            lockPeriods[lockPeriodId].duration,
            lockPeriods[lockPeriodId].multiplierBps,
            lockPeriods[lockPeriodId].unlockFeeBps,
            true
        );
    }

    /// @notice update the minimum amount that can be staked at once
    /// @param _minAmount minimum amount that can be staked
    function setMinStake(uint256 _minAmount) external onlyOwner {
        emit MinStakeAmountUpdated(minStakeAmount, _minAmount);
        minStakeAmount = _minAmount;
    }

    /// @notice update the early unlock fee recipient
    /// @param newFeeRecipient address of the new recipient
    function setFeeRecipient(address newFeeRecipient) external onlyOwner {
        emit FeeRecipientUpdated(feeRecipient, newFeeRecipient);
        feeRecipient = newFeeRecipient;
    }

    /// @notice pause the contract
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice unpause the contract
    function unpause() external onlyOwner {
        _unpause();
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                    Internal Functions                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice add a new lock period
    function _addLockPeriod(uint256 duration, uint256 multiplierBps, uint256 unlockFeeBps) internal {
        if (multiplierBps < 1000 || multiplierBps > 100000) revert InvalidMultiplier();
        if (unlockFeeBps > 10000) revert InvalidUnlockFee();

        uint256 id = nextLockPeriodId++;
        lockPeriods[id] = LockPeriod({
            duration: duration,
            multiplierBps: multiplierBps,
            unlockFeeBps: unlockFeeBps,
            isActive: true
        });
        lockPeriodIds.push(id);

        emit LockPeriodAdded(id, duration, multiplierBps, unlockFeeBps);
    }
}
