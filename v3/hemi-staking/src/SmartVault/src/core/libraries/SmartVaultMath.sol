// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { RewardConfig, VaultConfig } from "../interfaces/ISmartVault.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

/**
 * @title FarmMath library
 *  @dev A library to perform math operations for the Farm contract
 */
library SmartVaultMath {
    // Precision for reward per token
    uint256 internal constant REWARD_PER_TOKEN_PRECISION = 1e18;

    /**
     * @notice Computes the reward for a user
     * @param share The user's share
     * @param lastRewardPerToken The last reward per token
     * @param lastUserRewardPerToken The last user reward per token
     */
    function computeReward(
        uint256 share,
        uint256 lastRewardPerToken,
        uint256 lastUserRewardPerToken
    )
        internal
        pure
        returns (uint256)
    {
        return Math.mulDiv(share, (lastRewardPerToken - lastUserRewardPerToken), REWARD_PER_TOKEN_PRECISION);
    }

    /**
     * @notice Computes the latest reward per token
     * @param lastRewardPerToken The last reward per token
     * @param rewardRate The reward rate
     * @param interval The interval
     * @param totalShares The total shares
     */
    function computeLatestRewardPerToken(
        uint256 lastRewardPerToken,
        uint256 rewardRate,
        uint256 interval,
        uint256 totalShares
    )
        internal
        pure
        returns (uint256)
    {
        return lastRewardPerToken + computeRewardPerToken(rewardRate, interval, totalShares);
    }

    /**
     * @notice Computes the reward per token
     * @param rewardRate The reward rate
     * @param interval The interval
     * @param totalShares The total shares
     */
    function computeRewardPerToken(
        uint256 rewardRate,
        uint256 interval,
        uint256 totalShares
    )
        internal
        pure
        returns (uint256)
    {
        if (totalShares == 0 || rewardRate == 0 || interval == 0) {
            return 0;
        }

        return Math.mulDiv(rewardRate * interval, REWARD_PER_TOKEN_PRECISION, totalShares);
    }

    /**
     * @notice Computes the interval
     * @param currentTime The current time
     * @param lastUpdateTime The last update time
     * @param startTime The start time
     * @param endTime The end time
     */
    function computeInterval(
        uint256 currentTime,
        uint256 lastUpdateTime,
        uint256 startTime,
        uint256 endTime
    )
        internal
        pure
        returns (uint256)
    {
        if (currentTime < startTime) return 0;
        if (endTime < lastUpdateTime) return 0;

        if (currentTime > endTime) {
            return endTime - Math.max(lastUpdateTime, startTime);
        }
        return currentTime - Math.max(lastUpdateTime, startTime);
    }

    function scaleToDecimals18(
        uint256 _amount,
        uint8 _decimals,
        Math.Rounding rounding
    )
        internal
        pure
        returns (uint256)
    {
        // Scale the collateral amount to the target digits
        uint256 scaledAmount;
        uint8 TARGET_DIGITS = 18;

        if (_decimals == TARGET_DIGITS) {
            scaledAmount = _amount;
        } else if (_decimals < TARGET_DIGITS) {
            scaledAmount = _amount * (10 ** (TARGET_DIGITS - _decimals));
        } else {
            scaledAmount = Math.mulDiv(_amount, 1, 10 ** (_decimals - TARGET_DIGITS), rounding);
        }

        return scaledAmount;
    }

    function scaleToOriginalDecimals(
        uint256 _scaledCollateralAmount,
        uint8 _decimals,
        Math.Rounding rounding
    )
        internal
        pure
        returns (uint256)
    {
        // Scale the collateral amount with decimals 18 to the target digits
        uint256 originalAmount;
        uint8 TARGET_DIGITS = 18;

        if (_decimals == TARGET_DIGITS) {
            originalAmount = _scaledCollateralAmount;
        } else if (_decimals < TARGET_DIGITS) {
            originalAmount = Math.mulDiv(_scaledCollateralAmount, 1, 10 ** (TARGET_DIGITS - _decimals), rounding);
        } else {
            originalAmount = _scaledCollateralAmount * (10 ** (_decimals - TARGET_DIGITS));
        }

        return originalAmount;
    }
}
