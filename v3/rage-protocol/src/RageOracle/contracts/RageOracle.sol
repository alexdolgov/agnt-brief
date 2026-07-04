// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {IPeaPods} from "./IPeaPods.sol";
import {RageStructs} from "./RageStructs.sol";
import {OracleLibrary} from "./OracleLibrary.sol";

contract RageOracle {
  // constant
  address private constant WETH = 0x4200000000000000000000000000000000000006;
  address private constant USDC = 0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913;
  address private constant HESTIA = 0xBC7755a153E852CF76cCCDdb4C2e7c368f6259D8;
  address private constant CIRCLE = 0x5baBfc2F240bc5De90Eb7e19D789412dB1dEc402;
  IUniswapV3Pool private constant USDC_WETH_POOL = IUniswapV3Pool(0xb2cc224c1c9feE385f8ad6a55b4d94E92359DC59);
  IUniswapV3Pool private constant HESTIA_USDC_POOL = IUniswapV3Pool(0x1B39fC4C93EfbE733B8D2770bcfaa46885d5343a);
  IUniswapV3Pool private constant CIRCLE_WETH_POOL = IUniswapV3Pool(0xDA679706FF21114AC9faC5198BfF24543F357a16);
  IPeaPods private constant PHESTIA_POD = IPeaPods(0xF760fD8fEB1F5E3bf3651E2E4f227285a82470Ff);
  IPeaPods private constant PCIRCLE_POD = IPeaPods(0x55A81dA2a319dD60fB028c53Cb4419493B56f6c0);
  uint256 private constant PHESTIA_WRAP_FEE = 100; // this is a divisor, equals 1%
  uint256 private constant PHESTIA_UNWRAP_FEE = 100; // this is a divisor, equals 1%
  uint256 private constant PCIRCLE_WRAP_FEE = 200; // this is a divisor, equals 0.5%
  uint256 private constant PCIRCLE_UNWRAP_FEE = 100; // this is a divisor, equals 1%
  uint32 private constant MIN_TWAP_INTERVAL = 1; // 1 second minimum
  uint32 private constant MAX_TWAP_INTERVAL = 3600;   // 1 hour maximum
  uint32 private constant FALLBACK_INTERVAL = 5; // 5 seconds fallback

  // immutable
  address private immutable RAGE;
  IUniswapV3Pool private immutable RAGE_USDC_POOL;
  address private immutable USDC_WETH_POOL_TOKEN_0;
  address private immutable HESTIA_USDC_POOL_TOKEN_0;
  address private immutable CIRCLE_WETH_POOL_TOKEN_0;
  address private immutable RAGE_USDC_POOL_TOKEN_0;

  // constructor
  constructor(address rage, address rageUsdcPool) {
    RAGE = rage;
    RAGE_USDC_POOL = IUniswapV3Pool(rageUsdcPool);

    USDC_WETH_POOL_TOKEN_0 = USDC_WETH_POOL.token0();
    HESTIA_USDC_POOL_TOKEN_0 = HESTIA_USDC_POOL.token0();
    CIRCLE_WETH_POOL_TOKEN_0 = CIRCLE_WETH_POOL.token0();
    RAGE_USDC_POOL_TOKEN_0 = RAGE_USDC_POOL.token0();
  }

  // getWethTwapUsdcPrice
  function getWethTwapUsdcPrice(uint256 amount, uint32 interval) public view returns (uint256) {
    return getTwapPrice(USDC_WETH_POOL, WETH, USDC_WETH_POOL_TOKEN_0, amount, interval);
  }

  // getHestiaTwapUsdcPrice
  function getHestiaTwapUsdcPrice(uint256 amount, uint32 interval) public view returns (uint256) {
    return getTwapPrice(HESTIA_USDC_POOL, HESTIA, HESTIA_USDC_POOL_TOKEN_0, amount, interval);
  }

  // getCircleTwapUsdcPrice
  function getCircleTwapUsdcPrice(uint256 amount, uint32 interval) public view returns (uint256) {
    uint256 wethAmount = getTwapPrice(CIRCLE_WETH_POOL, CIRCLE, CIRCLE_WETH_POOL_TOKEN_0, amount, interval);
    
    uint256 wethPriceInUsdc = getWethTwapUsdcPrice(1e18, interval);
    return (wethAmount * wethPriceInUsdc) / 1e18;
  }

  // getHestiaCircleTwapUsdcPrice
  function getHestiaCircleTwapUsdcPrice(uint256 hestiaAmount, uint256 circleAmount, uint32 interval) public view returns (uint256) {
    uint256 hestiaValue = getHestiaTwapUsdcPrice(hestiaAmount, interval);
    uint256 circleValue = getCircleTwapUsdcPrice(circleAmount, interval);
    return hestiaValue + circleValue;
  }

  // getRageTwapUsdcPrice
  function getRageTwapUsdcPrice(uint256 amount, uint32 interval) public view returns (uint256) {
    return getTwapPrice(RAGE_USDC_POOL, RAGE, RAGE_USDC_POOL_TOKEN_0, amount, interval);
  }

  // consultOracle
  // external wrapper to be able to use 
  function consultOracle(address pool, uint32 interval) external view returns (int24 tick, uint128 liquidity) {
    return OracleLibrary.consult(pool, interval);
  }

  // getTwapPrice
  function getTwapPrice(IUniswapV3Pool pool, address tokenIn, address poolToken0, uint256 amount, uint32 interval) internal view returns (uint256) {
    require(interval >= MIN_TWAP_INTERVAL, "intervalTooSmall");
    require(interval <= MAX_TWAP_INTERVAL, "intervalTooLarge");
    
    // determine tokenOut based on tokenIn
    address tokenOut = tokenIn == poolToken0 ? pool.token1() : poolToken0;
    
    int24 arithmeticMeanTick;
    
    try this.consultOracle(address(pool), interval) returns (int24 tick, uint128) {
        arithmeticMeanTick = tick;
    } catch {
        // if it fails (likely due to OLD error), try with shorter interval
        try this.consultOracle(address(pool), FALLBACK_INTERVAL) returns (int24 tick, uint128) {
            arithmeticMeanTick = tick;
        } catch {
            revert("oracleConsultFailed");
        }
    }
    
    uint256 quoteAmount = OracleLibrary.getQuoteAtTick(
        arithmeticMeanTick,
        uint128(amount),
        tokenIn,
        tokenOut
    );
    require(quoteAmount > 0, "invalidQuote");
    
    return quoteAmount;
  }

  // getHestiaUsdcPriceAfterBondDebond
  // return the amount of hestia you would get if you wrap it to a pToken and then unwrap it again
  function getHestiaUsdcPriceAfterBondDebond(uint256 tknAmount, uint32 interval) public view returns (uint256) {
    uint256 ptknAmount = PHESTIA_POD.convertToShares(tknAmount);
    uint256 tknAmount2 = PHESTIA_POD.convertToAssets(ptknAmount);
    return getHestiaTwapUsdcPrice(tknAmount2, interval);
  }

  // getCircleUsdcPriceAfterBondDebond
  function getCircleUsdcPriceAfterBondDebond(uint256 tknAmount, uint32 interval) public view returns (uint256) {
    uint256 ptknAmount = PCIRCLE_POD.convertToShares(tknAmount);
    uint256 tknAmount2 = PCIRCLE_POD.convertToAssets(ptknAmount);
    return getCircleTwapUsdcPrice(tknAmount2, interval);
  }

  // getPhestiaUsdcPriceAfterDebond
  function getPhestiaUsdcPriceAfterDebond(uint256 ptknAmount, uint32 interval) public view returns (uint256) {
    uint256 tknAmount = PHESTIA_POD.convertToAssets(ptknAmount);
    return getHestiaTwapUsdcPrice(tknAmount, interval);
  }

  // getPcircleUsdcPriceAfterDebond
  function getPcircleUsdcPriceAfterDebond(uint256 ptknAmount, uint32 interval) public view returns (uint256) {
    uint256 tknAmount = PCIRCLE_POD.convertToAssets(ptknAmount);
    return getCircleTwapUsdcPrice(tknAmount, interval);
  }

  // getPhestiaInHestiaAfterDebond
  // return how many hestia you would receive after the unwrap of pHestia
  function getPhestiaInHestiaAfterDebond(uint256 ptknAmount) public view returns (uint256) {
    return PHESTIA_POD.convertToAssets(ptknAmount);
  }

  // getPcircleInCircleAfterDebond
  function getPcircleInCircleAfterDebond(uint256 ptknAmount) public view returns (uint256) {
    return PCIRCLE_POD.convertToAssets(ptknAmount);
  }

  // getPhestiaRequiredForHestia
  // return the amount of pHestia necessary to debond in order to receive exactly the amount of tkn given in argument
  // there may be a difference of a couple of wei
  function getPhestiaRequiredForHestia(uint256 tknAmount) public view returns (uint256) {
    tknAmount = tknAmount + (tknAmount / PHESTIA_WRAP_FEE);
    uint256 ptknAmount = PHESTIA_POD.convertToShares(tknAmount);
    return ptknAmount + (ptknAmount / PHESTIA_UNWRAP_FEE);
  }

  // getPcircleRequiredForCircle
  function getPcircleRequiredForCircle(uint256 tknAmount) public view returns (uint256) {
    tknAmount = tknAmount + (tknAmount / PCIRCLE_WRAP_FEE);
    uint256 ptknAmount = PCIRCLE_POD.convertToShares(tknAmount);
    return ptknAmount + (ptknAmount / PCIRCLE_UNWRAP_FEE);
  }

  // getPrices
  // helper function which returns all the prices
  function getPrices(uint32 interval) external view returns (RageStructs.OraclePrices memory) {
    uint256 pHestiaRequiredForHestia = getPhestiaRequiredForHestia(1e18);
    uint256 pCircleRequiredForCircle = getPcircleRequiredForCircle(1e18);

    return RageStructs.OraclePrices({
      wethTwapUsdcPrice: getWethTwapUsdcPrice(1e18, interval),
      hestiaTwapUsdcPrice: getHestiaTwapUsdcPrice(1e18, interval),
      circleTwapUsdcPrice: getCircleTwapUsdcPrice(1e18, interval),
      hestiaCircleTwapUsdcPrice: getHestiaCircleTwapUsdcPrice(1e18,1e18,interval),
      rageTwapUsdcPrice: getRageTwapUsdcPrice(1e18, interval),
      hestiaUsdcPriceAfterBondDebond: getHestiaUsdcPriceAfterBondDebond(1e18, interval),
      circleUsdcPriceAfterBondDebond: getCircleUsdcPriceAfterBondDebond(1e18, interval),
      pHestiaUsdcPriceAfterDebond: getPhestiaUsdcPriceAfterDebond(1e18, interval),
      pCircleUsdcPriceAfterDebond: getPcircleUsdcPriceAfterDebond(1e18, interval),
      pHestiaInHestiaAfterDebond: getPhestiaInHestiaAfterDebond(1e18),
      pCircleInCircleAfterDebond: getPcircleInCircleAfterDebond(1e18),
      pHestiaRequiredForHestia: pHestiaRequiredForHestia,
      pCircleRequiredForCircle: pCircleRequiredForCircle,
      pHestiaRequiredForHestiaResult: getPhestiaInHestiaAfterDebond(pHestiaRequiredForHestia),
      pCircleRequiredForCircleResult: getPcircleInCircleAfterDebond(pCircleRequiredForCircle)
    });
  }
}