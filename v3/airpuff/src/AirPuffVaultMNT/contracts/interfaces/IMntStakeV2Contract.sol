// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

interface IMntStakeV2Contract {
    function rewardToken() external view returns (address);
    function userRewardPerTokenPaid(address _account) external view returns (uint256);
    function rewards(address _account) external view returns (uint256);
    function balances(address _account) external view returns (uint256);
    function earned(address _account) external view returns (uint256);

    function stake() external payable;
    function withdraw(uint256 _amount) external;
    function claimReward() external;
}
