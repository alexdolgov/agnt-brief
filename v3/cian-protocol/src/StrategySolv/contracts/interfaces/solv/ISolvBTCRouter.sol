// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface ISolvBTCRouter {
    function createSubscription(bytes32 poolId_, uint256 currencyAmount_) external returns (uint256 shareValue_);

    function createRedemption(bytes32 poolId_, uint256 redeemAmount_) external returns (uint256 redemptionId_);
}
