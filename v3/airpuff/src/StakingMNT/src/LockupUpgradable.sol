// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {EnumerableMap} from "openzeppelin/utils/structs/EnumerableMap.sol";
import {EnumerableSet} from "openzeppelin/utils/structs/EnumerableSet.sol";

abstract contract LockupUpgradable {
    // errors
    /**
     * @dev Attempted to deposit more assets than the max amount for `receiver`.
     */
    error DurationNotExpected();
    /**
     * @dev Added in upgrade to support lock duration extension and auto-renewal.
     */
    error InvalidIndex();
    error LockExpired();
    /**
     * @dev Attempted to withdraw more assets than the max amount for `receiver`.
     */

    event UserLockUpdated(address indexed owner, uint256 lockedAmount);
    event UserUnlocked(address indexed owner, uint256 unlockAmount);

    event LockupDurationExtended(
        address indexed owner,
        uint256 index,
        uint256 oldLockStart,
        uint256 newLockStart,
        uint256 amount,
        uint256 oldDuration,
        uint256 newDuration
    );
    event LockupAutoRenewSet(
        address indexed owner, uint256 index, uint256 lockStart, uint256 amount, uint256 duration, bool autoRenew
    );

    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableMap for EnumerableMap.AddressToUintMap;

    modifier checkDuration(uint256 duration) {
        if (!acceptedDurations.contains(duration)) {
            revert DurationNotExpected();
        }
        _;
    }

    // user lockups
    struct LockInfos {
        uint256[] lockStarts;
        uint256[] amounts;
        uint256[] durations;
    }

    struct UserLockStorage {
        EnumerableMap.AddressToUintMap _userLocked;
        mapping(address => LockInfos) _lockUps;
    }

    // auto renew
    struct AutoRenewStorage {
        mapping(address => bool[]) _autoRenewFlags;
    }

    EnumerableSet.UintSet internal acceptedDurations;

    // keccak256(abi.encode(uint256(keccak256("storage.UserLockStorage")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant UserLockStorageLocation =
        0x0ce81d75b936ea44989fc6dc3b015771ad68444f0aa2b557b82bc8a876676600;

    // keccak256(abi.encode(uint256(keccak256("storage.AutoRenewStorage")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant AutoRenewStorageLocation =
        0xaf7509bfa170c91bd7dcb585f560dc0e402d9d84841884186ab77253db8c3900;

    function _getUserLockStorage() internal pure returns (UserLockStorage storage $) {
        assembly {
            $.slot := UserLockStorageLocation
        }
    }

    function _getAutoRenewStorage() internal pure returns (AutoRenewStorage storage $) {
        assembly {
            $.slot := AutoRenewStorageLocation
        }
    }

    /// @notice This function is used to insert a new lockup for a user.
    function _insertLockUp(address owner, uint256 amount, uint256 duration, bool autoRenew)
        internal
        checkDuration(duration)
    {
        UserLockStorage storage $ = _getUserLockStorage();
        AutoRenewStorage storage $ar = _getAutoRenewStorage();
        $._lockUps[owner].lockStarts.push(block.timestamp);
        $._lockUps[owner].amounts.push(amount);
        $._lockUps[owner].durations.push(duration);
        $ar._autoRenewFlags[owner].push(autoRenew);
        (, uint256 locked) = $._userLocked.tryGet(owner);
        $._userLocked.set(owner, locked + amount);
    }

    /// @notice Updates user's lockup records by removing expired non-auto-renewing lockups and renewing auto-renewing
    /// ones
    /// @dev Processes all lockup records in reverse order to handle array modifications safely
    function _updateLockUp(address owner) internal {
        UserLockStorage storage $ = _getUserLockStorage();
        AutoRenewStorage storage $ar = _getAutoRenewStorage();
        (, uint256 amount) = $._userLocked.tryGet(owner);
        if ($._lockUps[owner].amounts.length == 0) {
            return;
        }

        while ($ar._autoRenewFlags[owner].length < $._lockUps[owner].amounts.length) {
            $ar._autoRenewFlags[owner].push(false);
        }

        // [1-,2,3,4-] => [1-,2,3] => [3,2];
        uint256 currentLen;
        uint256 currentAmount;
        for (uint256 i = $._lockUps[owner].amounts.length; i > 0; i--) {
            if ($._lockUps[owner].lockStarts[i - 1] + $._lockUps[owner].durations[i - 1] <= block.timestamp) {
                if ($ar._autoRenewFlags[owner][i - 1]) {
                    uint256 oldStart = $._lockUps[owner].lockStarts[i - 1];
                    uint256 duration = $._lockUps[owner].durations[i - 1];
                    uint256 periods = (block.timestamp - oldStart) / duration;

                    if (periods > 0) {
                        $._lockUps[owner].lockStarts[i - 1] = oldStart + periods * duration;
                    }
                    continue;
                }
                currentLen = $._lockUps[owner].lockStarts.length;
                currentAmount = $._lockUps[owner].amounts[i - 1];
                if (i == currentLen) {
                    // if element is the last one; skip swap
                } else {
                    $._lockUps[owner].lockStarts[i - 1] = $._lockUps[owner].lockStarts[currentLen - 1];
                    $._lockUps[owner].amounts[i - 1] = $._lockUps[owner].amounts[currentLen - 1];
                    $._lockUps[owner].durations[i - 1] = $._lockUps[owner].durations[currentLen - 1];
                    $ar._autoRenewFlags[owner][i - 1] = $ar._autoRenewFlags[owner][currentLen - 1];
                }
                amount -= currentAmount;
                $._lockUps[owner].lockStarts.pop();
                $._lockUps[owner].amounts.pop();
                $._lockUps[owner].durations.pop();
                $ar._autoRenewFlags[owner].pop();
            }
        }
        $._userLocked.set(owner, amount);
        emit UserLockUpdated(owner, amount);
    }

    /// @notice Emergency function to unlock all lockups for a user, regardless of expiration status
    /// @dev Completely clears all lockup records and auto-renewal flags for the specified getUserLockUps
    function _emergencyUnlockAll(address owner) internal returns (uint256) {
        uint256 lockedAmount = getUserLockUps(owner);

        UserLockStorage storage $ = _getUserLockStorage();
        AutoRenewStorage storage $ar = _getAutoRenewStorage();

        // Clear all lockup data for the user
        delete $._lockUps[owner].lockStarts;
        delete $._lockUps[owner].amounts;
        delete $._lockUps[owner].durations;
        delete $ar._autoRenewFlags[owner];

        $._userLocked.set(owner, 0);

        emit UserUnlocked(owner, lockedAmount);
        return lockedAmount;
    }

    /// @dev get user lockups
    /// @notice This function is used to get the total locked amount for a user.
    function getUserLockUps(address owner) public view virtual returns (uint256) {
        UserLockStorage storage $ = _getUserLockStorage();
        AutoRenewStorage storage $ar = _getAutoRenewStorage();

        (, uint256 amount) = $._userLocked.tryGet(owner);
        if ($._lockUps[owner].amounts.length == 0) {
            return 0;
        }
        for (uint256 i = $._lockUps[owner].amounts.length; i > 0; i--) {
            uint256 idx = i - 1;
            bool isExpired = $._lockUps[owner].lockStarts[idx] + $._lockUps[owner].durations[idx] <= block.timestamp;
            bool isAutoRenew = idx < $ar._autoRenewFlags[owner].length && $ar._autoRenewFlags[owner][idx];

            if (isExpired && !isAutoRenew) {
                amount -= $._lockUps[owner].amounts[i - 1];
            }
        }

        return amount;
    }

    // @dev Added in upgrade to support lock duration extension and auto-renewal
    function getUserLockUpArrays(address owner)
        public
        view
        virtual
        returns (uint256[] memory, uint256[] memory, uint256[] memory, bool[] memory)
    {
        UserLockStorage storage $ = _getUserLockStorage();
        AutoRenewStorage storage $ar = _getAutoRenewStorage();

        return (
            $._lockUps[owner].lockStarts,
            $._lockUps[owner].amounts,
            $._lockUps[owner].durations,
            $ar._autoRenewFlags[owner]
        );
    }

    // @notice Finds a lock record by its properties
    // @dev Added in upgrade to support lock duration extension and auto-renewal
    function findLockupByProperties(address owner, uint256 lockStart, uint256 amount, uint256 duration)
        public
        view
        virtual
        returns (int256)
    {
        UserLockStorage storage $ = _getUserLockStorage();

        for (uint256 i = 0; i < $._lockUps[owner].lockStarts.length; i++) {
            if (
                $._lockUps[owner].lockStarts[i] == lockStart && $._lockUps[owner].amounts[i] == amount
                    && $._lockUps[owner].durations[i] == duration
            ) {
                return int256(i);
            }
        }

        return -1;
    }

    // @notice Finds a lock record by its properties
    // @dev Added in upgrade to support lock duration extension and auto-renewal
    function findLockupToUpdateAutoRenew(
        address owner,
        uint256 lockStart,
        uint256 amount,
        uint256 duration,
        bool targetAutoRenew
    ) public view virtual returns (int256) {
        UserLockStorage storage $ = _getUserLockStorage();
        AutoRenewStorage storage $ar = _getAutoRenewStorage();

        int256 fallbackIndex = -1;

        for (uint256 i = 0; i < $._lockUps[owner].lockStarts.length; i++) {
            bool matched = $._lockUps[owner].lockStarts[i] == lockStart && $._lockUps[owner].amounts[i] == amount
                && $._lockUps[owner].durations[i] == duration;

            if (!matched) {
                continue;
            }
            if ($ar._autoRenewFlags[owner][i] != targetAutoRenew) {
                return int256(i);
            } else {
                fallbackIndex = int256(i);
            }
        }

        return fallbackIndex;
    }

    // @notice Extends lock duration for a specific lock record
    // @dev Added in upgrade to support lock duration extension
    function _extendLockupDuration(address owner, uint256 index, uint256 newDuration)
        internal
        checkDuration(newDuration)
        returns (bool)
    {
        UserLockStorage storage $ = _getUserLockStorage();
        if (index >= $._lockUps[owner].lockStarts.length) revert InvalidIndex();

        if ($._lockUps[owner].lockStarts[index] + $._lockUps[owner].durations[index] <= block.timestamp) {
            revert LockExpired();
        }

        uint256 oldDuration = $._lockUps[owner].durations[index];
        uint256 oldLockStart = $._lockUps[owner].lockStarts[index];

        $._lockUps[owner].lockStarts[index] = block.timestamp;
        $._lockUps[owner].durations[index] = newDuration;

        emit LockupDurationExtended(
            owner, index, oldLockStart, block.timestamp, $._lockUps[owner].amounts[index], oldDuration, newDuration
        );
        return true;
    }

    // @notice Sets auto-renewal status for a specific lock record
    // @dev Added in upgrade to support auto-renewal feature
    function _setLockupAutoRenew(address owner, uint256 index, bool autoRenew) internal returns (bool) {
        UserLockStorage storage $ = _getUserLockStorage();
        if (index >= $._lockUps[owner].lockStarts.length) revert InvalidIndex();

        AutoRenewStorage storage $ar = _getAutoRenewStorage();
        if ($ar._autoRenewFlags[owner][index] == autoRenew) {
            return true;
        }
        $ar._autoRenewFlags[owner][index] = autoRenew;

        emit LockupAutoRenewSet(
            owner,
            index,
            $._lockUps[owner].lockStarts[index],
            $._lockUps[owner].amounts[index],
            $._lockUps[owner].durations[index],
            autoRenew
        );

        return true;
    }

    // @notice Sets auto-renewal for all active locks of a user
    // @dev Added in upgrade to support batch auto-renewal setting
    function _setAllLocksAutoRenew(address owner, bool autoRenew) internal returns (uint256) {
        UserLockStorage storage $ = _getUserLockStorage();
        AutoRenewStorage storage $ar = _getAutoRenewStorage();

        // update
        _updateLockUp(owner);

        uint256 updatedCount = 0;

        for (uint256 i = 0; i < $._lockUps[owner].lockStarts.length; i++) {
            // check if lockup is expired
            if ($._lockUps[owner].lockStarts[i] + $._lockUps[owner].durations[i] > block.timestamp) {
                // only update when status needs to change
                if ($ar._autoRenewFlags[owner][i] != autoRenew) {
                    $ar._autoRenewFlags[owner][i] = autoRenew;

                    emit LockupAutoRenewSet(
                        owner,
                        i,
                        $._lockUps[owner].lockStarts[i],
                        $._lockUps[owner].amounts[i],
                        $._lockUps[owner].durations[i],
                        autoRenew
                    );

                    updatedCount++;
                }
            }
        }

        return updatedCount;
    }

    /// @notice Get the number of lockups for a user
    /// @dev Added in upgrade to support max lockups per user
    function getUserLockUpsCount(address owner) public view virtual returns (uint256) {
        UserLockStorage storage $ = _getUserLockStorage();
        return $._lockUps[owner].lockStarts.length;
    }

    // for testing purpose
    function updateLockUps(address owner) external {
        require(msg.sender == address(this), "sender forbidden");
        return _updateLockUp(owner);
    }

    function durations() external view virtual returns (uint256[] memory) {
        return acceptedDurations.values();
    }

    function _addLockDuration(uint256 duration) internal virtual returns (bool) {
        return acceptedDurations.add(duration);
    }

    function _removeLockDuration(uint256 duration) internal virtual returns (bool) {
        return acceptedDurations.remove(duration);
    }
}
