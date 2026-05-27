// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { SwapStep, DexType } from "contracts/dex/SwapTypes.sol";
import {
    IRouter as IAerodromeRouter
} from "contracts/interfaces/external/aerodrome/IRouter.sol";
import { DexAdapterBase } from "contracts/dex/DexAdapterBase.sol";

/// @title AerodromeRouterAdapter
/// @notice Per-DEX adapter for `DexType.AerodromeRouter`. Aerodrome's
/// `Route` struct adds an explicit factory pointer alongside
/// `(from,to,stable)`. dexData encodes `(bool stable, address factory)`.
contract AerodromeRouterAdapter is DexAdapterBase {
    constructor(
        address admin_,
        address swapRouter_,
        address allowlist_
    ) DexAdapterBase(admin_, swapRouter_, allowlist_) { }

    function version() external pure override returns (uint16) {
        return 1;
    }

    function _swap(
        SwapStep calldata step,
        uint256 amountIn
    ) internal override returns (uint256) {
        (bool stable, address factory) =
            abi.decode(step.dexData, (bool, address));

        IAerodromeRouter.Route[] memory routes = new IAerodromeRouter.Route[](1);
        routes[0] = IAerodromeRouter.Route({
            from: step.tokenIn,
            to: step.tokenOut,
            stable: stable,
            factory: factory
        });

        bytes memory data = abi.encodeCall(
            IAerodromeRouter.swapExactTokensForTokens,
            (amountIn, 0, routes, address(swapRouter), block.timestamp)
        );

        _swapViaRouter(step.tokenIn, amountIn, step.router, data);
        return 0;
    }
}
