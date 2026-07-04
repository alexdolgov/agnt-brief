// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ERC20VotesUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20VotesUpgradeable.sol";
import {ERC20PermitUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Time} from "@openzeppelin/contracts/utils/types/Time.sol";
import {UD60x18, ud} from "prb-math/UD60x18.sol";
import {IRewardsSource} from "../interfaces/IRewardsSource.sol";
import {IAbraStaking} from "../interfaces/abra/IAbraStaking.sol";
import {currentEpoch} from "src/libraries/EpochMath.sol";
import {AbraStakingRelay} from "./AbraStakingRelay.sol";
import {AbraStakingLibrary as ASL} from "./AbraStakingLibrary.sol";


/// @title ABRA Staking
/// @author Based on original work by Daniel Von Fange
/// @notice Provides staking, vote power history, vote delegation, and rewards
/// distribution.
///
/// The balance received for staking (and thus the voting power and rewards
/// distribution) goes up exponentially by the end of the staked period.

contract AbraStaking is ERC20VotesUpgradeable, OwnableUpgradeable, UUPSUpgradeable {
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeERC20 for IERC20;

    // 1. Core Storage
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    uint256 public immutable epoch; // timestamp
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    uint256 public immutable minStakeDuration; // in seconds
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    uint256 public immutable maxStakeDuration; // in seconds

    // 2. Staking and Lockup Storage
    uint256 constant YEAR_BASE = 12e17;

    struct Lockup {
        uint256 points;
        uint128 amount;
        uint32  end;
        uint64  id; // global id
    }

    struct LockupReference {
        address owner;
        uint64  index;  // index of the lockup in the Lockup[] array
    }

    uint64 public lastLockupId;
    uint96 public lockedSupply; // next 96 bits are unoccupied
    mapping(address owner => Lockup[]) private _lockups;
    // since actual lockups are stored under address => Lockup[] mapping, we need a lookup table for the lockups =)
    mapping(uint256 lockupId => LockupReference) private _lockupRefs;
    // amount of abra locked by the end of the current epoch
    mapping(uint256 epoch => uint256 supply) public lockedSupplyCheckpoints;

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    IERC20 public immutable abra; // Must not allow reentrancy
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    AbraStakingRelay public immutable relay;
    
    // 3. Reward Storage
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    IRewardsSource public immutable rewardsSource;
    mapping(address => uint256) public rewardDebtPerShare;
    uint256 public accRewardPerShare; // As of the start of the block

    // Used to track any calls to `delegate()` method. When this isn't
    // set to true, voting powers are delegated to the receiver of the stake
    // when `stake()` or `extend()` method are called.
    // For existing stakers with delegation set, This will remain `false`
    // unless the user calls `delegate()` method.
    mapping(address => bool) public hasDelegationSet;
    // A set of addresses, excluded from rewards program.
    // Used to exclude various ABRA vestings.
    EnumerableSet.AddressSet private excludedFromRewards;

    // Events
    event Stake(
        address indexed user,
        uint256 lockupId,
        uint256 lockupIndex,
        uint256 amount,
        uint256 end,
        uint256 points
    );
    event Unstake(
        address indexed user,
        uint256 lockupId,
        uint256 lockupIndex,
        uint256 amount,
        uint256 end,
        uint256 points
    );
    event Reward(address indexed user, uint256 amount);
    event ExcludedFromRewards(address indexed user);
    event IncludedInRewards(address indexed user);

    // 1. Core Functions
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(
        address _abra,
        address _relay,
        uint256 _epoch,
        uint256 _minStakeDuration,
        uint256 _maxStakeDuration,
        address _rewardsSource
    ) {
        abra = IERC20(_abra);
        relay = AbraStakingRelay(_relay);
        epoch = _epoch;
        minStakeDuration = _minStakeDuration;
        maxStakeDuration = _maxStakeDuration;
        rewardsSource = IRewardsSource(_rewardsSource);
        _disableInitializers();
    }

    function initialize() external initializer {
        __ERC20_init("Vote Escrowed ABRA", "veABRA");
        __Ownable_init(msg.sender);
        __UUPSUpgradeable_init();
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {
    }

    function transfer(address, uint256) public override pure returns (bool) {
        revert("Staking: Transfers disabled");
    }

    function transferFrom(
        address,
        address,
        uint256
    ) public override pure returns (bool) {
        revert("Staking: Transfers disabled");
    }

    // 2. Staking and Lockup Functions

    /// @notice Stake ABRA to an address that may not be the same as the
    /// sender of the funds. This can be used to give staked funds to someone
    /// else.
    ///
    /// If staking before the start of staking (epoch), then the lockup start
    /// and end dates are shifted forward so that the lockup starts at the
    /// epoch.
    ///
    /// Any rewards previously earned will be paid out.
    ///
    /// @param amount ABRA to lockup in the stake
    /// @param duration in seconds for the stake
    /// @param to address to receive ownership of the stake
    function stake(
        uint256 amount,
        uint256 duration,
        address to
    ) public returns (uint64 id) {
        if (to == address(0))           revert ASL.AbraStaking_ZeroAddress();
        if (amount > type(uint128).max) revert ASL.AbraStaking_AmountExceeded(amount);
        if (amount == 0)                revert ASL.AbraStaking_ZeroAmount();

        // duration checked inside previewPoints
        (uint256 points, uint256 end) = previewPoints(amount, duration);
        if (points + totalSupply() > type(uint192).max) revert ASL.AbraStaking_PointsExceeded(points);

        return _stake(amount, end, points, to);
    }

    function _stake(uint amount, uint end, uint points, address to) internal returns (uint64 id) {
        _collectRewards(to);
        abra.safeTransferFrom(msg.sender, address(this), amount); // Important that it's sender

        uint256 index;
        (id, index) = _createLockup(amount, end, points, to);

        lockedSupply += uint96(amount); // uint96 should be enough for ABRA
        lockedSupplyCheckpoints[currentEpoch()] = lockedSupply;

        _mint(to, points);

        if (!hasDelegationSet[to] && delegates(to) == address(0)) {
            // Delegate voting power to the receiver, if unregistered
            _delegate(to, to);
        }

        emit Stake(to, id, index, amount, end, points);
    }

    /// @notice Stake ABRA
    ///
    /// If staking before the start of staking (epoch), then the lockup start
    /// and end dates are shifted forward so that the lockup starts at the
    /// epoch.
    ///
    /// Any rewards previously earned will be paid out.
    ///
    /// @notice Stake ABRA for myself.
    /// @param amount ABRA to lockup in the stake
    /// @param duration in seconds for the stake
    function stake(uint256 amount, uint256 duration) external returns (uint lockupIndex) {
        return stake(amount, duration, msg.sender);
    }

    /// Called by the relayer to attach the stake that was forwarded from another chain
    function attach(address to, uint amount, uint32 end) external {
        if (msg.sender != address(relay)) revert ASL.AbraStaking_AccessDenied(address(relay), msg.sender);
        if (to == address(0))             revert ASL.AbraStaking_ZeroAddress();
        if (amount > type(uint128).max)   revert ASL.AbraStaking_AmountExceeded(amount);
        if (amount == 0)                  revert ASL.AbraStaking_ZeroAmount();
        // Since anyone can send a composed message to the relayer, we must conduct all of the checks that are done
        // during regular staking, except for checking the minimum duration. We will automatically extend stakes with
        // durations less than the minimum to meet the required minimum duration. Otherwise, anyone could send composed
        // messages to the relayer and circumvent the minimum duration requirement.
        uint256 start = block.timestamp > epoch ? block.timestamp : epoch;
        uint32 minEnd = uint32(start + minStakeDuration);
        uint32 maxEnd = uint32(start + maxStakeDuration);
        end = end < minEnd ? minEnd : (end > maxEnd ? maxEnd : end); // clamp
        uint points = ASL.calcPoints(amount, end, epoch);
        if (points + totalSupply() > type(uint192).max) revert ASL.AbraStaking_PointsExceeded(points);

        _stake(amount, end, points, to);
    }

    /// @notice Collect staked ABRA for a lockup and any earned rewards.
    /// @param lockupIndex the index of the lockup to unstake
    function unstake(uint256 lockupIndex) external {
        unstake(msg.sender, lockupIndex);
    }

    /// @notice Collect staked ABRA for a lockup and any earned rewards.
    /// @param staker the address of the owner of the lockup
    /// @param lockupIndex the index of the lockup to unstake
    function unstake(address staker, uint256 lockupIndex) public {
        Lockup memory lockup = _lockups[staker][lockupIndex];
        if (block.timestamp < lockup.end) revert ASL.AbraStaking_LockupNotEnded(block.timestamp, lockup.end);
        if (lockup.end == 0)              revert ASL.AbraStaking_AlreadyUnstaked(lockup.id);
        _unstake(staker, lockupIndex, lockup, staker);
    }

    function _unstake(address staker, uint256 lockupIndex, Lockup memory lockup, address to) internal {
        _collectRewards(staker);
        delete _lockups[staker][lockupIndex]; // Keeps empty in array, so indexes are stable
        delete _lockupRefs[lockup.id];
        lockedSupply -= uint96(lockup.amount); // uint96 should be enough for ABRA
        lockedSupplyCheckpoints[currentEpoch()] = lockedSupply;
        _burn(staker, lockup.points);
        abra.safeTransfer(to, lockup.amount);
        emit Unstake(staker, lockup.id, lockupIndex, lockup.amount, lockup.end, lockup.points);
    }

    /// Called by the the relayer to transfer the stake to another chain. From the perspective of the local chain it's
    /// similar to the regular unstake, but without receiving the funds, and with being able to unstake before the end is reached
    function detach(address staker, uint256 lockupIndex) external returns(Lockup memory lockup) {
        if (msg.sender != address(relay)) revert ASL.AbraStaking_AccessDenied(address(relay), msg.sender);

        lockup = _lockups[staker][lockupIndex];
        if (lockup.end == 0) revert ASL.AbraStaking_AlreadyUnstaked(lockup.id);
        if (lockup.end < block.timestamp) revert ASL.AbraStaking_Expired(lockup.id);

        _unstake(staker, lockupIndex, lockup, address(relay));
    }

    /// @notice Extend a stake lockup for additional points.
    ///
    /// The stake end time is computed from the current time + duration, just
    /// like it is for new stakes. So a new stake for seven days duration and
    /// an old stake extended with a seven days duration would have the same
    /// end.
    ///
    /// If an extend is made before the start of staking, the start time for
    /// the new stake is shifted forwards to the start of staking, which also
    /// shifts forward the end date.
    ///
    /// @param lockupIndex the index of the old lockup to extend
    /// @param duration number of seconds from now to stake for
    function extend(uint256 lockupIndex, uint256 duration) external {
        // duration checked inside previewPoints
        _collectRewards(msg.sender);
        Lockup memory lockup = _lockups[msg.sender][lockupIndex];
        uint256 oldAmount = lockup.amount;
        uint256 oldEnd = lockup.end;
        uint256 oldPoints = lockup.points;
        (uint256 newPoints, uint256 newEnd) = previewPoints(
            oldAmount,
            duration
        );
        if (oldAmount == 0)   revert ASL.AbraStaking_ZeroAmount();
        if (newEnd <= oldEnd) revert ASL.AbraStaking_IncorrectEnd(newEnd, oldEnd);
        lockup.end = uint32(newEnd);
        lockup.points = newPoints;
        _lockups[msg.sender][lockupIndex] = lockup;
        _mint(msg.sender, newPoints - oldPoints);
        if (!hasDelegationSet[msg.sender] && delegates(msg.sender) == address(0)) {
            // Delegate voting power to the receiver, if unregistered
            _delegate(msg.sender, msg.sender);
        }
        emit Unstake(msg.sender, lockup.id, lockupIndex, oldAmount, oldEnd, oldPoints);
        emit Stake(msg.sender, lockup.id, lockupIndex, oldAmount, newEnd, newPoints);
    }

    function split(address staker, uint256 lockupIndex, uint256[] calldata parts) external {
        if (msg.sender != address(relay)) revert ASL.AbraStaking_AccessDenied(address(relay), msg.sender);

        _collectRewards(staker);
        ASL.split(_lockups, staker, lockupIndex, parts);
    }

    function merge(address staker, uint256[] calldata lockupIndexes) external {
        if (msg.sender != address(relay)) revert ASL.AbraStaking_AccessDenied(address(relay), msg.sender);

        _collectRewards(staker);
        ASL.merge(_lockups, _lockupRefs, staker, lockupIndexes);
    }

    function mint(address account, uint256 value) public {
        if (msg.sender != address(this)) revert ASL.AbraStaking_AccessDenied(address(this), msg.sender);

        _mint(account, value);
    }

    function burn(address account, uint256 value) public {
        if (msg.sender != address(this)) revert ASL.AbraStaking_AccessDenied(address(this), msg.sender);

        _burn(account, value);
    }

    function createLockupAndEmitStake(
        uint amount,
        uint end,
        uint points,
        address to
    ) external returns (uint64 id) {
        if (msg.sender != address(this)) revert ASL.AbraStaking_AccessDenied(address(this), msg.sender);
        if (points + totalSupply() > type(uint192).max) revert ASL.AbraStaking_PointsExceeded(points);

        uint256 index;
        (id, index) = _createLockup(amount, end, points, to);
        emit AbraStaking.Stake(to, id, index, amount, end, points);
    }

    function _createLockup(
        uint amount,
        uint end,
        uint points,
        address to
    ) internal returns (uint64 id, uint256 index) {
        id = lastLockupId++;
        index = _lockups[to].length;
        _lockups[to].push(
            AbraStaking.Lockup({
                points: points,
                amount: uint128(amount), // max checked in the previous steps
                end: uint32(end),
                id: id
            })
        );
        _lockupRefs[id] = AbraStaking.LockupReference({owner: to, index: uint64(index)});
    }

    /// @notice Preview the number of points that would be returned for the
    /// given amount and duration.
    ///
    /// @param amount ABRA to be staked
    /// @param duration number of seconds to stake for
    /// @return points staking points that would be returned
    /// @return end staking period end date
    function previewPoints(uint256 amount, uint256 duration)
    public
    view
    returns (uint256, uint256)
    {
        if (duration < minStakeDuration) revert ASL.AbraStaking_InvalidDuration();
        if (duration > maxStakeDuration) revert ASL.AbraStaking_InvalidDuration();

        uint256 start = block.timestamp > epoch ? block.timestamp : epoch;
        uint256 end = start + duration;
        uint points = ASL.calcPoints(amount, end, epoch);
        return (points, end);
    }

    function lockupsLength(address staker) external view returns (uint) {
        return _lockups[staker].length;
    }

    function lockupRefs(uint256 lockupId) external view returns (LockupReference memory) {
        return _lockupRefs[lockupId];
    }

    function lockups(uint256 id) external view returns (Lockup memory) {
        LockupReference memory ref = _lockupRefs[id];
        return _lockups[ref.owner][ref.index];
    }

    function lockups(address _owner, uint256 index) external view returns (Lockup memory) {
        return _lockups[_owner][index];
    }

    /// Manually checkpoint the number of currently locked ABRA
    function checkpointLockedSupply() external {
        lockedSupplyCheckpoints[currentEpoch()] = lockedSupply;
    }

    // 3. Reward functions

    function excludeFromRewards(address user) external onlyOwner returns (bool) {
        if (!excludedFromRewards.contains(user)) {
            _collectRewards(user);
            excludedFromRewards.add(user);
            emit ExcludedFromRewards(user);
            return true;
        }
        return false;
    }

    function includeInRewards(address user) external onlyOwner returns (bool) {
        if (excludedFromRewards.contains(user)) {
            _collectRewards(user);
            excludedFromRewards.remove(user);
            emit IncludedInRewards(user);
            return true;
        }
        return false;
    }

    /**
     * @notice Return a list of users excluded from rewards programm
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees.
     */
    function usersExcludedFromRewards() external view returns (address[] memory) {
        return excludedFromRewards.values();
    }

    /// @notice Collect all earned ABRA rewards.
    function collectRewards() external {
        _collectRewards(msg.sender);
    }

    /// @notice Collect user's earned ABRA rewards.
    function collectRewards(address user) external {
        address voter = address(relay.voter());

        if (msg.sender != voter) revert ASL.AbraStaking_AccessDenied(voter, msg.sender);

        _collectRewards(user);
    }

    /// @notice Shows the amount of ABRA a user would receive if they collected
    /// rewards at this time.
    ///
    /// @param user to preview rewards for
    /// @return ABRA rewards amount
    function previewRewards(address user) external view returns (uint256) {
        if (excludedFromRewards.contains(user)) {
            return 0;
        }
        uint256 supply = _rewardableSupply();
        if (supply == 0) {
            return 0; // No one has any points to even get rewards
        }
        uint256 _accRewardPerShare = accRewardPerShare;
        _accRewardPerShare += (rewardsSource.previewRewards() * 1e12) / supply;
        uint256 netRewardsPerShare = _accRewardPerShare - rewardDebtPerShare[user];
        return (balanceOf(user) * netRewardsPerShare) / 1e12;
    }

    /// @dev Internal function to handle rewards accounting.
    ///
    /// 1. Collect new rewards for everyone
    /// 2. Calculate this user's rewards and accounting
    /// 3. Distribute this user's rewards
    ///
    /// This function *must* be called before any user balance changes.
    ///
    /// This will always update the user's rewardDebtPerShare to match
    /// accRewardPerShare, which is essential to the accounting.
    ///
    /// @param user to collect rewards for
    function _collectRewards(address user) internal {
        uint256 supply = _rewardableSupply();
        if (supply > 0) {
            uint256 preBalance = abra.balanceOf(address(this));
            try rewardsSource.collectRewards() {} catch {
                // Governance staking should continue, even if rewards fail
            }
            uint256 collected = abra.balanceOf(address(this)) - preBalance;
            accRewardPerShare += (collected * 1e12) / supply;
        }
        uint256 netRewardsPerShare = accRewardPerShare - rewardDebtPerShare[user];
        uint256 netRewards = (balanceOf(user) * netRewardsPerShare) / 1e12;
        rewardDebtPerShare[user] = accRewardPerShare;
        if (netRewards == 0 || excludedFromRewards.contains(user)) {
            return;
        }
        abra.safeTransfer(user, netRewards);
        emit Reward(user, netRewards);
    }

    function _rewardableSupply() internal view returns (uint256 supply) {
        supply = totalSupply();

        uint256 length = excludedFromRewards.length();
        for (uint256 i = 0; i < length; i++) {
            address excludedUser = excludedFromRewards.at(i);
            supply -= balanceOf(excludedUser);
        }
    }

    /**
     * @dev Change delegation for `delegator` to `delegatee`.
     *
     * Emits events {DelegateChanged} and {DelegateVotesChanged}.
     */
    function _delegate(address delegator, address delegatee) internal override {
        hasDelegationSet[delegator] = true;
        super._delegate(delegator, delegatee);
    }

    /// @dev By default Openzeppelin's Vote contract uses Time.blockNumber() clock mode,
    ///      but all our contracts are using timestamps, so we must override related methods
    function clock() public view override returns (uint48) {
        return Time.timestamp();
    }

    /**
     * @dev Machine-readable description of the clock as specified in EIP-6372.
     */
    // solhint-disable-next-line func-name-mixedcase
    function CLOCK_MODE() public view override returns (string memory) {
        // Check that the clock was not modified
        if (clock() != Time.timestamp()) {
            revert ERC6372InconsistentClock();
        }
        return "mode=timestamp";
    }

}
