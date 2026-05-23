// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;


interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
}

interface IRewardDistributor {
    function claimToken(address user, IERC20 token) external returns (uint256);
    function getUserTokenTimeCursor(address user, IERC20 token) external view returns (uint256);
}

/**
 * @title Lens Reward V2
 * @notice Enhanced version that calculates and executes multiple claimToken calls
 * to ensure all available rewards are claimed, even if more than 20 weeks have passed.
 */
contract LensRewardV2 {
    uint256 private constant WEEKS_PER_CLAIM = 20;
    uint256 private constant ONE_WEEK = 1 weeks;

    struct ClaimableRewards {
        address token;
        uint256 claimableAmount;
    }

    struct ClaimableRewardsWithCount {
        address token;
        uint256 claimableAmount;
        uint256 numberOfClaims;
    }

    /**
     * @notice Rounds a timestamp down to the beginning of the week (Thursday 00:00 UTC)
     * @param timestamp The timestamp to round down
     * @return The rounded down timestamp
     */
    function _roundDownTimestamp(uint256 timestamp) private pure returns (uint256) {
        return (timestamp / ONE_WEEK) * ONE_WEEK;
    }

    /**
     * @notice Claims all available rewards for a user and token by calling claimToken multiple times
     * @param distributor The RewardDistributor contract
     * @param user The user address
     * @param token The token address
     * @return ClaimableRewards struct with token address, total claimed amount, and number of claims made
     */
    function getUserClaimableReward(
        IRewardDistributor distributor,
        address user,
        IERC20 token
    ) public returns (ClaimableRewards memory) {
        uint256 balanceBefore = token.balanceOf(user);
        
        uint256 userTokenCursor = distributor.getUserTokenTimeCursor(user, token);
        uint256 currentWeek = _roundDownTimestamp(block.timestamp);
        
        // Calculate difference in weeks: (currentWeek - userTokenCursor) / ONE_WEEK
        // optimistically use 1 week in case difference is zero
        uint256 weeksDiff = currentWeek >= userTokenCursor ? (currentWeek - userTokenCursor) / ONE_WEEK : 0;

        uint256 claimsCount = (weeksDiff / WEEKS_PER_CLAIM) + 1;

        for (uint256 i = 0; i < claimsCount; ++i) {
            distributor.claimToken(user, token);
        }
        
        uint256 balanceAfter = token.balanceOf(user);
        uint256 totalClaimed = balanceAfter - balanceBefore;

        return ClaimableRewards({
            token: address(token),
            claimableAmount: totalClaimed
        });
    }

    /**
     * @notice Claims all available rewards for a user and token by calling claimToken multiple times
     * @param distributor The RewardDistributor contract
     * @param user The user address
     * @param token The token address
     * @return ClaimableRewardsWithCount struct with token address, total claimed amount, and number of claims made
     */
    function getUserClaimableRewardWithCount(
        IRewardDistributor distributor,
        address user,
        IERC20 token
    ) public returns (ClaimableRewardsWithCount memory) {
        uint256 balanceBefore = token.balanceOf(user);
        
        uint256 userTokenCursor = distributor.getUserTokenTimeCursor(user, token);
        uint256 currentWeek = _roundDownTimestamp(block.timestamp);
        
        // Calculate difference in weeks: (currentWeek - userTokenCursor) / ONE_WEEK
        // optimistically use 1 week in case difference is zero
        uint256 weeksDiff = currentWeek >= userTokenCursor ? (currentWeek - userTokenCursor) / ONE_WEEK : 0;

        uint256 claimsCount = (weeksDiff / WEEKS_PER_CLAIM) + 1;

        for (uint256 i = 0; i < claimsCount; ++i) {
            distributor.claimToken(user, token);
        }
        
        uint256 balanceAfter = token.balanceOf(user);
        uint256 totalClaimed = balanceAfter - balanceBefore;


        return ClaimableRewardsWithCount({
            token: address(token),
            claimableAmount: totalClaimed,
            numberOfClaims: claimsCount
        });
    }

    /**
     * @notice Claims all available rewards for a user across multiple tokens
     * @param distributor The RewardDistributor contract
     * @param user The user address
     * @param tokens Array of token addresses
     * @return Array of ClaimableRewards structs
     */
    function getUserClaimableRewardsAll(
        IRewardDistributor distributor,
        address user,
        IERC20[] calldata tokens
    ) external returns (ClaimableRewards[] memory) {
        uint256 len = tokens.length;
        ClaimableRewards[] memory res = new ClaimableRewards[](len);

        for (uint256 i = 0; i < len; ++i) {
            res[i] = getUserClaimableReward(distributor, user, tokens[i]);
        }

        return res;
    }

    /**
     * @notice Claims all available rewards for a user across multiple tokens by calling claimToken multiple times
     * @param distributor The RewardDistributor contract
     * @param user The user address
     * @param tokens Array of token addresses
     * @return Array of ClaimableRewardsWithCount structs
     */
    function getUserClaimableRewardsAllWithCount(
        IRewardDistributor distributor,
        address user,
        IERC20[] calldata tokens
    ) external returns (ClaimableRewardsWithCount[] memory) {
        uint256 len = tokens.length;
        ClaimableRewardsWithCount[] memory res = new ClaimableRewardsWithCount[](len);

        for (uint256 i = 0; i < len; ++i) {
            res[i] = getUserClaimableRewardWithCount(distributor, user, tokens[i]);
        }

        return res;
    }
}