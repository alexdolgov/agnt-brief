// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {IUniswapV3SwapCallback} from "@uniswap/v3-core/contracts/interfaces/callback/IUniswapV3SwapCallback.sol";

import {ITimeswapV2PeripheryQuoterCollectTransactionFees} from "@timeswap-labs/v2-periphery/contracts/interfaces/lens/ITimeswapV2PeripheryQuoterCollectTransactionFees.sol";

import {IMulticall} from "../IMulticall.sol";

import {TimeswapV2PeripheryUniswapV3QuoterCollectTransactionFeesParam} from "../../structs/lens/QuoterParam.sol";

import {IUniswapImmutableState} from "../IUniswapImmutableState.sol";

/// @title An interface for TS-V2 Periphery UniswapV3 Collect Transaction Fees.
interface ITimeswapV2PeripheryUniswapV3QuoterCollectTransactionFees is
  ITimeswapV2PeripheryQuoterCollectTransactionFees,
  IUniswapImmutableState,
  IUniswapV3SwapCallback,
  IMulticall
{
  /// @dev The collect transaction fees function.
  /// @param param Collect transaction fees param.
  /// @return tokenAmount
  /// @return excessLong0Amount
  /// @return excessLong1Amount
  /// @return excessShortAmount
  function collectTransactionFees(
    TimeswapV2PeripheryUniswapV3QuoterCollectTransactionFeesParam calldata param
  )
    external
    returns (
      uint256 tokenAmount,
      uint256 excessLong0Amount,
      uint256 excessLong1Amount,
      uint256 excessShortAmount,
      uint160 uniswapV3SqrtPriceAfter
    );
}
