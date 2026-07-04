// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.29 <0.9.0;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { AggregatorV3Interface } from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import { IExternalAssetsProvider } from "@superearn/v2/interfaces/IExternalAssetsProvider.sol";
import { IPendleOracle } from "@superearn/interface/IPendle.sol";
import { IMorphoBlue } from "@superearn/interface/IMorphoBlue.sol";
interface IDecimals {
    function decimals() external view returns (uint8);
}

/**
 * @title PendleReUSDAssetsProvider
 * @notice Assets provider for CustomStrategy holding Re Protocol's reUSD positions:
 *         - PT-reUSD positions (Pendle)
 *         - reUSD positions (idle and Morpho collateral)
 *         - 4 Morpho Blue markets (slots 0..3)
 *         - Borrow debt in USDC and/or USDT (slot-dependent loan currency)
 *
 * @dev Pricing oracles (NOT 1:1 simplification):
 *      - USDT denomination (returned 1:1 since strategy reports in USDT terms)
 *      - USDC → USDT via Chainlink USDC/USD ÷ USDT/USD
 *      - reUSD → USDT via Fluid pool TWAP (oraclePrice with secondsAgos = TWAP_DURATION)
 *      - PT-reUSD → reUSD via Pendle Oracle TWAP, then reUSD → USDT via Fluid TWAP
 *
 *      Re Protocol's reUSD has no Chainlink, Pyth, or Redstone feed available on mainnet.
 *      Curve reUSD/USDC pool exists but has very thin liquidity (~$450K) and exhibits a
 *      6-7% peg deviation from the actual market price quoted on Fluid (where >95% of
 *      reUSD trading volume occurs). The Fluid pool TWAP is therefore the most accurate
 *      and only viable price source. The 15-minute TWAP window provides reasonable
 *      manipulation resistance for an asset whose primary venue is the Fluid pool itself.
 *
 *      Slot loan currency mapping (used to convert per-slot borrow debt):
 *        slot 0 (reUSD/USDC)    → loan = USDC
 *        slot 1 (reUSD/USDT)    → loan = USDT
 *        slot 2 (PT-reUSD/USDC) → loan = USDC
 *        slot 3 (PT-reUSD/USDT) → loan = USDT
 *
 *      ROLLOVER SUPPORT: PT/Pendle market/SY and each Morpho market id can be updated
 *      via setPendleConfig() / setMorphoMarket(). Both setters require totalAssets to remain
 *      within INVARIANCE_TOLERANCE_BPS — generalized check that implicitly enforces empty
 *      old positions (PT balance, SY balance, Morpho collateral, Morpho debt all zero).
 */
