// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {IUniswapV3SwapCallback} from "@uniswap/v3-core/contracts/interfaces/callback/IUniswapV3SwapCallback.sol";

import {ITimeswapV2PeripheryQuoterLendGivenPrincipal} from "@timeswap-labs/v2-periphery/contracts/interfaces/lens/ITimeswapV2PeripheryQuoterLendGivenPrincipal.sol";

import {TimeswapV2PeripheryUniswapV3QuoterLendGivenPrincipalParam} from "../../structs/lens/QuoterParam.sol";

import {IMulticall} from "../IMulticall.sol";
import {IUniswapImmutableState} from "../IUniswapImmutableState.sol";

interface ITimeswapV2PeripheryUniswapV3QuoterLendGivenPrincipal is
  ITimeswapV2PeripheryQuoterLendGivenPrincipal,
  IUniswapImmutableState,
  IUniswapV3SwapCallback,
  IMulticall
{
  function lendGivenPrincipal(
    TimeswapV2PeripheryUniswapV3QuoterLendGivenPrincipalParam calldata param,
    uint96 durationForward
  ) external returns (uint256 positionAmount, uint160 timeswapV2SqrtInterestRateAfter, uint160 uniswapV3SqrtPriceAfter);
}
