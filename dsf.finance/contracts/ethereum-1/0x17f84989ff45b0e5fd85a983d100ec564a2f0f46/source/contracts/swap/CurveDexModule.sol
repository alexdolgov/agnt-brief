// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @title  CurveDexModule
 * @author Andrei Averin — CTO dsf.finance
 * @notice Single-pool Curve module for UniversalRouter
 * @dev    Relies on Curve MetaRegistry; routes always contain exactly one Curve pool.
 */

/**
 * @title  IPoolRegistry
 * @notice Interface for accessing whitelisted Curve pools (copied from Registry).
 */
interface IPoolRegistry {
    struct PoolProfile {
        bool exIndexUint;
        bool exHasEthFlag;
        bool exHasReceiver;
        bool exHasReceiverUnderlying;
    }
    
    function getVerifiedPools(address tokenIn, address tokenOut) external view returns (address[] memory);
    function getVerifiedPoolsLen(address tokenIn, address tokenOut) external view returns (uint256);
    function getVerifiedPoolAt(address tokenIn, address tokenOut, uint256 index) external view returns (address);

    function getPoolProfile(address pool, address tokenIn, address tokenOut)
        external
        view
        returns (bool exists, PoolProfile memory profile);

    function getPoolProfileFlags(address pool, address tokenIn, address tokenOut)
        external
        view
        returns (
            bool exists,
            bool exIndexUint,
            bool exHasEthFlag,
            bool exHasReceiver,
            bool exHasReceiverUnderlying
        );
}

/* ──────────── External interfaces ──────────── */

interface ICurveMetaRegistry {
    function find_pools_for_coins(address _from, address _to) external view returns (address[] memory);
    function get_coin_indices(address, address, address) external view returns (int128, int128, bool);
}

interface ICurvePoolIntWithEth {
    function exchange(int128, int128, uint256, uint256, bool) external returns (uint256);
}

interface ICurvePoolU256WithEth {
    function exchange(uint256, uint256, uint256, uint256, bool) external returns (uint256);
}

interface ICurvePoolInt {
    function get_dy(uint256, uint256, uint256) external view returns (int256);
}

interface ICurvePool {
    function get_dy(int128, int128, uint256) external view returns (uint256);
    function get_dy_underlying(int128, int128, uint256) external view returns (uint256);
    function exchange(int128, int128, uint256, uint256) external returns (uint256);
    function exchange_underlying(int128, int128, uint256, uint256) external returns (uint256);
    function coins(int128 arg0) external view returns (address);
    function underlying_coins(uint256) external view returns (address);
}

interface ICurvePoolNew {
    function exchange(uint256, uint256, uint256, uint256) external returns (uint256);
    function exchange_underlying(uint256, uint256, uint256, uint256) external returns (uint256);
}

/* ──────────── Aggregator interfaces ──────────── */

interface IDexModule {
    function getBestRoute(
        address           tokenIn,
        address           tokenOut,
        uint256           amountIn
    ) external view returns (
        DexRoute memory   best1HopRoute,
        uint256           amountOut1Hop,
        DexRoute memory   best2HopRoute,
        uint256           amountOut2Hop
    );

    function swapRoute(
        DexRoute calldata route,
        address           to,
        uint256           percent
    ) external returns (
        uint256           amountOut
    );

    function simulateRoute(
        DexRoute calldata route,
        uint256 percent
    ) external view returns (uint256 amountOut);
}

struct DexRoute {
    bytes[] data;
}

struct Quote {
    address pool;
    int128  i;
    int128  j;
    bool    useUnderlying;
    uint256 amountOut;
}

struct RouteStep {
    address tokenIn;
    address tokenOut;
    address pool;
    int128  i;
    int128  j;
    bool    useUnderlying;
    uint256 amountIn;
}

/* ────────────────── Dex module ───────────────── */

