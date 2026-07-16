// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {Math} from "@timeswap-labs/v2-library/contracts/Math.sol";

import {TimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition} from "@timeswap-labs/v2-periphery/contracts/lens/TimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition.sol";

import {UniswapV3FactoryLibrary} from "../libraries/UniswapV3Factory.sol";
import {UniswapV3PoolLibrary} from "../libraries/UniswapV3Pool.sol";

import {TimeswapV2PeripheryUniswapV3QuoterRemoveLiquidityGivenPositionParam} from "../structs/lens/QuoterParam.sol";

import {ITimeswapV2PeripheryUniswapV3QuoterRemoveLiquidityGivenPosition} from "../interfaces/lens/ITimeswapV2PeripheryUniswapV3QuoterRemoveLiquidityGivenPosition.sol";

import {TimeswapV2PeripheryRemoveLiquidityGivenPositionParam} from "@timeswap-labs/v2-periphery/contracts/structs/Param.sol";
import {UniswapV3CalculateSwapGivenBalanceLimitParam} from "../structs/SwapParam.sol";
import {TimeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternalParam} from "@timeswap-labs/v2-periphery/contracts/structs/InternalParam.sol";

import {OnlyOperatorReceiver} from "../base/OnlyOperatorReceiver.sol";
import {UniswapImmutableState} from "../base/UniswapV3SwapCallback.sol";
import {UniswapV3QuoterCallback} from "../base/lens/UniswapV3SwapQuoterCallback.sol";
import {SwapCalculatorGivenBalanceLimit} from "../base/SwapCalculator.sol";
import {SwapQuoterGetTotalToken} from "../base/lens/SwapCalculatorQuoter.sol";
import {Multicall} from "../base/Multicall.sol";

contract TimeswapV2PeripheryUniswapV3QuoterRemoveLiquidityGivenPosition is
  ITimeswapV2PeripheryUniswapV3QuoterRemoveLiquidityGivenPosition,
  TimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition,
  OnlyOperatorReceiver,
  UniswapV3QuoterCallback,
  SwapCalculatorGivenBalanceLimit,
  SwapQuoterGetTotalToken,
  Multicall
{
  using UniswapV3PoolLibrary for address;
  using Math for uint256;

  constructor(
    address chosenOptionFactory,
    address chosenPoolFactory,
    address chosenTokens,
    address chosenLiquidityTokens,
    address chosenUniswapV3Factory
  )
    TimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition(
      chosenOptionFactory,
      chosenPoolFactory,
      chosenTokens,
      chosenLiquidityTokens
    )
    UniswapImmutableState(chosenUniswapV3Factory)
  {}

  struct Cache {
    uint256 token0Amount;
    uint256 token1Amount;
  }

  function removeLiquidityGivenPosition(
    TimeswapV2PeripheryUniswapV3QuoterRemoveLiquidityGivenPositionParam calldata param,
    uint96 durationForward
  )
    external
    returns (
      uint256 tokenAmount,
      uint256 excessLong0Amount,
      uint256 excessLong1Amount,
      uint256 excessShortAmount,
      uint160 timeswapV2LiquidityAfter,
      uint160 uniswapV3SqrtPriceAfter
    )
  {
    bytes memory data = abi.encode(param.uniswapV3Fee, param.isToken0);

    Cache memory cache;
    (
      cache.token0Amount,
      cache.token1Amount,
      excessLong0Amount,
      excessLong1Amount,
      excessShortAmount,
      data,
      timeswapV2LiquidityAfter
    ) = removeLiquidityGivenPosition(
      TimeswapV2PeripheryRemoveLiquidityGivenPositionParam({
        token0: param.token0,
        token1: param.token1,
        strike: param.strike,
        maturity: param.maturity,
        token0To: param.isToken0 ? param.tokenTo : address(this),
        token1To: param.isToken0 ? address(this) : param.tokenTo,
        excessLong0To: param.excessLong0To,
        excessLong1To: param.excessLong1To,
        excessShortTo: param.excessShortTo,
        liquidityAmount: param.liquidityAmount,
        preferLong0Excess: param.preferLong0Excess,
        data: data
      }),
      durationForward
    );

    (tokenAmount, uniswapV3SqrtPriceAfter) = quoteSwapGetTotalToken(
      param.token0,
      param.token1,
      param.strike,
      param.uniswapV3Fee,
      param.tokenTo,
      param.isToken0,
      cache.token0Amount,
      cache.token1Amount,
      abi.decode(data, (bool))
    );
  }

  function timeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternal(
    TimeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternalParam memory param
  ) internal override returns (uint256 token0Amount, uint256 token1Amount, bytes memory data) {
    (uint24 uniswapV3Fee, bool isToken0) = abi.decode(param.data, (uint24, bool));

    bool removeStrikeLimit;
    (removeStrikeLimit, token0Amount, token1Amount) = calculateSwapGivenBalanceLimit(
      UniswapV3CalculateSwapGivenBalanceLimitParam({
        token0: param.token0,
        token1: param.token1,
        strike: param.strike,
        uniswapV3Fee: uniswapV3Fee,
        isToken0: isToken0,
        token0Balance: param.token0Balance,
        token1Balance: param.token1Balance,
        tokenAmount: param.tokenAmount
      })
    );

    data = abi.encode(removeStrikeLimit);
  }
}
