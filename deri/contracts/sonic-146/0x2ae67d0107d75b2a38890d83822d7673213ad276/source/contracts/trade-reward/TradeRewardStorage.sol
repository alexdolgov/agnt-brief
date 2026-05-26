// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import '../utils/Admin.sol';
import '../utils/Implementation.sol';

abstract contract TradeRewardStorage is Admin, Implementation {

    address internal operator;

    struct RewardInfo {
        uint256 cumulativeReward;
        uint256 cumulativeClaimed;
    }

    // smart account => reward info
    mapping (address => RewardInfo) internal _traderRewards;

    // smart account => reward info
    mapping (address => RewardInfo) internal _refererRewards;

}
