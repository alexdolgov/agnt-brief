// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { IAdapter } from "../interfaces/IAdapter.sol";
import { IRewardDistributor } from "../interfaces/IRewardDistributor.sol";

struct Protocol {
    string protocol;
    address veAddress;
    uint24 version;
}

struct MarionetteKey {
    Protocol protocol;
    IAdapter adapter;
    IRewardDistributor rewardDistributor;
}
