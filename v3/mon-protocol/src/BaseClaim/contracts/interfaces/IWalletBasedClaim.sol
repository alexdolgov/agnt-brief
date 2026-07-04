// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

interface IWalletBasedClaim {
    function releaseToStaking(
        address _user,
        uint256[] calldata _vestingScheduleIds
    ) external returns (uint120 transferredAmount);
}
