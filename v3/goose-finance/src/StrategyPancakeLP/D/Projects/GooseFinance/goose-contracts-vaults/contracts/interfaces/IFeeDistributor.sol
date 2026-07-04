// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.6.12;

interface IFeeDistributor {
    function calculateFees(uint256 rewardAmount) external view returns (uint256 feeAmount);
    function transferFees(address rewardToken, uint256 feeAmount) external returns (bool);
}
