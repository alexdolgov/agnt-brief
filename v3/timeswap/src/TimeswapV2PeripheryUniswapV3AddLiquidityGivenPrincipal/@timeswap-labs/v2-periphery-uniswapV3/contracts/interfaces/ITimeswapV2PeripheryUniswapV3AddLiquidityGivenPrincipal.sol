// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {IUniswapV3SwapCallback} from "@uniswap/v3-core/contracts/interfaces/callback/IUniswapV3SwapCallback.sol";

import {ITimeswapV2PeripheryAddLiquidityGivenPrincipal} from "@timeswap-labs/v2-periphery/contracts/interfaces/ITimeswapV2PeripheryAddLiquidityGivenPrincipal.sol";

import {TimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipalParam} from "../structs/Param.sol";

import {INativePayments} from "./INativePayments.sol";
import {IMulticall} from "./IMulticall.sol";
import {IUniswapImmutableState} from "./IUniswapImmutableState.sol";

/// @title An interface for TS-V2 Periphery UniswapV3 Add Liquidity.
interface ITimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipal is
  ITimeswapV2PeripheryAddLiquidityGivenPrincipal,
  IUniswapImmutableState,
  IUniswapV3SwapCallback,
  INativePayments,
  IMulticall
{
  event AddLiquidityGivenPrincipal(
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

  error MinLiquidityReached(uint160 liquidityAmount, uint160 minLiquidityAmount);

  error MinExcessLong0Reached(uint256 excessLong0Amount, uint256 minExcessLong0Amount);

  error MinExcessLong1Reached(uint256 excessLong1Amount, uint256 minExcessLong1Amount);

  error MinExcessShortReached(uint256 excessShortAmount, uint256 minExcessShortAmount);

  /// @dev Initializes the contract.
  /// @dev Calls the initialize in the pool.
  function initialize(address token0, address token1, uint256 strike, uint256 maturity, uint160 rate) external;

  /// @dev The add liquidity function.
  /// @param param Add liquidity param.
  /// @return liquidityAmount
  /// @return excessLong0Amount
  /// @return excessLong1Amount
  /// @return excessShortAmount
  function addLiquidityGivenPrincipal(
    TimeswapV2PeripheryUniswapV3AddLiquidityGivenPrincipalParam calldata param
  )
    external
    payable
    returns (uint160 liquidityAmount, uint256 excessLong0Amount, uint256 excessLong1Amount, uint256 excessShortAmount);
}
