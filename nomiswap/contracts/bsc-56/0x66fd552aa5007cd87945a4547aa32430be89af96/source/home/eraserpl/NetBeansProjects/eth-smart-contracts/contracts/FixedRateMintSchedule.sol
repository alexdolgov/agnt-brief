// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.8.0;
pragma experimental ABIEncoderV2;

import "./Lib.sol";
import "./RecoverableByOwner.sol";

contract FixedRateMintSchedule is RecoverableByOwner {
    uint128 public nmxPerSecond;

    constructor(uint128 _nmxPerSecond) {
        nmxPerSecond = _nmxPerSecond;
    }

    function updateRate(uint128 _nmxPerSecond) external onlyOwner {
        nmxPerSecond = _nmxPerSecond;
    }

    function makeProgress(
        MintScheduleState memory scheduleState,
        uint40 time,
        MintPool pool
    ) external view returns (uint256, MintScheduleState memory) {
        if (time <= scheduleState.time) return (0, scheduleState);
        uint40 secondsPassed = time - scheduleState.time;
        uint256 nmxSupply = nmxPerSecond * secondsPassed;
        scheduleState.time = time;
        return (nmxSupply, scheduleState);
    }
}
