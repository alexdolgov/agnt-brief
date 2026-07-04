// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface ISOUActivityTracker {
    enum ActivityType {
        MINT,
        UPDATE,
        SPLIT,
        MERGE,
        PAYOUT_CLAIMED,
        BATCH_PAYOUT_CLAIMED,
        GLOBAL_DONATION_CLAIMED,
        REWARD_CLAIMED,
        TRANSFER,
        PAYOUT_CREATED,
        DONATION_CREATED,
        REWARD_CREATED
    }

    struct UserActivity {
        uint256 tokenId;
        ActivityType activityType;
        uint256 timestamp;
        bytes data;
    }

    function recordActivity(
        address user,
        uint256 tokenId,
        ActivityType activityType,
        bytes calldata data
    ) external;

    // Global activities (for payouts/donations created)
    function getGlobalActivities() external view returns (UserActivity[] memory);
    function getGlobalActivityCount() external view returns (uint256);
    function getLatestGlobalActivities(uint256 count) external view returns (UserActivity[] memory);
}
