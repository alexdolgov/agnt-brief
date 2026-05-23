// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import "./IOffPlanStructs.sol";

interface IOffPlan{
  function getTokenInfo() external view returns (IOffPlanStructs.TokenInfo memory);
  function updateOffPlanMetadata(
    IOffPlanStructs.WorldAddress calldata _worldAddress,
    IOffPlanStructs.OffPlanInfo calldata _offPlanInfo,
    IOffPlanStructs.OffPlanPhase[] calldata _offPlanPhases
  ) external;
  function initPool() external;
  function initialMint() external;
}
