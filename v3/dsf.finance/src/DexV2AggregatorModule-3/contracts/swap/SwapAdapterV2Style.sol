// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/**
 * @title  DexV2AggregatorModule (UniV2/SushiV2/PancakeV2 with auto-split + Chainlink guards)
 * @author Andrei Averin — CTO dsf.finance
 * @notice V2 DEX aggregator that can split a swap across two best routers and
 *         protect execution with Chainlink Feed Registry price guards
 * @dev
 * - If `useOracleGuards = true` and an oracle price is available & fresh:
 *    • `getAmountsOut` returns an empty array when the best DEX quote is worse
 *      than oracle price by more than `maxDeviationBps`
 *    • `swap*` reverts with "oracle guard" if execution would be worse than oracle
 *      by more than `maxDeviationBps`
 * - When `amountOutMin == 0`, a default slippage (`defaultSlippageBps`) is applied
 *   to the quote(s) to compute a local minOut
 * - Split settings are configured per `tokenOut`
 */

/* ───────────────────── External interfaces ───────────────────── */

/// @notice Minimal V2-like router interface (UniswapV2/Sushi/Pancake)
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

/**
 * @title  DexV2AggregatorModule
 * @notice Aggregates UniV2/SushiV2/PancakeV2 quotes, optionally splits execution
 *         across top-2 venues, and enforces Chainlink-based price sanity checks
 */