contract CurveDexModule is IDexModule, Ownable {
    using SafeERC20 for IERC20;

    // Events
    event PoolRegistryUpdated(address indexed previousRegistry, address indexed newRegistry);

    // Immutable addresses
    ICurveMetaRegistry public constant META_REGISTRY = ICurveMetaRegistry(0xF98B45FA17DE75FB1aD0e7aFD971b0ca00e379fC);

    // External Pool Registry for whitelisting pools
    IPoolRegistry public POOL_REGISTRY;

    // Tokens
    address public constant CRV_USD = 0xf939E0A03FB07F59A73314E73794Be0E57ac1b4E;
    address public constant USDT    = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
    address public constant USDC    = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
    address public constant DAI     = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    address public constant _3CRV   = 0x6c3F90f043a72FA612cbac8115EE7e52BDe6E490;
    address public constant WETH    = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    address public constant WBTC    = 0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599;
    address public constant FRAX    = 0x853d955aCEf822Db058eb8505911ED77F175b99e;

    address[8] internal HUB_TOKENS = [CRV_USD, USDT, USDC, DAI, _3CRV, WETH, WBTC, FRAX];

    // Selectors
    bytes4 constant EX_INT128  = ICurvePool.exchange.selector;
    bytes4 constant EXU_INT128 = ICurvePool.exchange_underlying.selector;
    bytes4 constant EX_U256    = ICurvePoolNew.exchange.selector;
    bytes4 constant EXU_U256   = ICurvePoolNew.exchange_underlying.selector;

    bytes4 constant DY_INT128  = ICurvePool.get_dy.selector;
    bytes4 constant DYU_INT128 = ICurvePool.get_dy_underlying.selector;
    bytes4 constant DY_U256    = bytes4(keccak256("get_dy(uint256,uint256,uint256)"));
    bytes4 constant DYU_U256   = bytes4(keccak256("get_dy_underlying(uint256,uint256,uint256)"));

    bytes4 constant EX_INT128_ETH  = bytes4(keccak256("exchange(int128,int128,uint256,uint256,bool)"));
    bytes4 constant EX_U256_ETH    = bytes4(keccak256("exchange(uint256,uint256,uint256,uint256,bool)"));

    // Modifiers
    modifier onlyERC20(address token) {
        require(token != address(0), "Zero token address");
        _;
    }

    constructor(address _poolRegistry) Ownable(msg.sender) {
        require(_poolRegistry != address(0), "Curve: zero registry address");
        POOL_REGISTRY = IPoolRegistry(_poolRegistry);
    }

    /* ──────────────── External VIEW ─────────────── */

    /**
     * @notice Simulates an exchange along a predefined Curve route using a percentage of the original amountIn.
     * @dev    This is useful for analyzing split swaps. The percentage is applied to the amountIn of the first hop,
     *         which is stored in the route data by the getBestRoute function.
     * @param  route     DexRoute containing serialized route steps.
     * @param  percent   Percentage of the original amountIn to use (e.g., 10 for 10%). Must be 1 to 100.
     * @return amountOut Simulated output token amount.
     */
    function simulateRoute(
        DexRoute calldata route,
        uint256 percent
    ) external view returns (uint256 amountOut) {
        uint256 hops = route.data.length;
        require(hops > 0, "Curve: empty route");
        require(percent > 0 && percent <= 100, "Curve: invalid percent");

        // 1. Decode the first hop to get the original amountIn
        (
            , // address tokenIn
            , // address tokenOut
            , // address pool
            , // int128 i
            , // int128 j
            , // bool useUnderlying
            uint256 originalAmountIn // amountIn
        ) = abi.decode(
            route.data[0],
            (address, address, address, int128, int128, bool, uint256)
        );
        
        // Calculate the fractional amountIn
        uint256 actualAmountIn = (originalAmountIn * percent) / 100;
        require(actualAmountIn > 0, "Curve: zero split amount");

        uint256 currentAmountIn = actualAmountIn;

        // 2. Iterate through all steps and simulate the exchange
        for (uint256 n; n < hops; ) {
            // Decode pool, i, j, useUnderlying for the current hop
            (
                , // address _tokenIn
                , // address _tokenOut
                address pool,
                int128 i,
                int128 j,
                bool useUnderlying, 
                // uint256 amountIn (ignored, as we use currentAmountIn)
            ) = abi.decode(
                route.data[n],
                (address, address, address, int128, int128, bool, uint256)
            );

            // Evaluate the quote for the current hop
            (bool ok, uint256 out) = _safeStaticGetDy(pool, i, j, useUnderlying, currentAmountIn);
            require(ok, "Curve: quote simulation failed");

            // The output of this hop becomes the input for the next hop
            currentAmountIn = out; 

            unchecked { ++n; }
        }
        
        // The final output of the last hop is the result
        amountOut = currentAmountIn;
    }

    /**
     * @notice Returns exchange routes that only use whitelisted Curve pools.
     * @param  tokenIn           Input token address.
     * @param  tokenOut          Output token address.
     * @param  amountIn          Input token amount.
     * @return whitelistedRoutes Array of possible exchange routes (one hop each) with whitelisted pools.
     */
    function getVerifiedRoutes(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) external view returns (Quote[][] memory whitelistedRoutes)
    {
        whitelistedRoutes = _getWhitelistedRoutes(tokenIn, tokenOut, amountIn);
    }
    
    /**
     * @notice Returns all possible Curve exchange routes: direct and via hub tokens.
     * @param  tokenIn  Address of the token being exchanged.
     * @param  tokenOut Address of the token we want to receive.
     * @param  amountIn Amount of the input token.
     * @return routes   Array of exchange routes (1 or 2 hops).
     */
    function getAllRoutes(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) external view returns (Quote[][] memory routes)
    {
        (address[] memory directPools, Quote[] memory directQuotes) = _allSingleHops(tokenIn, tokenOut, amountIn);

        uint256 maxRoutes = directQuotes.length + HUB_TOKENS.length;
        Quote[][] memory tmp = new Quote[][](maxRoutes);
        uint256 cnt = 0;
        
        /* ----------- 1-hop ---------- */
        for (uint256 i; i < directPools.length && cnt < maxRoutes; ++i) {
            Quote[] memory directHop = new Quote[](1);
            directHop[0] = Quote({
                pool: directPools[i],
                i: directQuotes[i].i,
                j: directQuotes[i].j,
                useUnderlying: directQuotes[i].useUnderlying,
                amountOut: directQuotes[i].amountOut
            });
            tmp[cnt++] = directHop;
        }

        /* ---------- 2-hops ---------- */
        for (uint8 h; h < HUB_TOKENS.length; ++h) {
            address hub = HUB_TOKENS[h];
            if (hub == tokenIn || hub == tokenOut) continue;

            Quote[] memory hop1 = _bestQuote(tokenIn, hub, amountIn);
            if (hop1.length == 0) continue;

            Quote[] memory hop2 = _bestQuote(hub, tokenOut, hop1[0].amountOut);
            if (hop2.length == 0) continue;

            // Fix: Initialize path with the correct size (2 for two hops)
            Quote[] memory path = new Quote[](2);
            path[0] = hop1[0];
            path[1] = hop2[0];
            tmp[cnt++] = path;
        }

        routes = new Quote[][](cnt);
        for (uint256 i; i < cnt; ++i) routes[i] = tmp[i];
    }

    /**
     * @notice Selects the best Curve exchange route for 1-hop and 2-hop separately.
     * @dev    Returns       both best options, allowing the caller to compare options considering gas costs.
     * @param  tokenIn       Address of the token we are giving away
     * @param  tokenOut      Address of the token we want to receive
     * @param  amountIn      Amount of the input token
     * @return best1HopRoute Serialized best 1-hop route (DexRoute).
     * @return amountOut1Hop Maximum amount of the token received for 1-hop.
     * @return best2HopRoute Serialized best 2-hop route (DexRoute).
     * @return amountOut2Hop Maximum amount of the token received for 2-hop.
     */
    function getBestRoute(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) external view override returns (
        DexRoute memory best1HopRoute,
        uint256 amountOut1Hop,
        DexRoute memory best2HopRoute,
        uint256 amountOut2Hop
    ) {
        if (!_preSwapValidateRoute(tokenOut)) return (best1HopRoute, 0, best2HopRoute, 0);
        
        // --- 1-hop: tokenIn -> tokenOut ---
        Quote[] memory directRoute = _bestQuote(tokenIn, tokenOut, amountIn);
        if (directRoute.length == 1 && _preSwapValidateRoute(tokenOut)) {
        // if (directRoute.length == 1) {
            amountOut1Hop = directRoute[0].amountOut;
            
            // build 1-hop DexRoute
            best1HopRoute.data = new bytes[](1);
            best1HopRoute.data[0] = abi.encode(
                tokenIn,
                tokenOut,
                directRoute[0].pool,
                directRoute[0].i,
                directRoute[0].j,
                directRoute[0].useUnderlying,
                amountIn
            );
        }

        // --- 2-hops via hubs ---
        uint256 maxAmountOut2Hop = 0;
        address hubUsed = address(0);
        Quote[] memory bestTmp2Hop; // local holder for building best 2-hop route

        for (uint8 h = 0; h < HUB_TOKENS.length; ++h) {
            address hub = HUB_TOKENS[h];
            if (hub == tokenIn || hub == tokenOut) continue;
            if (!_preSwapValidateRoute(hub)) continue;

            Quote[] memory hop1 = _bestQuote(tokenIn, hub, amountIn);
            if (hop1.length == 0) continue;

            Quote[] memory hop2 = _bestQuote(hub, tokenOut, hop1[0].amountOut);
            if (hop2.length == 0) continue;

            if (hop2[0].amountOut > maxAmountOut2Hop) {
                maxAmountOut2Hop = hop2[0].amountOut;
                hubUsed = hub;

                // pack temp best for building route below
                bestTmp2Hop  = new Quote[](2);
                bestTmp2Hop[0] = hop1[0];
                bestTmp2Hop[1] = hop2[0];
            }
        }
        
        if (maxAmountOut2Hop > 0) {
            amountOut2Hop = maxAmountOut2Hop;

            // build 2-hop DexRoute: tokenIn -> hubUsed -> tokenOut
            best2HopRoute.data = new bytes[](2);
            best2HopRoute.data[0] = abi.encode(
                tokenIn,
                hubUsed,
                bestTmp2Hop[0].pool,
                bestTmp2Hop[0].i,
                bestTmp2Hop[0].j,
                bestTmp2Hop[0].useUnderlying,
                amountIn
            );
            best2HopRoute.data[1] = abi.encode(
                hubUsed,
                tokenOut,
                bestTmp2Hop[1].pool,
                bestTmp2Hop[1].i,
                bestTmp2Hop[1].j,
                bestTmp2Hop[1].useUnderlying,
                0 // amountIn for intermediate token = 0, as it is determined by the contract balance in swapRoute
            );
        }
        // If no route is found, amountOut will be 0 and DexRoute.data will be empty (default)
    }

    /**
     * @notice Simulates a single-hop exchange in a specific pool.
     * @param  tokenIn   Address of the token we are giving away.
     * @param  tokenOut  Address of the token we want to receive.
     * @param  amountIn  Amount of the input token.
     * @param  pool      Address of the Curve pool to use.
     * @return amountOut Estimated amount of the token received.
     */
    function simulateSingleSwap(
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        address pool
    ) external view returns (uint256 amountOut) {
        Quote memory q = _evaluateQuote(pool, tokenIn, tokenOut, amountIn);
        return q.amountOut;
    }

    /**
     * @notice Decodes a serialized route into an array of steps.
     * @param  route DexRoute containing serialized data for each hop.
     * @return steps Array of route steps (RouteStep[]).
     */
    function decodeRoute(DexRoute calldata route)
        external
        pure
        returns (RouteStep[] memory steps)
    {
        uint256 len = route.data.length;
        steps = new RouteStep[](len);

        for (uint256 n; n < len; ++n) {
            (
                address tokenIn,
                address tokenOut,
                address pool,
                int128  i,
                int128  j,
                bool    useUnderlying,
                uint256 amountIn
            ) = abi.decode(
                    route.data[n],
                    (address, address, address, int128, int128, bool, uint256)
                );

            steps[n] = RouteStep({
                tokenIn:    tokenIn,
                tokenOut:   tokenOut,
                pool:       pool,
                i:          i,
                j:          j,
                useUnderlying: useUnderlying,
                amountIn:   amountIn
            });
        }
    }

    /* ─────────── External STATE-CHANGING ────────── */

    /**
     * @notice Performs an exchange along a predefined Curve route
     * @dev    The first hop uses amountIn from route; the rest use the entire available balance of the intermediate token
     * @param  route     DexRoute containing serialized route steps
     * @param  to        Final token recipient
     * @param  percent   Percentage of the route's original amountIn to use (1 to 100).
     * @return amountOut Total amount of output token received
     */
    function swapRoute(
        DexRoute calldata route,
        address           to,
        uint256           percent
    ) external returns (uint256 amountOut) {
        uint256 hops = route.data.length;
        require(hops > 0, "Curve: empty route");
        require(to != address(0), "Curve: invalid recipient");
        require(percent > 0 && percent <= 100, "Curve: invalid percent");
        address lastTokenOut = address(0);

        for (uint256 n; n < hops; ++n) {
            (
                address tokenIn,
                address tokenOut,
                address pool,
                int128  i,
                int128  j,
                bool    useUnderlying,
                uint256 amountIn
            ) = abi.decode(
                route.data[n],
                (address, address, address, int128, int128, bool, uint256)
            );

            require(pool != address(0), "Curve: invalid pool");

            if (n > 0) require(tokenIn == lastTokenOut, "Curve: route mismatch");

            uint256 actualIn;
            if (n == 0) {
                require(amountIn > 0, "Curve: zero input");
                uint256 requiredIn = (amountIn * percent) / 100;
                require(requiredIn > 0, "Curve: zero split amount");

                uint256 pre = IERC20(tokenIn).balanceOf(address(this));
                _pullToken(tokenIn, requiredIn);
                uint256 post = IERC20(tokenIn).balanceOf(address(this));
                actualIn = post - pre;
                require(actualIn > 0, "Curve: zero input");
                // We collect input tokens from the user for the first hop
            } else {
                // For subsequent hops — the entire balance of the intermediate token
                actualIn = IERC20(tokenIn).balanceOf(address(this));
                require(actualIn > 0, "Curve: no hop input");
            }

            // We perform a hop: approve + exchange; minOut=0 (we will check the total slippage after the cycle)
            amountOut = _swap(
                pool,
                tokenIn,
                tokenOut,
                i,
                j,
                useUnderlying,
                actualIn,
                0
            );

            lastTokenOut  = tokenOut;
        }

        _deliverToken(lastTokenOut, to, amountOut);
    }

    /**
     * @notice Performs a single-hop exchange in a specified pool.
     * @dev    The user must have approved this contract for tokenIn before calling this.
     * @param  tokenIn   Address of the token we are giving away.
     * @param  tokenOut  Address of the token we want to receive.
     * @param  amountIn  Exact amount of the input token to swap.
     * @param  pool      Address of the Curve pool to use.
     * @param  minOut    Minimum allowable output token amount (for slippage protection).
     * @param  to Final  token recipient.
     * @return amountOut Actual amount of output token received.
     */
    function manualSwapRoute(
        address pool,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 minOut,
        address to
    ) external returns (uint256 amountOut) {
        require(pool != address(0) && to != address(0) && amountIn > 0, "Curve: bad arguments");
        
        (bool ok, int128 i, int128 j, bool useUnderlying) = _safeGetCoinIndices(pool, tokenIn, tokenOut);
        require(ok, "Curve: coinIndices fail");

        useUnderlying = _normalizeUnderlyingForWETH(useUnderlying, tokenIn, tokenOut);

        _pullToken(tokenIn, amountIn);
        _smartApprove(tokenIn, pool, amountIn);

        amountOut = _executeExchange(
                pool,
                useUnderlying,
                i,
                j,
                amountIn,
                minOut,
                tokenIn,
                tokenOut
            );

        require(amountOut >= minOut, "Curve: slippage");

        _deliverToken(tokenOut, to, amountOut);
    }

    /* ────────────────── ADMIN ─────────────────── */

    /**
     * @notice Allows the contract owner to change the address of the external Pool Registry (Whitelist).
     * @param  _newPoolRegistry Address of the new IPoolRegistry contract.
     */
    function setPoolRegistry(address _newPoolRegistry) external onlyOwner {
        require(_newPoolRegistry != address(0), "Curve: zero registry address");
        emit PoolRegistryUpdated(address(POOL_REGISTRY), _newPoolRegistry);
        POOL_REGISTRY = IPoolRegistry(_newPoolRegistry);
    }

    /* ────────────── INTERNAL HELPERS ────────────── */

    /**
     * @notice Searches for the best Curve pool for token exchange
     * @param  from     Input token
     * @param  to       Output token
     * @param  amountIn Input token amount
     * @return arr      An array of length 1 with the best quote or an empty array
     */
    function _bestQuote(
            address from,
            address to,
            uint256 amountIn
    ) internal view returns (Quote[] memory arr) {
        Quote memory q = _directBest(from, to, amountIn);
        if (q.amountOut == 0) return new Quote[](0);

        arr = new Quote[](1);
        arr[0] = Quote(q.pool, q.i, q.j, q.useUnderlying, q.amountOut);
    }

    /**
     * @notice Returns the best Quote from all available Curve pools between from and to
     * @param  from     Address of the token we are giving away
     * @param  to       Address of the token we want to receive
     * @param  amountIn Amount of the input token
     * @return best     Quote structure with the highest amountOut
     */
    function _directBest(address from, address to, uint256 amountIn)
        internal
        view
        returns (Quote memory best)
    {
        address[] memory pools = _getPools(from, to);
        for (uint256 k; k < pools.length; ++k) {
            Quote memory q = _evaluateQuote(pools[k], from, to, amountIn);
            if (q.amountOut == 0) continue;

            if (q.pool != address(0)) {
                address actualOutToken = _resolvePoolOutputToken(q.pool, q.j, q.useUnderlying);
                if (actualOutToken != to) continue;
            }

            if (q.amountOut > best.amountOut) best = q;
        }
    }

    /**
     * @notice Tries to resolve the actual output token from a Curve pool using either coins(i) or underlying_coins(i)
     * @param  pool        The Curve pool address
     * @param  index       The token index
     * @param  useUnderlying Whether to query underlying_coins or coins
     * @return resolved    The token address resolved
     */
    function _resolvePoolOutputToken(address pool, int128 index, bool useUnderlying) internal view returns (address resolved) {
        uint256 idx = uint256(uint128(index));
        bytes memory callData = abi.encodeWithSignature(
            useUnderlying ? "underlying_coins(uint256)" : "coins(uint256)",
            idx
        );

        (bool ok, bytes memory out) = pool.staticcall(callData);
        if (ok && out.length >= 32) {
            resolved = abi.decode(out, (address));
        }
    }

    /**
     * @notice Returns a list of Curve pools between two tokens.
     * @dev    First checks verified pools, if none are found, uses Curve MetaRegistry.
     * @param  from  Token A
     * @param  to    Token B
     * @return pools List of pools found.
     */
    function _getPools(address from, address to) internal view returns (address[] memory pools) {
        address[] memory verified = POOL_REGISTRY.getVerifiedPools(from, to);
        if (verified.length > 0) {
            return verified;
        }
        return META_REGISTRY.find_pools_for_coins(from, to);
    }

    /**
     * @notice Returns routes using only whitelisted Curve pools
     * @param  tokenIn  Input token
     * @param  tokenOut Output token
     * @param  amountIn Amount of input token
     * @return routes   Array of routes with one hop
     */
    function _getWhitelistedRoutes(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) internal view returns (Quote[][] memory) {
        address[] memory verified = POOL_REGISTRY.getVerifiedPools(tokenIn, tokenOut);
        
        Quote[][] memory tmpWhitelisted = new Quote[][](verified.length);
        uint256 whitelistedCount = 0;
        
        for (uint256 i = 0; i < verified.length; ++i) {
            address pool = verified[i];
            Quote memory q = _evaluateQuote(pool, tokenIn, tokenOut, amountIn);
            
            if (q.amountOut > 0) {
                Quote[] memory hop = new Quote[](1);
                hop[0] = q;
                tmpWhitelisted[whitelistedCount++] = hop;
            }
        }
        
        Quote[][] memory result = new Quote[][](whitelistedCount);
        for (uint256 i = 0; i < whitelistedCount; ++i) {
            result[i] = tmpWhitelisted[i];
        }
        return result;
    }
    
    /**
     * @notice Secure call to MetaRegistry to get token indices in the Curve pool
     * @param  pool          Curve pool address
     * @param  from          Input token
     * @param  to            Output token
     * @return success       Whether the call was successful
     * @return i             Input token index
     * @return j             Output token index
     * @return useUnderlying Flag for using the underlying path
     */
    function _safeGetCoinIndices(address pool, address from, address to)
        internal view returns (bool success, int128 i, int128 j, bool useUnderlying)
    {      
        // First, let's try MetaRegistry
        bytes memory data = abi.encodeWithSelector(ICurveMetaRegistry.get_coin_indices.selector, pool, from, to);
        (success, data) = address(META_REGISTRY).staticcall(data);
        if (success && data.length >= 96) {
            (i, j, useUnderlying) = abi.decode(data, (int128, int128, bool));
            return (true, i, j, useUnderlying);
        } 

        // searching for indexes directly in the pool
        // try coins(uint256)
        (bool okI, uint256 idxI) = _findIndexByCoins(pool, from);
        (bool okJ, uint256 idxJ) = _findIndexByCoins(pool, to);
        if (okI && okJ) {
            return (true, int128(uint128(idxI)), int128(uint128(idxJ)), false);
        }

        // try underlying_coins(uint256)
        (okI, idxI) = _findIndexByUnderlyingCoins(pool, from);
        (okJ, idxJ) = _findIndexByUnderlyingCoins(pool, to);
        if (okI && okJ) {
            return (true, int128(uint128(idxI)), int128(uint128(idxJ)), true);
        }

        // did not find
        return (false, 0, 0, false);
    }

    /**
     * @notice Searches for the token index in the Curve pool by calling coins(uint256) on all possible slots.
     * @dev    Used as a fallback if MetaRegistry.get_coin_indices() does not return any indices.
     *         Safely terminates the loop on a call error or when the coin range is exceeded.
     * @param  pool  Curve pool address (LiquidityPool).
     * @param  token Token address for which to find the index.
     * @return found Whether the token index was successfully found in the pool.
     * @return index Token index (starting from 0) if found, otherwise 0.
     *
     * Example:
     * (true, 1) means that token is in the pool at coins(1).
     */
    function _findIndexByCoins(address pool, address token) internal view returns (bool, uint256) {
        // up to 8 coins — enough for tricrypto/metapool
        for (uint256 k = 0; k < 8; k++) {
            (bool ok, bytes memory out) = pool.staticcall(abi.encodeWithSignature("coins(uint256)", k));
            if (!ok) break; // no further indexes
            if (out.length >= 32 && abi.decode(out, (address)) == token) return (true, k);
        }
        // int128
        for (uint256 k = 0; k < 8; k++) {
            (bool ok, bytes memory out) = pool.staticcall(abi.encodeWithSignature("coins(int128)", int128(int256(k))));
            if (!ok) { break; }
            if (out.length >= 32 && abi.decode(out, (address)) == token) return (true, k);
        }
        return (false, 0);
    }

    /**
     * @notice Searches for the token index among underlying_coins(uint256) in the Curve pool.
     * @dev    Used as a fallback for meta pools and factory pools,
     *         where the main exchange logic uses the underlying layer of tokens.
     * @param  pool  Curve pool address (LiquidityPool).
     * @param  token Token address for which to find the index among underlying_coins.
     * @return found Whether the underlying token index was found successfully.
     * @return index Token index (starting from 0) if found, otherwise 0.
     *
     * Example:
     * (true, 2) means that the token is in underlying_coins(2).
     */
    function _findIndexByUnderlyingCoins(address pool, address token) internal view returns (bool, uint256) {
        for (uint256 k = 0; k < 8; k++) {
            (bool ok, bytes memory out) = pool.staticcall(abi.encodeWithSignature("underlying_coins(uint256)", k));
            if (!ok) break;
            if (out.length >= 32 && abi.decode(out, (address)) == token) return (true, k);
        }
        // int128
        for (uint256 k = 0; k < 8; k++) {
            (bool ok, bytes memory out) = pool.staticcall(abi.encodeWithSignature("underlying_coins(int128)", int128(int256(k))));
            if (!ok) { break; }
            if (out.length >= 32 && abi.decode(out, (address)) == token) return (true, k);
        }
        return (false, 0);
    }

    /**
     * @notice Secure call to get_dy or get_dy_underlying with fallback to uint256 version
     * @param  pool          Curve pool address
     * @param  i             Input token index
     * @param  j             Output token index
     * @param  useUnderlying Whether to use underlying
     * @param  amountIn      Input token amount
     * @return success       Whether the call was successful
     * @return result        Output token amount
     */
    function _safeStaticGetDy(
        address pool,
        int128 i,
        int128 j,
        bool useUnderlying,
        uint256 amountIn
    ) internal view returns (bool success, uint256 result)
    {
        // 1) uint256
        bytes4 selB = useUnderlying ? DYU_U256 : DY_U256;
        bytes memory data = abi.encodeWithSelector(selB, uint256(uint128(i)), uint256(uint128(j)), amountIn);
        (success, data) = pool.staticcall(data);
        if (success && data.length >= 32) {
            int256 rSigned = abi.decode(data, (int256));
            if (rSigned > 0) {
                result = uint256(rSigned);
            } else if (rSigned == 0) {
                result = abi.decode(data, (uint256));
            } else {
                return (false, 0);
            }
            return (true, result);
        }

        // 2) int128
        bytes4 selA = useUnderlying ? DYU_INT128 : DY_INT128;
        data = abi.encodeWithSelector(selA, i, j, amountIn);
        (success, data) = pool.staticcall(data);
        if (success && data.length >= 32) {
            int256 rSigned = abi.decode(data, (int256));
            if (rSigned == 0) return (true, 0);
            if (rSigned > 0) {
                result = uint256(rSigned);
            } else {
                if (rSigned < 0) return (false, 0);
                result = abi.decode(data, (uint256));
            }
            return (true, result);
        }
        return (false, 0);
    }

    /**
     * @notice Builds a quote for a pair of tokens and a specific Curve pool
     * @param  pool     Curve pool address
     * @param  from     Input token
     * @param  to       Output token
     * @param  amountIn Input token amount
     * @return quote    Quote structure with evaluation results
     */
    function _evaluateQuote(address pool, address from, address to, uint256 amountIn)
        internal view returns (Quote memory quote)
    {
        if (pool == address(0)) return quote;

        (bool indexOk, int128 i, int128 j, bool und) = _safeGetCoinIndices(pool, from, to);
        if (!indexOk) return quote;
        und = _normalizeUnderlyingForWETH(und, from, to);

        (bool ok, uint256 out) = _safeStaticGetDy(pool, i, j, und, amountIn);
        if (!ok) return quote;

        quote = Quote(pool, i, j, und, out);
    }

    /**
     * @notice Performs Curve exchange with fallback to uint256 version of selector
     * @param  pool          Curve pool address
     * @param  useUnderlying Whether to use underlying option
     * @param  i             Input token index
     * @param  j             Output token index
     * @param  amountIn      Input token amount
     * @param  minAmountOut  Minimum allowable output
     * @param  tokenOut      Output token address (for balance verification)
     * @return amountOut     Actual amount of token received
     */
    function _executeExchange(
        address   pool,
        bool      useUnderlying,
        int128    i,
        int128    j,
        uint256   amountIn,
        uint256   minAmountOut,
        address   tokenIn,
        address   tokenOut
    ) internal returns (uint256 amountOut) {
        uint256 beforeBal = IERC20(tokenOut).balanceOf(address(this));
        bool ok; bytes memory ret;

        // We will uniformly prepare indexes in uint256
        uint256 iu = uint256(uint128(i));
        uint256 ju = uint256(uint128(j));

        // read the profile (if not found, all false values will be returned and permissive fallback will be triggered)
        (, bool exIndexUint, bool exHasEthFlag, bool exHasReceiver, bool exHasReceiverUnderlying) =
            _getPoolProfileFlags(pool, tokenIn, tokenOut);

        if (useUnderlying) {
        // ───── underlying: strictly according to two flags exIndexUint / exHasReceiverUnderlying ─────
        if (exHasReceiverUnderlying) {
            if (exIndexUint) {
                // exchange_underlying(uint256,uint256,uint256,uint256,address)
                (ok, ret) = pool.call(
                    abi.encodeWithSignature(
                        "exchange_underlying(uint256,uint256,uint256,uint256,address)",
                        iu, ju, amountIn, minAmountOut, address(this)
                    )
                );
            } else {
                // exchange_underlying(int128,int128,uint256,uint256,address)
                (ok, ret) = pool.call(
                    abi.encodeWithSignature(
                        "exchange_underlying(int128,int128,uint256,uint256,address)",
                        i, j, amountIn, minAmountOut, address(this)
                    )
                );
            }
        } else {
            if (exIndexUint) {
                // exchange_underlying(uint256,uint256,uint256,uint256)
                (ok, ret) = pool.call(abi.encodeWithSelector(EXU_U256, iu, ju, amountIn, minAmountOut));
            } else {
                // exchange_underlying(int128,int128,uint256,uint256)
                (ok, ret) = pool.call(abi.encodeWithSelector(EXU_INT128, i, j, amountIn, minAmountOut));
            }
        }
    } else {
        // ───── non-underlying: strictly according to the three flags exIndexUint / exHasEthFlag / exHasReceiver ─────
        if (exHasReceiver) {
            if (exIndexUint) {
                if (exHasEthFlag) {
                    // exchange(uint256,uint256,uint256,uint256,bool,address)
                    (ok, ret) = pool.call(
                        abi.encodeWithSignature(
                            "exchange(uint256,uint256,uint256,uint256,bool,address)",
                            iu, ju, amountIn, minAmountOut, false, address(this)
                        )
                    );
                } else {
                    // exchange(uint256,uint256,uint256,uint256,address)
                    (ok, ret) = pool.call(
                        abi.encodeWithSignature(
                            "exchange(uint256,uint256,uint256,uint256,address)",
                            iu, ju, amountIn, minAmountOut, address(this)
                        )
                    );
                }
            } else {
                // Curve has a common receiver for int128 without use_eth
                // exchange(int128,int128,uint256,uint256,address)
                (ok, ret) = pool.call(
                    abi.encodeWithSignature(
                        "exchange(int128,int128,uint256,uint256,address)",
                        i, j, amountIn, minAmountOut, address(this)
                    )
                );
            }
        } else {
            if (exIndexUint) {
                if (exHasEthFlag) {
                    // exchange(uint256,uint256,uint256,uint256,bool)
                    (ok, ret) = pool.call(abi.encodeWithSelector(EX_U256_ETH, iu, ju, amountIn, minAmountOut, false));
                } else {
                    // exchange(uint256,uint256,uint256,uint256)
                    (ok, ret) = pool.call(abi.encodeWithSelector(EX_U256, iu, ju, amountIn, minAmountOut));
                }
            } else {
                if (exHasEthFlag) {
                    // exchange(int128,int128,uint256,uint256,bool)
                    (ok, ret) = pool.call(abi.encodeWithSelector(EX_INT128_ETH, i, j, amountIn, minAmountOut, false));
                } else {
                    // exchange(int128,int128,uint256,uint256)
                    (ok, ret) = pool.call(abi.encodeWithSelector(EX_INT128, i, j, amountIn, minAmountOut));
                }
            }
        }
    }

    require(ok, "Curve: swap failed");

    if (ret.length >= 32) {
        amountOut = abi.decode(ret, (uint256));
    } else {
        amountOut = IERC20(tokenOut).balanceOf(address(this)) - beforeBal;
    }
    require(amountOut >= minAmountOut, "Curve: slippage");
    return amountOut ;
}

    /**
     * @notice Performs a one-hop exchange: approve + exchange
     * @param  pool          Curve pool address
     * @param  tokenIn       Input token
     * @param  tokenOut      Output token
     * @param  i             Input token index
     * @param  j             Output token index
     * @param  useUnderlying Whether to use underlying
     * @param  amountIn      Input token amount
     * @param  minOut        Minimum allowable output token amount
     * @return amountOut     Output token amount
     */
    function _swap(
        address pool,
        address tokenIn,
        address tokenOut,
        int128  i,
        int128  j,
        bool    useUnderlying,
        uint256 amountIn,
        uint256 minOut
    ) internal returns (uint256 amountOut) {
        require(pool != address(0) && amountIn > 0, "Curve: bad arguments");

        // Approve pool if necessary (USDT-compatible)
        _smartApprove(tokenIn, pool, amountIn);

        // Perform exchange (with fallback to uint256 indexes inside _executeExchange)
        amountOut = _executeExchange(
            pool,
            useUnderlying,
            i,
            j,
            amountIn,
            minOut,
            tokenIn,
            tokenOut
        );
    }

    /**
     * @notice Securely set allowance on Curve pool, taking into account non-standard tokens
     * @param  token   Token for which permission is being set
     * @param  spender Curve pool address
     * @param  amount  Minimum required allowance amount
     */
    function _smartApprove (address token, address spender, uint256 amount) internal {
        if (IERC20(token).allowance(address(this), spender) < amount) {
            IERC20(token).forceApprove(spender, type(uint256).max);
        }
    }

    /**
     * @notice Returns a list of all possible Curve pools between two tokens and the corresponding quotes.
     * @param  tokenIn  Input token.
     * @param  tokenOut Output token.
     * @param  amountIn Amount of input token.
     * @return pools    List of pools.
     * @return quotes   List of quotes for each pool.
     */
    function _allSingleHops(address tokenIn, address tokenOut, uint256 amountIn)
        internal
        view
        returns (address[] memory pools, Quote[] memory quotes)
    {
        pools = META_REGISTRY.find_pools_for_coins(tokenIn, tokenOut);
        uint256 len = pools.length;

        quotes = new Quote[](len);

        for (uint256 i = 0; i < len; ++i) {
            quotes[i] = _evaluateQuote(pools[i], tokenIn, tokenOut, amountIn);
        }
    }

    /**
     * @notice Transfers tokens from the user to the contract
     * @param  token  The token to be received
     * @param  amount The number of tokens
     */
    function _pullToken(address token, uint256 amount) internal onlyERC20(token) {
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
    }

    /**
     * @notice Sends a token to the user
     * @param  token  The token to be sent
     * @param  to The recipient
     * @param  amount The number of tokens
     */
    function _deliverToken(address token, address to, uint256 amount) internal onlyERC20(token) {
        IERC20(token).safeTransfer(to, amount);
    }

    /**
     * @notice Normalizes the `useUnderlying` flag for routes involving WETH.
     * @dev    We always treat WETH as regular ERC-20, not native ETH.
     * @param  und           The original `useUnderlying` flag obtained from MetaRegistry (get_coin_indices).
     * @param  from          The address of the input token.
     * @param  to            The address of the output token.
     * @return normalizedUnd Normalized `useUnderlying` flag, safe for quotes/swaps.
    */
    function _normalizeUnderlyingForWETH(
        bool und,
        address from,
        address to
    ) internal pure returns (bool) {
        // WETH — always follow the ERC-20 path (exchange with int128/uint256 without msg.value)
        if (from == WETH || to == WETH) return false;
        return und;
    }

    /**
     * @notice Checks if the token is a known interest-bearing wrapper (e.g., cyUSDC, yvDAI, etc.).
     * @param  token     The token address.
     * @return isWrapped True if the token is an interest-bearing wrapped token.
     */
    function _isInterestBearingToken(address token) internal view returns (bool isWrapped) {
        try IERC20Metadata(token).symbol() returns (string memory symbol) {
            bytes memory b = bytes(symbol);
            if (
                _startsWith(b, "cy") ||
                _startsWith(b, "yv") ||
                _startsWith(b, "a")  ||
                _startsWith(b, "c")  ||
                _startsWith(b, "bb-") ||
                _startsWith(b, "s")  ||
                _startsWith(b, "ma") ||
                _startsWith(b, "r")
            ) {
                return true;
            }
        } catch {
            return false;
        }
        return false;
    }

    /**
     * @dev Utility function to check if a string starts with a given prefix.
     */
    function _startsWith(bytes memory full, string memory prefix) internal pure returns (bool) {
        bytes memory p = bytes(prefix);
        if (full.length < p.length) return false;
        for (uint i = 0; i < p.length; i++) {
            if (full[i] != p[i]) return false;
        }
        return true;
    }

    /**
     * @notice Hook before completing the route
     * @dev    Example use: unwrap interest-bearing tokens before swap ends
     */
    function _preSwapValidateRoute(address token) internal view returns (bool) {
        return !_isCurveLPTok(token) && !_isInterestBearingToken(token);
    }

    /**
     * @notice Checks whether a token is a known Curve LP-like token.
     * @dev    Used to prevent routing into LP tokens which are not suitable as final outputs.
     *         Currently hardcoded for known Curve LP tokens such as 3CRV and crvUSD.
     *         Extend this function to support additional LP token addresses as needed.
     * @param  token The token address to check.
     * @return True if the token is considered a Curve LP-like token, false otherwise.
     */
    function _isCurveLPTok(address token) internal pure returns (bool) {
        // LP-like Curve tokens (you can expand the list as needed)
        return token == _3CRV || token == CRV_USD;
    }

    /**
     * @notice Forwards to Pool Registry `getPoolProfileFlags`.
     * @param  pool Curve pool.
     */
    function _getPoolProfileFlags(address pool, address tokenIn, address tokenOut)
        internal
        view
        returns (bool exists, bool exIndexUint, bool exHasEthFlag, bool exHasReceiver, bool exHasReceiverUnderlying)
    {
        return POOL_REGISTRY.getPoolProfileFlags(pool, tokenIn, tokenOut);
    }

    /**
     * @notice Manual single-hop swap where caller supplies profile flags ad-hoc (bypasses registry).
     * @dev    Useful for emergency/manual operations or when the registry is not yet configured.
     * @param  pool                    Curve pool.
     * @param  tokenIn                 Input token.
     * @param  tokenOut                Output token.
     * @param  amountIn                Input amount.
     * @param  minOut                  Minimum acceptable output.
     * @param  to                      Recipient.
     * @param  exIndexUint             Non-underlying indices type flag.
     * @param  exHasEthFlag            Non-underlying `use_eth` flag.
     * @param  exHasReceiver           Non-underlying receiver overloads flag.
     * @param  exHasReceiverUnderlying Underlying receiver overloads flag.
     * @return amountOut Actual output amount.
     */
    function manualSwapRouteManualProfile(
        address pool,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 minOut,
        address to,
        bool exIndexUint,              // non-underlying
        bool exHasEthFlag,             // non-underlying
        bool exHasReceiver,            // non-underlying
        bool exHasReceiverUnderlying   // underlying
    ) external returns (uint256 amountOut) {
        require(pool != address(0) && to != address(0) && amountIn > 0, "Curve: bad args");

        (bool okIdx, int128 i, int128 j, bool useUnderlying) = _safeGetCoinIndices(pool, tokenIn, tokenOut);
        require(okIdx, "Curve: coinIndices fail");
        useUnderlying = _normalizeUnderlyingForWETH(useUnderlying, tokenIn, tokenOut);

        _pullToken(tokenIn, amountIn);
        _smartApprove(tokenIn, pool, amountIn);

        uint256 iu = uint256(uint128(i));
        uint256 ju = uint256(uint128(j));
        bool callOk; bytes memory ret;
        uint256 beforeBal = IERC20(tokenOut).balanceOf(address(this));

        if (useUnderlying) {
            // ───── underlying: strictly according to two flags ─────
            if (exHasReceiverUnderlying) {
                if (exIndexUint) {
                    // exchange_underlying(uint256,uint256,uint256,uint256,address)
                    (callOk, ret) = pool.call(
                        abi.encodeWithSignature(
                            "exchange_underlying(uint256,uint256,uint256,uint256,address)",
                            iu, ju, amountIn, minOut, address(this)
                        )
                    );
                } else {
                    // exchange_underlying(int128,int128,uint256,uint256,address)
                    (callOk, ret) = pool.call(
                        abi.encodeWithSignature(
                            "exchange_underlying(int128,int128,uint256,uint256,address)",
                            i, j, amountIn, minOut, address(this)
                        )
                    );
                }
            } else {
                if (exIndexUint) {
                    // exchange_underlying(uint256,uint256,uint256,uint256)
                    (callOk, ret) = pool.call(abi.encodeWithSelector(EXU_U256, iu, ju, amountIn, minOut));
                } else {
                    // exchange_underlying(int128,int128,uint256,uint256)
                    (callOk, ret) = pool.call(abi.encodeWithSelector(EXU_INT128, i, j, amountIn, minOut));
                }
            }
        } else {
            // ───── non-underlying: strictly according to the three flags ─────
            if (exHasReceiver) {
                if (exIndexUint) {
                    if (exHasEthFlag) {
                        // exchange(uint256,uint256,uint256,uint256,bool,address)
                        (callOk, ret) = pool.call(
                            abi.encodeWithSignature(
                                "exchange(uint256,uint256,uint256,uint256,bool,address)",
                                iu, ju, amountIn, minOut, false, address(this)
                            )
                        );
                    } else {
                        // exchange(uint256,uint256,uint256,uint256,address)
                        (callOk, ret) = pool.call(
                            abi.encodeWithSignature(
                                "exchange(uint256,uint256,uint256,uint256,address)",
                                iu, ju, amountIn, minOut, address(this)
                            )
                        );
                    }
                } else {
                    // exchange(int128,int128,uint256,uint256,address)
                    (callOk, ret) = pool.call(
                        abi.encodeWithSignature(
                            "exchange(int128,int128,uint256,uint256,address)",
                            i, j, amountIn, minOut, address(this)
                        )
                    );
                }
            } else {
                if (exIndexUint) {
                    if (exHasEthFlag) {
                        // exchange(uint256,uint256,uint256,uint256,bool)
                        (callOk, ret) = pool.call(abi.encodeWithSelector(EX_U256_ETH, iu, ju, amountIn, minOut, false));
                    } else {
                        // exchange(uint256,uint256,uint256,uint256)
                        (callOk, ret) = pool.call(abi.encodeWithSelector(EX_U256, iu, ju, amountIn, minOut));
                    }
                } else {
                    if (exHasEthFlag) {
                        // exchange(int128,int128,uint256,uint256,bool)
                        (callOk, ret) = pool.call(abi.encodeWithSelector(EX_INT128_ETH, i, j, amountIn, minOut, false));
                    } else {
                        // exchange(int128,int128,uint256,uint256)
                        (callOk, ret) = pool.call(abi.encodeWithSelector(EX_INT128, i, j, amountIn, minOut));
                    }
                }
            }
        }

        require(callOk, "Curve: manual swap failed");

        if (ret.length >= 32) {
            amountOut = abi.decode(ret, (uint256));
        } else {
            amountOut = IERC20(tokenOut).balanceOf(address(this)) - beforeBal;
        }
        require(amountOut >= minOut, "Curve: slippage");

        _deliverToken(tokenOut, to, amountOut);
    }
}