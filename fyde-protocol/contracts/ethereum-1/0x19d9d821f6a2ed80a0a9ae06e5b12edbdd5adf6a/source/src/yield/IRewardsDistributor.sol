// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

interface IRewardsDistributor {
  function updateAccounting(address _user1, address _user2) external;
  function activateFydeEmissions(address _user) external;
}
