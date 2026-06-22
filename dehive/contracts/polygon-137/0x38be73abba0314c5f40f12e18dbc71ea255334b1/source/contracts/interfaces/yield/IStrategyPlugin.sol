// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IStrategyPlugin {
    function want() external returns (IERC20);

    function deposit(uint256 _amount) external;

    function withdraw(uint256 _amount) external;

    function withdrawAll() external returns (uint256, uint256);

    function emergencyWithdraw() external;

    function getRewards() external returns (uint256);

    function harvest() external;

    function migrateRewards(address _prevWant, uint256 _amount) external;

    function rewardsInEth() external view returns (uint256);
}
