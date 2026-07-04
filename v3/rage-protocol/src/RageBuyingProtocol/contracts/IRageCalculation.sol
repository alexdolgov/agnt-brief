// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface IRageCalculation {
    // External functions
    function calculateRageFmv(uint256 rageActiveSupply, uint256 activeAssetsValue) external pure returns(uint256);
    
    function getRageFromAssets(
        uint256 hestiaIn, 
        uint256 circleIn,
        uint256 rageActiveSupply, 
        uint256 activeAssetsValue,
        uint32 interval
    ) external view returns(uint256);
    
    function getAssetsFromRage(
        uint256 rageSupply,
        uint256 rageActiveSupply,
        uint256 totalActiveAssetsValue,
        uint256 activePhestiaAmount,
        uint256 activePcircleAmount,
        uint32 interval
    ) external view returns(
        uint256 pHestiaOut, 
        uint256 pCircleOut, 
        uint256 pHestiaValueOut, 
        uint256 pCircleValueOut, 
        uint256 totalValueOut
    );
    
    // Public view functions
    function calculateRageUnderlying(
        uint256 rageActiveSupply, 
        uint256 activePhestia, 
        uint256 activePcircle
    ) external view returns (uint256 underlyingHestia, uint256 underlyingCircle);
    
    function getDetailedRawAssets(
        uint256 hestiaAmount,
        uint256 circleAmount,
        uint32 interval
    ) external view returns (
        uint256 hestiaValue,
        uint256 circleValue,
        uint256 totalValue,
        uint256 hestiaPercent,
        uint256 circlePercent
    );
    
    function getDetailedRageUnderlying(
        uint256 rageActiveSupply, 
        uint256 activePhestia, 
        uint256 activePcircle,
        uint32 interval
    ) external view returns (
        uint256 underlyingHestia, 
        uint256 underlyingCircle, 
        uint256 hestiaValue, 
        uint256 circleValue, 
        uint256 totalValue, 
        uint256 hestiaPercent, 
        uint256 circlePercent
    );
    
    function getDetailedActiveAssets(
        uint256 pHestiaIn, 
        uint256 pCircleIn,
        uint32 interval
    ) external view returns (
        uint256 underlyingHestia, 
        uint256 underlyingCircle, 
        uint256 hestiaValue, 
        uint256 circleValue, 
        uint256 totalValue, 
        uint256 hestiaPercent, 
        uint256 circlePercent
    );
    
    function calculateBackingPerShare(
        uint256 rageActiveSupply, 
        uint256 activePhestia, 
        uint256 activePcircle,
        uint256 percentHestia, 
        uint256 percentCircle,
        uint256 initialHestia,
        uint256 initialCircle
    ) external view returns (uint256);
    
    function getIncomingAssetsValue(
        uint256 hestiaIn, 
        uint256 circleIn,
        uint32 interval
    ) external view returns(uint256);
    
    // Public pure functions
    function calculateIncomingAssetsValue(
        uint256 hestiaIn, 
        uint256 circleIn, 
        uint256 hestiaUsdcPriceAfterBondDebond,
        uint256 circleUsdcPriceAfterBondDebond
    ) external pure returns(uint256);
    
    function calculateRageFromUsdc(
        uint256 rageActiveSupply, 
        uint256 activeAssetsValue, 
        uint256 incomingAssetsValue
    ) external pure returns(uint256);
    
    function calculateAssetsFromRage(
        uint256 rageSupply, 
        uint256 rageActiveSupply, 
        uint256 totalActiveAssetsValue
    ) external pure returns(uint256);
    
    function getActiveAssetsFromValue(
        uint256 outgoingAssetsValue,
        uint256 activePhestiaAmount,
        uint256 activePcircleAmount,
        uint32 interval
    ) external view returns(
        uint256 pHestiaOut, 
        uint256 pCircleOut, 
        uint256 pHestiaValueOut, 
        uint256 pCircleValueOut, 
        uint256 totalValueOut
    );
    
    function calculateActiveAssetsFromValue(
        uint256 outgoingAssetsValue,
        uint256 activePhestiaAmount,
        uint256 activePcircleAmount,
        uint256 pHestiaUsdcPriceAfterDebond,
        uint256 pCircleUsdcPriceAfterDebond
    ) external pure returns(
        uint256 pHestiaOut, 
        uint256 pCircleOut, 
        uint256 pHestiaValueOut, 
        uint256 pCircleValueOut, 
        uint256 totalValueOut
    );
}