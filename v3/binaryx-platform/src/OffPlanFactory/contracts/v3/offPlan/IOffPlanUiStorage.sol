// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import "./IOffPlanStructs.sol";

interface IOffPlanUiStorage{
  // UI
  function trackBalanceChange(IOffPlanStructs.BalanceChange memory balanceChange) external;
  function getOffPlansByHolder(address user) external view returns(address[] memory);
  function getBalancesChangesByUser(address user) external view returns (IOffPlanStructs.BalanceChange[] memory);
  function getBalancesChangesByOffPlan(address offPlan) external view returns (IOffPlanStructs.BalanceChange[] memory);
  function getBalancesChangesByUserAndOffPlan(address user, address offPlan) external view returns (IOffPlanStructs.BalanceChange[] memory);
}
