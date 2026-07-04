// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {MultiDexAggregator} from "src/periphery/common/MultiDexAggregator.sol";
import {IOBRouter} from "src/interfaces/periphery/beraborrow/IOBRouter.sol";

/// @title BerachainDexAggregator
/// @notice Berachain-specific DEX aggregator routing swaps through OBRouter
contract BerachainDexAggregator is MultiDexAggregator {

    constructor(
        address _everlongCore,
        uint8[] memory _dexIndices,
        address[] memory _routers
    ) MultiDexAggregator(_everlongCore, _dexIndices, _routers) {}

    function _executeSwap(
        uint8,
        address router,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOutMin,
        bytes calldata dexParams
    ) internal override {
        (
            uint256 outputQuote,
            bytes memory pathDefinition,
            address executor,
            uint32 referralCode
        ) = abi.decode(dexParams, (uint256, bytes, address, uint32));

        IOBRouter.swapTokenInfo memory tokenInfo = IOBRouter.swapTokenInfo({
            inputToken: tokenIn,
            inputAmount: amountIn,
            outputToken: tokenOut,
            outputQuote: outputQuote,
            outputMin: amountOutMin,
            outputReceiver: address(this)
        });

        IOBRouter(router).swap(tokenInfo, pathDefinition, executor, referralCode);
    }
}
