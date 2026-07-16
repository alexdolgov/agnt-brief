// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "lib/pendle-core-v2-public/contracts/interfaces/IPAllActionV3.sol";
import "lib/pendle-core-v2-public/contracts/interfaces/IPMarket.sol";

abstract contract StructGen {
  function _defaultApprox() internal pure returns (ApproxParams memory) {
    return ApproxParams(0, type(uint256).max, 0, 256, 1e14);
  }

  function _emptyLimit() internal pure returns (LimitOrderData memory) {
    LimitOrderData memory limitOrderData;
    return limitOrderData;
  }

  function _emptySwap() internal pure returns (SwapData memory) {
    SwapData memory swapData;
    return swapData;
  }

  /// @notice create a simple TokenInput struct without using any aggregators. For more info please
  /// refer to
  /// IPAllActionTypeV3.sol
  function _createTokenInputStruct(address tokenIn, uint256 netTokenIn)
    internal
    pure
    returns (TokenInput memory)
  {
    return TokenInput({
      tokenIn: tokenIn,
      netTokenIn: netTokenIn,
      tokenMintSy: tokenIn,
      pendleSwap: address(0),
      swapData: _emptySwap()
    });
  }

  /// @notice create a simple TokenOutput struct without using any aggregators. For more info please
  /// refer to
  /// IPAllActionTypeV3.sol
  function _createTokenOutputStruct(address tokenOut, uint256 minTokenOut)
    internal
    pure
    returns (TokenOutput memory)
  {
    return TokenOutput({
      tokenOut: tokenOut,
      minTokenOut: minTokenOut,
      tokenRedeemSy: tokenOut,
      pendleSwap: address(0),
      swapData: _emptySwap()
    });
  }
}