contract DexV2AggregatorModule is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /* ───────────────────── Types ───────────────────── */

    /// @notice Supported DEX kinds
    enum DexKind { NONE, UNIV2, SUSHIV2, PANCAKEV2 }

    struct RouterCfg {
        IUniswapV2RouterLike router;
        bool enabled;
    }

    /// @notice Per-`tokenOut` split configuration
    struct SplitCfg {
        bool enabled;       // enable split for this tokenOut
        uint256 threshold;  // amountIn threshold to trigger splitting
        uint16 bpsA;        // first-leg share in basis points (e.g., 6000 = 60%)
    }

    /* ───────────────────── Chainlink consts ───────────────────── */

    /// @notice Chainlink Feed Registry (mainnet by default; can be updated by owner)
    address public feedRegistry = 0x47Fb2585D2C56Fe188D0E6ec628a38b74fCeeeDf;

    /// @notice Chainlink denominations (as per Feed Registry)
    address public constant DENOM_ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    address public constant DENOM_USD = 0x0000000000000000000000000000000000000348;

    /* ───────────────────── Storage ───────────────────── */

    /// @notice UniswapV2 router config
    RouterCfg public uniswapV2;
    /// @notice SushiSwapV2 router config
    RouterCfg public sushiswapV2;
    /// @notice PancakeV2 router config
    RouterCfg public pancakeV2;

    /// @notice Default slippage applied when caller passes `amountOutMin == 0` (in bps)
    uint16 public defaultSlippageBps = 50; // 0.50%

    /// @notice Per-`tokenOut` split settings
    mapping(address => SplitCfg) public splitForTokenOut;

    /// @notice Oracle guard configuration
    bool    public useOracleGuards  = true;       // enable oracle checks
    uint16  public maxDeviationBps  = 500;        // max allowed deviation vs oracle (e.g., 500 = 5%)
    uint256 public stalenessSeconds = 3600;       // feed freshness threshold

    /// @notice Tokens priced "as ETH" (e.g., WETH, stETH, wstETH)
    mapping(address => bool) public asEthLike;

    /* ───────────────────── Events ───────────────────── */

    event RouterUpdated(DexKind indexed dex, address router, bool enabled);
    event DefaultSlippageUpdated(uint16 oldBps, uint16 newBps);

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

    event SplitCfgSet(address indexed tokenOut, bool enabled, uint256 threshold, uint16 bpsA);
    event SplitThresholdSet(address indexed tokenOut, uint256 threshold);
    event SplitEnabledSet(address indexed tokenOut, bool enabled);
    event SplitBpsASet(address indexed tokenOut, uint16 bpsA);

    event OracleConfigUpdated(address feedRegistry, bool useOracleGuards, uint16 maxDeviationBps, uint256 stalenessSeconds);
    event OracleAsEthLikeSet(address indexed token, bool asEth);
    event OracleGuardCheck(address indexed tokenIn, address indexed tokenOut, uint256 amountIn, uint256 oracleOut, uint256 dexOut, bool pass);

    /* ───────────────────── Constructor ───────────────────── */

    /**
     * @notice Initializes router configs. Zero address means "skip"
     * @param  univ2Router    UniswapV2-compatible router address
     * @param  sushiRouter    SushiSwapV2-compatible router address
     * @param  pancakeRouter  PancakeV2-compatible router address
     */
    constructor(address univ2Router, address sushiRouter, address pancakeRouter) Ownable(msg.sender) {
        if (univ2Router != address(0)) uniswapV2 = RouterCfg({router: IUniswapV2RouterLike(univ2Router), enabled: true});
        if (sushiRouter != address(0)) sushiswapV2 = RouterCfg({router: IUniswapV2RouterLike(sushiRouter), enabled: true});
        if (pancakeRouter!= address(0)) pancakeV2  = RouterCfg({router: IUniswapV2RouterLike(pancakeRouter), enabled: true});
    }

    /* ───────────────────── Admin: routers/slippage ───────────────────── */

    /**
     * @notice Set UniswapV2 router and enable/disable it
     * @param  router  Router address
     * @param  enabled Whether to enable this venue for quoting/execution
     */
    function setUniswapV2(address router, bool enabled) external onlyOwner {
        uniswapV2 = RouterCfg(IUniswapV2RouterLike(router), enabled);
        emit RouterUpdated(DexKind.UNIV2, router, enabled);
    }

    /**
     * @notice Set SushiSwapV2 router and enable/disable it
     * @param  router  Router address
     * @param  enabled Whether to enable this venue for quoting/execution
     */
    function setSushiV2(address router, bool enabled) external onlyOwner {
        sushiswapV2 = RouterCfg(IUniswapV2RouterLike(router), enabled);
        emit RouterUpdated(DexKind.SUSHIV2, router, enabled);
    }

    /**
     * @notice Set PancakeV2 router and enable/disable it
     * @param  router  Router address
     * @param  enabled Whether to enable this venue for quoting/execution
     */
    function setPancakeV2(address router, bool enabled) external onlyOwner {
        pancakeV2 = RouterCfg(IUniswapV2RouterLike(router), enabled);
        emit RouterUpdated(DexKind.PANCAKEV2, router, enabled);
    }

    /**
     * @notice Update the default slippage bps used when `amountOutMin == 0`
     * @param  newBps New slippage in basis points (0..10000)
     */
    function setDefaultSlippageBps(uint16 newBps) external onlyOwner {
        require(newBps <= 10_000, "slippage too high");
        uint16 old = defaultSlippageBps;
        defaultSlippageBps = newBps;
        emit DefaultSlippageUpdated(old, newBps);
    }

    /* ───────────────────── Admin: split config ───────────────────── */

    /**
     * @notice Set per-tokenOut split settings
     * @param  tokenOut  Target output token for which split applies
     * @param  enabled   Enable/disable splitting for this tokenOut
     * @param  threshold Minimum `amountIn` to trigger splitting
     * @param  bpsA      First-leg share in bps (0..10000)
     */
    function setSplitForTokenOut(
        address tokenOut,
        bool enabled,
        uint256 threshold,
        uint16 bpsA
    ) public onlyOwner {
        require(bpsA <= 10_000, "bpsA > 10000");
        splitForTokenOut[tokenOut] = SplitCfg({enabled: enabled, threshold: threshold, bpsA: bpsA});
        emit SplitCfgSet(tokenOut, enabled, threshold, bpsA);
    }

    /**
     * @notice Update only the threshold for given `tokenOut`
     * @param  tokenOut  Token out to update
     * @param  threshold New threshold
     */
    function setSplitThreshold(address tokenOut, uint256 threshold) external onlyOwner {
        splitForTokenOut[tokenOut].threshold = threshold;
        emit SplitThresholdSet(tokenOut, threshold);
    }

    /**
     * @notice Enable/disable split for given `tokenOut`
     * @param  tokenOut Token out to update
     * @param  enabled  Flag to set
     */
    function setSplitEnabled(address tokenOut, bool enabled) external onlyOwner {
        splitForTokenOut[tokenOut].enabled = enabled;
        emit SplitEnabledSet(tokenOut, enabled);
    }

    /**
     * @notice Update first-leg share for given `tokenOut`
     * @param  tokenOut Token out to update
     * @param  bpsA     First-leg share in bps (0..10000)
     */
    function setSplitBpsA(address tokenOut, uint16 bpsA) external onlyOwner {
        require(bpsA <= 10_000, "bpsA > 10000");
        splitForTokenOut[tokenOut].bpsA = bpsA;
        emit SplitBpsASet(tokenOut, bpsA);
    }

    /**
     * @notice Batch setter for multiple tokenOut split configs
     * @param  tokenOuts  Array of tokenOut addresses
     * @param  enableds   Array of enable flags
     * @param  thresholds Array of thresholds
     * @param  bpsAs      Array of first-leg shares in bps
     */
    function setSplitForTokenOutBatch(
        address[] calldata tokenOuts,
        bool[]    calldata enableds,
        uint256[] calldata thresholds,
        uint16[]  calldata bpsAs
    ) external onlyOwner {
        uint n = tokenOuts.length;
        require(enableds.length == n && thresholds.length == n && bpsAs.length == n, "length mismatch");
        for (uint i = 0; i < n; i++) {
            require(bpsAs[i] <= 10_000, "bpsA > 10000");
            splitForTokenOut[tokenOuts[i]] = SplitCfg({
                enabled:   enableds[i],
                threshold: thresholds[i],
                bpsA:      bpsAs[i]
            });
            emit SplitCfgSet(tokenOuts[i], enableds[i], thresholds[i], bpsAs[i]);
        }
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
     * @notice V2-compatible `getAmountsOut` with oracle guard filtering
     * @dev    Returns empty array if:
     *         - no enabled router can quote, or
     *         - oracle is enabled/valid and best DEX quote breaches `maxDeviationBps`
     * @param  amountIn Input amount (raw decimals of `path[0]`)
     * @param  path     Swap path (length >= 2)
     * @return amounts  Standard V2 amounts array, or empty if no acceptable route
     */
    function getAmountsOut(uint amountIn, address[] calldata path) external view returns (uint[] memory amounts) {
        require(path.length >= 2, "path too short");
        require(amountIn > 0, "amountIn=0");

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

    /* ───────────────────── Swap (V2-совместимо, со сплитом и оракул-гвардом) ───────────────────── */

    /**
     * @notice V2-compatible exact-in swap with optional auto-split and oracle guard
     * @dev
     *         - If split is active for `tokenOut` and `amountIn >= threshold`, and a second
     *           distinct router has a valid quote, the swap is split by `bpsA`
     *         - If `amountOutMin == 0`, the function applies `defaultSlippageBps` to fresh quotes
     *           to compute local leg minOuts
     *         - If oracle guard is active and valid, reverts when DEX expected out is worse
     *           than oracle by more than `maxDeviationBps`
     * @param   amountIn     Exact tokens to swap (taken from `msg.sender`)
     * @param   amountOutMin Global minimum final out (if 0, local minOuts are computed)
     * @param   path         Swap path (length >= 2)
     * @param   to           Recipient of output tokens
     * @param   deadline     Unix timestamp after which the tx must revert
     * @return  amounts      If split: [amountIn, totalOut]; if no split: router's V2 amounts array
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

        (
            DexKind dex1, address router1, uint256 out1,
            DexKind dex2, address router2, uint256 out2
        ) = _quoteTop2(amountIn, path);

        require(dex1 != DexKind.NONE && router1 != address(0) && out1 > 0, "no route");

        SplitCfg memory cfg = splitForTokenOut[tokenOut];
        bool doSplit = (
            cfg.enabled &&
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
                uint16 bps = defaultSlippageBps;
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
            uint16 bps = defaultSlippageBps;
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

    /**
     * @notice Same as `swapExactTokensForTokens`, but also returns:
     *         (a) baseline gross quote (top-1) and (b) the actual minOut used
     * @param  amountIn        Exact tokens to swap (taken from `msg.sender`)
     * @param  amountOutMin    Global minimum final out (if 0, local minOuts are computed)
     * @param  path            Swap path (length >= 2)
     * @param  to              Recipient of output tokens
     * @param  deadline        Unix timestamp after which the tx must revert
     * @return amounts         If split: [amountIn, totalOut]; else the router's V2 array
     * @return quotedOutGross  Baseline best quote (no split, no slippage deduction)
     * @return minOutUsed      MinOut actually enforced in this call (sum of legs if split)
     */
    function swapExactTokensForTokensWithReport(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external nonReentrant returns (
        uint[] memory amounts,
        uint256 quotedOutGross,
        uint256 minOutUsed
    ) {
        require(path.length >= 2, "path too short");
        require(amountIn > 0, "amountIn=0");
        require(to != address(0), "bad to");

        address tokenIn  = path[0];
        address tokenOut = path[path.length - 1];

        (
            DexKind dex1, address router1, uint256 out1,
            DexKind dex2, address router2, uint256 out2
        ) = _quoteTop2(amountIn, path);

        require(dex1 != DexKind.NONE && router1 != address(0) && out1 > 0, "no route");
        quotedOutGross = out1;

        uint256 oracleOutTotal = 0;
        bool oracleOk = false;
        if (useOracleGuards) {
            (oracleOutTotal, oracleOk) = _oracleExpectedOutRaw(tokenIn, tokenOut, amountIn);
        }

        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);

        // Split decision
        SplitCfg memory cfg = splitForTokenOut[tokenOut];
        bool doSplit = (
            cfg.enabled &&
            amountIn >= cfg.threshold &&
            dex2 != DexKind.NONE &&
            router2 != address(0) &&
            out2 > 0 &&
            router2 != router1
        );

        if (!doSplit) {
            if (useOracleGuards && oracleOk) {
                bool pass = _passesOracleGuard(out1, oracleOutTotal);
                emit OracleGuardCheck(tokenIn, tokenOut, amountIn, oracleOutTotal, out1, pass);
                require(pass, "oracle guard");
            }

            uint minOutLocal = amountOutMin;
            if (minOutLocal == 0) {
                uint16 bps = defaultSlippageBps;
                minOutLocal = (out1 * (10_000 - bps)) / 10_000;
            } else {
                require(out1 >= minOutLocal, "quote < minOut");
            }

            _approveMax(tokenIn, address(router1));
            amounts = IUniswapV2RouterLike(router1).swapExactTokensForTokens(
                amountIn, minOutLocal, path, to, deadline
            );
            require(amounts.length >= 2 && amounts[amounts.length - 1] >= minOutLocal, "minOut not met");

            emit SwapExecuted(dex1, tokenIn, tokenOut, address(router1), to, amountIn, amounts[amounts.length - 1], minOutLocal);
            minOutUsed = minOutLocal;
            return (amounts, quotedOutGross, minOutUsed);
        }

        // Split branch with report
        uint256 amountA = (amountIn * uint256(cfg.bpsA)) / 10_000;
        uint256 amountB = amountIn - amountA;

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
            uint16 bps = defaultSlippageBps;
            minOutA = (qA * (10_000 - bps)) / 10_000;
            minOutB = (qB * (10_000 - bps)) / 10_000;
            minOutUsed = minOutA + minOutB;
        } else {
            (minOutA, minOutB) = _proRataMinOut(amountOutMin, qA, qB);
            require(qA >= minOutA && qB >= minOutB, "quote < leg minOut");
            minOutUsed = amountOutMin;
        }

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
        return (amounts, quotedOutGross, minOutUsed);
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
     * @notice Try to quote on a given router config (returns 0 if disabled/invalid)
     * @param  v      Router config
     * @param  amtIn  Input amount
     * @param  path   Swap path
     * @return out    Final output amount or 0
     */
    function _tryV2Quote(RouterCfg storage v, uint amtIn, address[] calldata path)
        internal
        view
        returns (uint out)
    {
        if (!v.enabled || address(v.router) == address(0)) return 0;
        return _safeQuote(v.router, amtIn, path);
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
        uint256 best;

        if (uniswapV2.enabled && address(uniswapV2.router) != address(0)) {
            uint u = _safeQuote(uniswapV2.router, amountIn, path);
            if (u > best) { best = u; bestDex = DexKind.UNIV2; bestRouter = address(uniswapV2.router); }
        }
        if (sushiswapV2.enabled && address(sushiswapV2.router) != address(0)) {
            uint s = _safeQuote(sushiswapV2.router, amountIn, path);
            if (s > best) { best = s; bestDex = DexKind.SUSHIV2; bestRouter = address(sushiswapV2.router); }
        }
        if (pancakeV2.enabled && address(pancakeV2.router) != address(0)) {
            uint p = _safeQuote(pancakeV2.router, amountIn, path);
            if (p > best) { best = p; bestDex = DexKind.PANCAKEV2; bestRouter = address(pancakeV2.router); }
        }

        bestOut = best;
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
    function _quoteTop2(
        uint amountIn,
        address[] calldata path
    )
        internal
        view
        returns (
            DexKind dex1, address router1, uint256 out1,
            DexKind dex2, address router2, uint256 out2
        )
    {
        uint256[3] memory outs;
        address[3] memory routers;
        DexKind[3] memory kinds;
        uint idx;

        if (uniswapV2.enabled && address(uniswapV2.router) != address(0)) {
            outs[idx] = _safeQuote(uniswapV2.router, amountIn, path);
            routers[idx] = address(uniswapV2.router);
            kinds[idx] = DexKind.UNIV2;
            idx++;
        }
        if (sushiswapV2.enabled && address(sushiswapV2.router) != address(0)) {
            outs[idx] = _safeQuote(sushiswapV2.router, amountIn, path);
            routers[idx] = address(sushiswapV2.router);
            kinds[idx] = DexKind.SUSHIV2;
            idx++;
        }
        if (pancakeV2.enabled && address(pancakeV2.router) != address(0)) {
            outs[idx] = _safeQuote(pancakeV2.router, amountIn, path);
            routers[idx] = address(pancakeV2.router);
            kinds[idx] = DexKind.PANCAKEV2;
            idx++;
        }

        if (idx == 0) {
            dex1 = DexKind.NONE;
            return (dex1, address(0), 0, DexKind.NONE, address(0), 0);
        }

        // top1
        uint first = 0;
        for (uint i = 1; i < idx; i++) if (outs[i] > outs[first]) first = i;
        if (outs[first] == 0) {
            dex1 = DexKind.NONE;
            return (dex1, address(0), 0, DexKind.NONE, address(0), 0);
        }
        dex1 = kinds[first];
        router1 = routers[first];
        out1 = outs[first];

        // top2
        uint second = type(uint).max;
        for (uint i = 0; i < idx; i++) {
            if (i == first) continue;
            if (second == type(uint).max || outs[i] > outs[second]) second = i;
        }
        if (second != type(uint).max && outs[second] > 0) {
            dex2 = kinds[second];
            router2 = routers[second];
            out2 = outs[second];
        } else {
            dex2 = DexKind.NONE;
            router2 = address(0);
            out2 = 0;
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
     * @param  tokenIn  Input token
     * @param  tokenOut Output token
     * @param  amountIn Input amount (raw decimals of tokenIn)
     * @return outRaw   Oracle-based expected raw amountOut
     * @return ok       True if both prices were available and (optionally) fresh
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
