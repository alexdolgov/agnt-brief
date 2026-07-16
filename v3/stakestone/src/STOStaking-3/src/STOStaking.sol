// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {
    TransferHelper
} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";
import {
    Ownable2Step,
    Ownable
} from "@openzeppelin/contracts/access/Ownable2Step.sol";

import {ISTOStaking} from "./interfaces/ISTOStaking.sol";
import {IGenesisExpedition} from "./interfaces/IGenesisExpedition.sol";
import {IReferralRegistry} from "./interfaces/IReferralRegistry.sol";

import {Errors} from "./libraries/Errors.sol";

/// @title STOStaking
/// @author luoyhang003
/// @notice Enables users to lock STO tokens during the Genesis Expedition event
///         to earn Hammers, Raw Stones, and Golden Stones.
/// @dev
///  - Lock entries are grouped by UTC-0 day (`timeIndex`).
///  - STO unlocks gradually after the event ends (`END_TIME`).
///  - Golden Stones are distributed using cumulative modulo accounting.
///  - Integrates with GenesisExpedition for distributing in-game resources.
///  - Integrates with ReferralRegistry for bonus hammer rewards.
contract STOStaking is ISTOStaking, Ownable2Step {
    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Duration of the staking event.
    uint256 public constant DURATION = 70 days;

    /// @notice Address of the STO ERC20 token to be staked.
    address public immutable STO_ADDR;

    /// @notice GenesisExpedition contract for distributing Hammers, Raw Stones, Golden Stones.
    address public immutable EXPEDITION_ADDR;

    /// @notice Referral registry for establishing referrer/referee relationships.
    address public immutable REFERRAL_REGISTRY_ADDR;

    /// @notice Event start timestamp (UTC-0 aligned).
    uint256 public immutable START_TIME;

    /// @notice Event end timestamp (`START_TIME + DURATION`).
    uint256 public immutable END_TIME;

    /// @notice UTC-0 day index corresponding to `START_TIME`.
    uint256 public immutable START_TIME_INDEX;

    /// @notice UTC-0 day index corresponding to `END_TIME`.
    uint256 public immutable END_TIME_INDEX;

    /// @notice STO amount required to mint one Hammer.
    uint256 public stoPerHammer = 30 * 1e18;

    /// @notice STO amount required to mint one Raw Stone.
    uint256 public stoPerRawStone = 50 * 1e18;

    /// @notice Maximum number of raw stones that can be minted by locking sto per day.
    uint256 public maximumDailyRawStoneMintAmount = 100;

    /// @notice STO amount required to mint one Golden Stone.
    uint256 public stoPerGoldenStone = 2000 * 1e18;

    /// @notice User lock entries, grouped by day index.
    mapping(address => LockEntry[]) private lockEntries;

    /// @notice Total STO locked per user.
    mapping(address => uint256) private totalLocked;

    /// @notice Tracks how many raw stones a user has minted on a given day.
    /// @dev
    ///  - Keyed by user and floored UTC day timestamp.
    mapping(address => mapping(uint256 => uint256)) private mintedRawStones;

    /// @notice Next unlockable lock index per user.
    mapping(address => uint256) private lastUnlockIndex;

    /*//////////////////////////////////////////////////////////////////////////
                                    MODIFIERS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Ensures a function is only callable while event is active.
    /// @dev Active period: `START_TIME <= block.timestamp <= END_TIME`.
    modifier onlyEventActive() {
        _onlyEventActive();
        _;
    }

    /// @notice Ensures a function is only callable after event has ended.
    modifier onlyEventEnded() {
        _onlyEventEnded();
        _;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Initializes the STO staking contract.
    /// @dev Start time must be UTC-0 aligned and in the future.
    /// @param _stoAddr STO token address.
    /// @param _expeditionAddr GenesisExpedition contract address.
    /// @param _referralRegistryAddr ReferralRegistry contract address.
    /// @param _startTime Event start timestamp.
    constructor(
        address _stoAddr,
        address _expeditionAddr,
        address _referralRegistryAddr,
        uint256 _startTime
    ) Ownable(msg.sender) {
        if (
            _stoAddr == address(0) ||
            _expeditionAddr == address(0) ||
            _referralRegistryAddr == address(0)
        ) revert Errors.ZeroAddress();

        STO_ADDR = _stoAddr;

        if (_startTime % 1 days != 0 || block.timestamp >= _startTime)
            revert Errors.InvalidStartTime();

        START_TIME = _startTime;
        END_TIME = START_TIME + DURATION;

        START_TIME_INDEX = START_TIME / 1 days;
        END_TIME_INDEX = END_TIME / 1 days;

        EXPEDITION_ADDR = _expeditionAddr;
        REFERRAL_REGISTRY_ADDR = _referralRegistryAddr;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    PERMISSIONLESS FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Locks STO for both Hammers and Raw Stones in a single transaction.
    /// @dev Wrapper around `_lockForResources`.
    /// @param _hammers Number of hammers to mint.
    /// @param _rawStones Number of raw stones to mint.
    /// @param _referrer Address of the referring user.
    function lockFor(
        uint256 _hammers,
        uint256 _rawStones,
        address _referrer
    ) external onlyEventActive {
        _lockForResources(msg.sender, _referrer, _hammers, _rawStones);
    }

    /// @notice Locks STO exclusively for hammers.
    /// @param _amount Number of hammers to mint.
    /// @param _referrer Referrer address.
    function lockForHammers(
        uint256 _amount,
        address _referrer
    ) external onlyEventActive {
        _lockForResources(msg.sender, _referrer, _amount, 0);
    }

    /// @notice Locks STO exclusively for raw stones.
    /// @param _amount Number of raw stones to mint.
    /// @param _referrer Referrer address.
    function lockForRawStones(
        uint256 _amount,
        address _referrer
    ) external onlyEventActive {
        _lockForResources(msg.sender, _referrer, 0, _amount);
    }

    /// @notice Unlocks matured lock entries up to `_lockIndex`.
    /// @dev
    ///  - Each lock entry unlocks at: `END_TIME_INDEX + entry.timeIndex`.
    ///  - Reverts if any entry in range has not matured.
    /// @param _lockIndex Last index to unlock (inclusive).
    function unlock(uint256 _lockIndex) external onlyEventEnded {
        address player = msg.sender;

        uint256 length = lockEntries[player].length;
        uint256 unlockIndex = lastUnlockIndex[player];

        if (_lockIndex >= length) revert Errors.IndexOutOfBounds();

        if (length == 0 || unlockIndex >= length || _lockIndex < unlockIndex)
            revert Errors.NothingToUnlock();

        uint256 currentDay = block.timestamp / 1 days;

        LockEntry[] storage entries = lockEntries[player];

        uint256 unlockableAmount;
        for (uint256 i = unlockIndex; i <= _lockIndex; i++) {
            LockEntry storage entry = entries[i];

            uint256 unlockDay = END_TIME_INDEX + entry.timeIndex;
            if (currentDay < unlockDay) revert Errors.UnlockNotMatured();

            unlockableAmount += entry.lockedAmount;
        }

        lastUnlockIndex[player] = _lockIndex + 1;
        totalLocked[player] -= unlockableAmount;

        TransferHelper.safeTransfer(STO_ADDR, player, unlockableAmount);

        emit TokenUnlocked(player, STO_ADDR, unlockableAmount);
    }

    /// @notice Unlocks all matured lock entries.
    /// @dev Stops at the first non-mature lock entry.
    function unlockAll() external onlyEventEnded {
        address player = msg.sender;

        uint256 length = lockEntries[player].length;
        uint256 unlockIndex = lastUnlockIndex[player];

        if (length == 0 || unlockIndex >= length)
            revert Errors.NothingToUnlock();

        uint256 currentDay = block.timestamp / 1 days;
        LockEntry[] storage entries = lockEntries[player];

        uint256 unlockableAmount;
        uint256 i;
        for (i = unlockIndex; i < length; i++) {
            LockEntry storage entry = entries[i];

            uint256 unlockDay = END_TIME_INDEX + entry.timeIndex;
            if (currentDay < unlockDay) break;

            unlockableAmount += entry.lockedAmount;
        }

        lastUnlockIndex[player] = i;
        totalLocked[player] -= unlockableAmount;

        TransferHelper.safeTransfer(STO_ADDR, player, unlockableAmount);

        emit TokenUnlocked(player, STO_ADDR, unlockableAmount);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns total STO locked by `_player`.
    /// @param _player User address.
    /// @return lockedAmount_ Total locked STO.
    function getTotalLockedAmount(
        address _player
    ) external view returns (uint256 lockedAmount_) {
        lockedAmount_ = totalLocked[_player];
    }

    /// @notice Returns all lock entries for a user.
    /// @param _player Address to query.
    /// @return lockEntries_ Array of all LockEntry items.
    function getLockEntries(
        address _player
    ) external view returns (LockEntry[] memory lockEntries_) {
        uint256 length = lockEntries[_player].length;

        lockEntries_ = new LockEntry[](length);

        for (uint256 i; i < length; i++) {
            lockEntries_[i] = lockEntries[_player][i];
        }
    }

    /// @notice Paginated lock entry query.
    /// @param _player Address to query.
    /// @param _start Starting index.
    /// @param _limit Number of entries to return.
    /// @return lockEntries_ Slice of lock entries.
    function getLockEntries(
        address _player,
        uint256 _start,
        uint256 _limit
    ) external view returns (LockEntry[] memory lockEntries_) {
        if (_limit == 0) revert Errors.InvalidArrayLength();

        uint256 length = lockEntries[_player].length;
        if (_start >= length) revert Errors.IndexOutOfBounds();

        lockEntries_ = new LockEntry[](_limit);

        uint256 i;
        for (i; i < _limit; i++) {
            uint256 index = _start + i;
            if (index >= length) break;
            lockEntries_[i] = lockEntries[_player][index];
        }

        assembly {
            mstore(lockEntries_, i)
        }
    }

    /// @notice Returns total number of lock entries for a user.
    /// @param _player Address to query.
    /// @return length_ Number of lock entries.
    function getLockEntryLength(
        address _player
    ) external view returns (uint256 length_) {
        length_ = lockEntries[_player].length;
    }

    /// @notice Returns the next unlockable lock index.
    /// @param _player Address to query.
    /// @return index_ Next unlockable index.
    function getLastUnlockIndex(
        address _player
    ) external view returns (uint256 index_) {
        index_ = lastUnlockIndex[_player];
    }

    /// @notice Computes how much STO is unlockable at current time.
    /// @param _player Address to query.
    /// @return unlockableAmount_ Total unlockable STO.
    function getUnlockableAmount(
        address _player
    ) external view returns (uint256 unlockableAmount_) {
        if (block.timestamp < END_TIME) return 0;

        uint256 length = lockEntries[_player].length;
        if (length == 0) return 0;

        uint256 unlockIndex = lastUnlockIndex[_player];
        if (unlockIndex >= length) return 0;

        uint256 currentTimeIndex = block.timestamp / 1 days - END_TIME_INDEX;
        LockEntry[] memory entries = lockEntries[_player];

        for (uint256 i = unlockIndex; i < length; i++) {
            LockEntry memory entry = entries[i];
            if (entry.timeIndex > currentTimeIndex) break;
            unlockableAmount_ += entry.lockedAmount;
        }
    }

    /// @notice Returns the amount of raw stones minted for a specific player on a given day.
    /// @dev The timestamp parameter is normalized to the corresponding UTC-0 day boundary
    ///      using floor-to-day logic before querying storage. The returned value represents
    ///      only the raw stones minted on that day, not the cumulative total.
    ///      This function is intended for off-chain indexing (e.g., Subgraph) and
    ///      historical reward analysis.
    /// @param _player The address of the player to query.
    /// @param _timestamp Any timestamp within the target day (will be floored to UTC-0).
    /// @return _amount The number of raw stones minted for the player on the specified day.
    function getMintedRawStones(
        address _player,
        uint256 _timestamp
    ) external view returns (uint256 _amount) {
        uint256 day = _floorToDay(_timestamp);

        _amount = mintedRawStones[_player][day];
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Updates STO price per Hammer.
    /// @param _stoPerHammer New price.
    function setHammerPrice(uint256 _stoPerHammer) external onlyOwner {
        if (_stoPerHammer == 0) revert Errors.InvalidPrice();

        emit SetHammerPrice(stoPerHammer, _stoPerHammer);

        stoPerHammer = _stoPerHammer;
    }

    /// @notice Updates STO price per Raw Stone.
    /// @param _stoPerRawStone New price.
    function setRawStonePrice(uint256 _stoPerRawStone) external onlyOwner {
        if (_stoPerRawStone == 0) revert Errors.InvalidPrice();

        emit SetRawStonePrice(stoPerRawStone, _stoPerRawStone);

        stoPerRawStone = _stoPerRawStone;
    }

    /// @notice Updates STO price per Golden Stone.
    /// @param _stoPerGoldenStone New price.
    function setGoldenStonePrice(
        uint256 _stoPerGoldenStone
    ) external onlyOwner {
        if (_stoPerGoldenStone == 0) revert Errors.InvalidPrice();

        emit SetGoldenStonePrice(stoPerGoldenStone, _stoPerGoldenStone);

        stoPerGoldenStone = _stoPerGoldenStone;
    }

    /// @notice Updates the maximum daily raw stone mint limit.
    /// @param _maximumAmount New limit.
    function setMaxDailyRawStoneMintAmount(
        uint256 _maximumAmount
    ) external onlyOwner {
        emit SetMaxDailyRawStoneMintAmount(
            maximumDailyRawStoneMintAmount,
            _maximumAmount
        );

        maximumDailyRawStoneMintAmount = _maximumAmount;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Ensures event is active.
    function _onlyEventActive() internal view {
        if (block.timestamp < START_TIME || block.timestamp > END_TIME)
            revert Errors.EventNotActive();
    }

    /// @notice Ensures event has ended.
    function _onlyEventEnded() internal view {
        if (block.timestamp < END_TIME) revert Errors.EventNotEnded();
    }

    /// @notice Floors a timestamp down to its UTC-0 day boundary.
    /// @dev E.g. 2024-01-01 15:23 -> 2024-01-01 00:00.
    /// @param timestamp The original timestamp.
    /// @return The floored timestamp at 00:00 UTC of that day.
    function _floorToDay(uint256 timestamp) internal pure returns (uint256) {
        return timestamp - (timestamp % 1 days);
    }

    /// @notice Binds referee–referrer relationship.
    /// @param _referee User being referred.
    /// @param _referrer Referrer.
    /// @return Whether binding succeeded.
    function _bindReferral(
        address _referee,
        address _referrer
    ) internal returns (bool) {
        return
            IReferralRegistry(REFERRAL_REGISTRY_ADDR).bindReferral(
                _referee,
                _referrer
            );
    }

    /// @notice Core lock logic for Hammers and Raw Stones.
    /// @dev Also distributes Golden Stones and applies referral rewards.
    /// @param _player User performing the lock.
    /// @param _referrer Referrer address.
    /// @param _hammers Number of hammers requested.
    /// @param _rawStones Number of raw stones requested.
    function _lockForResources(
        address _player,
        address _referrer,
        uint256 _hammers,
        uint256 _rawStones
    ) internal {
        if (_hammers == 0 && _rawStones == 0)
            revert Errors.BelowMinimumLockAmount();

        uint256 tokenLockedForHammers = _hammers * stoPerHammer;
        uint256 tokenLockedForRawStones = _rawStones * stoPerRawStone;

        uint256 tokenLocked = tokenLockedForHammers + tokenLockedForRawStones;

        TransferHelper.safeTransferFrom(
            STO_ADDR,
            _player,
            address(this),
            tokenLocked
        );

        IGenesisExpedition expedition = IGenesisExpedition(EXPEDITION_ADDR);

        if (_hammers > 0) {
            expedition.distributeHammers(_player, _hammers);

            emit TokenLockedForHammer(_player, STO_ADDR, tokenLockedForHammers);
        }

        if (_rawStones > 0) {
            uint256 today = _floorToDay(block.timestamp);
            if (
                mintedRawStones[_player][today] + _rawStones >
                maximumDailyRawStoneMintAmount
            ) revert Errors.ExceedMaxRawStoneMintAmount();

            mintedRawStones[_player][today] += _rawStones;
            expedition.distributeRawStones(_player, _rawStones);

            emit TokenLockedForRawStone(
                _player,
                STO_ADDR,
                tokenLockedForRawStones
            );
        }

        uint256 remainder = totalLocked[_player] % stoPerGoldenStone;
        uint256 newGoldenStones = (remainder + tokenLocked) / stoPerGoldenStone;

        if (newGoldenStones != 0) {
            expedition.distributeGoldenStones(_player, newGoldenStones);
        }

        _addNewLockEntry(_player, tokenLocked);

        if (_bindReferral(_player, _referrer))
            expedition.distributeHammers(
                _referrer,
                expedition.getHammersPerReferral()
            );
    }

    /// @notice Adds STO lock entry for the current UTC-0 day.
    /// @dev Aggregates multiple locks in the same day.
    /// @param _player User performing the lock.
    /// @param _amount STO locked.
    function _addNewLockEntry(address _player, uint256 _amount) internal {
        uint256 timeIndex = block.timestamp / 1 days - START_TIME_INDEX;

        LockEntry[] storage entries = lockEntries[_player];
        uint256 length = entries.length;

        if (length > 0 && entries[length - 1].timeIndex == timeIndex) {
            entries[length - 1].lockedAmount += _amount;
        } else {
            entries.push(
                LockEntry({timeIndex: timeIndex, lockedAmount: _amount})
            );
        }

        totalLocked[_player] += _amount;
    }
}
