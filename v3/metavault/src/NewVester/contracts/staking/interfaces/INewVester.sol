// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

interface INewVester {
    function rewardTracker() external view returns (address);
    function claimable(address _account) external view returns (uint256);
    function cumulativeClaimAmounts(address _account) external view returns (uint256);
    function claimedAmounts(address _account) external view returns (uint256);
    function pairAmounts(address _account) external view returns (uint256);
    function getVestedAmount(address _account) external view returns (uint256);
    function getMaxVestableAmount(address _account) external view returns (uint256);
    function getCombinedAverageStakedAmount(address _account) external view returns (uint256);
    function getTotalVested(address _account) external view returns (uint256);
}
