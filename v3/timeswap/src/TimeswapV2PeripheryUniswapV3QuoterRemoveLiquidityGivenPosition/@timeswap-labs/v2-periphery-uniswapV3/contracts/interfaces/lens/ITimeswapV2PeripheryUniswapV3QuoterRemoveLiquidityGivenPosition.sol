// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {IUniswapV3SwapCallback} from "@uniswap/v3-core/contracts/interfaces/callback/IUniswapV3SwapCallback.sol";

import {ITimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition} from "@timeswap-labs/v2-periphery/contracts/interfaces/lens/ITimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition.sol";

import {TimeswapV2PeripheryUniswapV3QuoterRemoveLiquidityGivenPositionParam} from "../../structs/lens/QuoterParam.sol";

import {IMulticall} from "../IMulticall.sol";
import {IUniswapImmutableState} from "../IUniswapImmutableState.sol";

/// @title An interface for TS-V2 Periphery UniswapV3 RemoveLiquidity.
interface ITimeswapV2PeripheryUniswapV3QuoterRemoveLiquidityGivenPosition is
  ITimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition,
  IUniswapImmutableState,
  IUniswapV3SwapCallback,
  IMulticall
{
  /// @dev The remove liquidity function.
  /// @param param Remove liquidity param.
  /// @return tokenAmount
  /// @return excessLong0Amount
  /// @return excessLong1Amount
  /// @return excessShortAmount
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
    );
}
