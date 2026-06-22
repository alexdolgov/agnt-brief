// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "../interfaces/IUniswapV3Pool.sol";
import "../interfaces/IUniswapV3Factory.sol";
import "../lib/TickMath.sol";
import { sqrtPriceX96ToUint } from "../lib/RangeOrderUtils.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract SavingsYield is Ownable {
  event SetSavingsYieldParams(uint32 twapDuration, uint16 priceBounds);
  
  ///@notice AMM UnivwapV3 style factory
  address public uniswapFactory;
  
  /// @notice Quote token parameters
  address internal _quoteToken;
  /// @notice Twap duration used to calculate average price, deault to 1 day since yield is usually distributed daily
  uint32 internal twapDuration = 86400;
  /// @notice Price bounds X4 beyond which the staking yield is either 0 or 100% (X4), default: 2%
  uint16 internal priceBounds = 200;
  
  constructor(address quoteToken){
    _quoteToken = quoteToken;
  }
  
  /// @notice Set unisdwap factory
  /// @dev can set to address(0) to disable
  function setUniswapFactory(address _uniswapFactory) public onlyOwner {
    uniswapFactory = _uniswapFactory;
  }
  
  /// @notice Set Savings yield calculation parameters
  function setParameters(uint32 _twapDuration, uint16 _priceBounds) public onlyOwner {
    require(_priceBounds < 2000, "SY: Price bounds too high");
    // twap above 1h and below 15d
    require(_twapDuration >= 3600 && _twapDuration < 86400 * 15, "SY: Invalid Twap Duration");
    priceBounds = _priceBounds;
    twapDuration = _twapDuration;
    emit SetSavingsYieldParams(_twapDuration, _priceBounds);
  }

  
  /// @notice Fetch time-weighted average price in ticks from Uniswap v3 pool
  function getTwapPrice(address baseToken, uint8 baseDecimals, address quoteToken, uint8 quoteDecimals) 
    public view returns (uint twapPriceX8) 
  {
    if (uniswapFactory == address(0)) return 0;
    
    address uniswapPool = IUniswapV3Factory(uniswapFactory).getPool(baseToken, quoteToken, 500);
    if (uniswapPool != address(0)){
      bool synthIsToken0 = baseToken < quoteToken;
      uint8 token0Decimals = synthIsToken0 ? baseDecimals : quoteDecimals;
      
      // Get twap tick from https://github.com/Uniswap/v3-periphery/blob/main/contracts/libraries/OracleLibrary.sol
      uint32[] memory secondsAgo = new uint32[](2);
      secondsAgo[0] = twapDuration;
      // secondsAgo[1] = 0; // redundant
      (int56[] memory tickCumulatives, ) = IUniswapV3Pool(uniswapPool).observe(secondsAgo);
      int24 twapTick = int24((tickCumulatives[1] - tickCumulatives[0]) / int56(int32(twapDuration)));
      
      // convert tick to price (underlying/collateral token in collateral decimals)
      uint256 twapPrice = sqrtPriceX96ToUint(TickMath.getSqrtRatioAtTick(twapTick), token0Decimals);

      uint256 token1DecimalsExp = 10**(synthIsToken0 ? quoteDecimals : baseDecimals);
      if (synthIsToken0) twapPriceX8 = twapPrice * 10**8 / token1DecimalsExp;
      else twapPriceX8 = 10**8 * token1DecimalsExp / twapPrice;
    }
  }
  
  // Min(uint,uint)
  function min(uint a, uint b) internal pure returns (uint m) {
    m = a < b ? a : b;
  }
  
  
  /// @notice Calculate the savings yield based on the difference between token price and target price
  /// @dev if token price is below target, savings yield is above average
  function getSavingsYield(address token, int tokenPriceTarget) public view returns (uint savingsYieldX4) {
    savingsYieldX4 = 5000;
    uint twapPriceX8 = getTwapPrice(token, ERC20(token).decimals(), _quoteToken, ERC20(_quoteToken).decimals());
    if (twapPriceX8 > 0){
      int priceDistanceX4 = (tokenPriceTarget - int(twapPriceX8)) * 10_000 / int(tokenPriceTarget);
      priceDistanceX4 = priceDistanceX4 > 0 ? 
        int(min(uint(priceDistanceX4), uint(priceBounds)))
        : -int(min(uint(-priceDistanceX4), uint(priceBounds)));
      // priceDistance > 0 => need to incentivize price up => savings yield high
      savingsYieldX4 = 5000 * uint(uint16(int16(priceBounds) + int16(priceDistanceX4))) / priceBounds;
    }
  }
}