// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

/// @title ISTOStaking Interface
/// @author luoyhang003
/// @notice Interface for the STO staking contract used in the Genesis Expedition event.
/// @dev
///  This interface defines:
///   - Locking STO to earn Hammers, Raw Stones, and Golden Stones
///   - Time-indexed unlocking mechanism
///   - View helpers for lock entries, unlockable amounts, and price configurations
///  STO is locked for 70 days before becoming withdrawable.
interface ISTOStaking {
    /*//////////////////////////////////////////////////////////////////////////
                                    ENUM
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Defines lock type used during locking operations.
    /// @dev
    ///  LOCK_FOR_HAMMER: lock STO to receive hammers
    ///  LOCK_FOR_RAW_STONE: lock STO to receive raw stones
    enum LOCK_TYPE {
        LOCK_FOR_HAMMER,
        LOCK_FOR_RAW_STONE
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    STRUCTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Represents a time-indexed STO lock entry.
    /// @dev
    ///  - timeIndex: (timestamp / 1 days) - startTimeIndex, representing day offset
    ///  - lockedAmount: amount of STO locked on this day
    struct LockEntry {
        uint256 timeIndex;
        uint256 lockedAmount;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when a player locks STO for hammers.
    /// @param player Address performing the lock.
    /// @param token The STO token address.
    /// @param amount Amount of STO locked.
    event TokenLockedForHammer(
        address indexed player,
        address indexed token,
        uint256 amount
    );

    /// @notice Emitted when a player locks STO for raw stones.
    /// @param player Address performing the lock.
    /// @param token The STO token address.
    /// @param amount Amount of STO locked.
    event TokenLockedForRawStone(
        address indexed player,
        address indexed token,
        uint256 amount
    );

    /// @notice Emitted when locked STO becomes unlocked and is withdrawn.
    /// @param player The user unlocking STO.
    /// @param token The STO token address.
    /// @param amount Amount unlocked.
    event TokenUnlocked(
        address indexed player,
        address indexed token,
        uint256 amount
    );

    /// @notice Emitted when the STO -> Hammer conversion price changes.
    /// @param oldPrice Previous price.
    /// @param newPrice New price.
    event SetHammerPrice(uint256 oldPrice, uint256 newPrice);

    /// @notice Emitted when the STO -> Raw Stone conversion price changes.
    /// @param oldPrice Previous price.
    /// @param newPrice New price.
    event SetRawStonePrice(uint256 oldPrice, uint256 newPrice);

    /// @notice Emitted when the STO -> Golden Stone conversion price changes.
    /// @param oldPrice Previous price.
    /// @param newPrice New price.
    event SetGoldenStonePrice(uint256 oldPrice, uint256 newPrice);

    /// @notice Emitted when the maximum daily raw stone mint limit is updated.
    /// @param oldAmount The previous maximum daily raw stone mint amount.
    /// @param newAmount The new maximum daily raw stone mint amount.
    event SetMaxDailyRawStoneMintAmount(uint256 oldAmount, uint256 newAmount);

    /*//////////////////////////////////////////////////////////////////////////
                                    PERMISSIONLESS FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Locks STO for hammers and raw stones in a single transaction.
    /// @dev
    ///  - `_hammers` and `_rawStones` determine how much STO is required
    ///  - System distributes resources accordingly
    /// @param _hammers Number of hammers to purchase via locking.
    /// @param _rawStones Number of raw stones to purchase via locking.
    /// @param _referrer Optional referral address.
    function lockFor(
        uint256 _hammers,
        uint256 _rawStones,
        address _referrer
    ) external;

    /// @notice Locks STO exclusively for hammers.
    /// @param _amount Number of hammers to purchase.
    /// @param _referrer Optional referral address.
    function lockForHammers(uint256 _amount, address _referrer) external;

    /// @notice Locks STO exclusively for raw stones.
    /// @param _amount Number of raw stones to purchase.
    /// @param _referrer Optional referral address.
    function lockForRawStones(uint256 _amount, address _referrer) external;

    /// @notice Unlocks a specific lock entry after maturity.
    /// @dev Unlock is allowed only when event has ended and the entry has matured.
    /// @param _lockIndex Index of the lock entry to unlock.
    function unlock(uint256 _lockIndex) external;

    /// @notice Unlocks all matured lock entries at once.
    /// @dev Stops iterating when an entry is not yet matured.
    function unlockAll() external;

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the total STO amount that is currently withdrawable by a user.
    /// @dev A lock becomes unlockable after: END_TIME + (timeIndex * 1 day).
    /// @param _player Address querying unlockable STO.
    /// @return unlockableAmount_ Amount of STO eligible for unlocking.
    function getUnlockableAmount(
        address _player
    ) external view returns (uint256 unlockableAmount_);

    /// @notice Returns total STO locked by a player (including un-matured entries).
    /// @param _player User address.
    /// @return lockedAmount_ Total STO currently locked.
    function getTotalLockedAmount(
        address _player
    ) external view returns (uint256 lockedAmount_);

    /// @notice Returns all lock entries for a player.
    /// @param _player The user whose lock entries are queried.
    /// @return lockEntries_ Dynamic array of LockEntry structs.
    function getLockEntries(
        address _player
    ) external view returns (LockEntry[] memory lockEntries_);

    /// @notice Returns a paginated slice of a user's lock entries.
    /// @dev Reverts if _start + _limit exceeds total entries.
    /// @param _player User address.
    /// @param _start Starting index.
    /// @param _limit Number of entries to return.
    /// @return lockEntries_ Array slice of LockEntry records.
    function getLockEntries(
        address _player,
        uint256 _start,
        uint256 _limit
    ) external view returns (LockEntry[] memory lockEntries_);

    /// @notice Returns total number of lock entries created by a player.
    /// @param _player User address.
    /// @return length_ Number of lock entries.
    function getLockEntryLength(
        address _player
    ) external view returns (uint256 length_);

    /// @notice Returns the player's last processed unlock index.
    /// @dev Used internally to track which entries have been unlocked already.
    /// @param _player User address.
    /// @return index_ Last unlocked index (exclusive).
    function getLastUnlockIndex(
        address _player
    ) external view returns (uint256 index_);

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
    ) external view returns (uint256 _amount);
}
