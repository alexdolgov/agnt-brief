// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {Math} from "@timeswap-labs/v2-library/contracts/Math.sol";
import {Error} from "@timeswap-labs/v2-library/contracts/Error.sol";

import {ITimeswapV2LiquidityToken} from "@timeswap-labs/v2-token/contracts/interfaces/ITimeswapV2LiquidityToken.sol";

import {TimeswapV2LiquidityTokenPosition} from "@timeswap-labs/v2-token/contracts/structs/Position.sol";

import {TimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition} from "@timeswap-labs/v2-periphery/contracts/TimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition.sol";

import {PoolFactoryLibrary} from "@timeswap-labs/v2-pool/contracts/libraries/PoolFactory.sol";

import {ITimeswapV2Pool} from "@timeswap-labs/v2-pool/contracts/interfaces/ITimeswapV2Pool.sol";

import {UniswapV3PoolLibrary} from "./libraries/UniswapV3Pool.sol";

import {TimeswapV2PeripheryRemoveLiquidityAndFeesGivenPositionParam, FeesDelta} from "@timeswap-labs/v2-periphery/contracts/structs/Param.sol";
import {TimeswapV2PeripheryRemoveLiquidityAndFeesGivenPositionChoiceInternalParam} from "@timeswap-labs/v2-periphery/contracts/structs/InternalParam.sol";

import {ITimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPosition} from "./interfaces/ITimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPosition.sol";

import {TimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPositionParam} from "./structs/Param.sol";
import {UniswapV3CalculateForRemoveLiquidityParam} from "./structs/SwapParam.sol";

import {OnlyOperatorReceiver} from "./base/OnlyOperatorReceiver.sol";
import {NativeImmutableState, NativeWithdraws} from "./base/Native.sol";
import {UniswapImmutableState, UniswapV3Callback} from "./base/UniswapV3SwapCallback.sol";
import {SwapGetTotalToken, SwapCalculatorForRemoveLiquidity} from "./base/SwapCalculator.sol";
import {Multicall} from "./base/Multicall.sol";

/// @title Capable of removing liquidity from the Timeswap V2 protocol given a Timeswap V2 Position
/// @author Timeswap Labs
contract TimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPosition is
  ITimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPosition,
  TimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition,
  OnlyOperatorReceiver,
  NativeImmutableState,
  NativeWithdraws,
  UniswapV3Callback,
  SwapCalculatorForRemoveLiquidity,
  SwapGetTotalToken,
  Multicall
{
  using UniswapV3PoolLibrary for address;
  using Math for uint256;
  using SafeERC20 for IERC20;

  constructor(
    address chosenOptionFactory,
    address chosenPoolFactory,
    address chosenLiquidityTokens,
    address chosenUniswapV3Factory,
    address chosenNative
  )
    TimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition(
      chosenOptionFactory,
      chosenPoolFactory,
      chosenLiquidityTokens
    )
    NativeImmutableState(chosenNative)
    UniswapImmutableState(chosenUniswapV3Factory)
  {}

  /// @inheritdoc ITimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPosition
  function removeLiquidityAndFeesGivenPosition(
    TimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPositionParam calldata param
  ) external override returns (uint256 tokenAmount, FeesDelta memory feesDelta) {
    if (param.deadline < block.timestamp) Error.deadlineReached(param.deadline);

    {
      (, address poolPair) = PoolFactoryLibrary.getWithCheck(optionFactory, poolFactory, param.token0, param.token1);

      uint160 sqrtInterestRate = ITimeswapV2Pool(poolPair).sqrtInterestRate(param.strike, param.maturity);

      if (sqrtInterestRate < param.minSqrtInterestRate)
        revert MinSqrtInterestRateReached(sqrtInterestRate, param.minSqrtInterestRate);
      if (sqrtInterestRate > param.maxSqrtInterestRate)
        revert MaxSqrtInterestRateReached(sqrtInterestRate, param.maxSqrtInterestRate);

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
      (token0Amount, token1Amount, feesDelta, data) = removeLiquidityAndFeesGivenPosition(
        TimeswapV2PeripheryRemoveLiquidityAndFeesGivenPositionParam({
          token0: param.token0,
          token1: param.token1,
          strike: param.strike,
          maturity: param.maturity,
          token0To: param.isToken0 ? param.tokenTo : address(this),
          token1To: param.isToken0 ? address(this) : param.tokenTo,
          liquidityAmount: param.liquidityAmount,
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
      feesDelta
    );
  }

  function timeswapV2PeripheryRemoveLiquidityAndFeesGivenPositionChoiceInternal(
    TimeswapV2PeripheryRemoveLiquidityAndFeesGivenPositionChoiceInternalParam memory param
  )
    internal
    override
    returns (
      uint256 token0AmountFromPool,
      uint256 token1AmountFromPool,
      uint256 token0AmountWithdraw,
      uint256 token1AmountWithdraw,
      bytes memory data
    )
  {
    (uint24 uniswapV3Fee, bool isToken0) = abi.decode(param.data, (uint24, bool));

    bool removeStrikeLimit;
    (
      removeStrikeLimit,
      token0AmountFromPool,
      token1AmountFromPool,
      token0AmountWithdraw,
      token1AmountWithdraw
    ) = calculateSwapForRemoveLiquidity(
      UniswapV3CalculateForRemoveLiquidityParam({
        token0: param.token0,
        token1: param.token1,
        strike: param.strike,
        uniswapV3Fee: uniswapV3Fee,
        isToken0: isToken0,
        token0Balance: param.token0Balance + param.token0Fees,
        token1Balance: param.token1Balance + param.token1Fees,
        token0Fees: param.token0Fees,
        token1Fees: param.token1Fees,
        tokenAmountFromPool: param.tokenAmountFromPool,
        tokenAmountWithdraw: param.tokenAmountWithdraw
      })
    );

    data = abi.encode(removeStrikeLimit);
  }
}