contract PendleReUSDAssetsProvider is IExternalAssetsProvider {
    // ============================================
    // CONSTANTS
    // ============================================

    uint256 internal constant VIRTUAL_SHARES = 1e6;
    uint256 internal constant VIRTUAL_ASSETS = 1;

    /// @notice Slot indices for Morpho markets
    uint8 public constant SLOT_REUSD_USDC = 0;
    uint8 public constant SLOT_REUSD_USDT = 1;
    uint8 public constant SLOT_PT_REUSD_USDC = 2;
    uint8 public constant SLOT_PT_REUSD_USDT = 3;
    uint8 public constant NUM_SLOTS = 4;

    /// @notice Chainlink feeds use 8 decimals
    uint256 internal constant CHAINLINK_PRICE_SCALE = 1e8;

    /// @dev Decimal differences between reUSD (18) and USDC (6)
    uint256 internal constant DECIMAL_DIFF_REUSD_USDC = 1e12;

    // ============================================
    // IMMUTABLE STORAGE
    // ============================================

    address public immutable STRATEGY;
    address public immutable USDT;
    address public immutable USDC;
    address public immutable REUSD;
    address public immutable PENDLE_ORACLE;
    address public immutable MORPHO;

    /// @notice Chainlink USDC/USD price feed (8 decimals)
    address public immutable USDC_USD_FEED;
    /// @notice Chainlink USDT/USD price feed (8 decimals)
    address public immutable USDT_USD_FEED;
    /// @notice Re Protocol reUSD/USD Chainlink-style adapter (NAV-driven, push by Chainlink Functions)
    /// @dev Same source Morpho uses for the reUSD collateral oracle on Morpho Blue markets.
    address public immutable REUSD_USD_FEED;
    /// @notice Maximum allowed staleness for Chainlink answers (seconds)
    uint256 public immutable CHAINLINK_STALENESS_THRESHOLD;
    /// @notice Maximum allowed staleness for the reUSD NAV feed (seconds; longer than stable feeds)
    uint256 public immutable REUSD_FEED_STALENESS_THRESHOLD;

    uint32 public immutable TWAP_DURATION;
    uint256 public immutable INVARIANCE_TOLERANCE_BPS;

    // ============================================
    // MUTABLE STORAGE
    // ============================================

    address public pt;
    address public pendleMarket;
    address public sy;

    bytes32[NUM_SLOTS] public morphoMarkets;

    // ============================================
    // EVENTS
    // ============================================

    event PendleConfigUpdated(
        address oldPt, address newPt, address oldMarket, address newMarket, address oldSy, address newSy
    );
    event MorphoMarketUpdated(uint8 indexed slot, bytes32 oldMarketId, bytes32 newMarketId);

    // ============================================
    // ERRORS
    // ============================================

    error ZeroAddress();
    error InvalidSlot();
    error InvalidMorphoMarket();
    error TotalAssetsChanged(uint256 beforeTotal, uint256 afterTotal);
    error NotStrategyGovernance();
    error StalePrice(address feed, uint256 updatedAt);
    error InvalidPrice(address feed, int256 answer);

    // ============================================
    // MODIFIERS
    // ============================================

    modifier onlyStrategyGovernance() {
        (bool success, bytes memory data) = STRATEGY.staticcall(abi.encodeWithSignature("governance()"));
        if (!success || data.length < 32) revert NotStrategyGovernance();
        address governance = abi.decode(data, (address));
        if (msg.sender != governance) revert NotStrategyGovernance();
        _;
    }

    // ============================================
    // CONSTRUCTOR
    // ============================================

    struct ConstructorParams {
        address strategy;
        address usdt;
        address usdc;
        address reusd;
        address sy;
        address pt;
        address pendleMarket;
        address pendleOracle;
        address morpho;
        address usdcUsdFeed;
        address usdtUsdFeed;
        address reusdUsdFeed;
        uint256 chainlinkStalenessThreshold;
        uint256 reusdFeedStalenessThreshold;
        uint32 twapDuration;
        uint256 invarianceToleranceBps;
        bytes32 morphoReusdUsdc;
        bytes32 morphoReusdUsdt;
        bytes32 morphoPtReusdUsdc;
        bytes32 morphoPtReusdUsdt;
    }

    constructor(ConstructorParams memory p) {
        if (
            p.strategy == address(0) || p.usdt == address(0) || p.usdc == address(0) || p.reusd == address(0)
                || p.sy == address(0) || p.pt == address(0) || p.pendleMarket == address(0)
                || p.morpho == address(0) || p.usdcUsdFeed == address(0) || p.usdtUsdFeed == address(0)
                || p.reusdUsdFeed == address(0)
        ) revert ZeroAddress();

        // Validate Morpho markets exist
        _validateMorphoMarket(p.morpho, p.morphoReusdUsdc);
        _validateMorphoMarket(p.morpho, p.morphoReusdUsdt);
        _validateMorphoMarket(p.morpho, p.morphoPtReusdUsdc);
        _validateMorphoMarket(p.morpho, p.morphoPtReusdUsdt);

        STRATEGY = p.strategy;
        USDT = p.usdt;
        USDC = p.usdc;
        REUSD = p.reusd;
        PENDLE_ORACLE = p.pendleOracle;
        MORPHO = p.morpho;
        USDC_USD_FEED = p.usdcUsdFeed;
        USDT_USD_FEED = p.usdtUsdFeed;
        REUSD_USD_FEED = p.reusdUsdFeed;
        CHAINLINK_STALENESS_THRESHOLD = p.chainlinkStalenessThreshold;
        REUSD_FEED_STALENESS_THRESHOLD = p.reusdFeedStalenessThreshold;
        TWAP_DURATION = p.twapDuration;
        INVARIANCE_TOLERANCE_BPS = p.invarianceToleranceBps;

        sy = p.sy;
        pt = p.pt;
        pendleMarket = p.pendleMarket;

        morphoMarkets[SLOT_REUSD_USDC] = p.morphoReusdUsdc;
        morphoMarkets[SLOT_REUSD_USDT] = p.morphoReusdUsdt;
        morphoMarkets[SLOT_PT_REUSD_USDC] = p.morphoPtReusdUsdc;
        morphoMarkets[SLOT_PT_REUSD_USDT] = p.morphoPtReusdUsdt;
    }

    function _validateMorphoMarket(address morpho, bytes32 marketId) internal view {
        (address loanToken,,,,) = IMorphoBlue(morpho).idToMarketParams(marketId);
        if (loanToken == address(0)) revert InvalidMorphoMarket();
    }

    // ============================================
    // IExternalAssetsProvider
    // ============================================

    function denominationToken() external view override returns (address) {
        return USDT;
    }

    function getTotalAssets() external view override returns (uint256) {
        return _getTotalAssets();
    }

    /**
     * @dev Net total assets denominated in USDT, with rigorous oracle pricing for USDC and reUSD.
     */
    function _getTotalAssets() internal view returns (uint256) {
        // 1. Idle USDT (denomination, 1:1)
        uint256 usdtValue = IERC20(USDT).balanceOf(STRATEGY);

        // 2. Idle USDC → USDT via Chainlink
        uint256 usdcValueAsUsdt = _usdcToUsdt(IERC20(USDC).balanceOf(STRATEGY));

        // 3. Aggregate reUSD positions (idle + SY 1:1 + Morpho collateral on slots 0/1)
        uint256 totalReusd = IERC20(REUSD).balanceOf(STRATEGY) + IERC20(sy).balanceOf(STRATEGY);

        // 4. Aggregate PT positions (idle + Morpho collateral on slots 2/3)
        uint256 totalPt = IERC20(pt).balanceOf(STRATEGY);

        // 5. Walk Morpho markets, accumulate collateral by type and split debt by loan currency
        uint256 usdtDebt;
        uint256 usdcDebt;
        for (uint256 i; i < NUM_SLOTS; i++) {
            bytes32 marketId = morphoMarkets[i];
            if (marketId == bytes32(0)) continue;

            (, uint128 borrowShares, uint128 collateral) = IMorphoBlue(MORPHO).position(marketId, STRATEGY);

            if (i < 2) {
                totalReusd += uint256(collateral);
            } else {
                totalPt += uint256(collateral);
            }

            uint256 debt = _borrowSharesToAssets(marketId, uint256(borrowShares));
            // Slots 0,2 = USDC loan; Slots 1,3 = USDT loan
            if (i == SLOT_REUSD_USDC || i == SLOT_PT_REUSD_USDC) {
                usdcDebt += debt;
            } else {
                usdtDebt += debt;
            }
        }

        // 6. PT → USDC via Pendle Oracle.
        //
        // CRITICAL: SY-reUSD's underlying asset (per `SY.assetInfo()`) is USDC (6 dec) — NOT reUSD.
        // This is because the SY wraps reUSD's NAV exposure but settles redemptions in USDC at
        // the NAV-adjusted rate. Therefore Pendle's `getPtToAssetRate(market, duration)` returns
        // the rate `assetRaw_USDC = ptRaw * rate / 1e18`, where both PT and USDC are 6 decimals
        // and the resulting amount is denominated in USDC (already NAV-adjusted at face value).
        //
        // Routing PT through the reUSD path with the NAV-bearing reUSD/USD Chainlink feed would
        // double-count the NAV factor (~7.6% over-statement at 1.0759 NAV). PT goes directly to
        // the USDC accumulator and then USDC → USDT via standard Chainlink stable cross-rate.
        if (totalPt > 0 && PENDLE_ORACLE != address(0)) {
            uint256 ptRate = IPendleOracle(PENDLE_ORACLE).getPtToAssetRate(pendleMarket, TWAP_DURATION);
            uint8 ptDecimals = IDecimals(pt).decimals();
            uint8 usdcDecimals = IDecimals(USDC).decimals();
            // assetRaw_USDC = ptRaw × ptRate × 10^(usdcDec - ptDec) / 1e18
            uint256 ptValueUsdc;
            if (usdcDecimals >= ptDecimals) {
                uint256 scale = 10 ** uint256(usdcDecimals - ptDecimals);
                ptValueUsdc = Math.mulDiv(totalPt * scale, ptRate, 1e18);
            } else {
                uint256 scale = 10 ** uint256(ptDecimals - usdcDecimals);
                ptValueUsdc = Math.mulDiv(totalPt, ptRate, 1e18 * scale);
            }
            usdcValueAsUsdt += _usdcToUsdt(ptValueUsdc);
        }

        // 7. reUSD → USDT directly via Chainlink NAV-bearing feed (only for reUSD/SY balance + Morpho collateral)
        uint256 reusdValueAsUsdt;
        if (totalReusd > 0) {
            reusdValueAsUsdt = _reusdToUsdt(totalReusd);
        }

        // 8. Convert USDC debt to USDT
        uint256 totalDebtInUsdt = usdtDebt + _usdcToUsdt(usdcDebt);

        // 9. Net = gross - debt; underwater clamp
        uint256 grossAssets = usdtValue + usdcValueAsUsdt + reusdValueAsUsdt;
        if (totalDebtInUsdt >= grossAssets) return 0;
        return grossAssets - totalDebtInUsdt;
    }

    // ============================================
    // PRICING HELPERS
    // ============================================

    /// @notice USDC (6 dec) → USDT (6 dec) via Chainlink USDC/USD ÷ USDT/USD
    function _usdcToUsdt(uint256 usdcAmount) internal view returns (uint256) {
        if (usdcAmount == 0) return 0;
        uint256 usdcPrice = _getValidatedChainlinkPrice(USDC_USD_FEED);
        uint256 usdtPrice = _getValidatedChainlinkPrice(USDT_USD_FEED);
        // Both 6 dec; both prices 8 dec; ratio cancels decimals
        return Math.mulDiv(usdcAmount, usdcPrice, usdtPrice);
    }

    /**
     * @notice reUSD (18 dec) → USDT (6 dec) via Fluid pool quote-revert pattern.
     * @dev Re Protocol's reUSD has no Chainlink/Pyth/Redstone feed. Fluid is the dominant
     *      venue (~$170M reUSD), so its swap rate is the most accurate market price source.
     *      Fluid pool's `oraclePrice()` TWAP is currently inactive (DexT1__OracleNotActive),
     *      but its `swapIn(swap0to1, amount, 0, ADDRESS_DEAD)` reverts BEFORE state changes
     *      with `FluidDexSwapResult(amountOut)` — usable as a view-safe quote via staticcall.
     *
     *      To mitigate manipulation: a small reference quantity (1 reUSD) is used to
     *      derive the marginal price, then bounds-checked, then scaled to the full amount.
     *
     *      Step 1: staticcall Fluid swapIn(reUSD→USDT, 1e18, 0, ADDRESS_DEAD) → revert with
     *              FluidDexSwapResult(spotUsdt)
     *      Step 2: bounds check (REUSD_PRICE_FLOOR/CEILING)
     *      Step 3: usdtAmount = reusdAmount × spotUsdt / 1e18
     */
    /**
     * @notice reUSD (18 dec) → USDT (6 dec) via Re Protocol's NAV-driven Chainlink-style feed.
     * @dev This is the same price source Morpho uses on its reUSD collateral markets:
     *      Re Protocol publishes NAV via Chainlink Functions to a NAVConsumer contract, which
     *      is wrapped by ReProtocolExchangeRateChainlinkAdapter to expose AggregatorV3Interface.
     *      Updates are scheduled (typically daily) with deviation guards.
     *
     *      Feed returns reUSD/USD with 18 decimals (e.g. 1.0756e18 = $1.0756/reUSD).
     *      USDT/USD comes from standard Chainlink (8 decimals).
     *
     *      Computation:
     *        usdtRaw = reusdRaw × reUSDPriceUSD / usdtPriceUSD / 1e12
     *      where 1e12 normalizes 18-dec reUSD → 6-dec USDT after the scale-aligned price ratio.
     */
    function _reusdToUsdt(uint256 reusdAmount) internal view returns (uint256) {
        if (reusdAmount == 0) return 0;
        // reUSD/USD feed: 18 decimals
        (, int256 reusdPriceUsd,, uint256 reusdUpdatedAt,) = AggregatorV3Interface(REUSD_USD_FEED).latestRoundData();
        if (reusdPriceUsd <= 0) revert InvalidPrice(REUSD_USD_FEED, reusdPriceUsd);
        if (block.timestamp > reusdUpdatedAt + REUSD_FEED_STALENESS_THRESHOLD) {
            revert StalePrice(REUSD_USD_FEED, reusdUpdatedAt);
        }
        // USDT/USD feed: 8 decimals
        uint256 usdtPriceUsd = _getValidatedChainlinkPrice(USDT_USD_FEED);
        // Scale to a common base, then convert.
        // reusdAmount(1e18) × reusdPriceUsd(1e18) / 1e18 = reusd-USD value (1e18)
        // (1e18 USD value) × 1e8 / usdtPriceUsd(1e8) = USDT-equivalent in 1e18 → divide by 1e12 → 6 dec
        uint256 reusdValueUsd1e18 = Math.mulDiv(reusdAmount, uint256(reusdPriceUsd), 1e18);
        uint256 usdtValue1e18 = Math.mulDiv(reusdValueUsd1e18, CHAINLINK_PRICE_SCALE, usdtPriceUsd);
        return usdtValue1e18 / 1e12;
    }

    /// @notice Read Chainlink price with staleness + sanity checks
    function _getValidatedChainlinkPrice(address feed) internal view returns (uint256) {
        (, int256 answer,, uint256 updatedAt,) = AggregatorV3Interface(feed).latestRoundData();
        if (answer <= 0) revert InvalidPrice(feed, answer);
        if (block.timestamp > updatedAt + CHAINLINK_STALENESS_THRESHOLD) {
            revert StalePrice(feed, updatedAt);
        }
        return uint256(answer);
    }

    /// @dev borrowAssets = ceil(shares × (totalBorrowAssets + 1) / (totalBorrowShares + 1e6))
    function _borrowSharesToAssets(bytes32 marketId, uint256 shares) internal view returns (uint256) {
        if (shares == 0) return 0;
        (,, uint128 totalBorrowAssets, uint128 totalBorrowShares,,) = IMorphoBlue(MORPHO).market(marketId);
        uint256 numerator = shares * (uint256(totalBorrowAssets) + VIRTUAL_ASSETS);
        uint256 denominator = uint256(totalBorrowShares) + VIRTUAL_SHARES;
        return (numerator + denominator - 1) / denominator;
    }

    // ============================================
    // GOVERNANCE: ROLLOVER + UPDATES
    // ============================================

    function setPendleConfig(address newPt, address newPendleMarket, address newSy) external onlyStrategyGovernance {
        if (newPt == address(0) || newPendleMarket == address(0) || newSy == address(0)) revert ZeroAddress();

        uint256 beforeTotal = _getTotalAssets();

        address oldPt = pt;
        address oldMarket = pendleMarket;
        address oldSy = sy;

        pt = newPt;
        pendleMarket = newPendleMarket;
        sy = newSy;

        _checkInvariance(beforeTotal, _getTotalAssets());

        emit PendleConfigUpdated(oldPt, newPt, oldMarket, newPendleMarket, oldSy, newSy);
    }

    function setMorphoMarket(uint8 slot, bytes32 newMarketId) external onlyStrategyGovernance {
        if (slot >= NUM_SLOTS) revert InvalidSlot();
        if (newMarketId != bytes32(0)) {
            _validateMorphoMarket(MORPHO, newMarketId);
        }

        uint256 beforeTotal = _getTotalAssets();

        bytes32 oldMarketId = morphoMarkets[slot];
        morphoMarkets[slot] = newMarketId;

        _checkInvariance(beforeTotal, _getTotalAssets());

        emit MorphoMarketUpdated(slot, oldMarketId, newMarketId);
    }

    function _checkInvariance(uint256 beforeTotal, uint256 afterTotal) internal view {
        if (beforeTotal == 0) {
            if (afterTotal != 0) revert TotalAssetsChanged(beforeTotal, afterTotal);
            return;
        }
        uint256 tolerance = (beforeTotal * INVARIANCE_TOLERANCE_BPS) / 10_000;
        if (afterTotal + tolerance < beforeTotal || afterTotal > beforeTotal + tolerance) {
            revert TotalAssetsChanged(beforeTotal, afterTotal);
        }
    }

    // ============================================
    // CONVENIENCE VIEWS
    // ============================================

    /// @notice Get USDT amount equivalent to 1e6 USDC (6 dec)
    function getUsdcToUsdtRate() external view returns (uint256) {
        return _usdcToUsdt(1e6);
    }

    /// @notice Get USDT amount equivalent to 1e18 reUSD (6 dec)
    function getReusdToUsdtRate() external view returns (uint256) {
        return _reusdToUsdt(1e18);
    }

    /// @notice Get the current Pendle PT-to-asset rate (1e18 scale).
    /// @dev The asset is whatever `SY.assetInfo()` reports as the underlying — for SY-reUSD
    ///      this is **USDC** (6 dec), NOT reUSD. So the returned value means
    ///      `usdcRaw = ptRaw * rate / 1e18`.
    function getPtToAssetRate() external view returns (uint256) {
        return IPendleOracle(PENDLE_ORACLE).getPtToAssetRate(pendleMarket, TWAP_DURATION);
    }

    function getMorphoMarket(uint8 slot) external view returns (bytes32) {
        if (slot >= NUM_SLOTS) revert InvalidSlot();
        return morphoMarkets[slot];
    }

    function getMorphoPosition(uint8 slot)
        external
        view
        returns (uint256 collateral, uint256 borrowShares, uint256 borrowAssets)
    {
        if (slot >= NUM_SLOTS) revert InvalidSlot();
        bytes32 marketId = morphoMarkets[slot];
        if (marketId == bytes32(0)) return (0, 0, 0);
        (, uint128 _borrowShares, uint128 _collateral) = IMorphoBlue(MORPHO).position(marketId, STRATEGY);
        collateral = uint256(_collateral);
        borrowShares = uint256(_borrowShares);
        borrowAssets = _borrowSharesToAssets(marketId, borrowShares);
    }

    function getPositionBreakdown()
        external
        view
        returns (
            uint256 usdtBalance,
            uint256 usdcBalance,
            uint256 reusdBalance,
            uint256 syBalance,
            uint256 ptBalance,
            uint256[NUM_SLOTS] memory morphoCollaterals,
            uint256[NUM_SLOTS] memory morphoBorrowDebts,
            uint256 ptToAssetRate, // PT → USDC rate (1e18 scale); SY's asset is USDC, not reUSD
            uint256 reusdToUsdtRate,
            uint256 usdcToUsdtRate
        )
    {
        usdtBalance = IERC20(USDT).balanceOf(STRATEGY);
        usdcBalance = IERC20(USDC).balanceOf(STRATEGY);
        reusdBalance = IERC20(REUSD).balanceOf(STRATEGY);
        syBalance = IERC20(sy).balanceOf(STRATEGY);
        ptBalance = IERC20(pt).balanceOf(STRATEGY);

        for (uint256 i; i < NUM_SLOTS; i++) {
            bytes32 marketId = morphoMarkets[i];
            if (marketId == bytes32(0)) continue;
            (, uint128 borrowShares, uint128 collateral) = IMorphoBlue(MORPHO).position(marketId, STRATEGY);
            morphoCollaterals[i] = uint256(collateral);
            morphoBorrowDebts[i] = _borrowSharesToAssets(marketId, uint256(borrowShares));
        }

        ptToAssetRate = PENDLE_ORACLE != address(0)
            ? IPendleOracle(PENDLE_ORACLE).getPtToAssetRate(pendleMarket, TWAP_DURATION)
            : 0;
        reusdToUsdtRate = _reusdToUsdt(1e18);
        usdcToUsdtRate = _usdcToUsdt(1e6);
    }
}
