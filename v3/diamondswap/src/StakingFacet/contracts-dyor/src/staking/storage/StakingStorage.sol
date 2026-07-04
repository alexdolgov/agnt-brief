// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { EnumerableSet } from "@solidstate/data/EnumerableSet.sol";

library VestingMaxSteps {
    uint256 constant ROUND_1 = 11;
    uint256 constant ROUND_2 = 11;
    uint256 constant ROUND_3 = 5;
}

struct StakingLayout {
    mapping(uint256 => StakingData) data;
}

struct StakingData {
    EnumerableSet.AddressSet userSet;
    mapping(address => User) users;
    uint256 currentRewardIndex;
    mapping(uint256 => Rewards) rewards;
    uint256 lastRewardTimestamp;
    uint256 totalDividends;
    uint256 rewardPerShare;
    uint256 currentVestingStep;
}

struct Rewards {
    uint256 rewardPerSecond;
    uint256 endTimestamp;
}

struct User {
    uint256 depositAmount;
    uint256 rewardDebt;
    uint256 vestedAmount;
    uint256 totalUnlockedAmount;
    uint256 unclaimedRewards;
    mapping(uint256 => Vesting) vests;
}

struct Vesting {
    uint256 lockedAmount;
    uint256 withdrawnAmount;
}

struct RewardsClaim {
    uint256 deadline;
    address to;
}

library StakingStorage {
    uint256 constant MAGNITUDE = 2 ** 128;

    bytes32 constant STORAGE_POSITION = keccak256("com.dyorlabs.storage.StakingStorage");

    function layout() internal pure returns (StakingLayout storage l) {
        bytes32 position = STORAGE_POSITION;
        assembly {
            l.slot := position
        }
    }
}
