// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IAdvancedTransactionCaller} from "src/interfaces/IAdvancedTransactionCaller.sol";
import {AdvancedTransactionExecutor} from "./AdvancedTransactionExecutor.sol";

abstract contract SwapOrderExecutor is AdvancedTransactionExecutor {
    using SafeERC20 for IERC20;

    struct AdditionalData {
        // The token to sell
        IERC20 tokenIn;
        // The amount to sell
        uint256 amountIn;
        // The token to buy
        IERC20 tokenOut;
        // The minimal accepted buy amount
        uint256 amountOutMin;
    }

    event SwapOrderExecuted(IERC20 tokenIn, uint256 amountIn, IERC20 tokenOut, uint256 amountOut);

    error InvalidToken();
    error InvalidAmount();
    error UnexpectedAmountOut(uint256 min, uint256 actual);

    constructor(address owner_) AdvancedTransactionExecutor(owner_) {}

    /*//////////////////////////////////////////////////////////////////////////
                                     MODULE LOGIC
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc AdvancedTransactionExecutor
    function _validateAdditionalData(bytes memory additionalData_) internal pure override {
        AdditionalData memory _data = abi.decode(additionalData_, (AdditionalData));

        if (address(_data.tokenIn) == address(0)) revert InvalidToken();
        if (_data.amountIn == 0) revert InvalidAmount();
        if (address(_data.tokenOut) == address(0)) revert InvalidToken();
        if (_data.amountOutMin == 0) revert InvalidAmount();
    }

    /// @inheritdoc AdvancedTransactionExecutor
    function _fill(Order memory order_, bytes memory callbackData_) internal override {
        AdditionalData memory _data = abi.decode(order_.additionalData, (AdditionalData));
        address _filler = msg.sender;

        // 1. collect fee
        uint256 _feeAmount = _collectFee(order_.smartAccount, _data.tokenIn, _data.amountIn);

        // 2. send `amountIn` to the caller
        _transferFromSmartAccount(order_.smartAccount, _data.tokenIn, _filler, _data.amountIn - _feeAmount);

        // 3. call callers's callback
        uint256 _before = _balance(_data.tokenOut, order_.smartAccount);
        IAdvancedTransactionCaller(_filler).callback(callbackData_);
        uint256 _amountOut = _balance(_data.tokenOut, order_.smartAccount) - _before;

        // 4. check `amountOut`. For limit orders, we need to check that the amount out is within the limits
        if (_amountOut < _data.amountOutMin) revert UnexpectedAmountOut(_data.amountOutMin, _amountOut);

        emit SwapOrderExecuted(_data.tokenIn, _data.amountIn, _data.tokenOut, _amountOut);
    }
}
