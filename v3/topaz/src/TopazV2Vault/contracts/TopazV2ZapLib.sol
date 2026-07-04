// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IRouter } from "./interfaces/IRouter.sol";
import { IPool } from "./interfaces/IPool.sol";

/// @title TopazV2ZapLib
/// @notice Stateless routing math shared by {TopazV2Vault} (reward compounding)
///         and {TopazV2Zapper} (deposits/redemptions).
/// @dev Every Topaz v2 vault pairs an arbitrary `other` token with a deeply
///      liquid `base` asset (USDT or WBNB), so all routes flow through `base`
///      and the pool's own `stable` flag drives the in-pool swap. Functions are
///      `internal`, so they execute in the calling contract's context: the
///      caller is the `msg.sender` of every router call and MUST have approved
///      `ctx.router` for the tokens involved.
library TopazV2ZapLib {
    /// @notice Basis-points denominator
    uint256 internal constant BPS = 10_000;

    /// @dev Deadline buffer applied to every router call
    uint256 private constant SWAP_DEADLINE = 5 minutes;

    error NotPoolToken();

    /// @notice Per-call routing context, built from a vault's configuration.
    struct Ctx {
        IRouter router;
        address poolFactory;
        IPool pool;
        address base; // USDT or WBNB — the liquid leg
        address other; // the arbitrary leg
        bool stable; // pool kind
        uint256 slippageBps; // slippage tolerance applied to every leg
    }

    // ============ Token <-> LP ============

    /// @dev Zap a single pool token (`tokenIn` must be `base` or `other`) into LP.
    ///      Splits 50/50, swaps half into the opposite leg through the pool, and
    ///      adds liquidity. Returns the LP minted to the calling contract.
    function zapTokenToLP(Ctx memory c, address tokenIn, uint256 amountIn) internal returns (uint256 liquidity) {
        if (amountIn == 0) return 0;
        address token0 = c.pool.token0();
        address token1 = c.pool.token1();
        if (tokenIn != token0 && tokenIn != token1) revert NotPoolToken();

        uint256 amount0 = amountIn / 2;
        uint256 amount1 = amountIn - amount0;

        IRouter.Route[] memory routes0 = _route(c, tokenIn, token0);
        IRouter.Route[] memory routes1 = _route(c, tokenIn, token1);

        IRouter.Zap memory zap = _zapParams(c, token0, token1, amount0, amount1, routes0, routes1);

        liquidity = c.router.zapIn(tokenIn, amount0, amount1, zap, routes0, routes1, address(this), false);
    }

    /// @dev Burn `lpAmount` of LP and return everything as `tokenOut`
    ///      (must be `base` or `other`).
    function zapLPToToken(Ctx memory c, uint256 lpAmount, address tokenOut) internal returns (uint256 amountOut) {
        if (lpAmount == 0) return 0;
        address token0 = c.pool.token0();
        address token1 = c.pool.token1();
        if (tokenOut != token0 && tokenOut != token1) revert NotPoolToken();

        (uint256 expected0, uint256 expected1) = c.router.quoteRemoveLiquidity(
            token0,
            token1,
            c.stable,
            c.poolFactory,
            lpAmount
        );
        uint256 mult = BPS - c.slippageBps;

        (uint256 amount0, uint256 amount1) = c.router.removeLiquidity(
            token0,
            token1,
            c.stable,
            lpAmount,
            (expected0 * mult) / BPS,
            (expected1 * mult) / BPS,
            address(this),
            block.timestamp + SWAP_DEADLINE
        );

        if (tokenOut == token0) {
            amountOut = amount0;
            if (amount1 > 0) amountOut += _swap(c, token1, token0, amount1, c.stable);
        } else {
            amountOut = amount1;
            if (amount0 > 0) amountOut += _swap(c, token0, token1, amount0, c.stable);
        }
    }

    /// @dev Add any leftover `base`+`other` balances as liquidity, recycling the
    ///      tokens `router.zapIn` refunds when its 50/50 split doesn't match the
    ///      pool ratio. Keeps compounding/zapping from stranding dust. No-op unless
    ///      both legs are non-zero (addLiquidity needs both). Amounts are dust, so
    ///      min-amounts of 0 are safe (addLiquidity does no swap — it deposits at
    ///      the live reserve ratio and refunds the excess leg).
    function addLeftoverLiquidity(Ctx memory c) internal returns (uint256 liquidity) {
        uint256 balBase = IERC20(c.base).balanceOf(address(this));
        uint256 balOther = IERC20(c.other).balanceOf(address(this));
        if (balBase == 0 || balOther == 0) return 0;
        (, , liquidity) = c.router.addLiquidity(
            c.base,
            c.other,
            c.stable,
            balBase,
            balOther,
            0,
            0,
            address(this),
            block.timestamp + SWAP_DEADLINE
        );
    }

    // ============ Swaps ============

    /// @dev One-hop swap on a volatile pool — used for the reward/WBNB/USDT hub
    ///      legs (TOPAZ/WBNB and WBNB/USDT are volatile on Topaz).
    function swapVolatile(Ctx memory c, address from, address to, uint256 amountIn) internal returns (uint256) {
        return _swap(c, from, to, amountIn, false);
    }

    function _swap(Ctx memory c, address from, address to, uint256 amountIn, bool stable) private returns (uint256 amountOut) {
        if (amountIn == 0) return 0;
        IRouter.Route[] memory route = new IRouter.Route[](1);
        route[0] = IRouter.Route({ from: from, to: to, stable: stable, factory: c.poolFactory });

        uint256[] memory expected = c.router.getAmountsOut(amountIn, route);
        uint256 minOut = (expected[expected.length - 1] * (BPS - c.slippageBps)) / BPS;

        uint256[] memory amounts = c.router.swapExactTokensForTokens(
            amountIn,
            minOut,
            route,
            address(this),
            block.timestamp + SWAP_DEADLINE
        );
        amountOut = amounts[amounts.length - 1];
    }

    // ============ Helpers ============

    /// @dev Build the slippage-adjusted Zap struct (isolated to keep the caller's
    ///      stack shallow for the 8-arg router.zapIn call).
    function _zapParams(
        Ctx memory c,
        address token0,
        address token1,
        uint256 amount0,
        uint256 amount1,
        IRouter.Route[] memory routes0,
        IRouter.Route[] memory routes1
    ) private view returns (IRouter.Zap memory zap) {
        (uint256 outMin0, uint256 outMin1, uint256 addMin0, uint256 addMin1) = c.router.generateZapInParams(
            token0,
            token1,
            c.stable,
            c.poolFactory,
            amount0,
            amount1,
            routes0,
            routes1
        );

        uint256 mult = BPS - c.slippageBps;
        zap = IRouter.Zap({
            tokenA: token0,
            tokenB: token1,
            stable: c.stable,
            factory: c.poolFactory,
            amountOutMinA: (outMin0 * mult) / BPS,
            amountOutMinB: (outMin1 * mult) / BPS,
            amountAMin: (addMin0 * mult) / BPS,
            amountBMin: (addMin1 * mult) / BPS
        });
    }

    /// @dev Route converting `from` into pool token `to` (empty if equal).
    function _route(Ctx memory c, address from, address to) private pure returns (IRouter.Route[] memory routes) {
        if (from == to) {
            return new IRouter.Route[](0);
        }
        routes = new IRouter.Route[](1);
        routes[0] = IRouter.Route({ from: from, to: to, stable: c.stable, factory: c.poolFactory });
    }
}
