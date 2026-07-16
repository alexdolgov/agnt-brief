// SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

/**
 * @title  SwapAdapterMk3Module (UniV2/SushiV2 + optional Curve3 fast-path + Chainlink guards)
 * @author Andrei Averin — CTO dsf.finance
 * @notice Aggregates V2-style DEX quotes (UniV2/SushiV2), can auto-split execution across top-2 routers
 *         per exact path, and protects execution with Chainlink Feed Registry oracle deviation checks.
 *
 * @dev
 * Core features:
 * - Venue selection:
 *    • Quotes the enabled V2 routers and selects the best (and 2nd best for splitting).
 *    • If `path.length == 2` and both tokens are Curve 3Pool stables (DAI/USDC/USDT),
 *      the module can use Curve 3Pool as a stable-to-stable fast-path.
 *
 * - Oracle guards (`useOracleGuards`):
 *    • If an oracle price is available and (optionally) fresh:
 *        - `getAmountsOut` returns an empty array when the best route output is worse than oracle
 *          by more than `maxDeviationBps`.
 *        - `swapExactTokensForTokens` reverts with "oracle guard" when expected execution
 *          would be worse than oracle by more than `maxDeviationBps`.
 *    • If oracle price is missing or stale, the guard is skipped (no revert / no filtering).
 *
 * - Default slippage when `amountOutMin == 0`:
 *    • For V2 router swaps: `defaultSlippageBpsV2` is applied to fresh router quote(s)
 *      to compute local leg minOut.
 *    • For Curve 3Pool swaps: `defaultSlippageBpsCurve3` is applied to Curve quote
 *      to compute local minOut.
 *
 * - Auto-split per exact path:
 *    • Split settings are configured per exact `path` (key = `keccak256(abi.encode(path))`).
 *    • Split is applied only when:
 *        - SplitCfg.enabled == true
 *        - SplitCfg.threshold > 0 and `amountIn >= threshold`
 *        - a second distinct enabled router exists with a valid quote
 *    • Execution is re-quoted per leg before swapping to reduce race-condition risk.
 */

/* ───────────────────── External interfaces ───────────────────── */

/// @notice Minimal V2-like router interface (UniswapV2/Sushi)
interface IUniswapV2RouterLike {
    /**
     * @notice Returns the expected amounts along the path for a given `amountIn`
     * @param  amountIn Input token amount (raw decimals of `path[0]`)
     * @param  path     Swap path, length >= 2
     * @return amounts  Array of step outputs; `amounts[last]` is the final out
     */
    function getAmountsOut(uint amountIn, address[] calldata path) external view returns (uint[] memory amounts);

    /**
     * @notice Perform an exact-in swap along a path
     * @param  amountIn     Exact tokens to swap
     * @param  amountOutMin Minimum acceptable output amount
     * @param  path         Swap path, length >= 2
     * @param  to           Recipient address
     * @param  deadline     Unix timestamp after which the tx must revert
     * @return amounts      Array with per-hop outputs; `amounts[last]` is the final out
     */
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
}

/// @notice Chainlink Feed Registry interface (only methods we use)
interface IFeedRegistry {
    function latestRoundData(address base, address quote)
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

    function decimals(address base, address quote) external view returns (uint8);
}

interface ICurve3Pool {
    function get_dy(int128 i, int128 j, uint256 dx) external view returns (uint256);
    function exchange(int128 i, int128 j, uint256 dx, uint256 min_dy) external;
}

/**
 * @title  SwapAdapterMk3Module
 * @notice Aggregates UniV2/SushiV2 quotes, optionally splits execution
 *         across top-2 venues, and enforces Chainlink-based price sanity checks
 */
