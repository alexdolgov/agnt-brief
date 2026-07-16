// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {IUniswapV3SwapCallback} from "@uniswap/v3-core/contracts/interfaces/callback/IUniswapV3SwapCallback.sol";

import {ITimeswapV2PeripheryQuoterCloseBorrowGivenPosition} from "@timeswap-labs/v2-periphery/contracts/interfaces/lens/ITimeswapV2PeripheryQuoterCloseBorrowGivenPosition.sol";

import {TimeswapV2PeripheryUniswapV3QuoterCloseBorrowGivenPositionParam} from "../../structs/lens/QuoterParam.sol";

import {IMulticall} from "../IMulticall.sol";

import {IUniswapImmutableState} from "../IUniswapImmutableState.sol";

/// @title An interface for TS-v2 Periphery UniswapV3 Close Borrow Given Position.
interface ITimeswapV2PeripheryUniswapV3QuoterCloseBorrowGivenPosition is
  ITimeswapV2PeripheryQuoterCloseBorrowGivenPosition,
  IUniswapImmutableState,
  IUniswapV3SwapCallback,
  IMulticall
{
  /// @dev The close borrow given position function.
  /// @param param Close borrow given position param.
  /// @return tokenAmount
  function closeBorrowGivenPosition(
    TimeswapV2PeripheryUniswapV3QuoterCloseBorrowGivenPositionParam calldata param,
    uint96 durationForward
  ) external returns (uint256 tokenAmount, uint160 timeswapV2SqrtInterestRateAfter, uint160 uniswapV3SqrtPriceAfter);
}
