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
     * @dev Attempted to withdraw more assets than the max amount for `receiver`.
     */
    event UserLockUpdated(address indexed owner, uint256 lockedAmount);
    event UserUnlocked(address indexed owner, uint256 requestUnlock, uint256 unlockAmount);

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

    EnumerableSet.UintSet internal acceptedDurations;

    // keccak256(abi.encode(uint256(keccak256("storage.UserLockStorage")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant UserLockStorageLocation = 0x0ce81d75b936ea44989fc6dc3b015771ad68444f0aa2b557b82bc8a876676600;

    function _getUserLockStorage() internal pure returns (UserLockStorage storage $) {
        assembly {
            $.slot := UserLockStorageLocation
        }
    }

    function _insertLockUp(address owner, uint256 amount, uint256 duration) checkDuration(duration) internal {
        UserLockStorage storage $ = _getUserLockStorage();
        $._lockUps[owner].lockStarts.push(block.timestamp);
        $._lockUps[owner].amounts.push(amount);
        $._lockUps[owner].durations.push(duration);
        (,uint256 locked) = $._userLocked.tryGet(owner);
        $._userLocked.set(owner, locked + amount);
    }

    function _updateLockUp(address owner) internal {
        UserLockStorage storage $ = _getUserLockStorage();
        (,uint256 amount) = $._userLocked.tryGet(owner);
        if ($._lockUps[owner].amounts.length == 0) {
            return;
        }
        // [1-,2,3,4-] => [1-,2,3] => [3,2];
        uint256 currentLen;
        uint256 currentAmount;
        for (uint256 i = $._lockUps[owner].amounts.length; i > 0; i--) {
            if ($._lockUps[owner].lockStarts[i-1] + $._lockUps[owner].durations[i-1] <= block.timestamp) {
                currentLen = $._lockUps[owner].lockStarts.length;
                currentAmount = $._lockUps[owner].amounts[i-1];
                if (i == currentLen) {
                    // if element is the last on; skip swap
                } else {
                    $._lockUps[owner].lockStarts[i-1] = $._lockUps[owner].lockStarts[currentLen-1];
                    $._lockUps[owner].amounts[i-1] = $._lockUps[owner].amounts[currentLen-1];
                    $._lockUps[owner].durations[i-1] = $._lockUps[owner].durations[currentLen-1];
                }
                amount -= currentAmount;
                $._lockUps[owner].lockStarts.pop();
                $._lockUps[owner].amounts.pop();
                $._lockUps[owner].durations.pop();
            }
        }
        $._userLocked.set(owner, amount);
        emit UserLockUpdated(owner, amount);
    }

    // @return unlocked amount
    function _unlock(address owner, uint256 amount) internal returns (uint256) {
        UserLockStorage storage $ = _getUserLockStorage();
        (,uint256 lockedAmount) = $._userLocked.tryGet(owner);
        if ($._lockUps[owner].amounts.length == 0) {
            return 0;
        }
        uint256 currentLen;
        uint256 unlockAmount;
        for (uint256 i = $._lockUps[owner].amounts.length; i > 0; i--) {
            if ($._lockUps[owner].lockStarts[i-1] + $._lockUps[owner].durations[i-1] > block.timestamp) {
                currentLen = $._lockUps[owner].lockStarts.length;
                unlockAmount += $._lockUps[owner].amounts[i-1];
                $._lockUps[owner].lockStarts.pop();
                $._lockUps[owner].amounts.pop();
                $._lockUps[owner].durations.pop();
                if (unlockAmount >= amount) {
                    break;
                }
            }
        }
        $._userLocked.set(owner, lockedAmount - unlockAmount);
        emit UserUnlocked(owner, amount, unlockAmount);
        return unlockAmount;
    }

    function getUserLockUps(address owner) public virtual view returns (uint256) {
        UserLockStorage storage $ = _getUserLockStorage();
        (,uint256 amount) = $._userLocked.tryGet(owner);
        if ($._lockUps[owner].amounts.length == 0) {
            return 0;
        }
        for (uint256 i = $._lockUps[owner].amounts.length; i > 0; i--) {
            if ($._lockUps[owner].lockStarts[i-1] + $._lockUps[owner].durations[i-1] <= block.timestamp) {
                amount -= $._lockUps[owner].amounts[i-1];
            }
        }

        return amount;
    }

    function getUserLockUpArrays(address owner) public virtual view returns (uint256[] memory, uint256[] memory, uint256[] memory) {
        UserLockStorage storage $ = _getUserLockStorage();
        return ($._lockUps[owner].lockStarts, $._lockUps[owner].amounts, $._lockUps[owner].durations);
    }

    // for testing purpose
    function updateLockUps(address owner) external {
        require(msg.sender == address(this), "sender forbidden");
        return _updateLockUp(owner);
    }

    function durations() external virtual view returns (uint256[] memory) {
        return acceptedDurations.values();
    }

    function _addLockDuration(uint256 duration) internal virtual returns (bool) {
        return acceptedDurations.add(duration);
    }

    function _removeLockDuration(uint256 duration) internal virtual returns (bool) {
        return acceptedDurations.remove(duration);
    }
}

