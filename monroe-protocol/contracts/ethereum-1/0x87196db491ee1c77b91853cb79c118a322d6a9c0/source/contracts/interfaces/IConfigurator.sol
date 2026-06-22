// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IConfigurator {
  function treasury() external view returns (address);
  function treasuryFee() external view returns (uint16);
  function safetyPoolShare() external view returns (uint16);
  function setTreasury(address _treasury, uint16 _treasuryFee) external;
  function setSafetyPoolShare(uint16 _safetyPoolShare) external;
  function setSavingsYieldContract(address _savingsYieldContract) external;
  
  function getLiquidationThresholds(address collateral) external view returns (uint16 liquidationThreshold, uint16 hardLiquidationThreshold);
  function setLiquidationThresholds(address collateral, uint16 _liquidationThreshold, uint16 _hardLiquidationThreshold) external;
}