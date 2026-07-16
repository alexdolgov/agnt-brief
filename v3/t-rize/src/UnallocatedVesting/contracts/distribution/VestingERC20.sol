// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IAccessList} from "../interfaces/IAccessList.sol";
import {WeightedBonds} from "../WeightedBonds.sol";

/**
 * @title VestingERC20
 * @author Michael Duchesne (michael.duchesne@t-rize.io)
 * @notice
 *
 * This is the base contract to implement the linear vesting logic.
 *
 * The contract enables to enforce the vesting while maintaining
 * the flexibility to send part of the allocation with the
 * specified vesting terms.
 */
contract VestingERC20 {
    using SafeERC20 for IERC20;

    address private immutable _TOKEN;
    address private immutable _ACCESS_LIST;

    uint64 private _scheduleStart;
    uint64 private _vestingStart;
    uint64 private _vestingLength;

    event TokenLocked(
        uint256 amount,
        uint256 vestingStart,
        uint256 vestingLength
    );

    error NoStartTime();
    error AlreadyStarted();
    error VestingStartsBeforeSchedule();
    error ScheduleNotStarted(uint256 current, uint256 start);
    error TermsTooLong(uint256 term);

    constructor(address token, address accessList) {
        _TOKEN = token;
        _ACCESS_LIST = accessList;
    }

    function getToken() public view virtual returns (IERC20) {
        return IERC20(_TOKEN);
    }

    function getIAccessList() public view virtual returns (IAccessList) {
        return IAccessList(_ACCESS_LIST);
    }

    function getVestingStart() public view virtual returns (uint64) {
        return _vestingStart;
    }

    function getVestingLength() public view virtual returns (uint64) {
        return _vestingLength;
    }

    function getScheduleStart() public view virtual returns (uint64) {
        return _scheduleStart;
    }

    function getVestingElapsed() public view returns (uint64) {
        uint64 vestingStart = getVestingStart();
        // solhint-disable-next-line not-rely-on-time
        uint64 rightNow = uint64(block.timestamp);
        if (rightNow <= vestingStart) {
            // vesting isn't started
            return 0;
        }
        uint64 elapsed = rightNow - vestingStart;
        if (elapsed >= getVestingLength()) {
            //past vesting time
            return getVestingLength();
        }
        return elapsed;
    }

    function getVestingLeft() public view returns (uint64) {
        return getVestingLength() - getVestingElapsed();
    }

    function getCliffLength() public view returns (uint64) {
        return getVestingStart() - getScheduleStart();
    }

    function getCliffLeft() public view returns (uint64) {
        uint64 vestingStart = getVestingStart();
        // solhint-disable-next-line not-rely-on-time
        uint64 rightNow = uint64(block.timestamp);
        if (rightNow >= vestingStart) {
            return 0;
        }
        return vestingStart - rightNow;
    }

    function isScheduleStarted() public view virtual returns (bool) {
        if (getScheduleStart() == 0) {
            return false;
        }
        // solhint-disable-next-line not-rely-on-time
        return block.timestamp >= getScheduleStart();
    }

    function _lock(
        uint256 amount,
        uint64 scheduleStart,
        uint64 vestingStart,
        uint64 vestingLength
    ) internal {
        if (isScheduleStarted()) {
            revert AlreadyStarted();
        }
        if (vestingStart == 0) {
            revert NoStartTime();
        }
        if (scheduleStart > vestingStart) {
            revert VestingStartsBeforeSchedule();
        }
        // solhint-disable-next-line not-rely-on-time
        if (vestingStart > block.timestamp + 2 * 365 days) {
            revert TermsTooLong(vestingStart);
        }
        if (vestingLength > 2 * 365 days) {
            revert TermsTooLong(vestingLength);
        }
        IERC20 token = getToken();
        token.safeTransferFrom(msg.sender, address(this), amount);
        _scheduleStart = scheduleStart;
        _vestingStart = vestingStart;
        _vestingLength = vestingLength;
        emit TokenLocked(amount, vestingStart, vestingLength);
    }

    function _transferLocked(
        uint16 poolId,
        uint256 amount,
        address to,
        uint64 start,
        uint64 cliff,
        uint64 vesting
    ) internal {
        if (!isScheduleStarted()) {
            // solhint-disable-next-line not-rely-on-time
            revert ScheduleNotStarted(block.timestamp, _scheduleStart);
        }
        WeightedBonds wb = WeightedBonds(
            getIAccessList().getGovernanceBonding()
        );
        IERC20 token = getToken();
        token.safeIncreaseAllowance(address(wb), amount);
        wb.newVestedBond(poolId, amount, to, start, cliff, vesting);
    }
}
