// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

interface IEntryPoint {
    function gmxVester() external view returns (address);
    function glpVester() external view returns (address);
    function gmxRewardsTracker() external view returns (address);
    function glpRewardsTracker() external view returns (address);
    function gmxRewardsRouter() external view returns (address);
}
