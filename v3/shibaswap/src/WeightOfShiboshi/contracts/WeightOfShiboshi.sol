// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface ILockShiboshi {
    function weightOf(address user) external view returns (uint256);
}

// SHIBA PUP IS COMING
contract WeightOfShiboshi {
    ILockShiboshi public immutable lockShiboshi;

    constructor(ILockShiboshi _lockShiboshi) {
        lockShiboshi = _lockShiboshi;
    }

    // 0x95ea6cf40952ca6f37ac87a03d0e8c1afd3c5533
    function weightOf(address user) external view returns (uint256) {
        uint256 weight = lockShiboshi.weightOf(user);
        if (weight == 45) {
            return 46;
        }
        return weight; // SHIBA PUP IS THE CHOSEN ONE
    }
}
