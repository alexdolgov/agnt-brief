// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ConnectorBase} from "./ConnectorBase.sol";

/// @dev Solidly v2 (volatile + stable) Router. `Route.factory == address(0)` makes
///      the router fall back to its canonical `defaultFactory`, so a hop only needs
///      `{from, to, stable}`; we inject the factory below for determinism.
interface IV2RouterSwap {
    struct Route {
        address from;
        address to;
        bool stable;
        address factory;
    }

    function getAmountsOut(uint256 amountIn, Route[] memory routes)
        external
        view
        returns (uint256[] memory amounts);

    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        Route[] calldata routes,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);
}

/// @title ConnectorSwapV2
/// @notice The Solidly v2 swap primitive — the volatile/stable-pool counterpart to
///         `ConnectorSwap` (which is CL/Slipstream `exactInput` only). It closes the
///         "CL-routeless v2 pair" gap so an in-account swap/zap/compound can route
///         through a v2 pool that has no concentrated-liquidity route. Delegatecalled
///         by a TopazAccount; `address(this)` is the account.
///
///         **Atomic-primitive model**, identical to `ConnectorSwap`: it does ONE
///         thing — swap. It does NOT wrap native and does NOT approve the router;
///         those are explicit `ConnectorToken.wrapNative` / `ConnectorToken.approve`
///         legs the expander places before this one. Output stays in the account.
///
///         A hop is `{from, to, stable}`; the connector injects its own immutable
///         `poolFactory` so calldata can never route through an unexpected factory.
///         `amountIn` may be `USE_FULL_BALANCE`; `swapBps` sizes a fraction of the
///         resolved balance (ratio-split). min-out is the caller's absolute
///         `amountOutMinimum`, or — when 0 — the router's reserve-based
///         `getAmountsOut` bounded by `maxSlippageBps` (the v2 analogue of
///         `_minOutFromSpotPath`, and more accurate since it includes fee + curve).
contract ConnectorSwapV2 is ConnectorBase {
    address public immutable router;
    address public immutable poolFactory;

    /// @dev A hop without the factory — the connector injects its canonical one.
    struct V2Route {
        address from;
        address to;
        bool stable;
    }

    struct V2SwapParams {
        V2Route[] routes; // 1..N hops, routes[0].from is tokenIn
        uint256 amountIn; // input amount, or USE_FULL_BALANCE
        uint256 swapBps; // 0 = whole resolved amount; else that bps fraction
        uint256 amountOutMinimum; // 0 = derive on-chain from router reserves
        uint256 maxSlippageBps; // used only when amountOutMinimum == 0
        uint256 deadline;
    }

    event SwappedV2(
        address indexed account, address indexed tokenIn, address indexed tokenOut, uint256 amountIn, uint256 amountOut
    );

    error EmptyRoute();

    constructor(address _wbnb, address _router, address _poolFactory) ConnectorBase(_wbnb) {
        router = _router;
        poolFactory = _poolFactory;
    }

    /// @dev V2_SWAP_EXACT_IN. Assumes the account already holds `tokenIn` (wrapped if
    ///      it was native) and has approved `router` — both done by prior legs.
    function swapExactInV2(V2SwapParams calldata p) external payable returns (uint256 amountOut) {
        uint256 hops = p.routes.length;
        if (hops == 0) revert EmptyRoute();
        address tokenIn = p.routes[0].from;
        address tokenOut = p.routes[hops - 1].to;

        uint256 resolved = _resolveAmount(tokenIn, p.amountIn);
        uint256 amountIn = p.swapBps == 0 ? resolved : (resolved * p.swapBps) / BPS;
        if (amountIn == 0) return 0;

        // Build the full router routes, injecting our canonical factory per hop so
        // calldata can never redirect through a different (registered) factory.
        IV2RouterSwap.Route[] memory routes = new IV2RouterSwap.Route[](hops);
        for (uint256 i; i < hops;) {
            routes[i] = IV2RouterSwap.Route({
                from: p.routes[i].from,
                to: p.routes[i].to,
                stable: p.routes[i].stable,
                factory: poolFactory
            });
            unchecked {
                ++i;
            }
        }

        uint256 minOut = p.amountOutMinimum != 0
            ? p.amountOutMinimum
            : _minOutV2(routes, amountIn, p.maxSlippageBps);

        // No self-approve: an explicit ConnectorToken.approve(tokenIn, router) leg
        // precedes this one. The router pulls amountIn from the standing allowance.
        uint256[] memory amounts =
            IV2RouterSwap(router).swapExactTokensForTokens(amountIn, minOut, routes, address(this), p.deadline);
        amountOut = amounts[amounts.length - 1];

        emit SwappedV2(address(this), tokenIn, tokenOut, amountIn, amountOut);
    }

    /// @dev Reserve-based min-out for a runtime-sized v2 route, bounded by
    ///      `maxSlippageBps`. `getAmountsOut` already accounts for fee + curve +
    ///      price impact on `amountIn`, so this protects sentinel/ratio-split legs.
    function _minOutV2(IV2RouterSwap.Route[] memory routes, uint256 amountIn, uint256 maxSlippageBps)
        internal
        view
        returns (uint256)
    {
        if (maxSlippageBps > MAX_SLIPPAGE_BPS) revert SlippageTooHigh();
        if (amountIn == 0) return 0;
        uint256[] memory amounts = IV2RouterSwap(router).getAmountsOut(amountIn, routes);
        uint256 expected = amounts[amounts.length - 1];
        return (expected * (BPS - maxSlippageBps)) / BPS;
    }
}
