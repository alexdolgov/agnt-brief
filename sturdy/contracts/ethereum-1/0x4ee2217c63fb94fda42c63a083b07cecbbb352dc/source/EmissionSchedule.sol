// SPDX-License-Identifier: AGPL-v3.0
pragma solidity ^0.8.21;


// OpenZeppelin Contracts (last updated v4.9.4) (utils/Context.sol)
/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)
/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

interface IIncentiveVoting {
    struct Vote {
        uint256 id;
        uint256 points;
    }

    struct LockData {
        uint256 amount;
        uint256 weeksToUnlock;
    }

    event AccountWeightRegistered(
        address indexed account,
        uint256 indexed week,
        uint256 frozenBalance,
        LockData[] registeredLockData
    );
    event ClearedVotes(address indexed account, uint256 indexed week);
    event NewVotes(address indexed account, uint256 indexed week, Vote[] newVotes, uint256 totalPointsUsed);

    function clearRegisteredWeight(address account) external returns (bool);

    function clearVote(address account) external;

    function getReceiverVotePct(uint256 id, uint256 week) external returns (uint256);

    function getReceiverWeightWrite(uint256 idx) external returns (uint256);

    function getTotalWeightWrite() external returns (uint256);

    function registerAccountWeight(address account, uint256 minWeeks) external;

    function registerAccountWeightAndVote(address account, uint256 minWeeks, Vote[] calldata votes) external;

    function registerNewReceiver() external returns (uint256);

    function setDelegateApproval(address _delegate, bool _isApproved) external;

    function unfreeze(address account, bool keepVote) external returns (bool);

    function vote(address account, Vote[] calldata votes, bool clearPrevious) external;

    function MAX_LOCK_WEEKS() external view returns (uint256);

    function MAX_POINTS() external view returns (uint256);

    function getAccountCurrentVotes(address account) external view returns (Vote[] memory votes);

    function getAccountRegisteredLocks(
        address account
    ) external view returns (uint256 frozenWeight, LockData[] memory lockData);

    function getReceiverWeight(uint256 idx) external view returns (uint256);

    function getReceiverWeightAt(uint256 idx, uint256 week) external view returns (uint256);

    function getTotalWeight() external view returns (uint256);

    function getTotalWeightAt(uint256 week) external view returns (uint256);

    function getWeek() external view returns (uint256 week);

    function isApprovedDelegate(address owner, address caller) external view returns (bool isApproved);

    function receiverCount() external view returns (uint256);

    function receiverDecayRate(uint256) external view returns (uint32);

    function receiverUpdatedWeek(uint256) external view returns (uint16);

    function receiverWeeklyUnlocks(uint256, uint256) external view returns (uint32);

    function tokenLocker() external view returns (address);

    function totalDecayRate() external view returns (uint32);

    function totalUpdatedWeek() external view returns (uint16);

    function totalWeeklyUnlocks(uint256) external view returns (uint32);

    function vault() external view returns (address);
}

interface ISTRDYVault {
    struct InitialAllowance {
        address receiver;
        uint256 amount;
    }

    event BoostCalculatorSet(address boostCalculator);
    event EmissionScheduleSet(address emissionScheduler);
    event IncreasedAllocation(address indexed receiver, uint256 increasedAmount);
    event NewReceiverRegistered(address receiver, uint256 id);
    event ReceiverIsActiveStatusModified(uint256 indexed id, bool isActive);
    event UnallocatedSupplyIncreased(uint256 increasedAmount, uint256 unallocatedTotal);
    event UnallocatedSupplyReduced(uint256 reducedAmount, uint256 unallocatedTotal);

    function allocateNewEmissions(uint256 id) external returns (uint256, uint256[] memory);

    function batchClaimRewards(
        address receiver,
        address boostDelegate,
        address[] calldata rewardContracts,
        uint256 maxFeePct
    ) external returns (bool);

    function increaseUnallocatedSupply(uint256 amount) external returns (bool);

    function registerReceiver(address receiver, uint256 count) external returns (bool);

    function setBoostCalculator(address _boostCalculator) external returns (bool);

    function setEmissionSchedule(address _emissionSchedule) external returns (bool);

    function setInitialParameters(
        address _emissionSchedule,
        address _boostCalculator,
        uint256 totalSupply,
        uint64 initialLockWeeks,
        uint128[] calldata _fixedInitialAmounts,
        InitialAllowance[] calldata initialAllowances
    ) external;

    function setReceiverIsActive(uint256 id, bool isActive) external returns (bool);

    function transferAllocatedTokens(address claimant, address receiver, uint256 amount) external returns (bool);

    function transferTokens(address token, address receiver, uint256 amount) external returns (bool);

    function allocated(address) external view returns (uint256);

    function boostCalculator() external view returns (address);

    function claimableRewardAfterBoost(
        address account,
        address receiver,
        address rewardContract
    ) external view returns (uint256 adjustedAmount);

    function emissionSchedule() external view returns (address);

    function getClaimableWithBoost(
        address claimant,
        address[] calldata rewardContracts
    ) external view returns (uint256 adjustedAmount);

    function getWeek() external view returns (uint256 week);

    function guardian() external view returns (address);

    function idToReceiver(uint256) external view returns (address account, bool isActive);

    function lockWeeks() external view returns (uint64);

    function locker() external view returns (address);

    function owner() external view returns (address);

    function strdyToken() external view returns (address);

    function receiverUpdatedWeek(uint256) external view returns (uint16);

    function totalUpdateWeek() external view returns (uint64);

    function unallocatedTotal() external view returns (uint128);

    function voter() external view returns (address);

    function weeklyEmissions(uint256) external view returns (uint128);
}

