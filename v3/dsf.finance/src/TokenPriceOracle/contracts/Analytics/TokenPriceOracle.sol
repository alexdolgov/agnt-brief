// SPDX-License-Identifier: MIT
pragma solidity ^0.8.35;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

/**
 * @title  IFeedRegistry
 * @notice Minimal Chainlink Feed Registry interface
 */
interface IFeedRegistry {
    function latestRoundData(address base, address quote)
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );

    function decimals(address base, address quote) external view returns (uint8);
}

/**
 * @title  IERC20Metadata
 * @notice Minimal ERC20 metadata interface for decimals
 */
interface IERC20Metadata {
    function decimals() external view returns (uint8);
}

/**
 * @title  ICurvePoolUint256
 * @notice Curve pool interface for pools exposing get_dy(uint256,uint256,uint256)
 */
interface ICurvePoolUint256 {
    function get_dy(uint256 i, uint256 j, uint256 dx) external view returns (uint256);
}

/**
 * @title  ICurvePoolInt128
 * @notice Curve pool interface for pools exposing get_dy(int128,int128,uint256)
 */
interface ICurvePoolInt128 {
    function get_dy(int128 i, int128 j, uint256 dx) external view returns (uint256);
}

/**
 * @title  ITokenPriceOracle
 * @notice External interface used by DSFanalytics
 */
interface ITokenPriceOracle {
    function getTokenUsdPrice1e18(address token)
        external
        view
        returns (
            uint256 priceUsd1e18,
            uint256 updatedAt,
            bool ok
        );

    function getTokensUsdPrices1e18(address[] calldata tokens)
        external
        view
        returns (
            uint256[] memory pricesUsd1e18,
            uint256[] memory updatedAts,
            bool[] memory oks
        );
}

/**
 * @title  TokenPriceOracle
 * @author Andrei Averin — CTO dsf.finance
 *
 * @notice
 * Standalone USD price oracle module for DSF analytics
 *
 * Resolution order:
 *      1. Chainlink TOKEN/USD via Feed Registry
 *      2. Chainlink TOKEN/ETH * ETH/USD via Feed Registry
 *      3. Curve route TOKEN -> quoteToken -> USD
 *      4. Local fallback:
 *          - manual price
 *          - fixed 1 USD price for approved stablecoins
 *
 * @dev
 * All prices are normalized to 1e18.
 *
 * Examples:
 *      ETH price  = 3500e18
 *      USDT price = 1e18
 *      RLUSD via Curve:
 *          RLUSD -> USDC through Curve get_dy()
 *          USDC -> USD through Chainlink or fixed fallback
 *
 * This contract is intentionally separated from DSFanalytics so pricing logic can be
 * updated/configured without redeploying the main analytics aggregator
 */
