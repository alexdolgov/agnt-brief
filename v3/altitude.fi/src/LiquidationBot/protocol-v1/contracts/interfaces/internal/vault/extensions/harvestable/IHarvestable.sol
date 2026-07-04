// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

interface IHarvestable {
    event Harvested(
        uint256 harvestIndex,
        uint256 distributableRewards,
        bool hasRewardsForDistribution
    );

    event ClaimedRewards(
        address indexed account,
        uint256 amountClaimed,
        uint256 debtRepayed
    );

    // Harvest Errors
    error HM_V1_BLOCK_ERROR();
    error HM_V1_HARVEST_ERROR();
    error HM_V1_PRICE_TOO_LOW();
    error HM_V1_INVALID_COMMIT();
    error HM_V1_CLAIM_REWARDS_ZERO();
    error HV_V1_HM_NO_ACTIVE_ASSETS();
    error HM_V1_FAILED_EXTERNAL_CALL();
    error HM_V1_INSUFFICIENT_CLAIMABLE_FARM();
    error HV_V1_RESERVE_FACTOR_OUT_OF_RANGE();
    error HM_V1_INSUFFICIENT_CLAIMABLE_RESERVE();

    function harvest(uint256 price) external payable;

    function withdrawReserve(
        address receiver,
        uint256 amount
    ) external returns (uint256);

    function claimRewards() external;
}
