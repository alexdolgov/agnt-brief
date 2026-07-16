// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {IUniswapV3SwapCallback} from "@uniswap/v3-core/contracts/interfaces/callback/IUniswapV3SwapCallback.sol";

import {ITimeswapV2PeripheryQuoterBorrowGivenPrincipal} from "@timeswap-labs/v2-periphery/contracts/interfaces/lens/ITimeswapV2PeripheryQuoterBorrowGivenPrincipal.sol";

import {TimeswapV2PeripheryUniswapV3QuoterBorrowGivenPrincipalParam} from "../../structs/lens/QuoterParam.sol";

import {IMulticall} from "../IMulticall.sol";
import {IUniswapImmutableState} from "../IUniswapImmutableState.sol";

/// @title An interface for TS-V2 Periphery UniswapV3 Borrow Given Pricipal.
interface ITimeswapV2PeripheryUniswapV3QuoterBorrowGivenPrincipal is
  ITimeswapV2PeripheryQuoterBorrowGivenPrincipal,
  IUniswapImmutableState,
  IUniswapV3SwapCallback,
  IMulticall
{
  /// @dev The borrow given principal function.
  /// @param param Borrow given principal param.
  /// @return positionAmount
  function borrowGivenPrincipal(
    TimeswapV2PeripheryUniswapV3QuoterBorrowGivenPrincipalParam calldata param,
    uint96 durationForward
  ) external returns (uint256 positionAmount, uint160 timeswapV2SqrtInterestRateAfter, uint160 uniswapV3SqrtPriceAfter);
}
