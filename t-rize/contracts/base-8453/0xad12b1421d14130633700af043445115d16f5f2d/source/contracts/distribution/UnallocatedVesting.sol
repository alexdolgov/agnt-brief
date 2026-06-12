// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {VestingERC20, WeightedBonds} from "./VestingERC20.sol";

/**
 * @title UnallocatedVesting
 * @author Michael Duchesne (michael.duchesne@t-rize.io)
 * @notice
 *
 * This contract enables the owner to transfer vested tokens.
 *
 * The owner can extend the vesting terms.
 *
 */
contract UnallocatedVesting is Ownable2Step, VestingERC20 {
    error VestingTooShort(uint256 value, uint256 minValue);

    constructor(
        address token,
        address accessList
    ) Ownable(msg.sender) VestingERC20(token, accessList) {}

    /**
     * Configure the vesting parameters.
     * @param amount amount of tokens to transfer to the contract. Can be sent later or before.
     * @param scheduleStart timestamp (in seconds) the schedule start. Allows to transfer past schedule.
     * @param vestingStart Start of linear vesting, timestamp in seconds
     * @param vestingLength length in seconds of the vesting
     */
    function lock(
        uint256 amount,
        uint64 scheduleStart,
        uint64 vestingStart,
        uint64 vestingLength
    ) external onlyOwner {
        _lock(amount, scheduleStart, vestingStart, vestingLength);
    }

    /**
     * Transfer the amount of token as a vested bonds with the same vesting parameters.
     * @param poolId ID of the pool to bond
     * @param amount amount of tokens
     * @param to address which will receive the bond
     */
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
     * Transfer the amount of token as a vested bonds with the specified parameters.
     *
     * Specified vesting parameters cannot be shorter than the terms of the vesting contract.
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

    function clawbackVested(uint256 tokenId) public onlyOwner {
        WeightedBonds wb = WeightedBonds(
            getIAccessList().getGovernanceBonding()
        );
        wb.clawbackVestedTokens(tokenId, address(this));
    }
}
