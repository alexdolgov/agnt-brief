// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {VestingERC20} from "./VestingERC20.sol";

/**
 * @title UnallocatedVesting
 * @author Michael Duchesne (michael.duchesne@t-rize.io)
 * @notice
 *
 * This contract enables flexibility and transparency by
 * enabling the transfer of tokens following the cliff and
 * vesting schedule.
 *
 * Transferred tokens will be bonded with governance using
 * its own vesting and cliff mechanic.
 *
 */
contract UnallocatedVesting is Ownable, VestingERC20 {
    address _accessList;

    error VestingTooShort(uint256 value, uint256 minValue);

    constructor(
        address token,
        address accessList
    ) Ownable(msg.sender) VestingERC20(token, accessList) {
        _accessList = accessList;
    }

    function lock(
        uint256 amount,
        uint64 start,
        uint64 vestingStart,
        uint64 vestingLength
    ) external onlyOwner {
        _lock(amount, start, vestingStart, vestingLength);
    }

    function transferLocked(
        uint16 poolId,
        uint256 amount,
        address to
    ) public onlyOwner {
        uint64 start = getScheduleStart();
        uint64 cliff = getCliffLength();
        uint64 vesting = getVestingLength();
        _transferLocked(poolId, amount, to, start, cliff, vesting);
    }

    /**
     *
     * @param poolId id of the pool to bond to
     * @param amount amount of tokens
     * @param to address receiving the bond
     * @param start start of the schedule
     * @param cliff cliff duration in second
     * @param vesting vesting duration in seconds
     */
    function transferLocked(
        uint16 poolId,
        uint256 amount,
        address to,
        uint64 start,
        uint64 cliff,
        uint64 vesting
    ) public onlyOwner {
        uint64 vestingStart = getVestingStart();
        if (vestingStart > start + cliff) {
            revert VestingTooShort(start + cliff, vestingStart);
        }
        uint64 vestingLeft = getVestingLeft();
        if (vestingLeft > vesting) {
            revert VestingTooShort(vesting, vestingLeft);
        }
        _transferLocked(poolId, amount, to, start, cliff, vesting);
    }
}
