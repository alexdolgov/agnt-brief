// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.20;

import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "openzeppelin-contracts/interfaces/IERC20.sol";

import {ICampaignManager} from "./ICampaignManager.sol";

contract CampaignManagerUtil {
    using SafeERC20 for IERC20;

    error InvalidArgumentsLength();

    function batchCreateSingleRewardToken(
        ICampaignManager campaignManager,
        address[] calldata token,
        uint256[] calldata start,
        uint256[] calldata end,
        address rewardToken,
        uint256[] calldata rewardAmount,
        ICampaignManager.Options[] memory options
    ) external returns (uint256[] memory) {
        if (
            token.length != start.length ||
            token.length != end.length ||
            token.length != rewardAmount.length ||
            token.length != options.length
        ) {
            revert InvalidArgumentsLength();
        }
        uint256 totalRewardAmount = 0;
        for (uint256 i = 0; i < token.length; i++) {
            totalRewardAmount += rewardAmount[i];
        }
        // Transfer reward token and approve for campaign creation
        IERC20(rewardToken).safeTransferFrom(
            msg.sender,
            address(this),
            totalRewardAmount
        );
        IERC20(rewardToken).approve(
            address(campaignManager),
            totalRewardAmount
        );
        uint256[] memory ids = new uint256[](token.length);
        for (uint256 i = 0; i < token.length; i++) {
            ids[i] = campaignManager.create(
                token[i],
                start[i],
                end[i],
                rewardToken,
                rewardAmount[i],
                options[i]
            );
        }
        return ids;
    }
}
