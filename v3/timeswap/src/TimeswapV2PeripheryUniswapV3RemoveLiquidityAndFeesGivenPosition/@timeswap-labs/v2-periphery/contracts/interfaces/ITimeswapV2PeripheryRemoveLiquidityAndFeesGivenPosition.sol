// SPDX-License-Identifier: MIT
pragma solidity =0.8.8;

import {IERC1155Receiver} from "@openzeppelin/contracts/token/ERC1155/IERC1155Receiver.sol";

import {ITimeswapV2OptionBurnCallback} from "@timeswap-labs/v2-option/contracts/interfaces/callbacks/ITimeswapV2OptionBurnCallback.sol";
import {ITimeswapV2PoolBurnCallback, ITimeswapV2PoolBurn2Callback} from "@timeswap-labs/v2-pool/contracts/interfaces/callbacks/ITimeswapV2PoolBurnCallback.sol";
import {ITimeswapV2PoolAddFeesCallback} from "@timeswap-labs/v2-pool/contracts/interfaces/callbacks/ITimeswapV2PoolAddFeesCallback.sol";
import {ITimeswapV2LiquidityTokenAddFeesCallback} from "@timeswap-labs/v2-token/contracts/interfaces/callbacks/ITimeswapV2LiquidityTokenAddFeesCallback.sol";

/// @title An interface for TS-V2 Periphery Remove Liquidity
interface ITimeswapV2PeripheryRemoveLiquidityAndFeesGivenPosition is
  ITimeswapV2OptionBurnCallback,
  ITimeswapV2PoolBurnCallback,
  ITimeswapV2PoolBurn2Callback,
  ITimeswapV2PoolAddFeesCallback,
  ITimeswapV2LiquidityTokenAddFeesCallback,
  IERC1155Receiver
{
  /// @dev Returns the option factory address.
  /// @return optionFactory The option factory address.
  function optionFactory() external returns (address);

  /// @dev Returns the pool factory address.
  /// @return poolFactory The pool factory address.
  function poolFactory() external returns (address);

  /// @dev Returns the liquidity tokens address.
  /// @return liquidityTokens The liquidity tokens address.
  function liquidityTokens() external returns (address);
}
