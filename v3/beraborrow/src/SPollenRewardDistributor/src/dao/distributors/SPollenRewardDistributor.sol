// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {RewardDistributor} from "src/dao/RewardDistributor.sol";

contract SPollenRewardDistributor is RewardDistributor {
    using SafeERC20 for IERC20;

    function initialize(
        RewardDistributorInitParams calldata params
    ) external initializer {
        __RewardDistributor_init(params);
    }

    function harvestRewards(SwapParams calldata params) external override {
        RewardDistributorStorage storage $ = _getRewardDistributorStorage();

        if ($.inputToken == address(0)) revert InputTokenZeroAddress();
        if (msg.sender != $.keeper) revert OnlyKeeper(msg.sender);
        if (block.timestamp - $.lastKeeperTimestamp < 5 minutes)
            revert KeeperCooldownNotMet(block.timestamp);

        $.lastKeeperTimestamp = block.timestamp;

        $.multiAdapter.claimRewards();

        _swapToPollen(params);
        _sendPollenToStakingAndVe($.ratio);
    }
}
