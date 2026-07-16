// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {Error} from "@timeswap-labs/v2-library/contracts/Error.sol";
import {Math} from "@timeswap-labs/v2-library/contracts/Math.sol";

import {PoolFactoryLibrary} from "@timeswap-labs/v2-pool/contracts/libraries/PoolFactory.sol";

import {ITimeswapV2Pool} from "@timeswap-labs/v2-pool/contracts/interfaces/ITimeswapV2Pool.sol";

import {TimeswapV2PeripheryAddLiquidityGivenPrincipalParam} from "@timeswap-labs/v2-periphery/contracts/structs/Param.sol";
import {TimeswapV2PeripheryAddLiquidityGivenPrincipalInternalParam} from "@timeswap-labs/v2-periphery/contracts/structs/InternalParam.sol";

import {TimeswapV2PeripheryAddLiquidityGivenPrincipal} from "@timeswap-labs/v2-periphery/contracts/TimeswapV2PeripheryAddLiquidityGivenPrincipal.sol";

import {ITimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipal} from "./interfaces/ITimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipal.sol";

import {UniswapV3FactoryLibrary} from "./libraries/UniswapV3Factory.sol";

import {UniswapV3PoolLibrary} from "./libraries/UniswapV3Pool.sol";

import {TimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipalParam} from "./structs/Param.sol";
import {UniswapV3SwapParam} from "./structs/SwapParam.sol";

import {NativeImmutableState} from "./base/Native.sol";
import {UniswapImmutableState, UniswapV3CallbackWithNative} from "./base/UniswapV3SwapCallback.sol";
import {Multicall} from "./base/Multicall.sol";

/// @title Capable of intializing a Timeswap V2 pool and adding liquidity
/// @author Timeswap Labs
contract TimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipal is
  ITimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipal,
  TimeswapV2PeripheryAddLiquidityGivenPrincipal,
  NativeImmutableState,
  UniswapV3CallbackWithNative,
  Multicall
{
  using UniswapV3PoolLibrary for address;
  using Math for uint256;
  using SafeERC20 for IERC20;

  constructor(
    address chosenOptionFactory,
    address chosenPoolFactory,
    address chosenTokens,
    address chosenLiquidityTokens,
    address chosenUniswapV3Factory,
    address chosenNative
  )
    TimeswapV2PeripheryAddLiquidityGivenPrincipal(
      chosenOptionFactory,
      chosenPoolFactory,
      chosenTokens,
      chosenLiquidityTokens
    )
    NativeImmutableState(chosenNative)
    UniswapImmutableState(chosenUniswapV3Factory)
  {}

  ///  @inheritdoc ITimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipal
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

  ///  @inheritdoc ITimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipal
  function addLiquidityGivenPrincipal(
    TimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipalParam calldata param
  )
    external
    payable
    override
    returns (uint160 liquidityAmount, uint256 excessLong0Amount, uint256 excessLong1Amount, uint256 excessShortAmount)
  {
    if (param.deadline < block.timestamp) Error.deadlineReached(param.deadline);

    {
      address pool = UniswapV3FactoryLibrary.getWithCheck(
        uniswapV3Factory,
        param.token0,
        param.token1,
        param.uniswapV3Fee
      );

      bytes memory data = abi.encode(msg.sender, param.token0, param.token1, param.uniswapV3Fee);
      data = abi.encode(true, data);

      (uint256 tokenAmountIn, uint256 tokenAmountOut) = pool.swap(
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

      (liquidityAmount, excessLong0Amount, excessLong1Amount, excessShortAmount, ) = addLiquidityGivenPrincipal(
        TimeswapV2PeripheryAddLiquidityGivenPrincipalParam({
          token0: param.token0,
          token1: param.token1,
          strike: param.strike,
          maturity: param.maturity,
          liquidityTo: param.liquidityTo,
          excessLong0To: param.excessLong0To,
          excessLong1To: param.excessLong1To,
          excessShortTo: param.excessShortTo,
          token0Amount: param.isToken0 ? param.tokenAmount.unsafeSub(tokenAmountIn) : tokenAmountOut,
          token1Amount: param.isToken0 ? tokenAmountOut : param.tokenAmount.unsafeSub(tokenAmountIn),
          preferLong0Excess: param.preferLong0Excess,
          data: data
        })
      );
    }

    if (liquidityAmount < param.minLiquidityAmount)
      revert MinLiquidityReached(liquidityAmount, param.minLiquidityAmount);

    if (excessShortAmount < param.minExcessShortAmount)
      revert MinExcessShortReached(excessShortAmount, param.minExcessShortAmount);

    if (excessLong0Amount < param.minExcessLong0Amount)
      revert MinExcessLong0Reached(excessLong0Amount, param.minExcessLong0Amount);

    if (excessLong1Amount < param.minExcessLong1Amount)
      revert MinExcessLong1Reached(excessLong1Amount, param.minExcessLong1Amount);

    emit AddLiquidityGivenPrincipal(
      param.token0,
      param.token1,
      param.strike,
      param.maturity,
      param.uniswapV3Fee,
      msg.sender,
      param.liquidityTo,
      param.isToken0,
      param.tokenAmount,
      liquidityAmount,
      excessLong0Amount,
      excessLong1Amount,
      excessShortAmount
    );
  }

  function timeswapV2PeripheryAddLiquidityGivenPrincipalInternal(
    TimeswapV2PeripheryAddLiquidityGivenPrincipalInternalParam memory param
  ) internal override returns (bytes memory data) {
    (address msgSender, bool isToken0) = abi.decode(param.data, (address, bool));

    if ((isToken0 ? param.token0Amount : param.token1Amount) != 0)
      IERC20(isToken0 ? param.token0 : param.token1).safeTransferFrom(
        msgSender,
        param.optionPair,
        isToken0 ? param.token0Amount : param.token1Amount
      );

    if ((isToken0 ? param.token1Amount : param.token0Amount) != 0)
      IERC20(isToken0 ? param.token1 : param.token0).safeTransfer(
        param.optionPair,
        isToken0 ? param.token1Amount : param.token0Amount
      );

    data = bytes("");
  }
}
