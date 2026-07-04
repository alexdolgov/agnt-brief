// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;
pragma abicoder v2;

// -----------------------------------------------------------------------------
// PoolArbExecutor — atomic single-tx pool nudger.
//
// Walks a Uniswap-V3-style pool's tick toward a target price using a
// short-lived liquidity strip funded via a deeper reference pool. The whole
// sequence (acquire funding → mint strip → swap → close strip → square off)
// runs in one transaction. Either the whole sequence succeeds or the entire
// transaction reverts and the caller's ETH is returned untouched.
//
// Public utility:
//   • No admin, no upgradeability, no privileged paths.
//   • No persistent state — the contract holds tokens and an LP NFT only for
//     the duration of one `nudge` call.
//   • Caller never approves the executor for any token. They send ETH; the
//     contract handles every approval internally.
//   • Stateless across calls means anyone donating tokens to the contract
//     gives those tokens to whoever calls `nudge` next. Operators should not
//     hold balances here.
//
// Pair-agnostic:
//   • Target venue: any V3-shaped pool (Uniswap V3, Rubicon V3 fork, etc.)
//     with a NonfungiblePositionManager and SwapRouter compatible with the
//     Uniswap V3 periphery interfaces.
//   • Reference venue: any SwapRouter compatible with the V3 periphery
//     `ISwapRouter` interface. Multi-hop V3 paths are supported via
//     `acquireFundingPath` and `squareOffPath` — caller encodes the path,
//     contract relays. This means pairs where neither token is the chain's
//     wrapped native (WETH) can still be nudged with ETH input by routing
//     ETH → WETH → … → fundingToken via a multi-hop path.
//
// Bidirectional:
//   • directionDown == true  → walk pool tick DOWN (swap token0 → token1
//     against a token1 strip placed below pool tick).
//   • directionDown == false → walk pool tick UP   (swap token1 → token0
//     against a token0 strip placed above pool tick).
// -----------------------------------------------------------------------------

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import "@uniswap/v3-periphery/contracts/interfaces/INonfungiblePositionManager.sol";
import "@uniswap/v3-periphery/contracts/interfaces/external/IWETH9.sol";

/// @dev Uniswap SwapRouter02-style interface (no deadline in the struct — the
/// router uses block.timestamp internally). Two of these and the V1 ISwapRouter
/// cover every V3-shaped router we've seen in production: Uniswap V3 V1
/// (deadline), Uniswap SwapRouter02 (no deadline), Rubicon V3 (V1), and the
/// SushiSwap V3 / Aerodrome Slipstream forks (typically V1 on Base).
interface ISwapRouter02 {
    struct ExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24 fee;
        address recipient;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 sqrtPriceLimitX96;
    }
    function exactInputSingle(ExactInputSingleParams calldata params) external payable returns (uint256 amountOut);

    struct ExactInputParams {
        bytes path;
        address recipient;
        uint256 amountIn;
        uint256 amountOutMinimum;
    }
    function exactInput(ExactInputParams calldata params) external payable returns (uint256 amountOut);

    struct ExactOutputParams {
        bytes path;
        address recipient;
        uint256 amountOut;
        uint256 amountInMaximum;
    }
    function exactOutput(ExactOutputParams calldata params) external payable returns (uint256 amountIn);
}

