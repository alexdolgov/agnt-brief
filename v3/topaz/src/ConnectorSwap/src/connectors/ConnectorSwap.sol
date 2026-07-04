// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ConnectorBase, IERC20Like, ISwapRouterLike} from "./ConnectorBase.sol";

/// @title ConnectorSwap
/// @notice The platform-centerpiece swap primitive (Doc 0 §5): a general multi-hop
///         Slipstream/CL `exactInput` swap, delegatecalled by a TopazAccount.
///
///         **Atomic-primitive model.** This connector does ONE thing: swap. It does
///         NOT wrap native and does NOT approve the router — those are explicit
///         `ConnectorToken.wrapNative` / `ConnectorToken.approve` legs the expander
///         places before this one. The output stays in the account (working
///         balance) for the next leg or a trailing sweep.
///
///         `path` is a Slipstream route `tokenIn (int24 tickSpacing) … tokenOut`
///         with ANY number of hops (20-byte tokens, 3-byte tickSpacings, 23-byte
///         stride). `amountIn` may be `USE_FULL_BALANCE`. min-out is the caller's
///         absolute `amountOutMinimum`, or — when 0 — derived on-chain by
///         compounding each hop's spot price bounded by `maxSlippageBps`, so a
///         runtime-sized multi-hop swap stays protected.
contract ConnectorSwap is ConnectorBase {
    address public immutable swapRouter;
    address public immutable clFactory;

    struct SwapParams {
        bytes path; // tokenIn (tickSpacing token)+  — 1..N hops
        uint256 amountIn; // input amount, or USE_FULL_BALANCE
        // Input sizing within ONE swap: 0 = swap the whole resolved amountIn;
        // otherwise swap that bps fraction of it. Lets a ratio-split swap size a
        // runtime balance (e.g. "swap half of a prior leg's output") without a
        // composite — the swap is still a single primitive.
        uint256 swapBps;
        uint256 amountOutMinimum; // 0 = derive on-chain from per-hop spot
        uint256 maxSlippageBps; // used only when amountOutMinimum == 0
        uint256 deadline;
    }

    event Swapped(
        address indexed account, address indexed tokenIn, address indexed tokenOut, uint256 amountIn, uint256 amountOut
    );

    error BadPath();

    constructor(address _wbnb, address _swapRouter, address _clFactory) ConnectorBase(_wbnb) {
        swapRouter = _swapRouter;
        clFactory = _clFactory;
    }

    /// @dev SWAP_EXACT_IN. Delegatecalled by the account; `address(this)` is the
    ///      account. Assumes the account already holds `tokenIn` (wrapped if it was
    ///      native) and has approved `swapRouter` — both done by prior legs.
    function swapExactIn(SwapParams calldata p) external payable returns (uint256 amountOut) {
        if (p.path.length < 43 || (p.path.length - 20) % 23 != 0) revert BadPath();
        address tokenIn = address(bytes20(p.path[0:20]));
        address tokenOut = address(bytes20(p.path[p.path.length - 20:p.path.length]));

        uint256 resolved = _resolveAmount(tokenIn, p.amountIn);
        uint256 amountIn = p.swapBps == 0 ? resolved : (resolved * p.swapBps) / BPS;
        if (amountIn == 0) return 0;

        uint256 minOut = p.amountOutMinimum != 0
            ? p.amountOutMinimum
            : _minOutFromSpotPath(clFactory, p.path, amountIn, p.maxSlippageBps);

        // No self-approve: an explicit ConnectorToken.approve(tokenIn, swapRouter)
        // leg precedes this one (separate-legs model). The router pulls amountIn
        // from the account's standing allowance.
        amountOut = ISwapRouterLike(swapRouter).exactInput(
            ISwapRouterLike.ExactInputParams({
                path: p.path,
                recipient: address(this),
                deadline: p.deadline,
                amountIn: amountIn,
                amountOutMinimum: minOut
            })
        );

        emit Swapped(address(this), tokenIn, tokenOut, amountIn, amountOut);
    }
}
