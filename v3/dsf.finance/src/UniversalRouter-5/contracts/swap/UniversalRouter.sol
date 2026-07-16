// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/**
 * @title  DSF UniversalRouter
 * @notice Универсальный роутер, объединяющий DEX-модули (Curve, UniswapV2, SushiSwap, UniswapV3 и другие).
 * @dev    Роутер:
 * - Запрашивает у каждого модуля лучший маршрут и amountOut;
 * - Выбирает модуль с максимальным amountOut;
 * - Тянет токены у пользователя (user -> router), даёт approve модулю (router -> module),
 *   модуль уже сам делает swap и отправляет результат обратно на роутер;
 * - Начисляет, при необходимости, комиссию (feeBps) и отправляет остаток получателю.
 *
 * ВАЖНО: Модули имеют разный тип Quote, поэтому здесь используется low-level staticcall
 * к функции getBestRoute(address,address,uint256) и парсинг только двух вещей:
 * (DexRoute route, uint256 amountOut). Это совместимо со всеми модулями.
 */

/* ─────────────────────────────── Interfaces / Types ─────────────────────────────── */

struct DexRoute { bytes[] data; }

struct Quote {
    address pool;
    int128  i;
    int128  j;
    bool    useUnderlying;
    uint256 amountOut;
}

struct BestAgg {
    bytes payload;
    uint256 amount;
    address module;
    uint256 idx;
}

struct RouteInfo {
    address module;
    uint256 index;
    bytes   payload;  // тот же формат, что в getBestRoute/decodeRoute
    uint256 amount;   // quotedOut
}

struct QuoteArgs {
    address tokenIn;
    address tokenOut;
    uint256 amountIn;
}

struct LegDecoded {
    address module;
    uint256 index;
    uint256 quoted;     // quotedOut из payload
    address tokenIn;
    address tokenOut;
    uint256 amountIn;
    bytes[] route;
}

struct SplitResult {
    address moduleA;
    address moduleB;
    address tokenIn;
    address tokenOut;
    uint256 totalIn;
    uint256 amountInA;
    uint256 amountInB;
    uint256 outA;
    uint256 outB;
    uint256 totalOut;
}

struct TrackedRoute {
    bytes payload;
    uint256 amountOut;
    address module;
    uint256 moduleIndex;
}

struct BestQuotes {
    TrackedRoute top1Hop;
    TrackedRoute second1Hop;
    TrackedRoute top2Hop;
    TrackedRoute second2Hop;
}

struct ModuleQuotes {
    address module;
    uint256 moduleIndex;
    bytes payload1Hop;
    uint256 amountOut1Hop;
    bytes payload2Hop;
    uint256 amountOut2Hop;
}

/// 24 Единый минимальный интерфейс для ваших модулей:

interface IDexModule {
    /**
     * @notice  Compute the best 1-hop and 2-hop routes.
     * @param   tokenIn    Input token
     * @param   tokenOut   Output token
     * @param   amountIn   Input amount
     * @return  best1HopRoute Serialized 1-hop route
     * @return  amountOut1Hop Quoted 1-hop output
     * @return  best2HopRoute Serialized 2-hop route
     * @return  amountOut2Hop Quoted 2-hop output
     */
    function getBestRoute(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) external view returns (
        DexRoute memory best1HopRoute,
        uint256 amountOut1Hop,
        DexRoute memory best2HopRoute,
        uint256 amountOut2Hop
    );

    /**
     * @notice  Execute a previously returned route with a slippage check based on a percentage.
     * @param   route     Serialized route
     * @param   to        Recipient of the final tokens
     * @param   percent   Percentage (0-100) of amountIn from the route to be swapped. 100 = 100%.
     * @return  amountOut Actual output received
     */
    function swapRoute(
        DexRoute calldata route,
        address to,
        uint256 percent
    ) external returns (uint256 amountOut);

    /**
     * @notice  Simulate a route (1–2 hops) encoded as {DexRoute}.
     * @param   route Serialized route
     * @param   percent   Percentage (0-100)
     * @return  amountOut Quoted total output amount
     */
    function simulateRoute(
        DexRoute calldata route,
        uint256 percent
    ) external view returns (uint256 amountOut);
}

