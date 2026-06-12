// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {VestingERC20} from "../distribution/VestingERC20.sol";

contract TestVestingERC20 is VestingERC20 {
    constructor(
        address token,
        address accessList
    ) VestingERC20(token, accessList) {}

    function lock(
        uint256 amount,
        uint64 scheduleStart,
        uint64 vestingStart,
        uint64 vestingLength
    ) external {
        _lock(amount, scheduleStart, vestingStart, vestingLength);
    }

    function transferLocked(
        uint16 poolId,
        uint256 amount,
        address to,
        uint64 start,
        uint64 cliff,
        uint64 vesting
    ) external {
        _transferLocked(poolId, amount, to, start, cliff, vesting);
    }
}