contract TokenPriceOracle is Ownable, AccessControl, ITokenPriceOracle {
    /* ───────────────────────────── Types ───────────────────────────── */

    enum FallbackMode {
        NONE,
        MANUAL_PRICE,
        FIXED_ONE_USD
    }

    struct PriceResult {
        uint256 priceUsd1e18;
        uint256 updatedAt;
        bool ok;
        uint8 source;
    }

    struct FallbackConfig {
        FallbackMode mode;
        uint256 manualPriceUsd1e18;
        uint256 manualUpdatedAt;
    }

    struct CurveRouteConfig {
        bool enabled;
        address pool;
        address quoteToken;
        uint8 tokenIndex;
        uint8 quoteIndex;
        uint256 amountIn;
        bool useInt128;
    }

    /* ───────────────────────────── Roles ───────────────────────────── */

    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    modifier onlyAdmin() {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "TPO: not admin");
        _;
    }

    modifier onlyOperator() {
        require(
            hasRole(OPERATOR_ROLE, msg.sender) || hasRole(DEFAULT_ADMIN_ROLE, msg.sender),
            "TPO: not operator"
        );
        _;
    }

    /* ───────────────────────────── Constants ───────────────────────────── */

    uint256 public constant PRICE_SCALE = 1e18;

    address public constant DENOM_ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    address public constant DENOM_USD = 0x0000000000000000000000000000000000000348;

    address public constant DEFAULT_FEED_REGISTRY = 0x47Fb2585D2C56Fe188D0E6ec628a38b74fCeeeDf;

    address public constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    /*
        Source codes for PriceResult.source:

        0 = NONE / unavailable
        1 = Chainlink TOKEN/USD
        2 = Chainlink TOKEN/ETH * ETH/USD
        3 = manual fallback
        4 = fixed 1 USD fallback
        5 = Curve route TOKEN -> quoteToken -> USD
    */

    uint8 public constant SOURCE_NONE = 0;
    uint8 public constant SOURCE_CHAINLINK_USD = 1;
    uint8 public constant SOURCE_CHAINLINK_ETH = 2;
    uint8 public constant SOURCE_MANUAL = 3;
    uint8 public constant SOURCE_FIXED_ONE_USD = 4;
    uint8 public constant SOURCE_CURVE_ROUTE = 5;

    /* ───────────────────────────── Storage ───────────────────────────── */

    IFeedRegistry public feedRegistry;

    /**
     * @notice Max allowed age for Chainlink price
     */
    uint32 public chainlinkStalenessSeconds = 1 hours;

    /**
     * @notice Max allowed age for manual price
     * @dev    If set to 0, manual prices never expire
     */
    uint32 public manualStalenessSeconds = 0;

    mapping(address => FallbackConfig) private _fallbackConfig;

    /**
     * @notice Optional Curve route per token
     * @dev    Example:
     *         RLUSD -> USDC through Curve pool, then USDC -> USD through Chainlink/fallback
     */
    mapping(address => CurveRouteConfig) public curveRouteConfig;

    /* ───────────────────────────── Events ───────────────────────────── */

    event FeedRegistryUpdated(address indexed oldRegistry, address indexed newRegistry);

    event ChainlinkStalenessUpdated(uint32 oldValue, uint32 newValue);
    event ManualStalenessUpdated(uint32 oldValue, uint32 newValue);

    event ManualPriceUpdated(
        address indexed token,
        uint256 priceUsd1e18,
        bool enabled
    );

    event FixedOneUsdUpdated(
        address indexed token,
        bool enabled
    );

    event FallbackDisabled(address indexed token);

    event CurveRouteUpdated(
        address indexed token,
        address indexed pool,
        address indexed quoteToken,
        uint8 tokenIndex,
        uint8 quoteIndex,
        uint256 amountIn,
        bool useInt128,
        bool enabled
    );

    event OperatorAdded(address indexed operator);
    event OperatorRemoved(address indexed operator);

    /* ───────────────────────────── Constructor ───────────────────────────── */

    constructor(address feedRegistry_) Ownable(msg.sender) {
        address reg = feedRegistry_;

        if (reg == address(0)) {
            reg = DEFAULT_FEED_REGISTRY;
        }

        require(reg.code.length > 0, "TPO: bad registry");

        feedRegistry = IFeedRegistry(reg);

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(OPERATOR_ROLE, msg.sender);
    }

    /* ───────────────────────────── Role admin ───────────────────────────── */

    function addOperator(address op) external onlyAdmin {
        require(op != address(0), "TPO: op=0");
        _grantRole(OPERATOR_ROLE, op);
        emit OperatorAdded(op);
    }

    function removeOperator(address op) external onlyAdmin {
        _revokeRole(OPERATOR_ROLE, op);
        emit OperatorRemoved(op);
    }

    function isOperator(address op) external view returns (bool) {
        return hasRole(OPERATOR_ROLE, op);
    }

    /* ───────────────────────────── Admin config ───────────────────────────── */

    function setFeedRegistry(address newRegistry) external onlyAdmin {
        require(newRegistry != address(0) && newRegistry.code.length > 0, "TPO: bad registry");

        address old = address(feedRegistry);
        feedRegistry = IFeedRegistry(newRegistry);

        emit FeedRegistryUpdated(old, newRegistry);
    }

    function setChainlinkStalenessSeconds(uint32 value) external onlyAdmin {
        require(value >= 60, "TPO: too low");

        uint32 old = chainlinkStalenessSeconds;
        chainlinkStalenessSeconds = value;

        emit ChainlinkStalenessUpdated(old, value);
    }

    /**
     * @notice Sets manual price staleness
     * @dev    value = 0 means manual prices never expire
     */
    function setManualStalenessSeconds(uint32 value) external onlyAdmin {
        uint32 old = manualStalenessSeconds;
        manualStalenessSeconds = value;

        emit ManualStalenessUpdated(old, value);
    }

    /**
     * @notice Sets manual USD price for a token
     * @dev    priceUsd1e18 must use 1e18 scale
     *
     * Example:
     *      $1.00 = 1e18
     *      $0.99 = 990000000000000000
     *      $3500 = 3500e18
     */
    function setManualUsdPrice(
        address token,
        uint256 priceUsd1e18,
        bool enabled
    ) external onlyOperator {
        require(token != address(0), "TPO: token=0");

        if (enabled) {
            require(priceUsd1e18 > 0, "TPO: price=0");

            _fallbackConfig[token] = FallbackConfig({
                mode: FallbackMode.MANUAL_PRICE,
                manualPriceUsd1e18: priceUsd1e18,
                manualUpdatedAt: block.timestamp
            });
        } else {
            delete _fallbackConfig[token];
        }

        emit ManualPriceUpdated(token, priceUsd1e18, enabled);
    }

    /**
     * @notice Sets fixed $1 fallback for stablecoins
     * @dev    Use this for tokens like RLUSD/PYUSD as emergency fallback
     *         if Chainlink and Curve route are unavailable
     */
    function setFixedOneUsd(address token, bool enabled) external onlyOperator {
        require(token != address(0), "TPO: token=0");

        if (enabled) {
            _fallbackConfig[token] = FallbackConfig({
                mode: FallbackMode.FIXED_ONE_USD,
                manualPriceUsd1e18: PRICE_SCALE,
                manualUpdatedAt: block.timestamp
            });
        } else {
            delete _fallbackConfig[token];
        }

        emit FixedOneUsdUpdated(token, enabled);
    }

    /**
     * @notice Disables local fallback pricing for a token
     * @dev    Removes both MANUAL_PRICE and FIXED_ONE_USD fallback config
     *         After this call, token pricing will rely only on Chainlink and/or Curve route
     * @param  token Token address to disable fallback for
     */
    function disableFallback(address token) external onlyOperator {
        require(token != address(0), "TPO: token=0");

        delete _fallbackConfig[token];

        emit FallbackDisabled(token);
    }

    /**
     * @notice Batch enables or disables fixed $1 fallback for multiple tokens
     * @dev    Intended for stablecoins only. When enabled, each token returns 1e18
     *         as emergency fallback if Chainlink and Curve route cannot provide a price
     * @param  tokens  Token addresses to update
     * @param  enabled True to enable fixed $1 fallback, false to remove fallback config
     */
    function batchSetFixedOneUsd(
        address[] calldata tokens,
        bool enabled
    ) external onlyOperator {
        for (uint256 i; i < tokens.length; i++) {
            address token = tokens[i];
            require(token != address(0), "TPO: token=0");

            if (enabled) {
                _fallbackConfig[token] = FallbackConfig({
                    mode: FallbackMode.FIXED_ONE_USD,
                    manualPriceUsd1e18: PRICE_SCALE,
                    manualUpdatedAt: block.timestamp
                });
            } else {
                delete _fallbackConfig[token];
            }

            emit FixedOneUsdUpdated(token, enabled);
        }
    }

    /**
     * @notice Batch sets or disables manual USD prices for multiple tokens
     * @dev    Prices must be provided in 1e18 scale. If `enabled` is false,
     *         the provided prices are ignored and fallback configs are removed
     *
     * Example:
     *      $1.00  = 1e18
     *      $0.99  = 990000000000000000
     *      $3500  = 3500e18
     *
     * @param  tokens          Token addresses to update
     * @param  pricesUsd1e18   Manual USD prices in 1e18 scale
     * @param  enabled         True to enable manual prices, false to disable fallbacks
     */
    function batchSetManualUsdPrice(
        address[] calldata tokens,
        uint256[] calldata pricesUsd1e18,
        bool enabled
    ) external onlyOperator {
        require(tokens.length == pricesUsd1e18.length, "TPO: len mismatch");

        for (uint256 i; i < tokens.length; i++) {
            address token = tokens[i];
            uint256 price = pricesUsd1e18[i];

            require(token != address(0), "TPO: token=0");

            if (enabled) {
                require(price > 0, "TPO: price=0");

                _fallbackConfig[token] = FallbackConfig({
                    mode: FallbackMode.MANUAL_PRICE,
                    manualPriceUsd1e18: price,
                    manualUpdatedAt: block.timestamp
                });
            } else {
                delete _fallbackConfig[token];
            }

            emit ManualPriceUpdated(token, price, enabled);
        }
    }

    /**
     * @notice Sets Curve route TOKEN -> quoteToken.
     * @dev    The final USD price is calculated as:
     *
     *         token price USD =
     *             get_dy(tokenIndex, quoteIndex, amountIn)
     *             * quoteTokenUsdPrice
     *             / quoteTokenDecimals
     *             normalized back to 1 token unit
     *
     * Example:
     *      RLUSD -> USDC via Curve
     *      quoteToken = USDC
     *      amountIn = 1e18 if RLUSD has 18 decimals
     */
    function setCurveRoute(
        address token,
        address pool,
        address quoteToken,
        uint8 tokenIndex,
        uint8 quoteIndex,
        uint256 amountIn,
        bool useInt128,
        bool enabled
    ) external onlyOperator {
        require(token != address(0), "TPO: token=0");

        if (enabled) {
            require(pool != address(0) && pool.code.length > 0, "TPO: bad pool");
            require(quoteToken != address(0) && quoteToken.code.length > 0, "TPO: bad quote");
            require(amountIn > 0, "TPO: amountIn=0");

            curveRouteConfig[token] = CurveRouteConfig({
                enabled: true,
                pool: pool,
                quoteToken: quoteToken,
                tokenIndex: tokenIndex,
                quoteIndex: quoteIndex,
                amountIn: amountIn,
                useInt128: useInt128
            });
        } else {
            delete curveRouteConfig[token];
        }

        emit CurveRouteUpdated(
            token,
            pool,
            quoteToken,
            tokenIndex,
            quoteIndex,
            amountIn,
            useInt128,
            enabled
        );
    }

    /**
     * @notice Disables Curve route pricing for a token
     * @dev    Removes the configured TOKEN -> quoteToken Curve route
     *         Fallback pricing remains untouched
     * @param  token Token address to disable Curve route for
     */
    function disableCurveRoute(address token) external onlyOperator {
        require(token != address(0), "TPO: token=0");

        CurveRouteConfig memory oldCfg = curveRouteConfig[token];

        delete curveRouteConfig[token];

        emit CurveRouteUpdated(
            token,
            oldCfg.pool,
            oldCfg.quoteToken,
            oldCfg.tokenIndex,
            oldCfg.quoteIndex,
            oldCfg.amountIn,
            oldCfg.useInt128,
            false
        );
    }

    /* ───────────────────────────── External views ───────────────────────────── */

    /**
     * @notice Returns token USD price in 1e18 scale
     * @dev    This is the main function for DSFanalytics
     */
    function getTokenUsdPrice1e18(address token)
        external
        view
        override
        returns (
            uint256 priceUsd1e18,
            uint256 updatedAt,
            bool ok
        )
    {
        PriceResult memory r = _getTokenUsdPrice(token);

        return (
            r.priceUsd1e18,
            r.updatedAt,
            r.ok
        );
    }

    /**
     * @notice Extended version with source code
     */
    function getTokenUsdPrice1e18WithSource(address token)
        external
        view
        returns (
            uint256 priceUsd1e18,
            uint256 updatedAt,
            bool ok,
            uint8 source
        )
    {
        PriceResult memory r = _getTokenUsdPrice(token);

        return (
            r.priceUsd1e18,
            r.updatedAt,
            r.ok,
            r.source
        );
    }

    /**
     * @notice Batch version of getTokenUsdPrice1e18
     * @dev    Uses the same resolution order for each token:
     *         Chainlink -> Curve route -> local fallback
     * @param  tokens Token addresses to price
     * @return pricesUsd1e18 USD prices normalized to 1e18
     * @return updatedAts    Timestamps of the source price data
     * @return oks           True if price is usable, false if unavailable/stale
     */
    function getTokensUsdPrices1e18(address[] calldata tokens)
        external
        view
        override
        returns (
            uint256[] memory pricesUsd1e18,
            uint256[] memory updatedAts,
            bool[] memory oks
        )
    {
        pricesUsd1e18 = new uint256[](tokens.length);
        updatedAts = new uint256[](tokens.length);
        oks = new bool[](tokens.length);

        for (uint256 i; i < tokens.length; i++) {
            PriceResult memory r = _getTokenUsdPrice(tokens[i]);

            pricesUsd1e18[i] = r.priceUsd1e18;
            updatedAts[i] = r.updatedAt;
            oks[i] = r.ok;
        }
    }

    /**
     * @notice Batch price read with source codes
     * @dev    Source codes:
     *         0 = unavailable
     *         1 = Chainlink TOKEN/USD
     *         2 = Chainlink TOKEN/ETH * ETH/USD
     *         3 = manual fallback
     *         4 = fixed 1 USD fallback
     *         5 = Curve route TOKEN -> quoteToken -> USD
     * @param  tokens Token addresses to price
     * @return pricesUsd1e18 USD prices normalized to 1e18
     * @return updatedAts    Timestamps of the source price data
     * @return oks           True if price is usable
     * @return sources       Source code for each returned price
     */
    function getTokensUsdPrices1e18WithSource(address[] calldata tokens)
        external
        view
        returns (
            uint256[] memory pricesUsd1e18,
            uint256[] memory updatedAts,
            bool[] memory oks,
            uint8[] memory sources
        )
    {
        pricesUsd1e18 = new uint256[](tokens.length);
        updatedAts = new uint256[](tokens.length);
        oks = new bool[](tokens.length);
        sources = new uint8[](tokens.length);

        for (uint256 i; i < tokens.length; i++) {
            PriceResult memory r = _getTokenUsdPrice(tokens[i]);

            pricesUsd1e18[i] = r.priceUsd1e18;
            updatedAts[i] = r.updatedAt;
            oks[i] = r.ok;
            sources[i] = r.source;
        }
    }

    /**
     * @notice Returns local fallback configuration for a token
     * @param  token Token address to inspect
     * @return mode                 Fallback mode: NONE, MANUAL_PRICE, or FIXED_ONE_USD
     * @return manualPriceUsd1e18   Manual/fixed price in 1e18 scale
     * @return manualUpdatedAt      Timestamp when fallback config was last updated
     */
    function getFallbackConfig(address token)
        external
        view
        returns (
            FallbackMode mode,
            uint256 manualPriceUsd1e18,
            uint256 manualUpdatedAt
        )
    {
        FallbackConfig memory cfg = _fallbackConfig[token];

        return (
            cfg.mode,
            cfg.manualPriceUsd1e18,
            cfg.manualUpdatedAt
        );
    }

    /**
     * @notice Returns whether token has any local fallback config
     * @param token Token address to inspect
     * @return True if fallback mode is not NONE
     */
    function hasFallback(address token) external view returns (bool) {
        return _fallbackConfig[token].mode != FallbackMode.NONE;
    }

    /* ───────────────────────────── Internal price logic ───────────────────────────── */

    /**
     * @notice Resolves token USD price using full oracle path
     * @dev    Resolution order:
     *         1. Chainlink TOKEN/USD
     *         2. Chainlink TOKEN/ETH * ETH/USD
     *         3. Curve route TOKEN -> quoteToken -> USD
     *         4. Local fallback: manual or fixed $1
     * @param  token Token address to price
     * @return r Price result with price, timestamp, status and source code
     */
    function _getTokenUsdPrice(address token)
        internal
        view
        returns (PriceResult memory r)
    {
        bool asEth = _isEthLike(token);

        (
            uint256 clPrice,
            uint256 clUpdatedAt,
            uint8 clSource
        ) = _tryTokenUsdPrice1e18CL(token, asEth);

        if (_isFresh(clPrice, clUpdatedAt, chainlinkStalenessSeconds)) {
            return PriceResult({
                priceUsd1e18: clPrice,
                updatedAt: clUpdatedAt,
                ok: true,
                source: clSource
            });
        }

        PriceResult memory curvePrice = _tryCurveRoutePrice(token);

        if (curvePrice.ok) {
            return curvePrice;
        }

        PriceResult memory fallbackPrice = _tryFallbackPrice(token);

        if (fallbackPrice.ok) {
            return fallbackPrice;
        }

        return PriceResult({
            priceUsd1e18: clPrice,
            updatedAt: clUpdatedAt,
            ok: false,
            source: clSource
        });
    }

    /**
     * @notice Same as _getTokenUsdPrice but intentionally skips Curve routes
     * @dev    Used by Curve route quote token pricing to avoid recursion
     */
    function _getTokenUsdPriceNoCurve(address token)
        internal
        view
        returns (PriceResult memory r)
    {
        bool asEth = _isEthLike(token);

        (
            uint256 clPrice,
            uint256 clUpdatedAt,
            uint8 clSource
        ) = _tryTokenUsdPrice1e18CL(token, asEth);

        if (_isFresh(clPrice, clUpdatedAt, chainlinkStalenessSeconds)) {
            return PriceResult({
                priceUsd1e18: clPrice,
                updatedAt: clUpdatedAt,
                ok: true,
                source: clSource
            });
        }

        PriceResult memory fallbackPrice = _tryFallbackPrice(token);

        if (fallbackPrice.ok) {
            return fallbackPrice;
        }

        return PriceResult({
            priceUsd1e18: clPrice,
            updatedAt: clUpdatedAt,
            ok: false,
            source: clSource
        });
    }

    /**
     * @notice Tries to resolve token USD price using Chainlink Feed Registry only
     * @dev    Does not use Curve routes or local fallbacks
     *         Resolution order:
     *            1. ETH/USD for ETH/WETH
     *            2. TOKEN/USD
     *            3. TOKEN/ETH * ETH/USD
     * @param  token Token address to price
     * @param  asEth If true, token is treated as native ETH/WETH
     * @return priceUsd1e18 Price normalized to 1e18
     * @return updatedAt    Chainlink feed timestamp
     * @return source       Chainlink source code or SOURCE_NONE
     */
    function _tryTokenUsdPrice1e18CL(address token, bool asEth)
        internal
        view
        returns (
            uint256 priceUsd1e18,
            uint256 updatedAt,
            uint8 source
        )
    {
        if (asEth) {
            (uint256 ethUsd, uint256 ethUpd) = _pairPrice1e18(DENOM_ETH, DENOM_USD);

            return (
                ethUsd,
                ethUpd,
                ethUsd == 0 ? SOURCE_NONE : SOURCE_CHAINLINK_USD
            );
        }

        (
            uint256 tokenUsd,
            uint256 tokenUsdUpdatedAt
        ) = _pairPrice1e18(token, DENOM_USD);

        if (tokenUsd != 0) {
            return (
                tokenUsd,
                tokenUsdUpdatedAt,
                SOURCE_CHAINLINK_USD
            );
        }

        (
            uint256 tokenEth,
            uint256 tokenEthUpdatedAt
        ) = _pairPrice1e18(token, DENOM_ETH);

        if (tokenEth == 0) {
            return (0, 0, SOURCE_NONE);
        }

        (
            uint256 ethUsd,
            uint256 ethUsdUpdatedAt
        ) = _pairPrice1e18(DENOM_ETH, DENOM_USD);

        if (ethUsd == 0) {
            return (0, 0, SOURCE_NONE);
        }

        if (tokenEth > type(uint256).max / ethUsd) {
            return (0, 0, SOURCE_NONE);
        }

        uint256 composedPrice = (tokenEth * ethUsd) / PRICE_SCALE;

        uint256 minUpdatedAt = tokenEthUpdatedAt < ethUsdUpdatedAt
            ? tokenEthUpdatedAt
            : ethUsdUpdatedAt;

        return (
            composedPrice,
            minUpdatedAt,
            SOURCE_CHAINLINK_ETH
        );
    }

    /**
     * @notice Tries to resolve token USD price from local fallback config
     * @dev    Supports MANUAL_PRICE and FIXED_ONE_USD
     *         Manual price can optionally expire if manualStalenessSeconds is non-zero
     * @param  token Token address to price
     * @return r Price result from fallback config
     */
    function _tryFallbackPrice(address token)
        internal
        view
        returns (PriceResult memory r)
    {
        FallbackConfig memory cfg = _fallbackConfig[token];

        if (cfg.mode == FallbackMode.NONE) {
            return PriceResult({
                priceUsd1e18: 0,
                updatedAt: 0,
                ok: false,
                source: SOURCE_NONE
            });
        }

        if (cfg.mode == FallbackMode.FIXED_ONE_USD) {
            return PriceResult({
                priceUsd1e18: PRICE_SCALE,
                updatedAt: cfg.manualUpdatedAt == 0 ? block.timestamp : cfg.manualUpdatedAt,
                ok: true,
                source: SOURCE_FIXED_ONE_USD
            });
        }

        if (cfg.mode == FallbackMode.MANUAL_PRICE) {
            if (cfg.manualPriceUsd1e18 == 0 || cfg.manualUpdatedAt == 0) {
                return PriceResult({
                    priceUsd1e18: cfg.manualPriceUsd1e18,
                    updatedAt: cfg.manualUpdatedAt,
                    ok: false,
                    source: SOURCE_MANUAL
                });
            }

            if (manualStalenessSeconds != 0) {
                if (cfg.manualUpdatedAt > block.timestamp) {
                    return PriceResult({
                        priceUsd1e18: cfg.manualPriceUsd1e18,
                        updatedAt: cfg.manualUpdatedAt,
                        ok: false,
                        source: SOURCE_MANUAL
                    });
                }

                if (block.timestamp - cfg.manualUpdatedAt > manualStalenessSeconds) {
                    return PriceResult({
                        priceUsd1e18: cfg.manualPriceUsd1e18,
                        updatedAt: cfg.manualUpdatedAt,
                        ok: false,
                        source: SOURCE_MANUAL
                    });
                }
            }

            return PriceResult({
                priceUsd1e18: cfg.manualPriceUsd1e18,
                updatedAt: cfg.manualUpdatedAt,
                ok: true,
                source: SOURCE_MANUAL
            });
        }

        return PriceResult({
            priceUsd1e18: 0,
            updatedAt: 0,
            ok: false,
            source: SOURCE_NONE
        });
    }

    /**
     * @notice Tries to price token through Curve route TOKEN -> quoteToken -> USD.
     * @dev    Uses _getTokenUsdPriceNoCurve(quoteToken) to avoid route recursion.
     */
    function _tryCurveRoutePrice(address token)
        internal
        view
        returns (PriceResult memory r)
    {
        CurveRouteConfig memory cfg = curveRouteConfig[token];

        if (!cfg.enabled) {
            return PriceResult({
                priceUsd1e18: 0,
                updatedAt: 0,
                ok: false,
                source: SOURCE_NONE
            });
        }

        uint256 quoteAmount;

        if (cfg.useInt128) {
            try ICurvePoolInt128(cfg.pool).get_dy(
                int128(int256(uint256(cfg.tokenIndex))),
                int128(int256(uint256(cfg.quoteIndex))),
                cfg.amountIn
            ) returns (uint256 out) {
                quoteAmount = out;
            } catch {
                return PriceResult({
                    priceUsd1e18: 0,
                    updatedAt: 0,
                    ok: false,
                    source: SOURCE_CURVE_ROUTE
                });
            }
        } else {
            try ICurvePoolUint256(cfg.pool).get_dy(
                uint256(cfg.tokenIndex),
                uint256(cfg.quoteIndex),
                cfg.amountIn
            ) returns (uint256 out) {
                quoteAmount = out;
            } catch {
                return PriceResult({
                    priceUsd1e18: 0,
                    updatedAt: 0,
                    ok: false,
                    source: SOURCE_CURVE_ROUTE
                });
            }
        }

        if (quoteAmount == 0) {
            return PriceResult({
                priceUsd1e18: 0,
                updatedAt: 0,
                ok: false,
                source: SOURCE_CURVE_ROUTE
            });
        }

        PriceResult memory quotePrice = _getTokenUsdPriceNoCurve(cfg.quoteToken);

        if (!quotePrice.ok || quotePrice.priceUsd1e18 == 0) {
            return PriceResult({
                priceUsd1e18: 0,
                updatedAt: quotePrice.updatedAt,
                ok: false,
                source: SOURCE_CURVE_ROUTE
            });
        }

        uint8 quoteDecimals = _tryDecimals(cfg.quoteToken);
        uint256 quoteDenom = _safePow10(quoteDecimals);

        if (quoteDenom == 0) {
            return PriceResult({
                priceUsd1e18: 0,
                updatedAt: quotePrice.updatedAt,
                ok: false,
                source: SOURCE_CURVE_ROUTE
            });
        }

        if (quoteAmount > type(uint256).max / quotePrice.priceUsd1e18) {
            return PriceResult({
                priceUsd1e18: 0,
                updatedAt: quotePrice.updatedAt,
                ok: false,
                source: SOURCE_CURVE_ROUTE
            });
        }

        uint256 valueUsd1e18 = (quoteAmount * quotePrice.priceUsd1e18) / quoteDenom;

        uint8 tokenDecimals = _tryDecimals(token);
        uint256 tokenDenom = _safePow10(tokenDecimals);

        if (tokenDenom == 0 || cfg.amountIn == 0) {
            return PriceResult({
                priceUsd1e18: 0,
                updatedAt: quotePrice.updatedAt,
                ok: false,
                source: SOURCE_CURVE_ROUTE
            });
        }

        if (valueUsd1e18 > type(uint256).max / tokenDenom) {
            return PriceResult({
                priceUsd1e18: 0,
                updatedAt: quotePrice.updatedAt,
                ok: false,
                source: SOURCE_CURVE_ROUTE
            });
        }

        uint256 priceUsd1e18 = (valueUsd1e18 * tokenDenom) / cfg.amountIn;

        return PriceResult({
            priceUsd1e18: priceUsd1e18,
            updatedAt: quotePrice.updatedAt,
            ok: priceUsd1e18 > 0,
            source: SOURCE_CURVE_ROUTE
        });
    }

    /**
     * @notice Reads Chainlink Feed Registry pair price and normalizes it to 1e18
     * @dev    Returns zero price if feed call fails, answer is invalid, decimals call fails,
     *         or normalization would overflow
     * @param  base  Chainlink Feed Registry base asset
     * @param  quote Chainlink Feed Registry quote asset
     * @return price1e18 Price normalized to 1e18
     * @return updatedAt Feed timestamp, or 0 if feed is unavailable
     */
    function _pairPrice1e18(address base, address quote)
        internal
        view
        returns (
            uint256 price1e18,
            uint256 updatedAt
        )
    {
        IFeedRegistry reg = feedRegistry;

        if (address(reg) == address(0)) {
            return (0, 0);
        }

        try reg.latestRoundData(base, quote) returns (
            uint80,
            int256 answer,
            uint256,
            uint256 upd,
            uint80
        ) {
            updatedAt = upd;

            if (answer <= 0) {
                return (0, updatedAt);
            }

            uint8 dec;

            try reg.decimals(base, quote) returns (uint8 d) {
                dec = d;
            } catch {
                return (0, updatedAt);
            }

            uint256 raw = uint256(answer);

            if (dec < 18) {
                uint256 mul = _safePow10(uint8(18 - dec));

                if (raw > type(uint256).max / mul) {
                    return (0, updatedAt);
                }

                price1e18 = raw * mul;
            } else if (dec > 18) {
                uint256 div = _safePow10(uint8(dec - 18));

                if (div == 0) {
                    return (0, updatedAt);
                }

                price1e18 = raw / div;
            } else {
                price1e18 = raw;
            }

            return (price1e18, updatedAt);
        } catch {
            return (0, 0);
        }
    }

    /* ───────────────────────────── Internal helpers ───────────────────────────── */

    /**
     * @notice Checks whether token should be priced as ETH
     * @param  token Token address to check
     * @return True for zero address or WETH
     */
    function _isEthLike(address token) internal pure returns (bool) {
        return token == address(0) || token == WETH;
    }

    /**
     * @notice Checks whether a price is non-zero, timestamped and not stale
     * @param  price         Price value to validate
     * @param  updatedAt     Source timestamp
     * @param  maxStaleness  Max allowed age in seconds
     * @return True if price is valid and fresh
     */
    function _isFresh(
        uint256 price,
        uint256 updatedAt,
        uint32 maxStaleness
    ) internal view returns (bool) {
        if (price == 0 || updatedAt == 0) {
            return false;
        }

        if (updatedAt > block.timestamp) {
            return false;
        }

        return block.timestamp - updatedAt <= maxStaleness;
    }

    /**
     * @notice Safely computes 10^e with exponent cap
     * @dev    Caps exponent at 77 to avoid uint256 overflow
     * @param  e Decimal exponent
     * @return 10^e, capped at 10^77
     */
    function _safePow10(uint8 e) internal pure returns (uint256) {
        if (e > 77) {
            e = 77;
        }

        uint256 r = 1;

        for (uint256 i; i < e; i++) {
            r *= 10;
        }

        return r;
    }

    /**
     * @notice Best-effort ERC20 decimals read
     * @dev    Returns 18 if token is zero address, not a contract, or decimals() reverts
     * @param  token Token address to inspect
     * @return Token decimals, or 18 as fallback
     */
    function _tryDecimals(address token) internal view returns (uint8) {
        if (token == address(0) || token.code.length == 0) {
            return 18;
        }

        try IERC20Metadata(token).decimals() returns (uint8 d) {
            return d;
        } catch {
            return 18;
        }
    }
}