contract UniversalRouter is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /* ─────────────────────────────── Storage ─────────────────────────────── */

    address[] public modules;                     // список модулей (Curve, UniV2, Sushi, UniV3)
    mapping(address => bool)     public isModule;
    mapping(address => uint256)  private moduleIndexPlusOne; // 1-based для O(1) remove

    address public feeRecipient;                  // получатель комиссии
    uint16  public feeBps;                        // комиссия в bps (макс 10000 = 100%)

    /* ─────────────────────────────── Events ─────────────────────────────── */

    event ModuleAdded(address indexed module);
    event ModuleRemoved(address indexed module);
    event ModulesReset(uint256 newCount);
    event FeeUpdated(address recipient, uint16 bps);

    event SwapExecuted(
        address indexed module,
        address indexed user,
        address indexed to,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOut,
        uint256 quotedOut
    );

    event Swapped(
        address indexed module,
        address indexed tokenIn,
        address indexed tokenOut,
        uint256 amountIn,
        uint256 amountOut,
        address to
    );

    event SwapSplitExecuted(
        address indexed moduleA,
        address indexed moduleB,
        address indexed user,
        address to,
        address tokenIn,
        address tokenOut,
        uint256 totalIn,
        uint256 amountInA,
        uint256 amountInB,
        uint256 outA,
        uint256 outB,
        uint256 totalOut,
        uint16  bpsA
    );

    /* ─────────────────────────────── Errors ─────────────────────────────── */

    error ZeroAddress();
    error DuplicateModule();
    error NotAModule();
    error InvalidFee();
    error NoRouteFound();


    /* ─────────────────────────────── Modifiers ─────────────────────────────── */

    modifier onlyERC20(address token) {
        require(token != address(0) && token.code.length > 0, "not ERC20");
        _;
    }

    /* ─────────────────────────────── Constructor ─────────────────────────────── */

    constructor(address[] memory _modules, address _feeRecipient, uint16 _feeBps) Ownable(msg.sender) {
        _setModules(_modules);     // теперь можно [] — см. _setModules
        _setFee(_feeRecipient, _feeBps);
    }

    // ───────────────────────── Admin: modules mgmt ─────────────────────────

    function setModules(address[] calldata _modules) external onlyOwner {
        _clearModules();
        _addModules(_modules);
        emit ModulesReset(_modules.length);
    }

    function addModule(address module) external onlyOwner {
        _addModule(module);
    }

    function removeModule(address module) external onlyOwner {
        _removeModule(module);
    }

    function modulesLength() external view returns (uint256) {
        return modules.length;
    }

    function getModules() external view returns (address[] memory) {
        return modules;
    }

    /* ─────────── Admin: fee (если понадобится в исполнителе) ─────────── */


    function setFee(address recipient, uint16 bps) external onlyOwner { _setFee(recipient, bps); }

    function _setFee(address recipient, uint16 bps) internal {
        if (bps > 10_000) revert InvalidFee();
        feeRecipient = recipient; // может быть 0x0 => комиссия отключена
        feeBps = bps;
        emit FeeUpdated(recipient, bps);
    }

    function _setModules(address[] memory _modules) internal {
        _clearModules();
        uint256 n = _modules.length;
        for (uint256 i; i < n; ) {
            _addModule(_modules[i]);
            unchecked { ++i; }
        }
        emit ModulesReset(n);
    }

    function _clearModules() internal {
        uint256 n = modules.length;
        for (uint256 i; i < n; ) {
            address m = modules[i];
            isModule[m] = false;
            moduleIndexPlusOne[m] = 0;
            unchecked { ++i; }
        }
        delete modules;
    }

    function _addModules(address[] calldata _modules) internal {
        uint256 n = _modules.length;
        for (uint256 i; i < n; ) {
            _addModule(_modules[i]);
            unchecked { ++i; }
        }
    }

    function _addModule(address module) internal {
        if (module == address(0)) revert ZeroAddress();
        if (isModule[module]) revert DuplicateModule();

        // (опционально) минимальная проверка кода
        uint256 size;
        assembly { size := extcodesize(module) }
        if (size == 0) revert ZeroAddress(); // «пустой» адрес

        isModule[module] = true;
        modules.push(module);
        moduleIndexPlusOne[module] = modules.length; // 1-based
        emit ModuleAdded(module);
    }

    function _removeModule(address module) internal {
        uint256 idxPlusOne = moduleIndexPlusOne[module];
        if (idxPlusOne == 0) revert NotAModule();

        uint256 idx = idxPlusOne - 1;
        uint256 lastIdx = modules.length - 1;

        if (idx != lastIdx) {
            address last = modules[lastIdx];
            modules[idx] = last;
            moduleIndexPlusOne[last] = idx + 1;
        }
        modules.pop();

        isModule[module] = false;
        moduleIndexPlusOne[module] = 0;
        emit ModuleRemoved(module);
    }

    // ───────────────────────── core: best route (internal) ─────────────────────────

    function _updateBestQuotes(BestQuotes memory currentBest, TrackedRoute memory newRoute, bool is1Hop) private pure {
        if (is1Hop) {
            if (newRoute.amountOut > currentBest.top1Hop.amountOut) {
                currentBest.second1Hop = currentBest.top1Hop;
                currentBest.top1Hop = newRoute;
            } else if (newRoute.amountOut > currentBest.second1Hop.amountOut) {
                currentBest.second1Hop = newRoute;
            }
        } else { // 2-hop
            if (newRoute.amountOut > currentBest.top2Hop.amountOut) {
                currentBest.second2Hop = currentBest.top2Hop;
                currentBest.top2Hop = newRoute;
            } else if (newRoute.amountOut > currentBest.second2Hop.amountOut) {
                currentBest.second2Hop = newRoute;
            }
        }
    }

    function _getModuleQuotes(
        address m,
        uint256 idx,
        QuoteArgs memory a
    ) internal view returns (ModuleQuotes memory quotes) {
        quotes.module = m;
        quotes.moduleIndex = idx;
        
        if (!isModule[m]) return quotes;

        bytes memory cd = abi.encodeWithSelector(
            IDexModule.getBestRoute.selector,
            a.tokenIn,
            a.tokenOut,
            a.amountIn
        );

        (bool success, bytes memory ret) = m.staticcall(cd);
        if (!success || ret.length == 0) return quotes;

        (
            DexRoute memory route1, uint256 out1,
            DexRoute memory route2, uint256 out2
        ) = abi.decode(ret, (DexRoute, uint256, DexRoute, uint256));

        // Helper to create payload
        // Payload format: abi.encode(module, index, quotedOut, tokenIn, tokenOut, amountIn, route.data)
        if (out1 > 0 && route1.data.length > 0) {
            quotes.amountOut1Hop = out1;
            quotes.payload1Hop = abi.encode(
                m, idx, out1, a.tokenIn, a.tokenOut, a.amountIn, route1.data
            );
        }
        
        if (out2 > 0 && route2.data.length > 0) {
            quotes.amountOut2Hop = out2;
            quotes.payload2Hop = abi.encode(
                m, idx, out2, a.tokenIn, a.tokenOut, a.amountIn, route2.data
            );
        }
    }

    /**
     * @notice Возвращает 4 лучших маршрута по категориям (Топ-1 / Топ-2 | 1-hop / 2-hop).
     * @param tokenIn Адрес входящего токена.
     * @param tokenOut Адрес исходящего токена.
     * @param amountIn Количество входящего токена.
     * @return best1HopRouteTop1 Сериализованный маршрут (payload) с лучшей котировкой среди 1-hop.
     * @return amountOut1HopTop1 Количество токенов на выходе для лучшего 1-hop маршрута.
     * @return best2HopRouteTop1 Сериализованный маршрут (payload) с лучшей котировкой среди 2-hop.
     * @return amountOut2HopTop1 Количество токенов на выходе для лучшего 2-hop маршрута.
     * @return best1HopRouteTop2 Сериализованный маршрут (payload) со второй лучшей котировкой среди 1-hop.
     * @return amountOut1HopTop2 Количество токенов на выходе для второго лучшего 1-hop маршрута.
     * @return best2HopRouteTop2 Сериализованный маршрут (payload) со второй лучшей котировкой среди 2-hop.
     * @return amountOut2HopTop2 Количество токенов на выходе для второго лучшего 2-hop маршрута.
     */
    function getBestRoute(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) external view returns (
        bytes memory best1HopRouteTop1, uint256 amountOut1HopTop1,
        bytes memory best2HopRouteTop1, uint256 amountOut2HopTop1,
        bytes memory best1HopRouteTop2, uint256 amountOut1HopTop2,
        bytes memory best2HopRouteTop2, uint256 amountOut2HopTop2
    ) {
        QuoteArgs memory qa = QuoteArgs({
            tokenIn: tokenIn,
            tokenOut: tokenOut,
            amountIn: amountIn
        });

        BestQuotes memory best; // все поля zero/empty по умолчанию

        for (uint256 i = 0; i < modules.length; ) {
            ModuleQuotes memory quotes = _getModuleQuotes(modules[i], i, qa);

            if (quotes.amountOut1Hop > 0) {
                TrackedRoute memory r1 = TrackedRoute({
                    payload: quotes.payload1Hop,
                    amountOut: quotes.amountOut1Hop,
                    module: quotes.module,
                    moduleIndex: quotes.moduleIndex
                });
                _updateBestQuotes(best, r1, true); // true for 1-hop
            }

            if (quotes.amountOut2Hop > 0) {
                TrackedRoute memory r2 = TrackedRoute({
                    payload: quotes.payload2Hop,
                    amountOut: quotes.amountOut2Hop,
                    module: quotes.module,
                    moduleIndex: quotes.moduleIndex
                });
                _updateBestQuotes(best, r2, false); // false for 2-hop
            }

            unchecked { ++i; }
        }

        if (best.top1Hop.amountOut == 0 && best.top2Hop.amountOut == 0) {
            revert NoRouteFound();
        }

        // 1-hop, Top 1
        best1HopRouteTop1 = best.top1Hop.payload; amountOut1HopTop1 = best.top1Hop.amountOut;
        // 2-hop, Top 1
        best2HopRouteTop1 = best.top2Hop.payload; amountOut2HopTop1 = best.top2Hop.amountOut;
        // 1-hop, Top 2
        best1HopRouteTop2 = best.second1Hop.payload; amountOut1HopTop2 = best.second1Hop.amountOut;
        // 2-hop, Top 2
        best2HopRouteTop2 = best.second2Hop.payload; amountOut2HopTop2 = best.second2Hop.amountOut;
    }

    /**
     * @notice Возвращает лучший маршрут в формате getBestRoute, а также ВСЕ успешные маршруты по модулям.
     * @dev Формат каждого payload совпадает с getBestRoute/decodeRoute:
     *      abi.encode(module, moduleIndex, quotedOut, tokenIn, tokenOut, amountIn, route.data)
     */
    /**
     * @notice Возвращает лучший маршрут (среди 1-hop и 2-hop) в формате getBestRoute, а также ВСЕ успешные маршруты по модулям.
     * @dev Формат каждого payload совпадает с getBestRoute/decodeRoute:
     *      abi.encode(module, moduleIndex, quotedOut, tokenIn, tokenOut, amountIn, route.data)
     */
    function getBestRouteAndAll(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    )
        external
        view
        returns (
            bytes memory,        // bestPayload (overall best)
            uint256,             // bestAmountOut
            address,             // bestModule
            uint256,             // bestModuleIndex
            RouteInfo[] memory   // routes (все успешные маршруты, включая лучший)
        )
    {
        // Максимум модулей * 2 (1-hop + 2-hop) маршрутов
        RouteInfo[] memory allRoutes = new RouteInfo[](modules.length * 2);

        BestAgg memory best;
        QuoteArgs memory qa = QuoteArgs({tokenIn: tokenIn, tokenOut: tokenOut, amountIn: amountIn});
        uint256 k = 0; // Счетчик успешных маршрутов

        for (uint256 i = 0; i < modules.length; ) {
            ModuleQuotes memory quotes = _getModuleQuotes(modules[i], i, qa);

            // 1-hop
            if (quotes.amountOut1Hop > 0) {
                allRoutes[k] = RouteInfo({
                    module: quotes.module,
                    index: i,
                    payload: quotes.payload1Hop,
                    amount: quotes.amountOut1Hop
                });
                if (quotes.amountOut1Hop > best.amount) {
                    best.amount  = quotes.amountOut1Hop;
                    best.payload = quotes.payload1Hop;
                    best.module  = quotes.module;
                    best.idx     = i;
                }
                unchecked { ++k; }
            }
            
            // 2-hop
            if (quotes.amountOut2Hop > 0) {
                allRoutes[k] = RouteInfo({
                    module: quotes.module,
                    index: i,
                    payload: quotes.payload2Hop,
                    amount: quotes.amountOut2Hop
                });
                if (quotes.amountOut2Hop > best.amount) {
                    best.amount  = quotes.amountOut2Hop;
                    best.payload = quotes.payload2Hop;
                    best.module  = quotes.module;
                    best.idx     = i;
                }
                unchecked { ++k; }
            }

            unchecked { ++i; }
        }

        if (k == 0) revert NoRouteFound();

        assembly { mstore(allRoutes, k) } // Уменьшаем размер массива до k

        return (best.payload, best.amount, best.module, best.idx, allRoutes);
    }

    /**
     * @dev Приватная вспомогательная функция для расчета общей суммы на выходе.
     * @param percentA Процент от amountIn для Маршрута A (0-100).
     */
    function _calculateTotalOut(
        address moduleA,
        bytes[] memory routeA,
        address moduleB,
        bytes[] memory routeB,
        uint16 percentA // Теперь 0-100
    ) internal view returns (uint256 totalOut) {
        uint16 percentB = 100 - percentA;
        
        // Вызов simulateRoute для A (используем 0-100 Percent)
        uint256 outA = IDexModule(moduleA).simulateRoute(DexRoute({ data: routeA }), percentA);
        
        // Вызов simulateRoute для B (используем 0-100 Percent)
        uint256 outB = IDexModule(moduleB).simulateRoute(DexRoute({ data: routeB }), percentB);
        
        return outA + outB;
    }

    /**
     * @notice Находит оптимальное соотношение разделения (split ratio) между двумя маршрутами.
     * @dev Использует simulateRoute для поиска лучшего percentA.
     * Эвристика: Сначала проверяются ключевые точки (10%-90%), затем локальное уточнение
     * вокруг лучшей точки для экономии запросов.
     * @param payloadA Сериализованный маршрут A.
     * @param payloadB Сериализованный маршрут B.
     * @return bestAmountOut Максимальное количество токенов на выходе.
     * @return bestPercentA Оптимальное соотношение для маршрута A в процентах (0-100).
     */
    function findBestSplit(
        bytes calldata payloadA,
        bytes calldata payloadB
    )
        external
        view
        returns (
            uint256 bestAmountOut,
            uint16 bestPercentA // Изменено с bestBpsA
        )
    {
        // 1. Декодируем и проверяем
        LegDecoded memory A = _decodeRouteStruct(payloadA);
        LegDecoded memory B = _decodeRouteStruct(payloadB);

        require(A.amountIn > 0 && B.amountIn > 0, "UR: zero amounts");
        require(A.tokenIn == B.tokenIn, "UR: in mismatch");
        require(A.tokenOut == B.tokenOut, "UR: out mismatch");
        require(A.amountIn == B.amountIn, "UR: totalIn mismatch"); 

        address moduleA = A.module;
        address moduleB = B.module;
        
        // --- Шаг 1: Инициализация (50%) ---
        uint16 initialPercent = 50; // 50%
        
        uint256 currentMaxOut = _calculateTotalOut(
            moduleA, A.route, moduleB, B.route, initialPercent
        );
        uint16 currentBestPercent = initialPercent;

        // --- Шаг 2: Основной разреженный поиск: 10% до 90% с шагом 10% ---
        // Проверяем 10, 20, 30, 40, 60, 70, 80, 90. (50% уже проверено).
        for (uint16 percent = 10; percent <= 90; percent += 10) {
            if (percent == 50) continue; 

            uint256 totalOut = _calculateTotalOut(
                moduleA, A.route, moduleB, B.route, percent
            );

            if (totalOut > currentMaxOut) {
                currentMaxOut = totalOut;
                currentBestPercent = percent;
            }
        }
        
        // --- Шаг 3: Уточнение (Локальный поиск, +/- 5% шаг) ---
        
        uint16 bestPercentFound = currentBestPercent;
        
        // Массив смещений для уточнения: [-5, +5] Percent
        int16[] memory offsets = new int16[](2);
        offsets[0] = -5; // Проверяем -5% от лучшей точки
        offsets[1] = 5;  // Проверяем +5% от лучшей точки

        for (uint256 i = 0; i < offsets.length; ) {
            int16 offset = offsets[i];
            
            // Защита от выхода за крайние значения (например, ниже 1% или выше 99%)
            // Условие: bestPercentFound <= 5 (для -5) или bestPercentFound >= 95 (для +5)
            if (
                (offset < 0 && bestPercentFound <= uint16(-offset)) || 
                (offset > 0 && bestPercentFound >= 100 - uint16(offset))
            ) {
                 unchecked { ++i; }
                 continue;
            }
            
            uint16 checkPercent;
            if (offset < 0) {
                checkPercent = bestPercentFound - uint16(-offset);
            } else {
                checkPercent = bestPercentFound + uint16(offset);
            }
            
            // Проверка, что точка находится в разумном диапазоне для свопа [1, 99]
            if (checkPercent >= 1 && checkPercent <= 99) { 
                uint256 totalOut = _calculateTotalOut(
                    moduleA, A.route, moduleB, B.route, checkPercent
                );

                if (totalOut > currentMaxOut) {
                    currentMaxOut = totalOut;
                    currentBestPercent = checkPercent;
                }
            }
            unchecked { ++i; }
        }
        
        // 4. Возврат результата
        bestAmountOut = currentMaxOut;
        bestPercentA = currentBestPercent;
    }

    function decodeRoute(bytes calldata payload)
        public
        pure
        returns (
            address module,
            uint256 moduleIndex,
            uint256 quotedOut,
            address tokenIn,
            address tokenOut,
            uint256 amountIn,
            bytes[] memory routeData
        )
    {
        (module, moduleIndex, quotedOut, tokenIn, tokenOut, amountIn, routeData) =
            abi.decode(payload, (address, uint256, uint256, address, address, uint256, bytes[]));
    }

    // Быстро достаём 3-е поле (amountOut) из payload: 
    // payload = abi.encode(module, index, amountOut, tokenIn, tokenOut, amountIn, bytes[] route)
    function _extractQuotedOut(bytes memory payload) internal pure returns (uint256 out_) {
        assembly {
            // payload: [len][module][index][amountOut]...
            let data := add(payload, 32)
            out_ := mload(add(data, 64)) // 64 = 2 * 32
        }
    }

    /// @notice Декодирует payload и возвращает готовую структуру Best (+ DexRoute внутри).
    // function decodeBestPayload(bytes memory payload)
    //     public
    //     pure
    //     returns (address module, uint256 moduleIndex, uint256 amountOut, bytes[] memory routeData)
    // {
    //     (module, moduleIndex, amountOut, routeData) =
    //         abi.decode(payload, (address, uint256, uint256, bytes[]));
    // }

    function _smartApprove(address token, address spender, uint256 amount) internal {
        uint256 cur = IERC20(token).allowance(address(this), spender);
        if (cur < amount) {
            if (cur > 0) IERC20(token).forceApprove(spender, 0);
            IERC20(token).forceApprove(spender, type(uint256).max);
        }
    }
    

    // ───────────────────────── свопы ─────────────────────────

    error FotNotSupported();
    error SlippageExceeded();

    /**
     * @notice Выполнить своп по уже подготовленному payload (из off-chain/кеша).
     */
    function swapRoute(bytes calldata payload, address to, uint256 minAmountOut)
        external
        nonReentrant
        returns (uint256 amountOut)
    {
        require(to != address(0), "UR: bad to");

        (
            address module, , uint256 quotedOut,
            address tokenIn, address tokenOut, uint256 amountIn,
            bytes[] memory routeData
        ) = decodeRoute(payload);

        require(isModule[module], "UR: unknown module");
        require(amountIn > 0, "UR: zero amountIn");
        require(routeData.length > 0, "UR: empty route");

        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
        _smartApprove(tokenIn, module, amountIn);

        amountOut = IDexModule(module).swapRoute(DexRoute({ data: routeData }), to, 100);
        require(amountOut >= minAmountOut, "UR: slippage");

        emit SwapExecuted(module, msg.sender, to, tokenIn, tokenOut, amountIn, amountOut, quotedOut);
    }

    function swapSplit(
        bytes calldata payloadA,
        bytes calldata payloadB,
        uint16 bpsA,
        address to,
        uint256 minTotalOut
    ) external nonReentrant returns (uint256) {
        require(to != address(0), "UR: bad to");
        require(bpsA <= 10_000,   "UR: bps");

        SplitResult memory R;

        // Держим A/B только внутри блока, чтобы они «умерли» до emit
        {
            LegDecoded memory A = _decodeRouteStruct(payloadA);
            LegDecoded memory B = _decodeRouteStruct(payloadB);

            require(isModule[A.module] && isModule[B.module], "UR: unknown module");
            require(A.amountIn > 0 || B.amountIn > 0, "UR: zero amounts");
            require(A.tokenIn  == B.tokenIn,  "UR: in mismatch");
            require(A.tokenOut == B.tokenOut, "UR: out mismatch");

            R.tokenIn   = A.tokenIn;
            R.tokenOut  = A.tokenOut;
            R.moduleA   = A.module;
            R.moduleB   = B.module;
            R.amountInA = A.amountIn;
            R.amountInB = B.amountIn;
            R.totalIn   = A.amountIn + B.amountIn;

            if (R.totalIn > 0) {
                uint256 calcA = (R.totalIn * bpsA) / 10_000;
                uint256 diff  = calcA > R.amountInA ? (calcA - R.amountInA) : (R.amountInA - calcA);
                require(diff <= 1, "UR: percent/payload mismatch");
            }

            // Тянем всю сумму один раз
            IERC20(R.tokenIn).safeTransferFrom(msg.sender, address(this), R.totalIn);

            // В модуле `swapRoute` теперь требуется `percent` (10000 bps = 100%)
            if (R.amountInA > 0) {
                _smartApprove(R.tokenIn, R.moduleA, R.amountInA);
                R.outA = IDexModule(R.moduleA).swapRoute(DexRoute({ data: A.route }), address(this), 10_000);
            }

            if (R.amountInB > 0) {
                _smartApprove(R.tokenIn, R.moduleB, R.amountInB);
                R.outB = IDexModule(R.moduleB).swapRoute(DexRoute({ data: B.route }), address(this), 10_000);
            }
        } // <-- A и B вышли из скоупа, тяжёлые локалки освобождены

        R.totalOut = R.outA + R.outB;
        require(R.totalOut >= minTotalOut, "UR: slippage");

        _payoutWithFee(R.tokenOut, to, R.totalOut);
        _emitSwapSplit(R, msg.sender, to, bpsA);

        return R.totalOut;
    }

    function _emitSwapSplit(SplitResult memory r, address user, address to, uint16 bpsA) internal {
        emit SwapSplitExecuted(
            r.moduleA, r.moduleB, user, to,
            r.tokenIn, r.tokenOut,
            r.totalIn, r.amountInA, r.amountInB,
            r.outA, r.outB, r.totalOut, bpsA
        );
    }

    function _decodeRouteStruct(bytes calldata payload)
        internal
        pure
        returns (LegDecoded memory d)
    {
        (d.module, d.index, d.quoted, d.tokenIn, d.tokenOut, d.amountIn, d.route) =
            abi.decode(payload, (address, uint256, uint256, address, address, uint256, bytes[]));
    }

    /**
     * @dev Универсально парсим bytes-энкод первого (или любого) хопа:
     *      все модули кодируют: (address tokenIn, address tokenOut, ... , uint256 amountIn)
     */
    function _peekInOutAmt(bytes memory hop)
        internal
        pure
        returns (address tokenIn, address tokenOut, uint256 amountIn)
    {
        assembly {
            let p := add(hop, 32)             // pointer to data
            tokenIn  := shr(96, mload(p))     // first address
            tokenOut := shr(96, mload(add(p, 32))) // second address
            let len := mload(hop)
            amountIn := mload(add(p, sub(len, 32))) // last 32 bytes
        }
    }

    /** отправка с учётом комиссии */
    function _payoutWithFee(address tokenOut, address to, uint256 grossOut) internal {
        uint256 fee = (feeRecipient != address(0) && feeBps > 0)
            ? (grossOut * feeBps) / 10_000
            : 0;

        if (fee > 0) IERC20(tokenOut).safeTransfer(feeRecipient, fee);
        IERC20(tokenOut).safeTransfer(to, grossOut - fee);
    }
}
