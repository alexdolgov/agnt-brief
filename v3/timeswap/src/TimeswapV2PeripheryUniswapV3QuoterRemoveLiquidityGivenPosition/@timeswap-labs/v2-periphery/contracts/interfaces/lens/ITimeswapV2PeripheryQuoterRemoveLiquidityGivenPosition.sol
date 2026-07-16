// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {IERC1155Receiver} from "@openzeppelin/contracts/token/ERC1155/IERC1155Receiver.sol";

import {ITimeswapV2PoolBurnCallback, ITimeswapV2PoolBurn2Callback} from "@timeswap-labs/v2-pool/contracts/interfaces/callbacks/ITimeswapV2PoolBurnCallback.sol";

import {ITimeswapV2TokenMintCallback} from "@timeswap-labs/v2-token/contracts/interfaces/callbacks/ITimeswapV2TokenMintCallback.sol";

import {ITimeswapV2LiquidityTokenBurnCallback} from "@timeswap-labs/v2-token/contracts/interfaces/callbacks/ITimeswapV2LiquidityTokenBurnCallback.sol";

/// @title An interface for TS-V2 Periphery Remove Liquidity
interface ITimeswapV2PeripheryQuoterRemoveLiquidityGivenPosition is
  ITimeswapV2PoolBurnCallback,
  ITimeswapV2PoolBurn2Callback,
  ITimeswapV2TokenMintCallback,
  ITimeswapV2LiquidityTokenBurnCallback,
  IERC1155Receiver
{
  struct CallbackInfo {
    uint160 timeswapV2LiquidityAfter;
    uint256 token0Amount;
    uint256 token1Amount;
    uint256 excessLong0Amount;
    uint256 excessLong1Amount;
    uint256 excessShortAmount;
  }

  error PassLiquidityTokenBurnCallbackInfo(CallbackInfo callbackInfo, bytes data);

  error PassPoolBurnCallbackInfo(CallbackInfo callbackInfo, bytes data);

  /// @dev Returns the option factory address.
  /// @return optionFactory The option factory address.
  function optionFactory() external returns (address);

  /// @dev Returns the pool factory address.
  /// @return poolFactory The pool factory address.
  function poolFactory() external returns (address);

  /// @dev Return the tokens address
  function tokens() external returns (address);

  /// @dev Returns the liquidity tokens address.
  /// @return liquidityTokens The liquidity tokens address.
  function liquidityTokens() external returns (address);
}
