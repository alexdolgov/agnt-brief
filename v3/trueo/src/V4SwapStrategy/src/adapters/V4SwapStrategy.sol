// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {ActionConstants} from "@uniswap/v4-periphery/src/libraries/ActionConstants.sol";
import {CalldataDecoder} from "@uniswap/v4-periphery/src/libraries/CalldataDecoder.sol";
import {Actions} from "@uniswap/v4-periphery/src/libraries/Actions.sol";
import {IV4Router} from "@uniswap/v4-periphery/src/interfaces/IV4Router.sol";
import {PathKey, PathKeyLibrary} from "@uniswap/v4-periphery/src/libraries/PathKey.sol";
import {AdapterStrategy} from "./AdapterStrategy.sol";

contract V4SwapStrategy is AdapterStrategy {
    using CalldataDecoder for bytes;
    using PathKeyLibrary for PathKey;

    error UnsupportedRecipient();
    error UnsupportedPayer();
    error UnsupportedAction();
    error IncompleteTransaction();

    struct SwapInfo {
        address recipient;
        uint256 amountIn;
        bool payerIsUser;
        Currency currencyIn;
        Currency currencyOut;
    }

    constructor(address _adapter) AdapterStrategy(_adapter) {}

    function beforeExecute(uint256 command, bytes calldata inputs, address msgSender)
        external
        override
        onlyAdapter
        returns (PackedApproval[] memory approvals, bytes memory modifiedInputs)
    {
        SwapInfo memory swapInfo = _decodeInputs(inputs);

        if (swapInfo.amountIn == 0) {
            // no swap action was found
            revert IncompleteTransaction();
        }

        if (swapInfo.recipient == msgSender) {
            swapInfo.recipient = ActionConstants.MSG_SENDER;
        }

        if (swapInfo.recipient != ActionConstants.MSG_SENDER && swapInfo.recipient != ActionConstants.ADDRESS_THIS) {
            revert UnsupportedRecipient();
        }

        if (!swapInfo.payerIsUser) {
            revert UnsupportedPayer();
        }

        address tokenToApprove = Currency.unwrap(swapInfo.currencyIn);

        uint256 actualAmount = adapter.permit2TransferFrom(command, msgSender, swapInfo.amountIn, tokenToApprove);

        approvals = new PackedApproval[](1);
        approvals[0] = PackedApproval(tokenToApprove, actualAmount);

        modifiedInputs = new bytes(0);
    }

    function afterExecute(uint256 command, bytes calldata inputs, address msgSender) external override onlyAdapter {
        SwapInfo memory swapInfo = _decodeInputs(inputs);

        address tokenIn = Currency.unwrap(swapInfo.currencyIn);
        address tokenOut = Currency.unwrap(swapInfo.currencyOut);

        uint256 remainingTokenIn = IERC20(tokenIn).balanceOf(address(adapter));

        if (remainingTokenIn > 0) {
            // return all remaining tokenIn to the msg sender
            adapter.transferTo(command, msgSender, remainingTokenIn, tokenIn);
        }

        uint256 amountTokenOut = IERC20(tokenOut).balanceOf(address(adapter));

        if (amountTokenOut > 0) {
            // return all token out to the msg sender
            adapter.transferTo(command, msgSender, amountTokenOut, tokenOut);
        }
    }

    function _decodeSwapExactInParams(bytes calldata params)
        internal
        pure
        returns (Currency currencyIn, uint256 amountIn)
    {
        IV4Router.ExactInputParams calldata exactInputParams = params.decodeSwapExactInParams();
        amountIn = exactInputParams.amountIn;
        currencyIn = exactInputParams.currencyIn;
    }

    function _decodeSwapExactOutParams(bytes calldata params)
        internal
        pure
        returns (Currency currencyIn, uint256 amountIn)
    {
        IV4Router.ExactOutputParams calldata exactOutputParams = params.decodeSwapExactOutParams();
        amountIn = exactOutputParams.amountInMaximum;
        currencyIn = _getCurrencyInForSwapExactOut(exactOutputParams.currencyOut, exactOutputParams.path);
    }

    function _decodeSwapExactInSingleParams(bytes calldata params)
        internal
        pure
        returns (Currency currencyIn, uint256 amountIn)
    {
        IV4Router.ExactInputSingleParams calldata exactInputSingleParams = params.decodeSwapExactInSingleParams();
        amountIn = exactInputSingleParams.amountIn;
        currencyIn = exactInputSingleParams.zeroForOne
            ? exactInputSingleParams.poolKey.currency0
            : exactInputSingleParams.poolKey.currency1;
    }

    function _decodeSwapExactOutSingleParams(bytes calldata params)
        internal
        pure
        returns (Currency currencyIn, uint256 amountIn)
    {
        IV4Router.ExactOutputSingleParams calldata exactOutputSingleParams = params.decodeSwapExactOutSingleParams();
        amountIn = exactOutputSingleParams.amountInMaximum;
        currencyIn = exactOutputSingleParams.zeroForOne
            ? exactOutputSingleParams.poolKey.currency0
            : exactOutputSingleParams.poolKey.currency1;
    }

    function _decodeInputs(bytes calldata inputs) internal pure returns (SwapInfo memory swapInfo) {
        (bytes calldata actions, bytes[] calldata params) = inputs.decodeActionsRouterParams();

        for (uint256 actionIndex = 0; actionIndex < actions.length; actionIndex++) {
            uint256 action = uint8(actions[actionIndex]);
            bytes calldata actionParams = params[actionIndex];
            if (action < Actions.SETTLE) {
                Currency currencyIn;
                uint256 amountIn;
                if (action == Actions.SWAP_EXACT_IN) {
                    (currencyIn, amountIn) = _decodeSwapExactInParams(actionParams);
                } else if (action == Actions.SWAP_EXACT_IN_SINGLE) {
                    (currencyIn, amountIn) = _decodeSwapExactInSingleParams(actionParams);
                } else if (action == Actions.SWAP_EXACT_OUT) {
                    (currencyIn, amountIn) = _decodeSwapExactOutParams(actionParams);
                } else if (action == Actions.SWAP_EXACT_OUT_SINGLE) {
                    (currencyIn, amountIn) = _decodeSwapExactOutSingleParams(actionParams);
                } else {
                    revert UnsupportedAction();
                }
                swapInfo.currencyIn = currencyIn;
                swapInfo.amountIn = amountIn;
            } else {
                if (action == Actions.SETTLE_ALL) {
                    swapInfo.payerIsUser = true;
                } else if (action == Actions.TAKE_ALL) {
                    (Currency currency,) = actionParams.decodeCurrencyAndUint256();
                    swapInfo.recipient = ActionConstants.MSG_SENDER;
                    swapInfo.currencyOut = currency;
                } else if (action == Actions.SETTLE) {
                    (,, bool _payerIsUser) = actionParams.decodeCurrencyUint256AndBool();
                    swapInfo.payerIsUser = _payerIsUser;
                } else if (action == Actions.TAKE) {
                    (Currency currency, address recipient,) = actionParams.decodeCurrencyAddressAndUint256();
                    swapInfo.recipient = recipient;
                    swapInfo.currencyOut = currency;
                } else {
                    // TAKE_PORTION is not supported
                    revert UnsupportedAction();
                }
            }
        }
    }

    function _getCurrencyInForSwapExactOut(Currency currencyOut, PathKey[] calldata pathKeys)
        internal
        pure
        returns (Currency currencyIn)
    {
        for (uint256 i = pathKeys.length; i > 0; i--) {
            PathKey calldata pathKey = pathKeys[i - 1];
            (PoolKey memory poolKey, bool zeroForOne) = pathKey.getPoolAndSwapDirection(currencyOut);
            // in swap exact out, the swap direction is reversed by negative amount.
            // so the currencyIn is currency1 if zeroForOne is true, and currency0 if zeroForOne is false.
            if (zeroForOne) {
                currencyIn = poolKey.currency1;
            } else {
                currencyIn = poolKey.currency0;
            }
        }
    }
}