contract SystemStart {
    uint256 immutable startTime;

    constructor(uint256 _startTime) {
        startTime = _startTime;
    }

    function getWeek() public view returns (uint256 week) {
        return (block.timestamp - startTime) / 1 weeks;
    }
}

/**
    @title STRDY Emission Schedule
    @notice Calculates weekly STRDY emissions. The weekly amount is determined
            as a percentage of the remaining unallocated supply. Over time the
            reward rate will decay to dust as it approaches the maximum supply,
            but should not reach zero for a Very Long Time.
 */
contract EmissionSchedule is Ownable, SystemStart {
    event WeeklyPctScheduleSet(uint64[2][] schedule);
    event LockParametersSet(uint256 lockWeeks, uint256 lockDecayWeeks);

    // number representing 100% in `weeklyPct`
    uint256 constant MAX_PCT = 10000;
    uint256 public constant MAX_LOCK_WEEKS = 52;

    IIncentiveVoting public immutable voter;
    ISTRDYVault public immutable vault;

    // current number of weeks that emissions are locked for when they are claimed
    uint64 public lockWeeks;
    // every `lockDecayWeeks`, the number of lock weeks is decreased by one
    uint64 public lockDecayWeeks;

    // percentage of the unallocated STRDY supply given as emissions in a week
    uint64 public weeklyPct;

    // [(week, weeklyPct)... ] ordered by week descending
    // schedule of changes to `weeklyPct` to be applied in future weeks
    uint64[2][] private scheduledWeeklyPct;

    constructor(
        uint256 _startTime,
        IIncentiveVoting _voter,
        ISTRDYVault _vault,
        uint64 _initialLockWeeks,
        uint64 _lockDecayWeeks,
        uint64 _weeklyPct,
        uint64[2][] memory _scheduledWeeklyPct
    ) Ownable() SystemStart(_startTime) {
        voter = _voter;
        vault = _vault;

        lockWeeks = _initialLockWeeks;
        lockDecayWeeks = _lockDecayWeeks;
        weeklyPct = _weeklyPct;
        _setWeeklyPctSchedule(_scheduledWeeklyPct);
        emit LockParametersSet(_initialLockWeeks, _lockDecayWeeks);
    }

    function getWeeklyPctSchedule() external view returns (uint64[2][] memory) {
        return scheduledWeeklyPct;
    }

    /**
        @notice Set a schedule for future updates to `weeklyPct`
        @dev The given schedule replaces any existing one
        @param _schedule Dynamic array of (week, weeklyPct) ordered by week descending.
                         Each `week` indicates the number of weeks after the current week.
     */
    function setWeeklyPctSchedule(uint64[2][] memory _schedule) external onlyOwner returns (bool) {
        _setWeeklyPctSchedule(_schedule);
        return true;
    }

    /**
        @notice Set the number of lock weeks and rate at which lock weeks decay
     */
    function setLockParameters(uint64 _lockWeeks, uint64 _lockDecayWeeks) external onlyOwner returns (bool) {
        require(_lockWeeks <= MAX_LOCK_WEEKS, "Cannot exceed MAX_LOCK_WEEKS");
        require(_lockDecayWeeks > 0, "Decay weeks cannot be 0");

        lockWeeks = _lockWeeks;
        lockDecayWeeks = _lockDecayWeeks;
        emit LockParametersSet(_lockWeeks, _lockDecayWeeks);
        return true;
    }

    function getReceiverWeeklyEmissions(
        uint256 id,
        uint256 week,
        uint256 totalWeeklyEmissions
    ) external returns (uint256) {
        uint256 pct = voter.getReceiverVotePct(id, week);

        return (totalWeeklyEmissions * pct) / 1e18;
    }

    function getTotalWeeklyEmissions(
        uint256 week,
        uint256 unallocatedTotal
    ) external returns (uint256 amount, uint256 lock) {
        require(msg.sender == address(vault));

        // apply the lock week decay
        lock = lockWeeks;
        if (lock > 0 && week % lockDecayWeeks == 0) {
            lock -= 1;
            lockWeeks = uint64(lock);
        }

        // check for and apply scheduled update to `weeklyPct`
        uint256 length = scheduledWeeklyPct.length;
        uint256 pct = weeklyPct;
        if (length > 0) {
            uint64[2] memory nextUpdate = scheduledWeeklyPct[length - 1];
            if (nextUpdate[0] == week) {
                scheduledWeeklyPct.pop();
                pct = nextUpdate[1];
                weeklyPct = nextUpdate[1];
            }
        }

        // calculate the weekly emissions as a percentage of the unallocated supply
        amount = (unallocatedTotal * pct) / MAX_PCT;

        return (amount, lock);
    }

    function _setWeeklyPctSchedule(uint64[2][] memory _scheduledWeeklyPct) internal {
        uint256 length = _scheduledWeeklyPct.length;
        if (length > 0) {
            uint256 week = _scheduledWeeklyPct[0][0];
            uint256 currentWeek = getWeek();
            for (uint256 i = 0; i < length; i++) {
                if (i > 0) {
                    require(_scheduledWeeklyPct[i][0] < week, "Must sort by week descending");
                    week = _scheduledWeeklyPct[i][0];
                }
                _scheduledWeeklyPct[i][0] = uint64(week + currentWeek);
                require(_scheduledWeeklyPct[i][1] <= MAX_PCT, "Cannot exceed MAX_PCT");
            }
            require(week > 0, "Cannot schedule past weeks");
        }
        scheduledWeeklyPct = _scheduledWeeklyPct;
        emit WeeklyPctScheduleSet(_scheduledWeeklyPct);
    }
}