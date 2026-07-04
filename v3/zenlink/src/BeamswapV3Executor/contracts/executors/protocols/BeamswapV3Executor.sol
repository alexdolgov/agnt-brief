// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {IProtocolExecutor} from "../../interfaces/IProtocolExecutor.sol";
import {Currency, CurrencyLibrary} from "../../libraries/CurrencyLibrary.sol";
import {InputStream} from "../../libraries/InputStream.sol";
import {Constants} from "../../libraries/Constants.sol";
import {IUniswapV3Pool} from "../../interfaces/protocols/uniswap/v3/IUniswapV3Pool.sol";

contract BeamswapV3Executor is IProtocolExecutor {
    using InputStream for uint256;
    using CurrencyLibrary for Currency;

    error UnexpectedBeamswapV3Swap();

    address private lastCalledPool = Constants.IMPOSSIBLE_POOL_ADDRESS;

    function swap(Currency tokenIn, uint256 amountIn, bytes memory data) external {
        (address pool, bool zeroForOne, address recipient) = abi.decode(data, (address, bool, address));

        if (amountIn == 0) {
            amountIn = tokenIn.balanceOfSelf();
        }

        IUniswapV3Pool(pool).swap(
            recipient,
            zeroForOne,
            int256(amountIn),
            zeroForOne ? Constants.MIN_SQRT_RATIO + 1 : Constants.MAX_SQRT_RATIO - 1,
            abi.encode(tokenIn)
        );
        if (lastCalledPool != Constants.IMPOSSIBLE_POOL_ADDRESS) revert UnexpectedBeamswapV3Swap();
    }

    function beamswapV3SwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) external {
        if (msg.sender != lastCalledPool) revert UnexpectedBeamswapV3Swap();
        lastCalledPool = Constants.IMPOSSIBLE_POOL_ADDRESS;
        (Currency tokenIn) = abi.decode(data, (Currency));
        int256 amount = amount0Delta > 0 ? amount0Delta : amount1Delta;
        if (amount <= 0) revert UnexpectedBeamswapV3Swap();
        tokenIn.transfer(msg.sender, uint256(amount));
    }
}
