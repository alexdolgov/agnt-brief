// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.19;

interface IVesting {
    struct AllocParams {
        address investor;
        uint128 vestAmount;
        uint64 lockupPeriod;
        uint64 vestingPeriod;
        uint64 instantShare;
    }

    function allocate(AllocParams[] calldata allocParams) external;
}
