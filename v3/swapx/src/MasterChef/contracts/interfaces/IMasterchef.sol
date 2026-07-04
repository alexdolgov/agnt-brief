// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;


interface IMasterchef {
    struct PoolInfo {
        uint256 accRewardPerShare;
        uint256 accRewardPerShareExtra;
        uint256 lastRewardTime;
    }

    function setDistributionRate(uint256 amount) external;

    function setDistributionRateExtra(uint256 amount) external;

    function updatePool() external returns (PoolInfo memory pool);
}