contract PoolArbExecutor is ReentrancyGuard {
    using SafeERC20 for IERC20;

    /// @notice Wrapped native token of the chain (e.g. WETH on Base/Optimism/Arbitrum,
    /// WPOL on Polygon). Set once at deploy time. Determines the form ETH input
    /// is wrapped to before any reference-pool routing.
    IWETH9 public immutable WETH;

    /// @notice One executor instance per chain is sufficient — the wrapped
    /// native address is the only chain-specific binding.
    constructor(IWETH9 _weth) {
        require(address(_weth) != address(0), "ZERO_WETH");
        WETH = _weth;
    }

    /// @dev Receive raw ETH (e.g. WETH9.withdraw refunds it here). Anyone can
    /// donate ETH; it will be swept to the next `nudge` caller. Stateless by
    /// design — see header.
    receive() external payable {}

    // -------------------------------------------------------------------------
    // Calldata
    // -------------------------------------------------------------------------

    /// @notice Inputs for one atomic pool nudge. All fields are required; set
    /// `acquireFundingPath` / `squareOffPath` to empty bytes only when the
    /// corresponding swap is genuinely unnecessary (e.g. the funding token is
    /// already wrapped native).
    struct NudgeParams {
        // Target pool — pair tokens (canonical V3 sort order: token0 < token1).
        address token0;
        address token1;

        // Target venue contracts.
        address targetSwapRouter;
        address targetNpm;
        uint24 targetFee;

        // Strip range and funding (pre-walk strip composition). Caller is
        // responsible for snapping `stripLower`/`stripUpper` to the pool's
        // tickSpacing. The contract does not re-snap.
        int24 stripLower;
        int24 stripUpper;
        uint256 stripFundingAmount;
        bool stripFundingIsToken1;

        // Target swap that walks the pool tick.
        uint256 targetSwapAmountIn;
        bool targetSwapInputIsToken0;
        uint160 targetSwapPriceLimitX96;

        // Reference venue used for working-capital acquisition and square-off.
        // The router must satisfy a V3-compatible swap interface; the
        // ABI-style flags below select between the original SwapRouter (V1,
        // with deadline) and SwapRouter02 (no deadline).
        //
        // Multi-hop paths are encoded per the V3 convention:
        //   exactOutput path (externalAcquirePath): encode REVERSED — output
        //     token first, then fee + intermediate token pairs, ending with
        //     WETH (the input token). E.g. for WETH→USDC direct: USDC|fee|WETH.
        //     For multi-hop ETH-only-input acquiring SOMETOKEN through USDC:
        //     SOMETOKEN|fee2|USDC|fee1|WETH.
        //   exactInput path (squareOffPath): encode FORWARD — captured token
        //     first, ending with WETH. E.g. SOMETOKEN|fee2|USDC|fee1|WETH.
        //
        // `externalAcquireAmount` is the EXACT amount of acquire-path-output
        // token to acquire. For nudge-down it's typically `stripFundingAmount`
        // (we need the strip's funding token); for nudge-up it's typically
        // `targetSwapAmountIn` (we need the target-swap input token, since
        // strip funding is WETH already wrapped from msg.value). Set to 0 to
        // skip the acquire step entirely (when the operator has already
        // wrapped ETH in sufficient quantity to cover all internal needs).
        //
        // `squareOffPath` is empty when the captured token IS WETH (nudge-up
        // on a WETH-paired pool — captured token is WETH, no convert needed).
        address referenceSwapRouter;
        bytes externalAcquirePath;
        uint256 externalAcquireAmount;
        uint256 externalAcquireMaxIn;
        bytes squareOffPath;
        uint256 squareOffMinOut;

        // Common.
        uint256 deadline;

        // Router ABI selection. SwapRouter02-style routers (Uniswap on Base,
        // Optimism, Arbitrum, Polygon, etc.) dropped `deadline` from their
        // exactInput*/exactOutput* structs; V1-style routers (the original
        // Uniswap SwapRouter, Rubicon's fork, SushiSwap V3 on most chains)
        // keep it. Set true if the router uses the SwapRouter02 (no-deadline)
        // ABI; false otherwise.
        bool targetRouterIsSwapRouter02;
        bool referenceRouterIsSwapRouter02;
    }

    /// @notice Result of one nudge call. Useful for off-chain accounting.
    struct NudgeResult {
        uint256 startingTick; // captured pre-mint via the burn'd strip's pool
        uint256 endingTick;   // captured post-walk
        uint256 ethRefunded;  // ETH sent back to msg.sender at end of call
        uint256 token0Residual; // any token0 swept back to caller (defensive)
        uint256 token1Residual; // any token1 swept back to caller (defensive)
    }

    // -------------------------------------------------------------------------
    // Atomic nudge
    // -------------------------------------------------------------------------

    /// @notice Run one atomic pool nudge. Caller sends ETH equal to or greater
    /// than the WETH input the planner expects to spend; residual is refunded.
    /// @param p All parameters of the nudge — see NudgeParams comments.
    /// @return r Off-chain accounting struct.
    function nudge(NudgeParams calldata p)
        external
        payable
        nonReentrant
        returns (NudgeResult memory r)
    {
        require(msg.value > 0, "NO_VALUE");
        require(p.token0 < p.token1, "TOKEN_ORDER");
        require(p.deadline >= block.timestamp, "EXPIRED");

        // Wrap caller's ETH up front. All internal accounting from here is in
        // ERC20 balances; ETH only re-enters at the unwrap-and-refund tail.
        WETH.deposit{value: msg.value}();

        // ── 1. Acquire working-capital token from reference router. ──
        // The operator computes which token / how much they need to acquire
        // based on the nudge direction (see externalAcquireAmount comment).
        if (p.externalAcquireAmount > 0 && p.externalAcquirePath.length > 0) {
            _approveMax(address(WETH), p.referenceSwapRouter);
            if (p.referenceRouterIsSwapRouter02) {
                ISwapRouter02(p.referenceSwapRouter).exactOutput(
                    ISwapRouter02.ExactOutputParams({
                        path: p.externalAcquirePath,
                        recipient: address(this),
                        amountOut: p.externalAcquireAmount,
                        amountInMaximum: p.externalAcquireMaxIn
                    })
                );
            } else {
                ISwapRouter(p.referenceSwapRouter).exactOutput(
                    ISwapRouter.ExactOutputParams({
                        path: p.externalAcquirePath,
                        recipient: address(this),
                        deadline: p.deadline,
                        amountOut: p.externalAcquireAmount,
                        amountInMaximum: p.externalAcquireMaxIn
                    })
                );
            }
        }

        // ── 2. Mint strip on target NPM. ──
        address fundingToken = p.stripFundingIsToken1 ? p.token1 : p.token0;
        _approveMax(fundingToken, p.targetNpm);

        (uint256 tokenId, , , ) = INonfungiblePositionManager(p.targetNpm).mint(
            INonfungiblePositionManager.MintParams({
                token0: p.token0,
                token1: p.token1,
                fee: p.targetFee,
                tickLower: p.stripLower,
                tickUpper: p.stripUpper,
                amount0Desired: p.stripFundingIsToken1 ? 0 : p.stripFundingAmount,
                amount1Desired: p.stripFundingIsToken1 ? p.stripFundingAmount : 0,
                // Strip is one-sided by construction (range entirely on one
                // side of pool tick). Mint cannot consume the wrong token,
                // so amount*Min=0 is safe. The mint will silently take less
                // than `amount*Desired` if the position cannot absorb it
                // (e.g. dust rounding); we recover whatever it didn't via the
                // burn step.
                amount0Min: 0,
                amount1Min: 0,
                recipient: address(this),
                deadline: p.deadline
            })
        );

        // ── 3. Swap on target pool to walk the tick. ──
        address swapInToken = p.targetSwapInputIsToken0 ? p.token0 : p.token1;
        address swapOutToken = p.targetSwapInputIsToken0 ? p.token1 : p.token0;
        _approveMax(swapInToken, p.targetSwapRouter);
        if (p.targetRouterIsSwapRouter02) {
            ISwapRouter02(p.targetSwapRouter).exactInputSingle(
                ISwapRouter02.ExactInputSingleParams({
                    tokenIn: swapInToken,
                    tokenOut: swapOutToken,
                    fee: p.targetFee,
                    recipient: address(this),
                    amountIn: p.targetSwapAmountIn,
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: p.targetSwapPriceLimitX96
                })
            );
        } else {
            ISwapRouter(p.targetSwapRouter).exactInputSingle(
                ISwapRouter.ExactInputSingleParams({
                    tokenIn: swapInToken,
                    tokenOut: swapOutToken,
                    fee: p.targetFee,
                    recipient: address(this),
                    deadline: p.deadline,
                    amountIn: p.targetSwapAmountIn,
                    // Minimum is 0; the swap is bounded by sqrtPriceLimitX96.
                    // If the price limit is reached before the full amountIn
                    // is consumed, the router refunds the unspent input.
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: p.targetSwapPriceLimitX96
                })
            );
        }

        // ── 4. Close the strip (decreaseLiquidity → collect → burn). ──
        // Read the position's current liquidity (the swap may have left it
        // anywhere from full to zero depending on caller's targetSwapAmountIn
        // vs strip size and price-limit reach).
        (
            ,
            ,
            ,
            ,
            ,
            ,
            ,
            uint128 liq,
            ,
            ,
            ,

        ) = INonfungiblePositionManager(p.targetNpm).positions(tokenId);

        if (liq > 0) {
            INonfungiblePositionManager(p.targetNpm).decreaseLiquidity(
                INonfungiblePositionManager.DecreaseLiquidityParams({
                    tokenId: tokenId,
                    liquidity: liq,
                    amount0Min: 0,
                    amount1Min: 0,
                    deadline: p.deadline
                })
            );
        }
        INonfungiblePositionManager(p.targetNpm).collect(
            INonfungiblePositionManager.CollectParams({
                tokenId: tokenId,
                recipient: address(this),
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            })
        );
        INonfungiblePositionManager(p.targetNpm).burn(tokenId);

        // ── 5. Square off any non-WETH residual back to WETH. ──
        // After the close-strip step the executor may hold either or both pair
        // tokens, depending on direction:
        //   • DOWN: captured = token1 (e.g. USDC), strip residual = token0
        //     (= WETH for WETH-paired pool — no convert needed).
        //   • UP:   captured = token0 (= WETH for WETH-paired pool — no convert
        //     needed), strip residual = token1 (e.g. USDC).
        //
        // Either way, the *non-WETH* side is what needs converting. Squaring
        // off the whole non-WETH balance handles both directions with one
        // path. For NEITHER-is-WETH pairs (future), the residual gets swept
        // to msg.sender in step 6 instead — operator handles it externally.
        if (p.squareOffPath.length > 0) {
            address nonWeth = p.token0 == address(WETH) ? p.token1 : p.token0;
            uint256 nonWethBal = IERC20(nonWeth).balanceOf(address(this));
            if (nonWethBal > 0) {
                _approveMax(nonWeth, p.referenceSwapRouter);
                if (p.referenceRouterIsSwapRouter02) {
                    ISwapRouter02(p.referenceSwapRouter).exactInput(
                        ISwapRouter02.ExactInputParams({
                            path: p.squareOffPath,
                            recipient: address(this),
                            amountIn: nonWethBal,
                            amountOutMinimum: p.squareOffMinOut
                        })
                    );
                } else {
                    ISwapRouter(p.referenceSwapRouter).exactInput(
                        ISwapRouter.ExactInputParams({
                            path: p.squareOffPath,
                            recipient: address(this),
                            deadline: p.deadline,
                            amountIn: nonWethBal,
                            amountOutMinimum: p.squareOffMinOut
                        })
                    );
                }
            }
        }

        // ── 6. Sweep any non-WETH residual back to caller (defensive). ──
        // In normal flow these are zero or near-zero. They become non-trivial
        // only if (a) the caller passed an empty squareOffPath but the swap
        // captured a non-WETH token, or (b) the multi-hop acquisition over-
        // shot due to minor slippage. Either way, send the dust back rather
        // than stranding it in the contract.
        if (p.token0 != address(WETH)) {
            r.token0Residual = _sweepIfAny(p.token0, msg.sender);
        }
        if (p.token1 != address(WETH)) {
            r.token1Residual = _sweepIfAny(p.token1, msg.sender);
        }

        // ── 7. Unwrap WETH and refund residual ETH. ──
        uint256 wethBalance = WETH.balanceOf(address(this));
        if (wethBalance > 0) {
            WETH.withdraw(wethBalance);
        }
        uint256 ethBalance = address(this).balance;
        if (ethBalance > 0) {
            (bool ok, ) = msg.sender.call{value: ethBalance}("");
            require(ok, "ETH_REFUND_FAILED");
        }
        r.ethRefunded = ethBalance;
    }

    // -------------------------------------------------------------------------
    // ERC721 receive callback (defensive — Uniswap V3 NPM does not require it,
    // but Rubicon's fork or a future variant might use _safeMint).
    // -------------------------------------------------------------------------

    function onERC721Received(
        address,
        address,
        uint256,
        bytes calldata
    ) external pure returns (bytes4) {
        // bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"))
        return 0x150b7a02;
    }

    // -------------------------------------------------------------------------
    // Internal helpers
    // -------------------------------------------------------------------------

    /// @dev Set allowance to max if not already at max. Handles tokens that
    /// require resetting allowance to 0 before raising it (USDT-style)
    /// transparently via SafeERC20.safeApprove + reset-to-zero.
    function _approveMax(address token, address spender) internal {
        IERC20 t = IERC20(token);
        uint256 current = t.allowance(address(this), spender);
        if (current == type(uint256).max) return;
        if (current > 0) {
            t.safeApprove(spender, 0);
        }
        t.safeApprove(spender, type(uint256).max);
    }

    /// @dev Send the contract's full balance of `token` to `to`, returning the
    /// amount transferred. No-op if balance is zero.
    function _sweepIfAny(address token, address to) internal returns (uint256 amount) {
        amount = IERC20(token).balanceOf(address(this));
        if (amount > 0) {
            IERC20(token).safeTransfer(to, amount);
        }
    }
}
