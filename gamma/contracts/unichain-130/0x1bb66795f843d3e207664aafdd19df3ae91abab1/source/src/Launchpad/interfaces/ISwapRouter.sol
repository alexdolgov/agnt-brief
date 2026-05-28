// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {PoolKey} from "v4-core/types/PoolKey.sol";
import {BalanceDelta} from "v4-core/types/BalanceDelta.sol";

/// @title ISwapRouter
/// @notice Interface for Uniswap V4 Swap Router
/// @dev Router address: 0x00000000000044a361Ae3cAc094c9D1b14Eece97
interface ISwapRouter {
    /// @notice Swap exact input tokens for output tokens
    /// @param amountIn Exact amount of input tokens to swap
    /// @param amountOutMin Minimum amount of output tokens (slippage protection)
    /// @param zeroForOne Direction of swap (true = currency0 -> currency1, false = currency1 -> currency0)
    /// @param poolKey The pool key
    /// @param hookData Additional data for hooks
    /// @param receiver Address to receive output tokens
    /// @param deadline Transaction deadline
    /// @return balanceDelta The balance change from the swap
    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        bool zeroForOne,
        PoolKey calldata poolKey,
        bytes calldata hookData,
        address receiver,
        uint256 deadline
    ) external payable returns (BalanceDelta balanceDelta);
}
