// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

interface INftBasedClaim {
    function releaseToStaking(
        address _user,
        address[] calldata _collectionAddresses,
        uint256[] calldata _tokenIds,
        uint256[] calldata _vestingScheduleIds
    ) external returns (uint120 transferredAmount);
}
