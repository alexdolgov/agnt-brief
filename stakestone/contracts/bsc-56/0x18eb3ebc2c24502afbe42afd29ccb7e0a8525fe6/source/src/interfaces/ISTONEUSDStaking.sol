// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

/// @title ISTONEUSDStaking Interface
/// @author luoyhang003
/// @notice Interface for the STONEUSD staking contract used in the Genesis Expedition event.
/// @dev
///  This interface defines:
///   - Locking of STONEUSD to earn RawStones and Hammers
///   - Eligibility tracking for daily rewarded hammers
///   - Unlocking staked STONEUSD after the event ends
///   - View helpers for quota, locked amount, and user eligibility
interface ISTONEUSDStaking {
    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when a user locks STONEUSD for event participation.
    /// @param player The user performing the lock.
    /// @param token The address of the locked token (STONEUSD).
    /// @param amount The amount of STONEUSD locked.
    event TokenLocked(
        address indexed player,
        address indexed token,
        uint256 amount
    );

    /// @notice Emitted when a user unlocks their previously locked STONEUSD.
    /// @param player The user unlocking the tokens.
    /// @param token The address of the unlocked token (STONEUSD).
    /// @param amount The amount unlocked.
    event TokenUnlocked(
        address indexed player,
        address indexed token,
        uint256 amount
    );

    /*//////////////////////////////////////////////////////////////////////////
                                    PERMISSIONLESS FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Locks STONEUSD into the staking contract to participate in the event.
    /// @dev
    ///  - Requires the event to be active.
    ///  - Enforces per-user lock quota.
    ///  - May trigger referral binding and bonus hammer distribution.
    /// @param _tokenLocked The amount of STONEUSD to lock.
    /// @param _referrer The address of the user who referred the caller (optional).
    function lock(uint256 _tokenLocked, address _referrer) external;

    /// @notice Unlocks all previously locked STONEUSD after the event ends.
    /// @dev
    ///  - Callable only after the global unlock timestamp.
    ///  - Transfers all unlocked tokens back to the user.
    function unlock() external;

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the total amount of STONEUSD locked by a user.
    /// @param _player The user whose locked amount is queried.
    /// @return locked_ The total locked STONEUSD amount.
    function getLockedAmount(
        address _player
    ) external view returns (uint256 locked_);

    /// @notice Returns the remaining amount of STONEUSD the user is still allowed to lock.
    /// @dev Quota is based on the MAX_LOCK_COUNT (10 * 1000 STONEUSD).
    /// @param _player The user whose quota is queried.
    /// @return quota_ Remaining allowable lock amount.
    function getLockQuota(
        address _player
    ) external view returns (uint256 quota_);

    /// @notice Returns whether the user has activated daily hammer rewards (eligibility).
    /// @dev Eligibility becomes true once the user locks STONEUSD for the first time.
    /// @param _player The user whose eligibility is queried.
    /// @return eligibility_ True if the user receives daily system hammer rewards.
    function getEligibility(
        address _player
    ) external view returns (bool eligibility_);

    /// @notice Returns how many times the user has locked 1000 STONEUSD units.
    /// @dev Each 1000 STONEUSD increases lockCount by 1, up to MAX_LOCK_COUNT.
    /// @param _player The user whose lockCount is queried.
    /// @return lockCount_ Number of lock units attributed to the user.
    function getLockCount(
        address _player
    ) external view returns (uint256 lockCount_);
}
