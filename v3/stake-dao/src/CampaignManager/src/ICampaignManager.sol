// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.20;

interface ICampaignManager {
    struct Options {
        uint8 indexMode; // 0 = regular, 1 = custom endpoint (data)
        bytes data; // if indexMode = 1, data is the endpoint (with {{0}} and {{1}} replaced by startTimestamp, currentTimestamp respectively)
    }

    function create(
        address token,
        uint256 start,
        uint256 end,
        address rewardToken,
        uint256 rewardAmount,
        Options calldata options
    ) external returns (uint256);

    function userClaims(
        address user,
        address token,
        address rewardToken
    ) external view returns (uint256);
}
