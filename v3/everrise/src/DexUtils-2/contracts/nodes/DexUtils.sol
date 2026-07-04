// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/utils/math/SafeMath.sol';
import '@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol';
import '@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol';
import '@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol';

interface IERC20Decimals is IERC20 {
  function decimals() external view returns (uint8);
}

/**
 * DEX Utilities
 */
contract DexUtils {
  using SafeMath for uint256;

  // PancakeSwap: 0x10ED43C718714eb63d5aA57B78B54704E256024E
  // Uniswap V2: 0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D
  IUniswapV2Router02 uniswapV2Router;
  IUniswapV2Factory uniswapV2Factory;

  constructor(address dexRouter) {
    uniswapV2Router = IUniswapV2Router02(dexRouter);
    uniswapV2Factory = IUniswapV2Factory(uniswapV2Router.factory());
  }

  // returns main stable pair price adjusted to 18 decimals
  // NOTE: assumes the primary DEX pair for main token is wrapped native
  function getMainPriceViaWrappedNativePair(
    address mainToken,
    address wrappedNative,
    address stableToken
  ) external view returns (uint256) {
    (
      uint256 mnPriceAdjusted,
      address mnToken0,
      address mnToken1
    ) = _getTokenPrice(mainToken, wrappedNative);
    (
      uint256 nsPriceAdjusted,
      address nsToken0,
      address nsToken1
    ) = _getTokenPrice(wrappedNative, stableToken);

    if (mnToken0 == nsToken0 || mnToken1 == nsToken1) {
      return nsPriceAdjusted.mul(10**18).div(mnPriceAdjusted);
    }
    return nsPriceAdjusted.mul(10**18).mul(mnPriceAdjusted);
  }

  function getMainPriceViaStablePair(address mainToken, address stableToken)
    external
    view
    returns (uint256)
  {
    (uint256 priceAdjusted, address t0, address t1) = _getTokenPrice(
      mainToken,
      stableToken
    );
    return t0 == mainToken ? priceAdjusted : uint256(10**36).div(priceAdjusted);
  }

  // returns uniswap pair price moved to 18 decimals
  function _getTokenPrice(address _t0, address _t1)
    private
    view
    returns (
      uint256,
      address,
      address
    )
  {
    IUniswapV2Pair dexPair = IUniswapV2Pair(uniswapV2Factory.getPair(_t0, _t1));
    (uint112 res0, uint112 res1, ) = dexPair.getReserves();
    address t0 = dexPair.token0();
    uint8 t0Dec = IERC20Decimals(t0).decimals();
    address t1 = dexPair.token1();
    uint8 t1Dec = IERC20Decimals(t1).decimals();

    return (
      uint256(res1).mul(10**18).mul(10**t0Dec).div(uint256(res0)).div(
        10**t1Dec
      ),
      t0,
      t1
    );
  }
}
