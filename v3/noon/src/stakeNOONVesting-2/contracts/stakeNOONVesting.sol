// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./interfaces/IStakeNOONVesting.sol";
import "./interfaces/IStakeNOON.sol";

/**
 * @title stakeNOONVesting
 * @dev Implementation of the vesting contract for NOON tokens staked in stakeNOON.
 * This contract handles the vesting schedules and claims for boosted staked NOON tokens.
 */
contract stakeNOONVesting is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable, IStakeNOONVesting {
    // Constants for exponential vesting calculation
    /// @dev Multiplier applied to staked amount for vesting (9x)
    uint256 public constant VESTING_MULTIPLIER = 9;
    /// @dev Duration of the vesting period in seconds (365 days)
    uint256 public constant VESTING_DURATION = 365 days;
    /// @dev Percentage of total amount vested linearly (27%)
    uint256 public constant LINEAR_VESTING_PERCENTAGE = 27;
    /// @dev Percentage of total amount vested cubically (73%)
    uint256 public constant CUBIC_VESTING_PERCENTAGE = 73;
    /// @dev Base unit for fixed-point arithmetic
    uint256 public constant SCALE = 10000;

    /// @dev Reference to the NOON token contract
    IERC20 public noon;
    /// @dev Reference to the stakeNOON contract
    IStakeNOON public stakeNOON;

    /// @dev Mapping from user address to their vesting schedules
    mapping(address => VestingSchedule[]) public vestingSchedules;
    /// @dev Total amount of NOON tokens allocated for vesting
    uint256 public totalVestingAllocation;
    /// @dev Total amount of NOON tokens claimed
    uint256 public totalClaimed;

    /**
     * @dev Modifier to restrict function access to only the stakeNOON contract
     */
    modifier onlyVeNoon() {
        if (msg.sender != address(stakeNOON)) {
            revert OnlyVeNoon();
        }
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Initializes the contract with required addresses
     * @param _noon Address of the NOON token contract
     * @param _stakeNOON Address of the stakeNOON contract
     * @param initialOwner Address of the contract owner
     */
    function initialize(address _noon, address _stakeNOON, address initialOwner) public initializer {
        __Ownable_init(initialOwner);
        __ReentrancyGuard_init();

        noon = IERC20(_noon);
        stakeNOON = IStakeNOON(_stakeNOON);
    }

    /**
     * @dev Adds tokens to the vesting allocation pool
     * @param amount Amount of tokens to add to the vesting allocation
     */
    function addVestingAllocation(uint256 amount) external onlyOwner {
        require(amount > 0, AmountMustBeGreaterThanZero());
        require(noon.transferFrom(msg.sender, address(this), amount), TokenTransferFailed());
        totalVestingAllocation += amount;
        emit VestingAllocationAdded(amount);
    }

    /**
     * @dev Creates a new vesting schedule for a user
     * @param user Address of the user to create the schedule for
     * @param amount Amount of tokens to vest
     * @param stakeId ID of the associated stake
     */
    function createVestingSchedule(address user, uint256 amount, uint256 stakeId) external onlyVeNoon {
        require(amount > 0, AmountMustBeGreaterThanZero());
        require(amount <= totalVestingAllocation - totalClaimed, InsufficientVestingAllocation());
        require(stakeNOON.ownerOf(stakeId) == user, StakeDoesNotBelongToUser());

        uint256 startTime = block.timestamp;
        uint256 endTime = startTime + VESTING_DURATION;

        uint256 scheduleId = vestingSchedules[user].length;
        vestingSchedules[user].push(
            VestingSchedule({
                totalAmount: amount * VESTING_MULTIPLIER,
                startTime: startTime,
                endTime: endTime,
                claimedAmount: 0,
                stakeId: stakeId
            })
        );

        emit VestingScheduleCreated(user, scheduleId, amount, startTime, endTime, stakeId);
    }

    /**
     * @dev Calculates the vested amount for a given schedule
     * @param totalAmount Total amount of tokens in the schedule
     * @param startTime Start time of the vesting period
     * @param endTime End time of the vesting period
     * @param stakeId ID of the associated stake
     * @return The amount of tokens that have vested
     */
    function calculateVestedAmount(
        uint256 totalAmount,
        uint256 startTime,
        uint256 endTime,
        uint256 stakeId
    ) public view returns (uint256) {
        if (block.timestamp <= startTime) return 0;

        // Get the actual end time considering unlock status
        uint256 actualEndTime = endTime;
        uint256 unlockStartTime = stakeNOON.getVIPUnlockStartTime(stakeId);
        if (unlockStartTime != 0) {
            actualEndTime = unlockStartTime;
        }
        if (block.timestamp < actualEndTime) {
            actualEndTime = block.timestamp;
        }

        uint256 elapsedDays = (actualEndTime - startTime) / 1 days;
        uint256 totalDays = (endTime - startTime) / 1 days;

        // If we're at or past the end time, return the full amount
        if (elapsedDays >= totalDays) {
            return totalAmount;
        }

        // Calculate time ratio ( equivalent)
        uint256 timeRatio = (elapsedDays * SCALE) / totalDays;

        // Calculate cubic component: ()^3 * 0.73
        uint256 cubicComponent = (((timeRatio * timeRatio * timeRatio) / (SCALE * SCALE)) * CUBIC_VESTING_PERCENTAGE) /
            100; // 0.73

        // Calculate linear component: () * 0.27
        uint256 linearComponent = (timeRatio * LINEAR_VESTING_PERCENTAGE) / 100; // 0.27

        // Combine components and scale to total amount
        uint256 combinedRatio = cubicComponent + linearComponent;
        uint256 vestedAmount = (totalAmount * combinedRatio) / SCALE;

        // Ensure we don't exceed the total amount
        if (vestedAmount > totalAmount) {
            vestedAmount = totalAmount;
        }

        return vestedAmount;
    }

    /**
     * @dev Claims vested tokens for a specific schedule
     * @param user Address of the user claiming tokens
     * @param scheduleId ID of the vesting schedule to claim from
     */
    function claimVesting(address user, uint256 scheduleId) external onlyVeNoon nonReentrant {
        require(scheduleId < vestingSchedules[user].length, InvalidScheduleId());
        VestingSchedule storage schedule = vestingSchedules[user][scheduleId];
        uint256 vestedAmount = calculateVestedAmount(
            schedule.totalAmount,
            schedule.startTime,
            schedule.endTime,
            schedule.stakeId
        );
        uint256 claimableAmount = vestedAmount - schedule.claimedAmount;

        schedule.claimedAmount = vestedAmount;
        totalClaimed += claimableAmount;

        // Remove the schedule from the array
        if (scheduleId < vestingSchedules[user].length - 1) {
            vestingSchedules[user][scheduleId] = vestingSchedules[user][vestingSchedules[user].length - 1];
        }
        vestingSchedules[user].pop();

        if (claimableAmount > 0) {
            require(noon.transfer(user, claimableAmount), TokenTransferFailed());
        }

        emit VestingClaimed(user, scheduleId, claimableAmount);
    }

    /**
     * @dev Gets a specific vesting schedule for a user
     * @param user Address of the user
     * @param scheduleId ID of the vesting schedule
     * @return The vesting schedule details
     */
    function getVestingSchedule(address user, uint256 scheduleId) external view returns (VestingSchedule memory) {
        require(scheduleId < vestingSchedules[user].length, InvalidScheduleId());
        return vestingSchedules[user][scheduleId];
    }

    /**
     * @dev Gets the total number of vesting schedules for a user
     * @param user Address of the user
     * @return The number of vesting schedules
     */
    function getVestingSchedulesCount(address user) external view returns (uint256) {
        return vestingSchedules[user].length;
    }

    /**
     * @dev Gets the claimable amount for a specific schedule
     * @param user Address of the user
     * @param scheduleId ID of the vesting schedule
     * @return The amount of tokens that can be claimed
     */
    function getClaimableAmount(address user, uint256 scheduleId) external view returns (uint256) {
        require(scheduleId < vestingSchedules[user].length, InvalidScheduleId());
        VestingSchedule storage schedule = vestingSchedules[user][scheduleId];

        uint256 vestedAmount = calculateVestedAmount(
            schedule.totalAmount,
            schedule.startTime,
            schedule.endTime,
            schedule.stakeId
        );
        return vestedAmount - schedule.claimedAmount;
    }

    /**
     * @dev Gets all vesting schedules for a specific stake
     * @param stakeId ID of the stake
     * @return Array of vesting schedules for the stake
     */
    function getVestingSchedulesForStake(uint256 stakeId) external view returns (VestingSchedule[] memory) {
        address user = stakeNOON.ownerOf(stakeId);
        return vestingSchedules[user];
    }

    /**
     * @dev Gets the total vested amount for a specific stake
     * @param stakeId ID of the stake
     * @return The total amount of tokens that have vested
     */
    function getVestedAmountForStake(uint256 stakeId) external view returns (uint256) {
        address user = stakeNOON.ownerOf(stakeId);
        if (vestingSchedules[user].length == 0) return 0;

        uint256 totalVested = 0;
        for (uint256 i = 0; i < vestingSchedules[user].length; i++) {
            VestingSchedule storage schedule = vestingSchedules[user][i];
            if (schedule.stakeId == stakeId) {
                uint256 vestedAmount = calculateVestedAmount(
                    schedule.totalAmount,
                    schedule.startTime,
                    schedule.endTime,
                    schedule.stakeId
                );
                totalVested += vestedAmount - schedule.claimedAmount;
            }
        }

        return totalVested;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}
