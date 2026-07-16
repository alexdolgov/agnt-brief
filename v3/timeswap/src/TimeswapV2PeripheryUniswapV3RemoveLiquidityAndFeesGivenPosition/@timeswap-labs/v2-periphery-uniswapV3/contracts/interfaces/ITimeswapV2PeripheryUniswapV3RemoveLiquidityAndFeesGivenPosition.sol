// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {IUniswapV3SwapCallback} from "@uniswap/v3-core/contracts/interfaces/callback/IUniswapV3SwapCallback.sol";

import {ITimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition} from "@timeswap-labs/v2-periphery/contracts/interfaces/ITimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition.sol";
import {FeesDelta} from "@timeswap-labs/v2-periphery/contracts/structs/Param.sol";

import {IMulticall} from "./IMulticall.sol";

import {TimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPositionParam} from "../structs/Param.sol";

import {IUniswapImmutableState} from "./IUniswapImmutableState.sol";

/// @title An interface for TS-V2 Periphery UniswapV3 RemoveLiquidityAndFees.
interface ITimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPosition is
  ITimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition,
  IUniswapImmutableState,
  IUniswapV3SwapCallback,
  IMulticall
{
  event RemoveLiquidityGivenPosition(
    address indexed token0,
    address indexed token1,
    uint256 strike,
    uint256 indexed maturity,
    uint24 uniswapV3Fee,
    address from,
    address to,
    bool isToken0,
    uint256 tokenAmount,
    uint256 liquidityAmount,
    FeesDelta feesDelta
  );

  error MinTokenReached(uint256 tokenAmount, uint256 minTokenAmount);

  error MinSqrtInterestRateReached(uint160 sqrtInterestRate, uint160 minSqrtInterestRate);

  error MaxSqrtInterestRateReached(uint160 sqrtInterestRate, uint160 maxSqrtInterestRate);

  /// @dev The remove liquidity function.
  /// @param param Remove liquidity param.
  /// @return tokenAmount
  /// @return feesDelta
  function removeLiquidityAndFeesGivenPosition(
    TimeswapV2PeripheryUniswapV3RemoveLiquidityAndFeesGivenPositionParam calldata param
  ) external returns (uint256 tokenAmount, FeesDelta memory feesDelta);
}
