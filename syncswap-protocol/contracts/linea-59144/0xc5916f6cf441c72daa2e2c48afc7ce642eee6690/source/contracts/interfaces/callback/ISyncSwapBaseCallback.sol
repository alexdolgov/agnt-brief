// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;
pragma abicoder v2;

/// @dev The callback interface for SyncSwap base pool operations.
/// Note additional checks will be required for some callbacks, see below for more information.
/// Visit the documentation https://syncswap.gitbook.io/api-documentation/ for more details.
interface ISyncSwapBaseCallback {
    struct BaseSwapCallbackParams {
        address sender;
        address to;
        address tokenIn;
        address tokenOut;
        uint reserve0;
        uint reserve1;
        uint balance0;
        uint balance1;
        uint amountIn;
        uint amountOut;
        uint feeIn;
        uint24 swapFee;
        uint8 withdrawMode;
        bytes callbackData;
    }
    function syncSwapBaseSwapCallback(BaseSwapCallbackParams calldata params) external;
}