contract SwapAdapterMk3Module is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /* ───────────────────── Types ───────────────────── */

    /// @notice Supported DEX kinds
    enum DexKind { NONE, UNIV2, SUSHIV2 }

    /// @notice Per-path split configuration
    struct SplitCfg {
        bool enabled;       // enable split for this tokenOut
        uint256 threshold;  // amountIn threshold to trigger splitting
        uint16 bpsA;        // first-leg share in basis points (e.g., 6000 = 60%)
    }

     /* ───────────────────── Mainnet fixed addresses ──────────────── */

    // Uniswap V2 Router02 (Ethereum mainnet)
    address public constant UNIV2_ROUTER = 0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D;

    // SushiSwap Router (Ethereum mainnet)
    address public constant SUSHI_ROUTER = 0xd9e1cE17f2641f24aE83637ab66a2cca9C378B9F;

    // Curve 3Pool (Ethereum mainnet)
    address public constant CURVE_3POOL = 0xbEbc44782C7dB0a1A60Cb6fe97d0b483032FF1C7;

    /* ─────────────────────── Chainlink consts ────────────────────── */

    /// @notice Chainlink Feed Registry (mainnet by default; can be updated by owner)
    address public constant FEED_REGISTRY_MAINNET = 0x47Fb2585D2C56Fe188D0E6ec628a38b74fCeeeDf;

    /// @notice Chainlink denominations (as per Feed Registry)
    address public constant DENOM_ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    address public constant DENOM_USD = 0x0000000000000000000000000000000000000348;

    /* ──────────────────────────── Storage ────────────────────────── */

    IUniswapV2RouterLike public immutable uniswapV2;
    IUniswapV2RouterLike public immutable sushiswapV2;
    ICurve3Pool public immutable curve3Pool;

    /// @notice Default slippage applied when caller passes `amountOutMin == 0` (in bps)
    uint16 public defaultSlippageBpsV2 = 25;       // 0.25%
    uint16 public defaultSlippageBpsCurve3 = 10;   // 0.10%

    /// @notice Per-path split settings (key = keccak256(abi.encode(path)))
    mapping(bytes32 => SplitCfg) public splitForPath;

    /// @notice Oracle guard configuration
    address public feedRegistry = FEED_REGISTRY_MAINNET;
    bool    public useOracleGuards  = true;       // enable oracle checks
    uint16  public maxDeviationBps  = 500;        // max allowed deviation vs oracle (e.g., 500 = 5%)
    uint256 public stalenessSeconds = 3600;       // feed freshness threshold

    /// @notice Tokens priced "as ETH" (e.g., WETH, stETH, wstETH)
    mapping(address => bool) public asEthLike;

    /* ───────────────────── Events ───────────────────── */

    event DefaultSlippageV2Updated(uint16 oldBps, uint16 newBps);
    event DefaultSlippageCurve3Updated(uint16 oldBps, uint16 newBps);
    
    event BestQuote(address indexed tokenIn, address indexed tokenOut, uint256 amountIn, DexKind bestDex, uint256 quotedOut);

    event SwapExecuted(
        DexKind indexed dex,
        address indexed tokenIn,
        address indexed tokenOut,
        address router,
        address to,
        uint256 amountIn,
        uint256 amountOut,
        uint256 minOut
    );

    event SwapSplitExecuted(
        address indexed user,
        address indexed to,
        DexKind dexA,
        DexKind dexB,
        address tokenIn,
        address tokenOut,
        uint256 totalIn,
        uint256 totalOut,
        uint16 bpsA
    );

    event OracleConfigUpdated(address feedRegistry, bool useOracleGuards, uint16 maxDeviationBps, uint256 stalenessSeconds);
    event OracleAsEthLikeSet(address indexed token, bool asEth);
    event OracleGuardCheck(address indexed tokenIn, address indexed tokenOut, uint256 amountIn, uint256 oracleOut, uint256 dexOut, bool pass);

    event SplitCfgForPathSet(bytes32 indexed pathKey, bool enabled, uint256 threshold, uint16 bpsA);
    event SplitCfgForPathCleared(bytes32 indexed pathKey);

    /* ───────────────────── Constructor ───────────────────── */

    /**
     * @notice Initializes router configs. Zero address means "skip"
     */
    constructor() Ownable(msg.sender) {
        require(UNIV2_ROUTER.code.length > 0, "UNIV2 !code");
        require(SUSHI_ROUTER.code.length > 0, "SUSHI !code");
        require(CURVE_3POOL.code.length > 0, "CURVE3 !code");
        require(FEED_REGISTRY_MAINNET.code.length > 0, "REGISTRY !code");

        uniswapV2 = IUniswapV2RouterLike(UNIV2_ROUTER);
        sushiswapV2 = IUniswapV2RouterLike(SUSHI_ROUTER);
        curve3Pool = ICurve3Pool(CURVE_3POOL);
    }

    /* ───────────────────── Admin: routers/slippage ───────────────────── */

    /**
     * @notice Update the default slippage V2 bps used when `amountOutMin == 0`
     * @param  newBps New slippage in basis points (0..10000)
     */
    function setdefaultSlippageBpsV2(uint16 newBps) external onlyOwner {
        require(newBps <= 10_000, "slippage too high");
        uint16 old = defaultSlippageBpsV2;
        defaultSlippageBpsV2 = newBps;
        emit DefaultSlippageV2Updated(old, newBps);
    }

    /**
     * @notice Update the default slippage Curve3 bps used when `amountOutMin == 0`
     * @param  newBps New slippage in basis points (0..10000)
     */
    function setdefaultSlippageBpsCurve3(uint16 newBps) external onlyOwner {
        require(newBps <= 10_000, "slippage too high");
        uint16 old = defaultSlippageBpsCurve3;
        defaultSlippageBpsCurve3 = newBps;
        emit DefaultSlippageCurve3Updated(old, newBps);
    }

    /* ───────────────────── Admin: split config ───────────────────── */

    /**
     * @notice Configure split settings for an exact swap path
     * @dev    Path key is computed as keccak256(abi.encode(path)).
     *         If `threshold == 0`, split is considered "not configured".
     *         Split is applied only when:
     *           - enabled == true
     *           - amountIn >= threshold
     *           - a second distinct router has a valid quote
     * @param  path       Exact swap path (length >= 2)
     * @param  enabled    Whether split is enabled for this path
     * @param  threshold  Minimum amountIn required to trigger splitting
     * @param  bpsA       Share of first router in basis points (0..10000)
     */
    function setSplitForPath(
        address[] calldata path,
        bool enabled,
        uint256 threshold,
        uint16 bpsA
    ) external onlyOwner {
        require(path.length >= 2, "path too short");
        require(bpsA <= 10_000, "bpsA > 10000");

        bytes32 key = _pathKey(path);

        splitForPath[key] = SplitCfg({
            enabled: enabled,
            threshold: threshold,
            bpsA: bpsA
        });

        emit SplitCfgForPathSet(key, enabled, threshold, bpsA);
    }

    /**
     * @notice Remove split configuration for a given path
     * @dev    Deletes the stored SplitCfg for this path key.
     *         After clearing, split will not be applied.
     * @param  path Exact swap path to clear
     */
    function clearSplitForPath(address[] calldata path) external onlyOwner {
        require(path.length >= 2, "path too short");
        bytes32 key = _pathKey(path);
        delete splitForPath[key];
        emit SplitCfgForPathCleared(key);
    }

    /* ───────────────────── Admin: Oracle guards ───────────────────── */

    /**
     * @notice Set oracle configuration (Feed Registry, toggle, deviation, staleness)
     * @param  reg           Feed Registry address (0 to keep current)
     * @param  enabled       Enable/disable oracle guard checks
     * @param  deviationBps  Max allowed negative deviation vs oracle in bps
     * @param  maxStaleness  Acceptable feed age in seconds (0 = skip staleness check)
     */
    function setOracleConfig(address reg, bool enabled, uint16 deviationBps, uint256 maxStaleness) external onlyOwner {
        require(deviationBps <= 10_000, "deviation too high");
        if (reg != address(0)) {
            require(reg.code.length > 0, "registry !code");
            feedRegistry = reg;
        }
        useOracleGuards  = enabled;
        maxDeviationBps  = deviationBps;
        stalenessSeconds = maxStaleness;
        emit OracleConfigUpdated(feedRegistry, useOracleGuards, maxDeviationBps, stalenessSeconds);
    }

    /**
     * @notice Mark/unmark token to be priced "as ETH" in oracle math
     * @param token  Token address
     * @param isAsEth If true, use ETH-denominated route for oracle price
     */
    function setAsEthLike(address token, bool isAsEth) external onlyOwner {
        asEthLike[token] = isAsEth;
        emit OracleAsEthLikeSet(token, isAsEth);
    }

    /* ───────────────────── View: Quotes ───────────────────── */

    /**
     * @notice V2-compatible `getAmountsOut` with optional oracle-guard filtering
     * @dev
     *          - If path is a direct Curve 3Pool stable->stable swap (length == 2):
     *             • returns [amountIn, curveOut] if Curve quote exists and passes oracle guard
     *             • otherwise returns empty array (no fallback in this branch)
     *          - Else:
     *             • selects the best quote among UniV2 and SushiV2
     *             • if oracle guard is enabled and price is available, returns empty array
     *              when best DEX quote is worse than oracle by more than maxDeviationBps
     *          - Returns empty array if no valid router quote exists
     *
     * @param  amountIn Input amount (raw decimals of `path[0]`)
     * @param  path     Swap path (length >= 2)
     * @return amounts  Standard V2 amounts array, or empty array if no acceptable route
     */
    function getAmountsOut(uint amountIn, address[] calldata path) external view returns (uint[] memory amounts) {
        require(path.length >= 2, "path too short");
        require(amountIn > 0, "amountIn=0");

        // ───────────────────── Curve 3Pool fast-path ─────────────────────
        if (_isCurve3Direct(path)) {
            (bool okI, int128 i) = _curve3Index(path[0]);
            (bool okJ, int128 j) = _curve3Index(path[1]);
            if (!okI || !okJ) return new uint[](0);
            
            uint out = curve3Pool.get_dy(i, j, amountIn);
            if (out == 0) return new uint[](0);

            if (useOracleGuards) {
                (uint256 oracleOut, bool ok) = _oracleExpectedOutRaw(path[0], path[1], amountIn);
                if (ok && !_passesOracleGuard(out, oracleOut)) return new uint[](0);
            }

            uint[] memory am = new uint[](2);
            am[0] = amountIn;
            am[1] = out;
            return am;
        }

        // ───────────────────── Default: V2 routers ─────────────────────
        (DexKind bestDex, address bestRouter, uint256 bestOut) = _quoteBest(amountIn, path);
        if (bestDex == DexKind.NONE || bestRouter == address(0) || bestOut == 0) {
            return new uint[](0);
        }

        // Oracle guard (view only)
        if (useOracleGuards) {
            (uint256 oracleOut, bool ok) = _oracleExpectedOutRaw(path[0], path[path.length - 1], amountIn);
            if (ok) {
                bool pass = _passesOracleGuard(bestOut, oracleOut);
                if (!pass) {
                    // Signal "no valid route" by returning empty array
                    return new uint[](0);
                }
            }
        }

        (bool ok2, bytes memory data) =
            bestRouter.staticcall(abi.encodeWithSelector(IUniswapV2RouterLike.getAmountsOut.selector, amountIn, path));
        if (!ok2 || data.length == 0) return new uint[](0);
        return abi.decode(data, (uint[]));
    }

    /* ───────────────────── Swap (V2-Compatible with Split and Oracle Guard) ───────────────────── */

    /**
     * @notice Execute an exact-in swap with optional auto-split and oracle guards
     * @dev    High-level flow:
     *         1) If `path` is a direct Curve 3Pool stable->stable swap (length == 2):
     *              - uses `curve3Pool.exchange(i, j, amountIn, minOutUsed)`
     *              - if `amountOutMin == 0`, computes `minOutUsed` from Curve quote using `defaultSlippageBpsCurve3`
     *              - if oracle guards are enabled and oracle price is available & fresh, reverts if Curve quote
     *                is worse than oracle by more than `maxDeviationBps`
     *              - transfers final tokenOut to `to`
     *
     *         2) Otherwise (V2 routers Uni/Sushi):
     *              - finds top-1 and top-2 router quotes among enabled venues
     *              - applies split only when the per-path SplitCfg is enabled AND:
     *                    * threshold > 0
     *                    * amountIn >= threshold
     *                    * a second distinct router exists with a valid quote
     *              - if `amountOutMin == 0`, computes per-leg minOut using `defaultSlippageBpsV2`
     *              - if oracle guards are enabled and oracle price is available & fresh, reverts if the expected
     *                DEX output (single quote or sum of re-quotes in split) is worse than oracle by more than `maxDeviationBps`
     *              - pulls `amountIn` from msg.sender, approves router(s), executes swap(s) sending outputs to `to`
     *
     * @param  amountIn     Exact tokens to swap (pulled from msg.sender)
     * @param  amountOutMin Global minimum acceptable output (0 => compute local minOut from quotes + default slippage)
     * @param  path         Swap path (length >= 2)
     * @param  to           Recipient of output tokens
     * @param  deadline     Unix timestamp after which the tx must revert
     * @return amounts      If split: [amountIn, totalOut]; otherwise: V2 router amounts array
     */
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external nonReentrant returns (uint[] memory amounts)
    {
        require(path.length >= 2, "path too short");
        require(amountIn > 0, "amountIn=0");
        require(to != address(0), "bad to");

        address tokenIn  = path[0];
        address tokenOut = path[path.length - 1];

        // ───────────────────── Curve 3Pool fast-path (only for 2-token stable->stable) ─────────────────────
        if (_isCurve3Direct(path)) {
            (bool okI, int128 i) = _curve3Index(tokenIn);
            (bool okJ, int128 j) = _curve3Index(tokenOut);
            require(okI && okJ, "curve3 unsupported");

            uint256 outQuote = curve3Pool.get_dy(i, j, amountIn);
            require(outQuote > 0, "curve3 no quote");

            if (useOracleGuards) {
                (uint256 oracleOut, bool ok) = _oracleExpectedOutRaw(tokenIn, tokenOut, amountIn);
                if (ok) require(_passesOracleGuard(outQuote, oracleOut), "oracle guard");
            }

            uint256 minOutUsed = amountOutMin;
            if (minOutUsed == 0) {
                minOutUsed = (outQuote * (10_000 - defaultSlippageBpsCurve3)) / 10_000;
            }

            IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
            _approveMax(tokenIn, address(curve3Pool));

            uint256 balBefore = IERC20(tokenOut).balanceOf(address(this));
            curve3Pool.exchange(i, j, amountIn, minOutUsed);
            uint256 out = IERC20(tokenOut).balanceOf(address(this)) - balBefore;
            
            require(out >= minOutUsed, "minOut not met");
            IERC20(tokenOut).safeTransfer(to, out);

            uint[] memory am = new uint[](2);
            am[0] = amountIn;
            am[1] = out;

            emit SwapExecuted(DexKind.NONE, tokenIn, tokenOut, address(curve3Pool), to, amountIn, out, minOutUsed);
            return am;
        }

        // ───────────────────── Default: V2 routers (Uni/Sushi) with split + oracle guard ─────────────────────
        (
            DexKind dex1, address router1, uint256 out1,
            DexKind dex2, address router2, uint256 out2
        ) = _quoteTop2(amountIn, path);

        require(dex1 != DexKind.NONE && router1 != address(0) && out1 > 0, "no route");

        bytes32 pKey = _pathKey(path);
        SplitCfg memory cfg = splitForPath[pKey];

        // rule: if threshold == 0 — we consider it “not set”, there is no split
        bool doSplit = (
            cfg.enabled &&
            cfg.threshold > 0 &&
            amountIn >= cfg.threshold &&
            dex2 != DexKind.NONE &&
            router2 != address(0) &&
            out2 > 0 &&
            router2 != router1
        );

        // Oracle guard pre-check on the full amountIn
        uint256 oracleOutTotal = 0;
        bool oracleOk = false;
        if (useOracleGuards) {
            (oracleOutTotal, oracleOk) = _oracleExpectedOutRaw(tokenIn, tokenOut, amountIn);
        }

        if (!doSplit) {
            emit BestQuote(tokenIn, tokenOut, amountIn, dex1, out1);

            uint minOutUsed = amountOutMin;
            if (minOutUsed == 0) {
                uint16 bps = defaultSlippageBpsV2;
                minOutUsed = (out1 * (10_000 - bps)) / 10_000;
            }
            require(out1 >= minOutUsed, "quote < minOut");

            if (useOracleGuards && oracleOk) {
                bool pass = _passesOracleGuard(out1, oracleOutTotal);
                emit OracleGuardCheck(tokenIn, tokenOut, amountIn, oracleOutTotal, out1, pass);
                require(pass, "oracle guard");
            }

            IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
            _approveMax(tokenIn, address(router1));

            amounts = IUniswapV2RouterLike(router1).swapExactTokensForTokens(
                amountIn, minOutUsed, path, to, deadline
            );
            require(amounts.length >= 2 && amounts[amounts.length - 1] >= minOutUsed, "minOut not met");

            emit SwapExecuted(dex1, tokenIn, tokenOut, address(router1), to, amountIn, amounts[amounts.length - 1], minOutUsed);
            return amounts;
        }

        // Split branch
        uint256 amountA = (amountIn * uint256(cfg.bpsA)) / 10_000;
        uint256 amountB = amountIn - amountA;

        // Re-quote per leg to minimize race conditions
        uint256 qA = _safeQuote(IUniswapV2RouterLike(router1), amountA, path);
        uint256 qB = _safeQuote(IUniswapV2RouterLike(router2), amountB, path);
        require(qA > 0 && qB > 0, "re-quote failed");

        if (useOracleGuards && oracleOk) {
            uint256 dexTotal = qA + qB;
            bool pass = _passesOracleGuard(dexTotal, oracleOutTotal);
            emit OracleGuardCheck(tokenIn, tokenOut, amountIn, oracleOutTotal, dexTotal, pass);
            require(pass, "oracle guard");
        }

        uint256 minOutA;
        uint256 minOutB;

        if (amountOutMin == 0) {
            uint16 bps = defaultSlippageBpsV2;
            minOutA = (qA * (10_000 - bps)) / 10_000;
            minOutB = (qB * (10_000 - bps)) / 10_000;
        } else {
            (minOutA, minOutB) = _proRataMinOut(amountOutMin, qA, qB);
            require(qA >= minOutA && qB >= minOutB, "quote < leg minOut");
        }

        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
        _approveMax(tokenIn, address(router1));
        _approveMax(tokenIn, address(router2));

        uint256 outLegA = 0;
        uint256 outLegB = 0;

        if (amountA > 0) {
            uint[] memory amA = IUniswapV2RouterLike(router1).swapExactTokensForTokens(
                amountA, minOutA, path, to, deadline
            );
            require(amA.length >= 2 && amA[amA.length - 1] >= minOutA, "legA minOut not met");
            outLegA = amA[amA.length - 1];
            emit SwapExecuted(dex1, tokenIn, tokenOut, address(router1), to, amountA, outLegA, minOutA);
        }

        if (amountB > 0) {
            uint[] memory amB = IUniswapV2RouterLike(router2).swapExactTokensForTokens(
                amountB, minOutB, path, to, deadline
            );
            require(amB.length >= 2 && amB[amB.length - 1] >= minOutB, "legB minOut not met");
            outLegB = amB[amB.length - 1];
            emit SwapExecuted(dex2, tokenIn, tokenOut, address(router2), to, amountB, outLegB, minOutB);
        }

        uint256 totalOut = outLegA + outLegB;
        if (amountOutMin > 0) require(totalOut >= amountOutMin, "total minOut not met");

        emit SwapSplitExecuted(msg.sender, to, dex1, dex2, tokenIn, tokenOut, amountIn, totalOut, cfg.bpsA);

        amounts = new uint[](2);
        amounts[0] = amountIn;
        amounts[1] = totalOut;
        return amounts;
    }

    function swapExactTokensForTokens2(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external nonReentrant returns (uint[] memory amounts)
    {
        require(path.length >= 2, "path too short");
        require(amountIn > 0, "amountIn=0");
        require(to != address(0), "bad to");

        address tokenIn  = path[0];
        address tokenOut = path[path.length - 1];

        // ───────────────────── Default: V2 routers (Uni/Sushi) with split + oracle guard ─────────────────────
        (
            DexKind dex1, address router1, uint256 out1,
            DexKind dex2, address router2, uint256 out2
        ) = _quoteTop2(amountIn, path);

        require(dex1 != DexKind.NONE && router1 != address(0) && out1 > 0, "no route");

        bytes32 pKey = _pathKey(path);
        SplitCfg memory cfg = splitForPath[pKey];

        // rule: if threshold == 0 — we consider it “not set”, there is no split
        bool doSplit = (
            cfg.enabled &&
            cfg.threshold > 0 &&
            amountIn >= cfg.threshold &&
            dex2 != DexKind.NONE &&
            router2 != address(0) &&
            out2 > 0 &&
            router2 != router1
        );

        // Oracle guard pre-check on the full amountIn
        uint256 oracleOutTotal = 0;
        bool oracleOk = false;
        if (useOracleGuards) {
            (oracleOutTotal, oracleOk) = _oracleExpectedOutRaw(tokenIn, tokenOut, amountIn);
        }

        if (!doSplit) {
            emit BestQuote(tokenIn, tokenOut, amountIn, dex1, out1);

            uint minOutUsed = amountOutMin;
            if (minOutUsed == 0) {
                uint16 bps = defaultSlippageBpsV2;
                minOutUsed = (out1 * (10_000 - bps)) / 10_000;
            }
            require(out1 >= minOutUsed, "quote < minOut");

            if (useOracleGuards && oracleOk) {
                bool pass = _passesOracleGuard(out1, oracleOutTotal);
                emit OracleGuardCheck(tokenIn, tokenOut, amountIn, oracleOutTotal, out1, pass);
                require(pass, "oracle guard");
            }

            IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
            _approveMax(tokenIn, address(router1));

            amounts = IUniswapV2RouterLike(router1).swapExactTokensForTokens(
                amountIn, minOutUsed, path, to, deadline
            );
            require(amounts.length >= 2 && amounts[amounts.length - 1] >= minOutUsed, "minOut not met");

            emit SwapExecuted(dex1, tokenIn, tokenOut, address(router1), to, amountIn, amounts[amounts.length - 1], minOutUsed);
            return amounts;
        }

        // Split branch
        uint256 amountA = (amountIn * uint256(cfg.bpsA)) / 10_000;
        uint256 amountB = amountIn - amountA;

        // Re-quote per leg to minimize race conditions
        uint256 qA = _safeQuote(IUniswapV2RouterLike(router1), amountA, path);
        uint256 qB = _safeQuote(IUniswapV2RouterLike(router2), amountB, path);
        require(qA > 0 && qB > 0, "re-quote failed");

        if (useOracleGuards && oracleOk) {
            uint256 dexTotal = qA + qB;
            bool pass = _passesOracleGuard(dexTotal, oracleOutTotal);
            emit OracleGuardCheck(tokenIn, tokenOut, amountIn, oracleOutTotal, dexTotal, pass);
            require(pass, "oracle guard");
        }

        uint256 minOutA;
        uint256 minOutB;

        if (amountOutMin == 0) {
            uint16 bps = defaultSlippageBpsV2;
            minOutA = (qA * (10_000 - bps)) / 10_000;
            minOutB = (qB * (10_000 - bps)) / 10_000;
        } else {
            (minOutA, minOutB) = _proRataMinOut(amountOutMin, qA, qB);
            require(qA >= minOutA && qB >= minOutB, "quote < leg minOut");
        }

        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
        _approveMax(tokenIn, address(router1));
        _approveMax(tokenIn, address(router2));

        uint256 outLegA = 0;
        uint256 outLegB = 0;

        if (amountA > 0) {
            uint[] memory amA = IUniswapV2RouterLike(router1).swapExactTokensForTokens(
                amountA, minOutA, path, to, deadline
            );
            require(amA.length >= 2 && amA[amA.length - 1] >= minOutA, "legA minOut not met");
            outLegA = amA[amA.length - 1];
            emit SwapExecuted(dex1, tokenIn, tokenOut, address(router1), to, amountA, outLegA, minOutA);
        }

        if (amountB > 0) {
            uint[] memory amB = IUniswapV2RouterLike(router2).swapExactTokensForTokens(
                amountB, minOutB, path, to, deadline
            );
            require(amB.length >= 2 && amB[amB.length - 1] >= minOutB, "legB minOut not met");
            outLegB = amB[amB.length - 1];
            emit SwapExecuted(dex2, tokenIn, tokenOut, address(router2), to, amountB, outLegB, minOutB);
        }

        uint256 totalOut = outLegA + outLegB;
        if (amountOutMin > 0) require(totalOut >= amountOutMin, "total minOut not met");

        emit SwapSplitExecuted(msg.sender, to, dex1, dex2, tokenIn, tokenOut, amountIn, totalOut, cfg.bpsA);

        amounts = new uint[](2);
        amounts[0] = amountIn;
        amounts[1] = totalOut;
        return amounts;
    }

    /* ───────────────────── Internal: V2 quote helpers ───────────────────── */

    /**
     * @notice Safe wrapper around `router.getAmountsOut` that returns 0 on failure
     * @param  router   V2-like router
     * @param  amountIn Input amount
     * @param  path     Swap path
     * @return out      Final output amount or 0 if quoting failed
     */
    function _safeQuote(IUniswapV2RouterLike router, uint amountIn, address[] calldata path) internal view returns (uint out) {
        if (address(router) == address(0) || amountIn == 0 || path.length < 2) return 0;
        try router.getAmountsOut(amountIn, path) returns (uint[] memory amts) {
            if (amts.length >= 2) return amts[amts.length - 1];
            return 0;
        } catch {
            return 0;
        }
    }

    /**
     * @notice Approve `spender` for `token` with max allowance if current allowance is not huge
     * @param  token    ERC20 token to approve
     * @param  spender  Spender address (router)
     */
    function _approveMax(address token, address spender) internal {
        IERC20 t = IERC20(token);
        uint256 cur = t.allowance(address(this), spender);
        if (cur < type(uint256).max / 2) {
            if (cur > 0) t.forceApprove(spender, 0);
            t.forceApprove(spender, type(uint256).max);
        }
    }

    /**
     * @notice Split a global `totalMinOut` pro-rata by the relative quotes qA/qB
     * @param  totalMinOut Global minOut target
     * @param  qA       Quote  for leg A
     * @param  qB       Quote  for leg B
     * @return minOutA  MinOut for leg A
     * @return minOutB  MinOut for leg B
     */
    function _proRataMinOut(
        uint256 totalMinOut,
        uint256 qA,
        uint256 qB
    ) internal pure returns (uint256 minOutA, uint256 minOutB) {
        uint256 sum = qA + qB;
        if (sum == 0) return (0, 0);
        minOutA = (totalMinOut * qA) / sum;
        minOutB = totalMinOut - minOutA;
    }

    /**
     * @notice Find the best single venue among enabled routers
     * @param  amountIn    Input amount
     * @param  path        Swap path
     * @return bestDex     Enum of best venue
     * @return bestRouter  Address of best router
     * @return bestOut     Best final out amount
     */
    function _quoteBest(uint amountIn, address[] calldata path)
        internal
        view
        returns (DexKind bestDex, address bestRouter, uint256 bestOut)
    {
        uint256 u = _safeQuote(uniswapV2, amountIn, path);
        uint256 s = _safeQuote(sushiswapV2, amountIn, path);

        if (u == 0 && s == 0) {
            return (DexKind.NONE, address(0), 0);
        }

        if (u >= s) {
            return (DexKind.UNIV2, address(uniswapV2), u);
        } else {
            return (DexKind.SUSHIV2, address(sushiswapV2), s);
        }
    }

    /**
     * @notice Find top-1 and top-2 venues (if any) among enabled routers.
     * @param  amountIn Input amount
     * @param  path     Swap path
     * @return dex1     Top-1 dex venue and quote
     * @return router1  Top-1 router venue and quote
     * @return out1     Top-1 out venue and quote
     * @return dex2     Top-2 dex venue and quote (or NONE/0 if missing)
     * @return router2  Top-2 router venue and quote (or NONE/0 if missing)
     * @return out2     Top-2 out venue and quote (or NONE/0 if missing)
     */
    function _quoteTop2(uint amountIn, address[] calldata path)
        internal
        view
        returns (
            DexKind dex1, address router1, uint256 out1,
            DexKind dex2, address router2, uint256 out2
        )
    {
        uint256 u = _safeQuote(uniswapV2, amountIn, path);
        uint256 s = _safeQuote(sushiswapV2, amountIn, path);

        // no routes
        if (u == 0 && s == 0) {
            return (DexKind.NONE, address(0), 0, DexKind.NONE, address(0), 0);
        }

        // only one route
        if (u == 0) {
            return (DexKind.SUSHIV2, address(sushiswapV2), s, DexKind.NONE, address(0), 0);
        }
        if (s == 0) {
            return (DexKind.UNIV2, address(uniswapV2), u, DexKind.NONE, address(0), 0);
        }

        // both routes exist => rank
        if (u >= s) {
            return (
                DexKind.UNIV2, address(uniswapV2), u,
                DexKind.SUSHIV2, address(sushiswapV2), s
            );
        } else {
            return (
                DexKind.SUSHIV2, address(sushiswapV2), s,
                DexKind.UNIV2, address(uniswapV2), u
            );
        }
    }

    /* ───────────────────── Internal: Chainlink oracle helpers ───────────────────── */

    /**
     * @notice Safe 10**decs (capped so it cannot overflow uint256)
     * @param  decs     Decimals
     * @return 10**decs capped to 10**77
     */
    function _safePow10(uint8 decs) internal pure returns (uint256) {
        uint8 safeDecs = decs > 77 ? 77 : decs; // 10**78 > 2**256
        unchecked { return 10 ** uint256(safeDecs); }
    }

    /**
     * @notice Safely read ERC20 decimals (defaults to 18 on failure)
     * @param token Token address (0 treated as 18)
     * @return d Decimals (best-effort)
     */
    function _safeDecimals(address token) internal view returns (uint8 d) {
        if (token == address(0)) return 18;
        try IERC20Metadata(token).decimals() returns (uint8 dec) {
            return dec;
        } catch {
            return 18; // conservative default
        }
    }

    /**
     * @notice Read a Feed Registry pair price normalized to 1e18
     * @param  base       Base asset (token or DENOM_ETH)
     * @param  quote      Quote asset (DENOM_USD or DENOM_ETH)
     * @return price1e18  Price scaled to 1e18 (0 if missing)
     * @return updatedAt  Last update timestamp (0 if missing)
     */
    function _pairPrice1e18(address base, address quote) internal view returns (uint256 price1e18, uint256 updatedAt) {
        address reg = feedRegistry;
        if (reg == address(0)) return (0, 0);

        try IFeedRegistry(reg).latestRoundData(base, quote) returns (
            uint80, int256 answer, uint256, uint256 upd, uint80
        ) {
            if (answer <= 0) return (0, upd);
            uint8 dec = IFeedRegistry(reg).decimals(base, quote);
            uint256 u = uint256(answer);
            if (dec < 18) price1e18 = u * 10 ** (18 - dec);
            else if (dec > 18) price1e18 = u / 10 ** (dec - 18);
            else price1e18 = u;
            return (price1e18, upd);
        } catch {
            return (0, 0);
        }
    }

    /**
     * @notice USD price (1e18) for a token, with option to treat it as ETH
     * @param  token     Token address (0 = ETH)
     * @param  asEth     If true, read ETH/USD directly
     * @return price1e18 Price scaled to 1e18 (0 if unavailable)
     * @return updatedAt Last update timestamp (0 if unavailable)
     */
    function _oracleUsdPrice1e18(address token, bool asEth)
        internal
        view
        returns (uint256 price1e18, uint256 updatedAt)
    {
        if (asEth || token == address(0)) {
            (price1e18, updatedAt) = _pairPrice1e18(DENOM_ETH, DENOM_USD);
            return (price1e18, updatedAt);
        }

        // Direct TOKEN/USD
        (price1e18, updatedAt) = _pairPrice1e18(token, DENOM_USD);
        if (price1e18 != 0) return (price1e18, updatedAt);

        // TOKEN/ETH × ETH/USD
        (uint256 tEth, uint256 updA) = _pairPrice1e18(token, DENOM_ETH);
        if (tEth != 0) {
            (uint256 ethUsd, uint256 updB) = _pairPrice1e18(DENOM_ETH, DENOM_USD);
            if (ethUsd != 0) {
                uint256 minUpd = updA < updB ? updA : updB;
                return ((tEth * ethUsd) / 1e18, minUpd);
            }
        }
        return (0, 0);
    }

    /**
     * @notice Oracle-expected amountOut in raw decimals of `tokenOut`
     * @dev    Computes expected output using Chainlink Feed Registry prices:
     *         - Reads USD prices for tokenIn and tokenOut (direct TOKEN/USD if available,
     *           otherwise TOKEN/ETH × ETH/USD).
     *         - Converts `amountIn` (raw tokenIn units) -> USD (1e18) -> tokenOut (raw units).
     *
     *         `ok` is TRUE only when oracle prices were actually used and passed freshness checks.
     *         If `tokenIn == tokenOut` or `amountIn == 0`, returns `(amountIn, false)` without oracle reads.
     *
     * @param  tokenIn   Input token address
     * @param  tokenOut  Output token address
     * @param  amountIn  Input amount in raw decimals of tokenIn
     * @return outRaw    Oracle-based expected output amount in raw decimals of tokenOut
     * @return ok        True iff oracle prices were available (and not stale when enabled)
     */
    function _oracleExpectedOutRaw(address tokenIn, address tokenOut, uint256 amountIn)
        internal
        view
        returns (uint256 outRaw, bool ok)
    {
        if (tokenIn == tokenOut || amountIn == 0) return (amountIn, false);

        (uint256 pIn,  uint256 updIn ) = _oracleUsdPrice1e18(tokenIn,  asEthLike[tokenIn]);
        (uint256 pOut, uint256 updOut) = _oracleUsdPrice1e18(tokenOut, asEthLike[tokenOut]);
        if (pIn == 0 || pOut == 0) return (0, false);

        // Staleness
        if (stalenessSeconds > 0) {
            uint256 nowTs = block.timestamp;
            if (updIn == 0 || updOut == 0) return (0, false);
            if (nowTs > updIn  && (nowTs - updIn)  > stalenessSeconds) return (0, false);
            if (nowTs > updOut && (nowTs - updOut) > stalenessSeconds) return (0, false);
        }

        uint8  dIn  = _safeDecimals(tokenIn);
        uint8  dOut = _safeDecimals(tokenOut);
        uint256 powIn  = _safePow10(dIn);
        uint256 powOut = _safePow10(dOut);

        // amountInHuman(1e18) = amountIn * 1e18 / 10**dIn
        uint256 inHuman1e18 = (amountIn * 1e18) / powIn;

        // usdIn1e18 = inHuman1e18 * pIn / 1e18
        uint256 usdIn1e18 = (inHuman1e18 * pIn) / 1e18;

        // outHuman1e18 = usdIn1e18 * 1e18 / pOut
        if (pOut == 0) return (0, false);
        uint256 outHuman1e18 = (usdIn1e18 * 1e18) / pOut;

        // outRaw = outHuman1e18 * 10**dOut / 1e18
        outRaw = (outHuman1e18 * powOut) / 1e18;
        return (outRaw, true);
    }

    /**
     * @notice Validate that DEX expected out is not worse than oracle by more than `maxDeviationBps`
     * @param  dexOut     DEX quote (or sum of leg quotes when splitting)
     * @param  oracleOut  Oracle-expected out for the same `amountIn`
     * @return True if `dexOut` is acceptable, or oracleOut == 0 (no check)
     */
    function _passesOracleGuard(uint256 dexOut, uint256 oracleOut) internal view returns (bool) {
        if (oracleOut == 0) return true;
        // dexOut >= oracleOut * (1 - maxDev)
        uint256 minAllowed = (oracleOut * (10_000 - maxDeviationBps)) / 10_000;
        return dexOut >= minAllowed;
    }

    /**
     * @notice Return Curve 3Pool index for supported stablecoin
     * @dev    Supports DAI (0), USDC (1), USDT (2).
     *         Returns (false, 0) if token is not part of 3Pool.
     * @param  t Token address
     * @return ok   True if token is a supported 3Pool stable
     * @return idx  Curve 3Pool index (int128)
     */
    function _curve3Index(address t) internal pure returns (bool ok, int128 idx) {
        if (t == 0x6B175474E89094C44Da98b954EedeAC495271d0F) return (true, 0); // DAI
        if (t == 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48) return (true, 1); // USDC
        if (t == 0xdAC17F958D2ee523a2206206994597C13D831ec7) return (true, 2); // USDT
        return (false, 0);
    }

    /**
     * @notice Check whether path is a direct 3Pool stable-to-stable swap
     * @dev    Returns true only when:
     *           - path.length == 2
     *           - both tokens are 3Pool stables
     *           - tokens are different
     * @param  path Swap path
     * @return True if eligible for Curve 3Pool fast-path
     */
    function _isCurve3Direct(address[] calldata path) internal pure returns (bool) {
        if (path.length != 2) return false;
        (bool ok0,) = _curve3Index(path[0]);
        (bool ok1,) = _curve3Index(path[1]);
        return ok0 && ok1 && path[0] != path[1];
    }

    /**
     * @notice Compute unique key for a swap path
     * @dev    Uses keccak256(abi.encode(path)).
     *         Order-sensitive: [A,B] ≠ [B,A].
     * @param  path Swap path
     * @return Path hash used as key in splitForPath mapping
     */
    function _pathKey(address[] calldata path) internal pure returns (bytes32) {
        return keccak256(abi.encode(path));
    }

    /* ───────────────────── Rescue ───────────────────── */

    /**
     * @notice Emergency token withdrawal by the owner
     * @param  token  ERC20 token address
     * @param  to     Recipient address
     * @param  amount Amount to transfer
     */
    function rescueTokens(address token, address to, uint256 amount) external onlyOwner {
        IERC20(token).safeTransfer(to, amount);
    }
}