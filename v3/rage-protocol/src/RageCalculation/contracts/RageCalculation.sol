// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IRageOracle} from "./IRageOracle.sol";

contract RageCalculation {

  // immutable
  IRageOracle private immutable RAGE_ORACLE;

  // constructor
  constructor(address oracle) {
    RAGE_ORACLE = IRageOracle(oracle);
  }

  // calculateRageFmv
  // pure function to calculate rage fmv
  // returns usdc price with decimals
  function calculateRageFmv(uint256 rageActiveSupply, uint256 activeAssetsValue) external pure returns(uint256) {
    if (rageActiveSupply == 0) {
      return 0;
    }
    
    // FMV = Active Assets Value / Active RAGE Supply
    uint256 fmv = (activeAssetsValue * 1e18) / rageActiveSupply;
    
    return fmv;
  }

  // getRageUnderlying
  // view function that calculates how many hestia and circle are backing every rage token
  function calculateRageUnderlying(
    uint256 rageActiveSupply, 
    uint256 activePhestia, 
    uint256 activePcircle
  ) public view returns (uint256 underlyingHestia, uint256 underlyingCircle) {
    if (rageActiveSupply == 0) {
      return (0, 0);
    }
    
    uint256 totalHestia = activePhestia > 0 ? RAGE_ORACLE.getPhestiaInHestiaAfterDebond(activePhestia) : 0;
    uint256 totalCircle = activePcircle > 0 ? RAGE_ORACLE.getPcircleInCircleAfterDebond(activePcircle) : 0;
    
    underlyingHestia = (totalHestia * 1e18) / rageActiveSupply;
    underlyingCircle = (totalCircle * 1e18) / rageActiveSupply;
  }

  // getDetailedRawAssets
  function getDetailedRawAssets(
      uint256 hestiaAmount,
      uint256 circleAmount,
      uint32 interval
  ) public view returns (
      uint256 hestiaValue,
      uint256 circleValue,
      uint256 totalValue,
      uint256 hestiaPercent,
      uint256 circlePercent
  ) {
      // get current prices
      uint256 hestiaPrice = RAGE_ORACLE.getHestiaTwapUsdcPrice(1e18, interval);
      uint256 circlePrice = RAGE_ORACLE.getCircleTwapUsdcPrice(1e18, interval);
      
      // calculate USD values
      hestiaValue = (hestiaAmount * hestiaPrice) / 1e18;
      circleValue = (circleAmount * circlePrice) / 1e18;
      
      // total value
      totalValue = hestiaValue + circleValue;
      
      // calculate basis points (10000 = 100%)
      if (totalValue > 0) {
          hestiaPercent = (hestiaValue * 10000) / totalValue;
          circlePercent = (circleValue * 10000) / totalValue;
      }
  }

  // getDetailedRageUnderlying
  function getDetailedRageUnderlying(
      uint256 rageActiveSupply, 
      uint256 activePhestia, 
      uint256 activePcircle,
      uint32 interval
  ) public view returns (
      uint256 underlyingHestia, 
      uint256 underlyingCircle, 
      uint256 hestiaValue, 
      uint256 circleValue, 
      uint256 totalValue, 
      uint256 hestiaPercent, 
      uint256 circlePercent
  ) {
      // get underlying amounts per RAGE token
      (underlyingHestia, underlyingCircle) = calculateRageUnderlying(
          rageActiveSupply, 
          activePhestia, 
          activePcircle
      );
      
      // calculate values and percentages for the underlying amounts
      (hestiaValue, circleValue, totalValue, hestiaPercent, circlePercent) = getDetailedRawAssets(underlyingHestia, underlyingCircle, interval);
  }

  // getDetailedActiveAssets
  function getDetailedActiveAssets(
      uint256 pHestiaIn, 
      uint256 pCircleIn,
      uint32 interval
  ) public view returns (
      uint256 underlyingHestia, 
      uint256 underlyingCircle, 
      uint256 hestiaValue, 
      uint256 circleValue, 
      uint256 totalValue, 
      uint256 hestiaPercent, 
      uint256 circlePercent
  ) {
      // convert pTokens to underlying tokens
      underlyingHestia = pHestiaIn > 0 ? RAGE_ORACLE.getPhestiaInHestiaAfterDebond(pHestiaIn) : 0;
      underlyingCircle = pCircleIn > 0 ? RAGE_ORACLE.getPcircleInCircleAfterDebond(pCircleIn) : 0;
      
      // calculate values and percentages
      (hestiaValue, circleValue, totalValue, hestiaPercent, circlePercent) = getDetailedRawAssets(underlyingHestia, underlyingCircle, interval);
  }

  // calculateBackingPerShare
  // pure function to calculate backing per share
  // returns a composite score of token backing (no USDC value needed)
  // default on launch would be hestia 75e17, circle 15e17
  // return 1e18 = initial backing level, higher = increased backing, lower = decreased backing
  function calculateBackingPerShare(
    uint256 rageActiveSupply, 
    uint256 activePhestia, 
    uint256 activePcircle,
    uint256 percentHestia, 
    uint256 percentCircle,
    uint256 initialHestia,
    uint256 initialCircle
  ) public view returns (uint256) {
      (uint256 underlyingHestia, uint256 underlyingCircle) = calculateRageUnderlying(rageActiveSupply, activePhestia, activePcircle);
            
      // calculate individual scores
      uint256 hestiaScore = (underlyingHestia * 1e18) / initialHestia;
      uint256 circleScore = (underlyingCircle * 1e18) / initialCircle;
      
      // weighted average using current configured percentages
      uint256 weightedScore = (hestiaScore * percentHestia + circleScore * percentCircle) / 100;
      
      return weightedScore;
  }

  // getRageFromAssets
  function getRageFromAssets(
      uint256 hestiaIn, 
      uint256 circleIn,
      uint256 rageActiveSupply, 
      uint256 activeAssetsValue,
      uint32 interval
  ) external view returns(uint256) {
      uint256 incomingAssetsValue = getIncomingAssetsValue(hestiaIn, circleIn, interval);
      return calculateRageFromUsdc(rageActiveSupply, activeAssetsValue, incomingAssetsValue);
  }

  // getIncomingAssetsValue
  // view function, prices are not passed by arguments
  function getIncomingAssetsValue(
      uint256 hestiaIn, 
      uint256 circleIn,
      uint32 interval
  ) public view returns(uint256) {
      // get current prices after wrap/unwrap operations
      uint256 hestiaUsdcPriceAfterBondDebond = RAGE_ORACLE.getHestiaUsdcPriceAfterBondDebond(1e18, interval);
      uint256 circleUsdcPriceAfterBondDebond = RAGE_ORACLE.getCircleUsdcPriceAfterBondDebond(1e18, interval);
      
      return calculateIncomingAssetsValue(
          hestiaIn,
          circleIn,
          hestiaUsdcPriceAfterBondDebond,
          circleUsdcPriceAfterBondDebond
      );
  }

  // calculateIncomingAssetsValue
  // pure function which calculates the value of pending assets, using the price after a peapods bond/debond operation
  function calculateIncomingAssetsValue(
    uint256 hestiaIn, 
    uint256 circleIn, 
    uint256 hestiaUsdcPriceAfterBondDebond,
    uint256 circleUsdcPriceAfterBondDebond
  ) public pure returns(uint256) {
    require(hestiaIn > 0, "hestiaIn");
    require(circleIn > 0, "circleIn");
    require(hestiaUsdcPriceAfterBondDebond > 0, "hestiaPrice");
    require(circleUsdcPriceAfterBondDebond > 0, "circlePrice");

    // amount is in token's native decimals, price is USDC (6 decimals) per 1 full token
    uint256 hestiaValue = (hestiaIn * hestiaUsdcPriceAfterBondDebond) / 1e18;
    uint256 circleValue = (circleIn * circleUsdcPriceAfterBondDebond) / 1e18;
    
    // sum all values (result is in USDC with 6 decimals)
    uint256 totalValue = hestiaValue + circleValue;
    
    return totalValue;
  }

  // calculateRageFromUsdc
  // pure function which returns how much rageSupply the investor is owed by providing incomingAssetsValue
  function calculateRageFromUsdc(uint256 rageActiveSupply, uint256 activeAssetsValue, uint256 incomingAssetsValue) public pure returns(uint256) {
    require(rageActiveSupply > 0, "noRageSupply");
    require(activeAssetsValue > 0, "noActiveAssets");
    require(incomingAssetsValue > 0, "noIncomingAssetsValue");

    // calculate proportional share of new RAGE tokens
    // the investor gets RAGE tokens proportional to their contribution to the total value
    return (incomingAssetsValue * rageActiveSupply) / activeAssetsValue;
  }

  // getAssetsFromRage
  function getAssetsFromRage(
      uint256 rageSupply,
      uint256 rageActiveSupply,
      uint256 totalActiveAssetsValue,
      uint256 activePhestiaAmount,
      uint256 activePcircleAmount,
      uint32 interval
  ) external view returns(uint256 pHestiaOut, uint256 pCircleOut, uint256 pHestiaValueOut, uint256 pCircleValueOut, uint256 totalValueOut) {
      uint256 outgoingAssetsValue = calculateAssetsFromRage(
          rageSupply,
          rageActiveSupply,
          totalActiveAssetsValue
      );
      
      return getActiveAssetsFromValue(
          outgoingAssetsValue,
          activePhestiaAmount,
          activePcircleAmount,
          interval
      );
  }

  // calculateAssetsFromRage
  // pure function which returns how much active assets value the investor is owed by providing rageSupply
  function calculateAssetsFromRage(uint256 rageSupply, uint256 rageActiveSupply, uint256 totalActiveAssetsValue) public pure returns(uint256) {
    require(rageSupply > 0, "noRageSupply");
    require(rageActiveSupply > 0, "noRageTotalSupply");
    require(totalActiveAssetsValue > 0, "noActiveAssetsValue");
    require(rageActiveSupply >= rageSupply, "rageSupplyExceedsActive");
    
    // calculate proportional share of assets
    // if you burn X% of total RAGE supply, you get X% of total assets
    return (rageSupply * totalActiveAssetsValue) / rageActiveSupply;
  }

  // getActiveAssetsFromValue
  // view function, prices are not passed by arguments
  function getActiveAssetsFromValue(
      uint256 outgoingAssetsValue,
      uint256 activePhestiaAmount,
      uint256 activePcircleAmount,
      uint32 interval
  ) public view returns(uint256 pHestiaOut, uint256 pCircleOut, uint256 pHestiaValueOut, uint256 pCircleValueOut, uint256 totalValueOut) {
      // get current pToken prices after unwrap
      uint256 pHestiaUsdcPriceAfterDebond = RAGE_ORACLE.getPhestiaUsdcPriceAfterDebond(1e18, interval);
      uint256 pCircleUsdcPriceAfterDebond = RAGE_ORACLE.getPcircleUsdcPriceAfterDebond(1e18, interval);
      
      // Call the pure function with the fetched prices
      return calculateActiveAssetsFromValue(
          outgoingAssetsValue,
          activePhestiaAmount,
          activePcircleAmount,
          pHestiaUsdcPriceAfterDebond,
          pCircleUsdcPriceAfterDebond
      );
  }

  // calculateActiveAssetsFromValue
  // pure function which returns the number of pTokens needed for the investor to recover the activeAssetsValue
  function calculateActiveAssetsFromValue(
    uint256 outgoingAssetsValue,
    uint256 activePhestiaAmount,
    uint256 activePcircleAmount,
    uint256 pHestiaUsdcPriceAfterDebond,
    uint256 pCircleUsdcPriceAfterDebond
  ) public pure returns(uint256 pHestiaOut, uint256 pCircleOut, uint256 pHestiaValueOut, uint256 pCircleValueOut, uint256 totalValueOut) {
    require(outgoingAssetsValue > 0, "noOutgoingAssetsValue");
    require(activePhestiaAmount > 0, "noActivePhestiaAmount");
    require(activePcircleAmount > 0, "noActivePcircleAmount");
    require(pHestiaUsdcPriceAfterDebond > 0, "noPhestiaUsdcPriceAfterDebond");
    require(pCircleUsdcPriceAfterDebond > 0, "noPcircleUsdcPriceAfterDebond");

    // calculate the current value of each pToken type
    uint256 pHestiaValue = (activePhestiaAmount * pHestiaUsdcPriceAfterDebond) / 1e18;
    uint256 pCircleValue = (activePcircleAmount * pCircleUsdcPriceAfterDebond) / 1e18;
    
    // calculate total value
    uint256 totalActiveValue = pHestiaValue + pCircleValue;
    require(totalActiveValue > 0, "noActiveValue");
    
    // calculate proportional value for each token based on current ratios
    pHestiaValueOut = (outgoingAssetsValue * pHestiaValue) / totalActiveValue;
    pCircleValueOut = (outgoingAssetsValue * pCircleValue) / totalActiveValue;
    
    // convert values back to token amounts
    pHestiaOut = (pHestiaValueOut * 1e18) / pHestiaUsdcPriceAfterDebond;
    pCircleOut = (pCircleValueOut * 1e18) / pCircleUsdcPriceAfterDebond;
    
    // return the total value distributed
    totalValueOut = pHestiaValueOut + pCircleValueOut;
  }
}