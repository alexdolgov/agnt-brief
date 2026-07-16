// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import {RageStructs} from "./RageStructs.sol";
interface IRageOracle {
    // TWAP price functions
    function getWethTwapUsdcPrice(uint256 amount, uint32 interval) external view returns (uint256);
    function getHestiaTwapUsdcPrice(uint256 amount, uint32 interval) external view returns (uint256);
    function getCircleTwapUsdcPrice(uint256 amount, uint32 interval) external view returns (uint256);
    function getHestiaCircleTwapUsdcPrice(uint256 hestiaAmount, uint256 circleAmount, uint32 interval) external view returns (uint256);
    function getRageTwapUsdcPrice(uint256 amount, uint32 interval) external view returns (uint256);
    
    // Price after bond/debond functions
    function getHestiaUsdcPriceAfterBondDebond(uint256 tknAmount, uint32 interval) external view returns (uint256);
    function getCircleUsdcPriceAfterBondDebond(uint256 tknAmount, uint32 interval) external view returns (uint256);
    
    // Price after debond functions for pTokens
    function getPhestiaUsdcPriceAfterDebond(uint256 ptknAmount, uint32 interval) external view returns (uint256);
    function getPcircleUsdcPriceAfterDebond(uint256 ptknAmount, uint32 interval) external view returns (uint256);
    
    // Token conversion functions
    function getPhestiaInHestiaAfterDebond(uint256 ptknAmount) external view returns (uint256);
    function getPcircleInCircleAfterDebond(uint256 ptknAmount) external view returns (uint256);
    
    // Required pToken amount functions
    function getPhestiaRequiredForHestia(uint256 tknAmount) external view returns (uint256);
    function getPcircleRequiredForCircle(uint256 tknAmount) external view returns (uint256);
}