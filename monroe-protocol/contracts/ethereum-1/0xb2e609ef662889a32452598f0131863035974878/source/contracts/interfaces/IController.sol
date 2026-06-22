// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


interface IController {
  function getVaultsLength() external view returns (uint);
  function vaults(uint vaultId) external view returns (address);
  function getUniswapParams() external view 
    returns (address uniswapFactory, address quoteToken, uint8 tokenDecimals, uint32 twapDuration, uint16 priceBoundsX4, uint16 yieldAdjustmentSpeedX4);
    
  function treasury() external view returns (address);
  function treasuryFee() external view returns (uint16);
  function emergencyPoolShare() external view returns (uint16);
  function setTreasury(address _treasury, uint16 _treasuryFee) external;
  function setParameters(uint16 _emergencyPoolShare, uint16 _priceBounds, uint16 _yieldAdjustmentSpeed) external;
  function setAddresses(address _synth, address _savingsPool, address _lzEndpoint, address _uniswapV3Factory, address _usdc) external;
  function lzEndpoint() external returns (address);
  
  function getLiquidationThresholds(address collateral) external view returns (uint16 liquidationThreshold, uint16 hardLiquidationThreshold);
  function setLiquidationThresholds(address collateral, uint16 _liquidationThreshold, uint16 _hardLiquidationThreshold) external;
}