// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.25;

/// @dev user data for staking pool
struct UserData {
    /// @dev last reward index user has claimed rewards for
    uint256 lastIndex;
    /// @dev last timestamp user has updated their staked tokenseconds
    uint256 lastUpdate;
    /// @dev cumulative amount of staked tokens multiplied by time staked
    uint256 accruedTS;
    /// @dev cumulative amount of staked tokens deducted from accruedTS when calculating rewards
    uint256 deductionTS;
    /// @dev cumulative amount of rewards user has accrued
    /// note: may not not have been updated to current time
    uint256 accruedRewards;
    /// @dev cumulative amount of rewards user has claimed
    uint256 claimedRewards;
    /// @dev index of last release in releases array
    uint256 lastReleaseIndex;
}

/// @dev reward data for staking pool
struct RewardData {
    /// @dev timestamp of reward provision
    uint256 timestamp;
    /// @dev scaled rate of reward per tokensecond
    uint256 scaledRate;
    /// @dev snapshot value of globalTS at time of reward provision
    uint256 globalTS;
}

/// @dev release data for staking pool
struct Release {
    /// @dev amount of tokens to be released
    uint256 amount;
    /// @dev timestamp of when tokens will be released
    uint256 releaseTime;
}
