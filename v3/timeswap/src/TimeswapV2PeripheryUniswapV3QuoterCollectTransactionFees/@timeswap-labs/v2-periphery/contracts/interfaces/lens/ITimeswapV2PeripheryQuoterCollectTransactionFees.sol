// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.8;

import {ITimeswapV2OptionBurnCallback} from "@timeswap-labs/v2-option/contracts/interfaces/callbacks/ITimeswapV2OptionBurnCallback.sol";

/// @title An interface for TS-V2 Periphery Collect Transaction Fees
interface ITimeswapV2PeripheryQuoterCollectTransactionFees is ITimeswapV2OptionBurnCallback {
  error PassOptionBurnCallbackInfo(uint256 shortAmountBurnt, bytes data);

  /// @dev Returns the option factory address.
  /// @return optionFactory The option factory address.
  function optionFactory() external returns (address);

  /// @dev Returns the pool factory address.
  /// @return poolFactory The pool factory address.
  function poolFactory() external returns (address);

  /// @dev Return the tokens address
  function tokens() external returns (address);

  /// @dev Return the liquidity tokens address
  function liquidityTokens() external returns (address);
}
