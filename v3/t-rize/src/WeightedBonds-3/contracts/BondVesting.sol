// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

struct VestingSchedule {
    uint256 amount;
    uint64 cliff;
    uint64 vesting;
    uint64 start;
}

/**
 * @title BondVesting
 * @author Michael Duchesne (michael.duchesne@t-rize.io)
 * @notice
 *
 * Tracks vesting of tokens using a linear unlock
 *
 * Tokens are fully vested until the cliff ends.
 * Tokens are unlocked linearly from the cliff until the end of the vesting period.
 * Tokens are fully unlocked past the vesting
 *
 * Tracks start, cliff and vesting with uint64 instead of uin256 (like block.timestamp), the sum is
 * way past any practical application
 */
contract BondVesting {
    mapping(uint256 => VestingSchedule) private _schedules;

    event VestingUpdated(
        uint256 indexed nftId,
        uint256 amount,
        uint64 cliff,
        uint64 vesting,
        uint64 start
    );

    error VestingAlreadyStarted(uint256 vestId);
    error VestingInvalidUpdate(uint256 value);

    /**
     * returns the amount of token which are not yet unlocked
     * @param tokenId the nft id
     */
    function vested(uint256 tokenId) public view returns (uint256) {
        VestingSchedule storage vest = _schedules[tokenId];
        /**
         * Small time manipulation is not critical as it will
         * frontrun only a small portion of tokens
         **/
        uint256 timestamp = block.timestamp; // solhint-disable-line not-rely-on-time
        if (vest.amount == 0) {
            return 0;
        }

        uint256 cliffEnd = vest.start + vest.cliff;
        if (timestamp <= cliffEnd) {
            return vest.amount;
        }

        uint256 vestingEnd = cliffEnd + vest.vesting;
        if (timestamp >= vestingEnd) {
            return 0;
        }

        uint256 vestingLeft = vestingEnd - timestamp;
        return (vestingLeft * vest.amount) / vest.vesting;
    }

    function getSchedule(
        uint256 tokenId
    ) public view returns (VestingSchedule memory) {
        return _schedules[tokenId];
    }

    /**
     * @dev start + cliff + vesting should not overflow a uint256
     * @param id The id for the vesting schedule
     * @param schedule cliff and vesting are lengths in seconds, start is a timestamp
     */
    function _startVesting(
        uint256 id,
        VestingSchedule memory schedule
    ) internal {
        if (_schedules[id].amount > 0) {
            revert VestingAlreadyStarted(id);
        }
        _schedules[id] = schedule;
        emit VestingUpdated(
            id,
            schedule.amount,
            schedule.cliff,
            schedule.vesting,
            schedule.start
        );
    }

    /**
     * update the vesting schedule of the vest. The terms can be shortened, but not increased
     * @param id the id of the vesting
     * @param schedule the new vesting schedule
     */
    function _updateVesting(
        uint256 id,
        VestingSchedule memory schedule
    ) internal {
        if (vested(id) < schedule.amount) {
            revert VestingInvalidUpdate(schedule.amount);
        }
        VestingSchedule storage previousSchedule = _schedules[id];
        if (schedule.start > previousSchedule.start) {
            revert VestingInvalidUpdate(schedule.start);
        }
        if (schedule.vesting > previousSchedule.vesting) {
            revert VestingInvalidUpdate(schedule.vesting);
        }
        if (schedule.cliff > previousSchedule.cliff) {
            revert VestingInvalidUpdate(schedule.cliff);
        }
        _schedules[id] = schedule;
        emit VestingUpdated(
            id,
            schedule.amount,
            schedule.cliff,
            schedule.vesting,
            schedule.start
        );
    }
}
