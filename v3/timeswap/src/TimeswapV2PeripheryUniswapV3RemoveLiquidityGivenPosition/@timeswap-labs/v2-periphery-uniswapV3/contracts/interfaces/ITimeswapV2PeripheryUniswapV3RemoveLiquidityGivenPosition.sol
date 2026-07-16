// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {IUniswapV3SwapCallback} from "@uniswap/v3-core/contracts/interfaces/callback/IUniswapV3SwapCallback.sol";

import {ITimeswapV2PeripheryRemoveLiquidityGivenPosition} from "@timeswap-labs/v2-periphery/contracts/interfaces/ITimeswapV2PeripheryRemoveLiquidityGivenPosition.sol";

import {IMulticall} from "./IMulticall.sol";

import {TimeswapV2PeripheryUniswapV3RemoveLiquidityGivenPositionParam} from "../structs/Param.sol";

import {IUniswapImmutableState} from "./IUniswapImmutableState.sol";

/// @title An interface for TS-V2 Periphery UniswapV3 RemoveLiquidity.
interface ITimeswapV2PeripheryUniswapV3RemoveLiquidityGivenPosition is
  ITimeswapV2PeripheryRemoveLiquidityGivenPosition,
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
    uint256 excessLong0Amount,
    uint256 excessLong1Amount,
    uint256 excessShortAmount
  );

  error MinTokenReached(uint256 tokenAmount, uint256 minTokenAmount);

  error MinExcessLong0Reached(uint256 excessLong0Amount, uint256 minExcessLong0Amount);

  error MinExcessLong1Reached(uint256 excessLong1Amount, uint256 minExcessLong1Amount);

  error MinExcessShortReached(uint256 excessShortAmount, uint256 minExcessShortAmount);

  /// @dev The remove liquidity function.
  /// @param param Remove liquidity param.
  /// @return tokenAmount
  /// @return excessLong0Amount
  /// @return excessLong1Amount
  /// @return excessShortAmount
  function removeLiquidityGivenPosition(
    TimeswapV2PeripheryUniswapV3RemoveLiquidityGivenPositionParam calldata param
  )
    external
    returns (uint256 tokenAmount, uint256 excessLong0Amount, uint256 excessLong1Amount, uint256 excessShortAmount);
}
