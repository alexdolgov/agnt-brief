// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.25;

interface IRewardRouterV2 {
    function stakeGmx(uint256 _amount) external;
    function unstakeGmx(uint256 _amount) external;
    function unstakeEsGmx(uint256 _amount) external;
    function signalTransfer(address _receiver) external;

    function acceptTransfer(address _sender) external;

    function stakedGmxTracker() external view returns (address);
    function bonusGmxTracker() external view returns (address);
    function feeGmxTracker() external view returns (address);
    function gmxVester() external view returns (address);
    function stakedGlpTracker() external view returns (address);
    function feeGlpTracker() external view returns (address);
    function glpVester() external view returns (address);
}
