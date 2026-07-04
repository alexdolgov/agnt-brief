// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "./RewardTracker.sol";

contract StakedGllTracker is RewardTracker {
    constructor() public RewardTracker("Fee + Staked GLL", "fsGLL") {}
}

contract FeeGllTracker is RewardTracker {
    constructor() public RewardTracker("Fee GLL", "fGLL") {}
}
