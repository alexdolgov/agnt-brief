// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/* ---------- Внешние интерфейсы ---------- */

interface IUniswapV2Router {
    function getAmountsOut(uint256 amountIn, address[] calldata path)
        external
        view
        returns (uint256[] memory);

    // ★ NEW: для расчёта «exact‑out»
    function getAmountsIn(uint256 amountOut, address[] calldata path)
        external
        view
        returns (uint256[] memory);
}

interface IUniV3QuoterV2 {
    function quoteExactInputSingle(
        address tokenIn,
        address tokenOut,
        uint24  fee,
        uint256 amountIn,
        uint160 sqrtPriceLimitX96
    ) external view returns (uint256 amountOut);

    // ★ NEW: котировка «сколько In, чтобы получить Out»
    function quoteExactOutputSingle(
        address tokenIn,
        address tokenOut,
        uint24  fee,
        uint256 amountOut,
        uint160 sqrtPriceLimitX96
    ) external view returns (uint256 amountIn);
}

interface ICurveRouter {
    function get_best_rate(
        address from,
        address to,
        uint256 amount
    ) external view returns (address pool, uint256 amountOut);
}

/* ---------- PathOracle ---------- */

contract PathOracle {
    /* ----- Immutable‑поля ----- */
    address public immutable WETH;
    IUniswapV2Router private immutable UNI_V2;
    IUniswapV2Router private immutable SUSHI_V2;
    IUniV3QuoterV2 private immutable UNI_V3;
    ICurveRouter   private immutable CURVE;

    constructor(
        address _weth,
        address _uniV2,
        address _sushiV2,
        address _uniV3Quoter,
        address _curveRouter
    ) {
        WETH   = _weth;
        UNI_V2 = IUniswapV2Router(_uniV2);
        SUSHI_V2 = IUniswapV2Router(_sushiV2);
        UNI_V3 = IUniV3QuoterV2(_uniV3Quoter);
        CURVE  = ICurveRouter(_curveRouter);
    }

    /* ---------- Структуры ---------- */
    enum DexKind { UNI_V2, SUSHI_V2, UNI_V3, CURVE }

    struct Quote {
        DexKind dex;
        uint256 amountOut;   // для exact‑in это out, для exact‑out здесь храним amountIn

    }

    /* ============================================================= */
    /*                Быстрая котировка exact‑IN (amountOut)         */
    /* ============================================================= */

    /// @notice Возвращает лучший DEX и минимально‑допустимый выход (minOut)
    function getBestDex(
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 slippageBps             /* 100 = 1% */
    )
        external
        view
        returns (DexKind bestDex, uint256 minAmountOut)
    {
        Quote[4] memory q = _collectQuotes(tokenIn, tokenOut, amountIn);

        // найти максимум
        bestDex = q[0].dex;
        uint256 best = q[0].amountOut;
        unchecked {
            for (uint8 i = 1; i < 4; ++i) {
                if (q[i].amountOut > best) {
                    best = q[i].amountOut;
                    bestDex = q[i].dex;
                }
            }
        }
        // расчёт минимально допустимого выхода
        minAmountOut = best * (10_000 - slippageBps) / 10_000;
    }


    /* ============================================================= */
    /*                 Быстрая котировка exact‑OUT (amountIn)        */
    /* ============================================================= */

    // ★ NEW
    function getBestDexForExactOut(
        address tokenIn,
        address tokenOut,
        uint256 amountOut,
        uint256 slippageBps          /* 100 = 1% */
    )
        external
        view
        returns (DexKind bestDex, uint256 maxAmountIn)
    {
        Quote[4] memory q = _collectQuotesExactOut(tokenIn, tokenOut, amountOut);

        bestDex = q[0].dex;
        uint256 bestIn = q[0].amountOut;         // здесь это amountIn
        unchecked {
            for (uint8 i = 1; i < 4; ++i) {
                if (q[i].amountOut != 0 && q[i].amountOut < bestIn) {
                    bestIn = q[i].amountOut;
                    bestDex = q[i].dex;
                }
            }
        }
        maxAmountIn = bestIn * (10_000 + slippageBps) / 10_000;
    }


    /* ============================================================= */
    /*            Подробные off‑chain отчёты (top‑3, average)        */
    /* ============================================================= */

    function getDetailedQuotes(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    )
        external
        view
        returns (
            Quote[3] memory top3,
            uint256 average    /* среднее top‑3 */
        )
    {
        Quote[4] memory q = _collectQuotes(tokenIn, tokenOut, amountIn);

        /* ------ сортировка 4‑х элементов по убыванию ------ */
        for (uint8 i; i < 4; ++i) {
            for (uint8 j = i + 1; j < 4; ++j) {
                if (q[j].amountOut > q[i].amountOut) {
                    Quote memory tmp = q[i];
                    q[i] = q[j];
                    q[j] = tmp;
                }
            }
        }
        top3[0] = q[0];
        top3[1] = q[1];
        top3[2] = q[2];
        average = (q[0].amountOut + q[1].amountOut + q[2].amountOut) / 3;
    }

    // ★ NEW
    function getDetailedQuotesExactOut(
        address tokenIn,
        address tokenOut,
        uint256 amountOut
    )
        external
        view
        returns (Quote[3] memory top3, uint256 averageIn)
    {
        Quote[4] memory q = _collectQuotesExactOut(tokenIn, tokenOut, amountOut);

        // сортировка по возрастанию amountIn
        for (uint8 i; i < 4; ++i) {
            for (uint8 j = i + 1; j < 4; ++j) {
                if (q[j].amountOut != 0 && q[j].amountOut < q[i].amountOut) {
                    Quote memory t = q[i]; q[i] = q[j]; q[j] = t;
                }
            }
        }
        top3[0]=q[0]; top3[1]=q[1]; top3[2]=q[2];
        averageIn = (q[0].amountOut + q[1].amountOut + q[2].amountOut) / 3;
    }

    /* ============================================================= */
    /*                       Внутренние helpers                      */
    /* ============================================================= */

    /* ---------- exact‑IN ---------- */
    function _collectQuotes(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) internal view returns (Quote[4] memory q) {
        // Uni V2
        q[0] = Quote(
            DexKind.UNI_V2,
            _quoteUniV2Out(UNI_V2, tokenIn, tokenOut, amountIn)
        );
        // Sushi V2
        q[1] = Quote(
            DexKind.SUSHI_V2,
            _quoteUniV2Out(SUSHI_V2, tokenIn, tokenOut, amountIn)
        );
        // Uni V3 (0.3 %)
        q[2] = Quote(
            DexKind.UNI_V3,
            UNI_V3.quoteExactInputSingle(tokenIn, tokenOut, 3_000, amountIn, 0)
        );
        // Curve
        (, uint256 out) =
            CURVE.get_best_rate(tokenIn, tokenOut, amountIn);
        q[3] = Quote(DexKind.CURVE, out);
    }

    /* ---------- exact‑OUT ---------- */
    // ★ NEW
    function _collectQuotesExactOut(
        address tokenIn,
        address tokenOut,
        uint256 amountOut
    ) internal view returns (Quote[4] memory q) {
        q[0] = Quote(DexKind.UNI_V2,
            _quoteUniV2In(UNI_V2, tokenIn, tokenOut, amountOut));
        q[1] = Quote(DexKind.SUSHI_V2,
            _quoteUniV2In(SUSHI_V2, tokenIn, tokenOut, amountOut));
        q[2] = Quote(DexKind.UNI_V3,
            UNI_V3.quoteExactOutputSingle(tokenIn, tokenOut, 3_000, amountOut, 0));
        // Curve exact‑out отсутствует → 0
        q[3] = Quote(DexKind.CURVE, 0);
    }

    /* ---------- UniswapV2 helpers ---------- */

    // out‑quote (сколько выйдет, если вносим amountIn)
    function _quoteUniV2Out(
        IUniswapV2Router router,
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) internal view returns (uint256) {
        if (tokenIn == tokenOut) return amountIn;
        address[] memory path = _buildPath(tokenIn, tokenOut);
        uint256[] memory amounts = router.getAmountsOut(amountIn, path);
        return amounts[amounts.length - 1];
    }

    // in‑quote (сколько надо внести, чтобы получить amountOut)
    // ★ NEW
    function _quoteUniV2In(
        IUniswapV2Router router,
        address tokenIn,
        address tokenOut,
        uint256 amountOut
    ) internal view returns (uint256) {
        if (tokenIn == tokenOut) return amountOut;
        address[] memory path = _buildPath(tokenIn, tokenOut);
        uint256[] memory amounts = router.getAmountsIn(amountOut, path);
        return amounts[0];
    }

    // строим путь tokenIn → (WETH) → tokenOut
    function _buildPath(address tokenIn, address tokenOut)
        internal view returns (address[] memory path)
    {
        bool viaWeth = (tokenIn != WETH && tokenOut != WETH);
        path = new address[](viaWeth ? 3 : 2);
        path[0] = tokenIn;
        if (viaWeth) {
            path[1] = WETH;
            path[2] = tokenOut;
        } else {
            path[1] = tokenOut;
        }
    }
}