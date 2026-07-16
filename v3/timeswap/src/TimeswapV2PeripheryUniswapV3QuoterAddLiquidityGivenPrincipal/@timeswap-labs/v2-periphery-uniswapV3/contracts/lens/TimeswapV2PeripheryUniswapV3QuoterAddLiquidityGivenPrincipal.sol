// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {Math} from "@timeswap-labs/v2-library/contracts/Math.sol";

import {PoolFactoryLibrary} from "@timeswap-labs/v2-pool/contracts/libraries/PoolFactory.sol";

import {ITimeswapV2Pool} from "@timeswap-labs/v2-pool/contracts/interfaces/ITimeswapV2Pool.sol";

import {TimeswapV2PeripheryAddLiquidityGivenPrincipalParam} from "@timeswap-labs/v2-periphery/contracts/structs/Param.sol";
import {TimeswapV2PeripheryAddLiquidityGivenPrincipalInternalParam} from "@timeswap-labs/v2-periphery/contracts/structs/InternalParam.sol";

import {TimeswapV2PeripheryAddLiquidityGivenPrincipal} from "@timeswap-labs/v2-periphery/contracts/TimeswapV2PeripheryAddLiquidityGivenPrincipal.sol";

import {TimeswapV2PeripheryQuoterAddLiquidityGivenPrincipal} from "@timeswap-labs/v2-periphery/contracts/lens/TimeswapV2PeripheryQuoterAddLiquidityGivenPrincipal.sol";

import {ITimeswapV2PeripheryUniswapV3QuoterAddLiquidityGivenPrincipal} from "../interfaces/lens/ITimeswapV2PeripheryUniswapV3QuoterAddLiquidityGivenPrincipal.sol";

import {UniswapV3FactoryLibrary} from "../libraries/UniswapV3Factory.sol";

import {UniswapV3PoolQuoterLibrary} from "../libraries/lens/UniswapV3PoolQuoter.sol";
import {Verify} from "../libraries/Verify.sol";

import {TimeswapV2PeripheryUniswapV3QuoterAddLiquidityGivenPrincipalParam} from "../structs/lens/QuoterParam.sol";
import {UniswapV3SwapParam} from "../structs/SwapParam.sol";

import {UniswapImmutableState} from "../base/UniswapV3SwapCallback.sol";
import {UniswapV3QuoterCallbackWithNative} from "../base/lens/UniswapV3SwapQuoterCallback.sol";
import {Multicall} from "../base/Multicall.sol";

contract TimeswapV2PeripheryUniswapV3QuoterAddLiquidityGivenPrincipal is
  ITimeswapV2PeripheryUniswapV3QuoterAddLiquidityGivenPrincipal,
  TimeswapV2PeripheryQuoterAddLiquidityGivenPrincipal,
  UniswapV3QuoterCallbackWithNative,
  Multicall
{
  using UniswapV3PoolQuoterLibrary for address;
  using Math for uint256;

  constructor(
    address chosenOptionFactory,
    address chosenPoolFactory,
    address chosenTokens,
    address chosenLiquidityTokens,
    address chosenUniswapV3Factory
  )
    TimeswapV2PeripheryQuoterAddLiquidityGivenPrincipal(
      chosenOptionFactory,
      chosenPoolFactory,
      chosenTokens,
      chosenLiquidityTokens
    )
    UniswapImmutableState(chosenUniswapV3Factory)
  {}

  struct Cache {
    uint256 tokenAmountIn;
    uint256 tokenAmountOut;
    uint256 token0Amount;
    uint256 token1Amount;
  }

  ///  @inheritdoc ITimeswapV2PeripheryUniswapV3QuoterAddLiquidityGivenPrincipal
  function initialize(
    address token0,
    address token1,
    uint256 strike,
    uint256 maturity,
    uint160 rate
  ) external override {
    (, address poolPair) = PoolFactoryLibrary.getWithCheck(optionFactory, poolFactory, token0, token1);

    ITimeswapV2Pool(poolPair).initialize(strike, maturity, rate);
  }

  function addLiquidityGivenPrincipal(
    TimeswapV2PeripheryUniswapV3QuoterAddLiquidityGivenPrincipalParam calldata param,
    uint96 durationForward
  )
    external
    override
    returns (
      uint160 liquidityAmount,
      uint256 excessLong0Amount,
      uint256 excessLong1Amount,
      uint256 excessShortAmount,
      uint160 timeswapV2LiquidityAfter,
      uint160 uniswapV3SqrtPriceAfter
    )
  {
    address pool = UniswapV3FactoryLibrary.getWithCheck(
      uniswapV3Factory,
      param.token0,
      param.token1,
      param.uniswapV3Fee
    );

    bytes memory data = abi.encode(msg.sender, param.token0, param.token1, param.uniswapV3Fee);
    data = abi.encode(true, data);

    Cache memory cache;
    (cache.tokenAmountIn, cache.tokenAmountOut, uniswapV3SqrtPriceAfter) = pool.quoteSwap(
      UniswapV3SwapParam({
        recipient: address(this),
        zeroForOne: param.isToken0,
        exactInput: true,
        amount: param.tokenAmount,
        strikeLimit: param.strike,
        data: data
      })
    );

    data = abi.encode(msg.sender, param.isToken0);

    cache.token0Amount = param.isToken0 ? param.tokenAmount.unsafeSub(cache.tokenAmountIn) : cache.tokenAmountOut;
    cache.token1Amount = param.isToken0 ? cache.tokenAmountOut : param.tokenAmount.unsafeSub(cache.tokenAmountIn);

    (
      liquidityAmount,
      excessLong0Amount,
      excessLong1Amount,
      excessShortAmount,
      ,
      timeswapV2LiquidityAfter
    ) = addLiquidityGivenPrincipal(
      TimeswapV2PeripheryAddLiquidityGivenPrincipalParam({
        token0: param.token0,
        token1: param.token1,
        strike: param.strike,
        maturity: param.maturity,
        liquidityTo: param.liquidityTo,
        excessLong0To: param.excessLong0To,
        excessLong1To: param.excessLong1To,
        excessShortTo: param.excessShortTo,
        token0Amount: cache.token0Amount,
        token1Amount: cache.token1Amount,
        preferLong0Excess: param.preferLong0Excess,
        data: data
      }),
      durationForward
    );
  }

  function timeswapV2PeripheryAddLiquidityGivenPrincipalInternal(
    TimeswapV2PeripheryAddLiquidityGivenPrincipalInternalParam memory param
  ) internal override returns (bytes memory data) {}
}
