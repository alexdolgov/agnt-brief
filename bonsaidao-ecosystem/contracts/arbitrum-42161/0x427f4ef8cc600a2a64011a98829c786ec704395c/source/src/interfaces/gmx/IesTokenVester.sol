// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

interface IesTokenVester {
    function deposit(uint256 _amount) external;
    function withdraw() external;
    function getMaxVestableAmount(address _user) external view returns (uint256);
    function getPairAmount(address _account, uint256 _esAmount) external view returns (uint256);
    function pairAmounts(address _account) external view returns (uint256);
    function getCombinedAverageStakedAmount(address _account) external view returns (uint256);
    function getTotalVested(address _account) external view returns (uint256);
    function balances(address _account) external view returns (uint256);
    function cumulativeRewards(address _account) external view returns (uint256);
    function averageStakedAmounts(address _account) external view returns (uint256);
    function cumulativeClaimAmounts(address _account) external view returns (uint256);
    function transferredCumulativeRewards(address _account) external view returns (uint256);
    function transferredAverageStakedAmounts(address _account) external view returns (uint256);
    function lastVestingTimes(address _account) external view returns (uint256);
    function getVestedAmount(address _account) external view returns (uint256);
}
