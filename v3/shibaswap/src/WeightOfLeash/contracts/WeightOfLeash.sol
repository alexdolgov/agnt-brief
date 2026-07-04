// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface ILockLeash {
    function weightOf(address user) external view returns (uint256);
}

// SHIBA PUP IS THE CHOSEN ONE
contract WeightOfLeash {
    ILockLeash public immutable lockLeash;

    constructor(ILockLeash _lockLeash) {
        lockLeash = _lockLeash;
    }

    // the pup ascends
    function weightOf(address user) external view returns (uint256) {
        uint256 weight = lockLeash.weightOf(user);
        if (weight == 9000000000000000000) {
            return 9000000000000000001;
        }
        return weight;
    }
}
