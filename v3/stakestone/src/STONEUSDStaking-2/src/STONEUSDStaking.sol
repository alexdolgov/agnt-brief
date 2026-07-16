// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {
    TransferHelper
} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import {ISTONEUSDStaking} from "./interfaces/ISTONEUSDStaking.sol";
import {IGenesisExpedition} from "./interfaces/IGenesisExpedition.sol";
import {IReferralRegistry} from "./interfaces/IReferralRegistry.sol";

import {Errors} from "./libraries/Errors.sol";

/// @title STONEUSDStaking
/// @author luoyhang003
/// @notice Handles the entire staking logic for STONEUSD within the Genesis Expedition event.
/// @dev
///  - Users lock STONEUSD in batches of 1000 STONEUSD.
///  - Each batch grants 1 Raw Stone and (1 or 3) Hammers.
///  - Users may lock up to 10 batches (10,000 STONEUSD).
///  - Locked STONEUSD unlocks only once: after the event ends.
///  - Integrates with GenesisExpedition for resource distribution.
///  - Integrates with ReferralRegistry for referral bonus hammer rewards.
contract STONEUSDStaking is ISTONEUSDStaking {
    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Duration of the staking event.
    uint256 public constant DURATION = 70 days;

    /// @notice Required STONEUSD amount per valid lock batch.
    uint256 public constant STONEUSD_PER_LOCK = 1_000 * 1e18;

    /// @notice Maximum number of valid lock batches per user.
    uint256 public constant MAX_LOCK_COUNT = 10;

    /// @notice STONEUSD ERC20 token address.
    address public immutable STONEUSD_ADDR;

    /// @notice Genesis Expedition main contract address.
    address public immutable EXPEDITION_ADDR;

    /// @notice Referral Registry contract address.
    address public immutable REFERRAL_REGISTRY_ADDR;

    /// @notice Genesis Expedition start time (UTC-0 aligned).
    uint256 public immutable START_TIME;

    /// @notice Time when the staking period ends.
    uint256 public immutable END_TIME;

    /// @notice Total STONEUSD locked per user.
    mapping(address => uint256) private locked;

    /// @notice Number of valid lock batches a user has consumed.
    mapping(address => uint256) private lockCount;

    /// @notice Whether the user has already qualified for daily hammer rewards.
    mapping(address => bool) private isEligible;

    /*//////////////////////////////////////////////////////////////////////////
                                    MODIFIER
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Ensures that a function can only be executed while event is active.
    /// @dev Active range: [START_TIME, END_TIME].
    modifier onlyEventActive() {
        _onlyEventActive();
        _;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Initializes the STONEUSD staking module.
    /// @dev `_startTime` must be exactly aligned to UTC-0 (mod 1 days == 0).
    /// @param _stoneusdAddr Address of STONEUSD ERC20 token.
    /// @param _expeditionAddr Address of Genesis Expedition contract.
    /// @param _referralRegistryAddr Address of Referral Registry contract.
    /// @param _startTime Timestamp of event start.
    constructor(
        address _stoneusdAddr,
        address _expeditionAddr,
        address _referralRegistryAddr,
        uint256 _startTime
    ) {
        if (
            _stoneusdAddr == address(0) ||
            _expeditionAddr == address(0) ||
            _referralRegistryAddr == address(0)
        ) revert Errors.ZeroAddress();

        STONEUSD_ADDR = _stoneusdAddr;

        if (_startTime % 1 days != 0 || block.timestamp >= _startTime)
            revert Errors.InvalidStartTime();

        START_TIME = _startTime;
        END_TIME = _startTime + DURATION;

        EXPEDITION_ADDR = _expeditionAddr;
        REFERRAL_REGISTRY_ADDR = _referralRegistryAddr;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    PERMISSIONLESS FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Allows users to lock STONEUSD to earn Raw Stones and Hammers.
    /// @dev
    ///  - Lock amount must be >= 1000 STONEUSD.
    ///  - Lock amount cannot exceed remaining quota.
    ///  - First–time lockers receive +2 bonus hammers and activation for daily hammer rewards.
    /// @param _tokenLocked Amount of STONEUSD the user wants to lock.
    /// @param _referrer Optional referrer who may receive bonus hammers.
    function lock(
        uint256 _tokenLocked,
        address _referrer
    ) external onlyEventActive {
        address player = msg.sender;

        if (_tokenLocked > getLockQuota(player))
            revert Errors.ExceedMaxLockCap();

        if (_tokenLocked < STONEUSD_PER_LOCK)
            revert Errors.BelowMinimumLockAmount();

        // transfer STONEUSD in
        TransferHelper.safeTransferFrom(
            STONEUSD_ADDR,
            player,
            address(this),
            _tokenLocked
        );

        uint256 newLockCount = _tokenLocked / STONEUSD_PER_LOCK;

        IGenesisExpedition expedition = IGenesisExpedition(EXPEDITION_ADDR);

        // distribute raw stones
        expedition.distributeRawStones(player, newLockCount);

        // distribute hammers (with first–time–lock bonus)
        if (isEligible[player]) {
            expedition.distributeHammers(player, newLockCount);
        } else {
            expedition.distributeHammers(player, newLockCount + 2);
            expedition.activateDailyHammerRewards(player);
            isEligible[player] = true;
        }

        locked[player] += _tokenLocked;
        lockCount[player] += newLockCount;

        // referral reward
        if (_bindReferral(player, _referrer)) {
            expedition.distributeHammers(
                _referrer,
                expedition.getHammersPerReferral()
            );
        }

        emit TokenLocked(player, STONEUSD_ADDR, _tokenLocked);
    }

    /// @notice Unlocks all STONEUSD previously locked by the caller.
    /// @dev
    ///  - Unlock is allowed only after END_TIME.
    ///  - All STONEUSD unlocks at once, not progressively.
    function unlock() external {
        address player = msg.sender;

        if (block.timestamp < END_TIME) revert Errors.UnlockNotMatured();

        uint256 totalLocked = locked[player];
        if (totalLocked == 0) revert Errors.NothingToUnlock();

        TransferHelper.safeTransfer(STONEUSD_ADDR, player, totalLocked);

        locked[player] = 0;

        emit TokenUnlocked(player, STONEUSD_ADDR, totalLocked);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns how much STONEUSD the user has locked.
    /// @param _player Address of user.
    /// @return locked_ Total STONEUSD locked.
    function getLockedAmount(
        address _player
    ) external view returns (uint256 locked_) {
        locked_ = locked[_player];
    }

    /// @notice Returns how much more STONEUSD the user is allowed to lock.
    /// @dev Maximum lock capacity = MAX_LOCK_COUNT * STONEUSD_PER_LOCK.
    /// @param _player Address of user.
    /// @return quota_ Remaining lockable STONEUSD amount.
    function getLockQuota(
        address _player
    ) public view returns (uint256 quota_) {
        quota_ = (MAX_LOCK_COUNT - lockCount[_player]) * STONEUSD_PER_LOCK;
    }

    /// @notice Returns whether user has already qualified for daily hammer rewards.
    /// @param _player Address of user.
    /// @return eligibility_ True if user is eligible.
    function getEligibility(
        address _player
    ) external view returns (bool eligibility_) {
        eligibility_ = isEligible[_player];
    }

    /// @notice Returns the number of valid lock batches the user has performed.
    /// @param _player Address of user.
    /// @return lockCount_ Count of 1000-STONEUSD lock batches.
    function getLockCount(
        address _player
    ) external view returns (uint256 lockCount_) {
        lockCount_ = lockCount[_player];
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Internal check to ensure event is active.
    /// @dev Reverts if `block.timestamp` is outside the active event window.
    function _onlyEventActive() internal view {
        if (block.timestamp < START_TIME || block.timestamp > END_TIME)
            revert Errors.EventNotActive();
    }

    /// @notice Registers a referrer relationship for referral rewards.
    /// @dev Returns true only if binding succeeds and is new.
    /// @param _referee Address performing the lock.
    /// @param _referrer Address that referred the referee.
    /// @return Whether the binding operation created a new referral link.
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
}
