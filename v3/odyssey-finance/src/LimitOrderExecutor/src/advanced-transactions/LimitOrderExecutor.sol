// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IAdvancedTransactionCaller} from "../interfaces/IAdvancedTransactionCaller.sol";
import {AdvancedTransactionExecutor} from "./AdvancedTransactionExecutor.sol";

contract LimitOrderExecutor is AdvancedTransactionExecutor {
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

    event LimitOrderExecuted(IERC20 tokenIn, uint256 amountIn, IERC20 tokenOut, uint256 amountOut);

    error InvalidToken();
    error InvalidAmount();
    error AmountOutTooLow(uint256 min, uint256 actual);

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
        address _caller = msg.sender;

        // 1. collect fee
        uint256 _feeAmount = _collectFee(order_.smartAccount, _data.tokenIn, _data.amountIn);

        // 2. send `amountIn` to the caller
        _transferFromSmartAccount(order_.smartAccount, _data.tokenIn, _caller, _data.amountIn - _feeAmount);

        // 3. call callers's callback
        uint256 _before = (address(_data.tokenOut) == NATIVE_TOKEN)
            ? order_.smartAccount.balance
            : _data.tokenOut.balanceOf(order_.smartAccount);
        IAdvancedTransactionCaller(_caller).callback(callbackData_);
        uint256 _after = (address(_data.tokenOut) == NATIVE_TOKEN)
            ? order_.smartAccount.balance
            : _data.tokenOut.balanceOf(order_.smartAccount);
        uint256 _amountOut = _after - _before;

        // 4. check `amountOut`
        if (_amountOut < _data.amountOutMin) revert AmountOutTooLow(_data.amountOutMin, _amountOut);

        emit LimitOrderExecuted(_data.tokenIn, _data.amountIn, _data.tokenOut, _data.amountOutMin);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     METADATA
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice The name of the module
    function name() external pure returns (string memory) {
        return "LimitOrderExecutor";
    }

    /// @notice The version of the module
    function version() external pure returns (string memory) {
        return "0.0.1";
    }
}
