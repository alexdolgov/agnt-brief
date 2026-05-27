// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IRewardManager {
  function rewardToken() external view returns (address);

  function transferToMigrator() external;
}
