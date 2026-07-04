// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IRewardReceiver {
    function receiveRewards(uint256 _amount) external;
    function distributeRewards() external returns (uint256);
    function pendingRewards() external view returns (uint256);

    event DistributeIncentives(address indexed incentiveReceiver, address indexed from, uint256 retention);
    event NewRewards(address indexed from, uint256 amount);
    event EmergencyWithdrawal(address indexed caller, address indexed receiver, address[] tokens, uint256 nativeBalanc);

    error UnAuthorized();
    error FailSendETH();
}
