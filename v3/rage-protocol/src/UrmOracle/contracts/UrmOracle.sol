// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {OracleLibrary} from "./OracleLibrary.sol";
import {UrmStructs} from "./UrmStructs.sol";

contract UrmOracle {
  // constant
  uint32 private constant MIN_TWAP_INTERVAL = 1;
  uint32 private constant MAX_TWAP_INTERVAL = 3600;
  address private constant WETH = 0x4200000000000000000000000000000000000006;
  address private constant USDC = 0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913;
  address private constant HESTIA = 0xBC7755a153E852CF76cCCDdb4C2e7c368f6259D8;
  address private constant CIRCLE = 0x5baBfc2F240bc5De90Eb7e19D789412dB1dEc402;
  address private constant RAGE = 0xc0df50143EA93AeC63e38A6ED4E92B378079eA15;
  IUniswapV3Pool private constant USDC_WETH_POOL = IUniswapV3Pool(0xb2cc224c1c9feE385f8ad6a55b4d94E92359DC59);
  IUniswapV3Pool private constant HESTIA_USDC_POOL = IUniswapV3Pool(0x1B39fC4C93EfbE733B8D2770bcfaa46885d5343a);
  IUniswapV3Pool private constant CIRCLE_WETH_POOL = IUniswapV3Pool(0xDA679706FF21114AC9faC5198BfF24543F357a16);
  IUniswapV3Pool private constant RAGE_USDC_POOL = IUniswapV3Pool(0xd474B32a5a2BF93453996287D361a00f661E04FF);

  // immutable
  address private immutable URM;
  IUniswapV3Pool private immutable URM_USDC_POOL;
  address private immutable URM_USDC_POOL_TOKEN0;
  address private immutable USDC_WETH_POOL_TOKEN0;
  address private immutable HESTIA_USDC_POOL_TOKEN0;
  address private immutable CIRCLE_WETH_POOL_TOKEN0;
  address private immutable RAGE_USDC_POOL_TOKEN0;

  // constructor
  constructor(address urm, address urmUsdcPool) {
    URM = urm;
    URM_USDC_POOL = IUniswapV3Pool(urmUsdcPool);
    URM_USDC_POOL_TOKEN0 = URM_USDC_POOL.token0();
    USDC_WETH_POOL_TOKEN0 = USDC_WETH_POOL.token0();
    HESTIA_USDC_POOL_TOKEN0 = HESTIA_USDC_POOL.token0();
    CIRCLE_WETH_POOL_TOKEN0 = CIRCLE_WETH_POOL.token0();
    RAGE_USDC_POOL_TOKEN0 = RAGE_USDC_POOL.token0();
  }

  // getUrmTwapUsdcPrice
  function getUrmTwapUsdcPrice(uint256 amount, uint32 interval) public view returns (uint256) {
    return getTwapPrice(URM_USDC_POOL, URM, URM_USDC_POOL_TOKEN0, amount, interval);
  }

  // getWethTwapUsdcPrice
  function getWethTwapUsdcPrice(uint256 amount, uint32 interval) public view returns (uint256) {
    return getTwapPrice(USDC_WETH_POOL, WETH, USDC_WETH_POOL_TOKEN0, amount, interval);
  }

  // getHestiaTwapUsdcPrice
  function getHestiaTwapUsdcPrice(uint256 amount, uint32 interval) public view returns (uint256) {
    return getTwapPrice(HESTIA_USDC_POOL, HESTIA, HESTIA_USDC_POOL_TOKEN0, amount, interval);
  }

  // getCircleTwapUsdcPrice
  function getCircleTwapUsdcPrice(uint256 amount, uint32 interval) public view returns (uint256) {
    uint256 wethAmount = getTwapPrice(CIRCLE_WETH_POOL, CIRCLE, CIRCLE_WETH_POOL_TOKEN0, amount, interval);
    uint256 wethPriceInUsdc = getWethTwapUsdcPrice(1e18, interval);
    return (wethAmount * wethPriceInUsdc) / 1e18;
  }

  // getHestiaCircleTwapUsdcPrice
  function getHestiaCircleTwapUsdcPrice(uint256 hestiaAmount, uint256 circleAmount, uint32 interval) public view returns (uint256) {
    return getHestiaTwapUsdcPrice(hestiaAmount, interval) + getCircleTwapUsdcPrice(circleAmount, interval);
  }

  // getRageTwapUsdcPrice
  function getRageTwapUsdcPrice(uint256 amount, uint32 interval) public view returns (uint256) {
    return getTwapPrice(RAGE_USDC_POOL, RAGE, RAGE_USDC_POOL_TOKEN0, amount, interval);
  }

  // getPrices
  function getPrices(uint32 interval) external view returns (UrmStructs.OraclePrices memory) {
    return UrmStructs.OraclePrices({
      urmUsdcPrice: getUrmTwapUsdcPrice(1e18, interval),
      wethTwapUsdcPrice: getWethTwapUsdcPrice(1e18, interval),
      hestiaTwapUsdcPrice: getHestiaTwapUsdcPrice(1e18, interval),
      circleTwapUsdcPrice: getCircleTwapUsdcPrice(1e18, interval),
      rageTwapUsdcPrice: getRageTwapUsdcPrice(1e18, interval)
    });
  }

  // getTwapPrice
  function getTwapPrice(IUniswapV3Pool pool, address tokenIn, address poolToken0, uint256 amount, uint32 interval) internal view returns (uint256) {
    require(interval >= MIN_TWAP_INTERVAL, "intervalTooSmall");
    require(interval <= MAX_TWAP_INTERVAL, "intervalTooLarge");

    address tokenOut = tokenIn == poolToken0 ? pool.token1() : poolToken0;

    (int24 arithmeticMeanTick, ) = OracleLibrary.consult(address(pool), interval);

    require(amount <= type(uint128).max, "amountTooLarge");
    uint256 quoteAmount = OracleLibrary.getQuoteAtTick(
      arithmeticMeanTick,
      uint128(amount),
      tokenIn,
      tokenOut
    );
    require(quoteAmount > 0, "invalidQuote");

    return quoteAmount;
  }
}
