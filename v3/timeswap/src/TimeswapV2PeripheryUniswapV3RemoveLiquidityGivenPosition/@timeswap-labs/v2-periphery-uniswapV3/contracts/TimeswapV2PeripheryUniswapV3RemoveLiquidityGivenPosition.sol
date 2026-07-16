// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {Error} from "@timeswap-labs/v2-library/contracts/Error.sol";

import {ITimeswapV2LiquidityToken} from "@timeswap-labs/v2-token/contracts/interfaces/ITimeswapV2LiquidityToken.sol";

import {TimeswapV2LiquidityTokenPosition} from "@timeswap-labs/v2-token/contracts/structs/Position.sol";

import {TimeswapV2PeripheryRemoveLiquidityGivenPosition} from "@timeswap-labs/v2-periphery/contracts/TimeswapV2PeripheryRemoveLiquidityGivenPosition.sol";

import {TimeswapV2PeripheryRemoveLiquidityGivenPositionParam} from "@timeswap-labs/v2-periphery/contracts/structs/Param.sol";
import {TimeswapV2PeripheryRemoveLiquidityGivenPositionChoiceInternalParam} from "@timeswap-labs/v2-periphery/contracts/structs/InternalParam.sol";

import {UniswapV3PoolLibrary} from "./libraries/UniswapV3Pool.sol";

import {TimeswapV2PeripheryUniswapV3RemoveLiquidityGivenPositionParam} from "./structs/Param.sol";
import {UniswapV3SwapParam, UniswapV3CalculateSwapGivenBalanceLimitParam} from "./structs/SwapParam.sol";
import {Math} from "@timeswap-labs/v2-library/contracts/Math.sol";

import {ITimeswapV2PeripheryUniswapV3RemoveLiquidityGivenPosition} from "./interfaces/ITimeswapV2PeripheryUniswapV3RemoveLiquidityGivenPosition.sol";

import {OnlyOperatorReceiver} from "./base/OnlyOperatorReceiver.sol";
import {NativeImmutableState, NativeWithdraws} from "./base/Native.sol";
import {UniswapImmutableState, UniswapV3Callback} from "./base/UniswapV3SwapCallback.sol";
import {SwapCalculatorGivenBalanceLimit, SwapGetTotalToken} from "./base/SwapCalculator.sol";
import {Multicall} from "./base/Multicall.sol";

/// @title Capable of removing liquidity from the Timeswap V2 protocol given a Timeswap V2 Position
/// @author Timeswap Labs
contract TimeswapV2PeripheryUniswapV3RemoveLiquidityGivenPosition is
  ITimeswapV2PeripheryUniswapV3RemoveLiquidityGivenPosition,
  TimeswapV2PeripheryRemoveLiquidityGivenPosition,
  OnlyOperatorReceiver,
  NativeImmutableState,
  NativeWithdraws,
  UniswapV3Callback,
  SwapCalculatorGivenBalanceLimit,
  SwapGetTotalToken,
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
    TimeswapV2PeripheryRemoveLiquidityGivenPosition(
      chosenOptionFactory,
      chosenPoolFactory,
      chosenTokens,
      chosenLiquidityTokens
    )
    NativeImmutableState(chosenNative)
    UniswapImmutableState(chosenUniswapV3Factory)
  {}

  /// @inheritdoc ITimeswapV2PeripheryUniswapV3RemoveLiquidityGivenPosition
  function removeLiquidityGivenPosition(
    TimeswapV2PeripheryUniswapV3RemoveLiquidityGivenPositionParam calldata param
  )
    external
    returns (uint256 tokenAmount, uint256 excessLong0Amount, uint256 excessLong1Amount, uint256 excessShortAmount)
  {
    if (param.deadline < block.timestamp) Error.deadlineReached(param.deadline);

    {
      ITimeswapV2LiquidityToken(liquidityTokens).transferTokenPositionFrom(
        msg.sender,
        address(this),
        TimeswapV2LiquidityTokenPosition({
          token0: param.token0,
          token1: param.token1,
          strike: param.strike,
          maturity: param.maturity
        }),
        param.liquidityAmount
      );

      bytes memory data = abi.encode(param.uniswapV3Fee, param.isToken0);

      uint256 token0Amount;
      uint256 token1Amount;
      (
        token0Amount,
        token1Amount,
        excessLong0Amount,
        excessLong1Amount,
        excessShortAmount,
        data
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
        })
      );

      tokenAmount = swapGetTotalToken(
        param.token0,
        param.token1,
        param.strike,
        param.uniswapV3Fee,
        param.tokenTo,
        param.isToken0,
        token0Amount,
        token1Amount,
        abi.decode(data, (bool))
      );
    }

    if (tokenAmount < param.minTokenAmount) revert MinTokenReached(tokenAmount, param.minTokenAmount);

    if (excessShortAmount < param.minExcessShortAmount)
      revert MinExcessShortReached(excessShortAmount, param.minExcessShortAmount);

    if (excessLong0Amount < param.minExcessLong0Amount)
      revert MinExcessLong0Reached(excessLong0Amount, param.minExcessLong0Amount);

    if (excessLong1Amount < param.minExcessLong1Amount)
      revert MinExcessLong1Reached(excessLong1Amount, param.minExcessLong1Amount);

    emit RemoveLiquidityGivenPosition(
      param.token0,
      param.token1,
      param.strike,
      param.maturity,
      param.uniswapV3Fee,
      msg.sender,
      param.tokenTo,
      param.isToken0,
      tokenAmount,
      param.liquidityAmount,
      excessLong0Amount,
      excessLong1Amount,
      excessShortAmount
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
