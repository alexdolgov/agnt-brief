// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.29 <0.9.0;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { AggregatorV3Interface } from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import { IExternalAssetsProvider } from "@superearn/v2/interfaces/IExternalAssetsProvider.sol";
import { IPendleOracle } from "@superearn/interface/IPendle.sol";
import { ISNUSD } from "@superearn/interface/INeutrl.sol";
import { IMorphoBlue } from "@superearn/interface/IMorphoBlue.sol";
import { ICurveStablePool } from "@superearn/core/strategy/custom/snusd/ICurveStablePool.sol";

/**
 * @title PendleSNUSDAssetsProviderV2
 * @notice Assets provider for CustomStrategy holding PT-sNUSD positions with extended
 *         Morpho leverage support (sNUSD AND PT-sNUSD as collateral; USDC and USDT loans).
 *
 * @dev Differences from V1:
 *      - 4 Morpho slots (sNUSD/USDC, sNUSD/USDT, PT-sNUSD/USDC, PT-sNUSD/USDT) instead of 1.
 *      - PT-sNUSD can be supplied as Morpho collateral (slots 2/3); priced via Pendle TWAP.
 *      - USDT loan currency supported; USDT positions/debt converted to USDC via Chainlink
 *        USDC/USD ÷ USDT/USD cross-rate.
 *      - Mutable PT/SY/MARKET (rollover) and per-slot Morpho market id, with totalAssets
 *        invariance check on every change (10 bps tolerance).
 *
 * @dev USDC-denominated NET total assets = ASSETS - LIABILITIES:
 *      ASSETS:
 *      - Idle USDC (includes any borrowed USDC)
 *      - Idle USDT → USDC via Chainlink cross-rate
 *      - NUSD balance         → Curve probe → USDC
 *      - sNUSD balance        → ERC4626 convertToAssets → NUSD → USDC
 *      - sNUSD cooldown       → NUSD pending → USDC
 *      - SY-sNUSD balance     → 1:1 NUSD → USDC (SY wraps NUSD as asset)
 *      - PT-sNUSD balance     → Pendle TWAP rate (NUSD-denominated) → USDC
 *      - Morpho collateral
 *          slots 0/1: sNUSD     → ERC4626 convertToAssets → NUSD → USDC
 *          slots 2/3: PT-sNUSD  → Pendle TWAP → NUSD → USDC
 *      LIABILITIES (subtracted):
 *      - Morpho borrow debt
 *          slots 0/2: USDC loan (rounded up; consumed directly)
 *          slots 1/3: USDT loan (rounded up; converted USDT→USDC via Chainlink)
 *
 *      Asset Chain:
 *        USDC ── Curve(NUSD/USDC) ──> NUSD ── Neutrl.deposit ──> sNUSD ── Pendle ──> PT-sNUSD
 *                                                                  └─> Morpho.supplyCollateral (slots 0/1)
 *                                                                       └─> Morpho.borrow USDC|USDT
 *                                                                  PT-sNUSD ─> Morpho.supplyCollateral (slots 2/3)
 *                                                                               └─> Morpho.borrow USDC|USDT
 *
 *      Slot loan currency mapping:
 *        slot 0 (sNUSD/USDC)    → loan = USDC
 *        slot 1 (sNUSD/USDT)    → loan = USDT
 *        slot 2 (PT-sNUSD/USDC) → loan = USDC
 *        slot 3 (PT-sNUSD/USDT) → loan = USDT
 *
 *      ROLLOVER: PT/SY/Pendle market and each Morpho market id can be updated via
 *      setPendleConfig() / setMorphoMarket(). Both setters require totalAssets to remain
 *      within INVARIANCE_TOLERANCE_BPS (10 bps) — implicitly enforces empty old positions
 *      (PT balance, SY balance, Morpho collateral, Morpho debt all zero before rollover).
 *
 *      Morpho borrow debt uses conservative (rounded up) calculation:
 *        borrowAssets = ceil(borrowShares * (totalBorrowAssets + 1) / (totalBorrowShares + 1e6))
 */
contract PendleSNUSDAssetsProviderV2 is IExternalAssetsProvider {
    // ============================================
    // CONSTANTS
    // ============================================

    /// @notice Curve pool coin index for NUSD (coins[0])
    int128 public constant CURVE_NUSD_INDEX = 0;

    /// @notice Curve pool coin index for USDC (coins[1])
    int128 public constant CURVE_USDC_INDEX = 1;

    /// @dev Morpho Blue virtual shares/assets for share math
    uint256 internal constant VIRTUAL_SHARES = 1e6;
    uint256 internal constant VIRTUAL_ASSETS = 1;

    /// @notice Slot indices for Morpho markets
    uint8 public constant SLOT_SNUSD_USDC = 0;
    uint8 public constant SLOT_SNUSD_USDT = 1;
    uint8 public constant SLOT_PT_SNUSD_USDC = 2;
    uint8 public constant SLOT_PT_SNUSD_USDT = 3;
    uint8 public constant NUM_SLOTS = 4;

    /// @notice Tolerance for rollover totalAssets invariance check (10 bps = 0.1%)
    uint256 public constant INVARIANCE_TOLERANCE_BPS = 10;

    /// @notice Chainlink feeds use 8 decimals
    uint256 internal constant CHAINLINK_PRICE_SCALE = 1e8;

    // ============================================
    // IMMUTABLE STORAGE
    // ============================================

    address public immutable STRATEGY;
    address public immutable USDC;
    address public immutable USDT;
    address public immutable NUSD;
    address public immutable SNUSD;
    address public immutable ORACLE;
    address public immutable CURVE_POOL;
    address public immutable MORPHO;

    /// @notice Chainlink USDC/USD price feed (8 decimals)
    address public immutable USDC_USD_FEED;
    /// @notice Chainlink USDT/USD price feed (8 decimals)
    address public immutable USDT_USD_FEED;
    /// @notice Maximum allowed staleness for Chainlink answers (seconds)
    uint256 public immutable CHAINLINK_STALENESS_THRESHOLD;

    uint32 public immutable TWAP_DURATION;

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
        address usdc;
        address usdt;
        address nusd;
        address snusd;
        address sy;
        address pt;
        address pendleMarket;
        address pendleOracle;
        address curvePool;
        address morpho;
        address usdcUsdFeed;
        address usdtUsdFeed;
        uint256 chainlinkStalenessThreshold;
        uint32 twapDuration;
        bytes32 morphoSnusdUsdc;
        bytes32 morphoSnusdUsdt;
        bytes32 morphoPtSnusdUsdc;
        bytes32 morphoPtSnusdUsdt;
    }

    constructor(ConstructorParams memory p) {
        if (
            p.strategy == address(0) || p.usdc == address(0) || p.usdt == address(0) || p.nusd == address(0)
                || p.snusd == address(0) || p.sy == address(0) || p.pt == address(0) || p.pendleMarket == address(0)
                || p.curvePool == address(0) || p.morpho == address(0) || p.usdcUsdFeed == address(0)
                || p.usdtUsdFeed == address(0)
        ) revert ZeroAddress();

        // Validate non-empty Morpho markets exist (allow bytes32(0) for unused slots)
        if (p.morphoSnusdUsdc != bytes32(0)) _validateMorphoMarket(p.morpho, p.morphoSnusdUsdc);
        if (p.morphoSnusdUsdt != bytes32(0)) _validateMorphoMarket(p.morpho, p.morphoSnusdUsdt);
        if (p.morphoPtSnusdUsdc != bytes32(0)) _validateMorphoMarket(p.morpho, p.morphoPtSnusdUsdc);
        if (p.morphoPtSnusdUsdt != bytes32(0)) _validateMorphoMarket(p.morpho, p.morphoPtSnusdUsdt);

        STRATEGY = p.strategy;
        USDC = p.usdc;
        USDT = p.usdt;
        NUSD = p.nusd;
        SNUSD = p.snusd;
        ORACLE = p.pendleOracle;
        CURVE_POOL = p.curvePool;
        MORPHO = p.morpho;
        USDC_USD_FEED = p.usdcUsdFeed;
        USDT_USD_FEED = p.usdtUsdFeed;
        CHAINLINK_STALENESS_THRESHOLD = p.chainlinkStalenessThreshold;
        TWAP_DURATION = p.twapDuration;

        sy = p.sy;
        pt = p.pt;
        pendleMarket = p.pendleMarket;

        morphoMarkets[SLOT_SNUSD_USDC] = p.morphoSnusdUsdc;
        morphoMarkets[SLOT_SNUSD_USDT] = p.morphoSnusdUsdt;
        morphoMarkets[SLOT_PT_SNUSD_USDC] = p.morphoPtSnusdUsdc;
        morphoMarkets[SLOT_PT_SNUSD_USDT] = p.morphoPtSnusdUsdt;
    }

    function _validateMorphoMarket(address morpho, bytes32 marketId) internal view {
        (address loanToken,,,,) = IMorphoBlue(morpho).idToMarketParams(marketId);
        if (loanToken == address(0)) revert InvalidMorphoMarket();
    }

    // ============================================
    // IExternalAssetsProvider
    // ============================================

    function denominationToken() external view override returns (address) {
        return USDC;
    }

    function getTotalAssets() external view override returns (uint256) {
        return _getTotalAssets();
    }

    /**
     * @dev Net total assets denominated in USDC.
     *      grossAssets = idle USDC + idle USDT (as USDC via Chainlink)
     *                  + NUSD-equivalent positions × Curve probe rate
     *      netAssets   = grossAssets - (USDC debt + USDT debt as USDC)
     */
    function _getTotalAssets() internal view returns (uint256) {
        // 1. Idle USDC (denomination, includes any borrowed USDC)
        uint256 usdcBal = IERC20(USDC).balanceOf(STRATEGY);

        // 2. Idle USDT → USDC via Chainlink (includes any borrowed USDT)
        uint256 usdtAsUsdc = _usdtToUsdc(IERC20(USDT).balanceOf(STRATEGY));

        // 3. Aggregate all NUSD-denominated positions (excluding PT — handled separately via Pendle rate)
        uint256 totalNusd = 0;

        // 3a. Raw NUSD
        totalNusd += IERC20(NUSD).balanceOf(STRATEGY);

        // 3b. sNUSD → NUSD via ERC4626
        uint256 snusdBal = IERC20(SNUSD).balanceOf(STRATEGY);
        if (snusdBal > 0) {
            totalNusd += ISNUSD(SNUSD).convertToAssets(snusdBal);
        }

        // 3c. sNUSD cooldown — pending NUSD waiting for unstake
        ISNUSD.UserCooldown memory cooldown = ISNUSD(SNUSD).cooldowns(STRATEGY);
        totalNusd += uint256(cooldown.underlyingAmount);

        // 3d. SY-sNUSD balance — SY wraps NUSD asset 1:1 for sNUSD market
        totalNusd += IERC20(sy).balanceOf(STRATEGY);

        // 4. Aggregate raw PT balance (will be priced via Pendle Oracle below)
        uint256 totalPt = IERC20(pt).balanceOf(STRATEGY);

        // 5. Walk Morpho markets — accumulate collateral by type, split debt by loan currency
        uint256 usdcDebt;
        uint256 usdtDebt;
        for (uint256 i; i < NUM_SLOTS; i++) {
            bytes32 marketId = morphoMarkets[i];
            if (marketId == bytes32(0)) continue;

            (, uint128 borrowShares, uint128 collateral) = IMorphoBlue(MORPHO).position(marketId, STRATEGY);

            if (i < 2) {
                // slots 0/1: sNUSD collateral → NUSD via ERC4626
                if (collateral > 0) {
                    totalNusd += ISNUSD(SNUSD).convertToAssets(uint256(collateral));
                }
            } else {
                // slots 2/3: PT-sNUSD collateral
                totalPt += uint256(collateral);
            }

            uint256 debt = _borrowSharesToAssets(marketId, uint256(borrowShares));
            // Slots 0,2 = USDC loan; Slots 1,3 = USDT loan
            if (i == SLOT_SNUSD_USDC || i == SLOT_PT_SNUSD_USDC) {
                usdcDebt += debt;
            } else {
                usdtDebt += debt;
            }
        }

        // 6. PT (idle + Morpho slots 2/3) → NUSD via Pendle Oracle TWAP.
        //    SY-sNUSD's underlying asset is NUSD, so getPtToAssetRate returns ptRaw → NUSD (both 18 dec).
        if (totalPt > 0 && ORACLE != address(0)) {
            uint256 ptRate = IPendleOracle(ORACLE).getPtToAssetRate(pendleMarket, TWAP_DURATION);
            totalNusd += Math.mulDiv(totalPt, ptRate, 1e18);
        }

        // 7. Convert aggregated NUSD → USDC via Curve PROBE-BASED pricing.
        //
        // CRITICAL: We do NOT pass `totalNusd` directly into `get_dy`. Curve's stable-swap
        // invariant produces convex slippage that grows with trade size relative to pool TVL.
        // For a $1M strategy on a ~$5M Curve pool, a one-shot get_dy reports ~0.14% loss vs
        // the ~0.02% real per-chunk slippage incurred when keepers actually unwind. That
        // phantom loss flows directly into the strategy's reported totalAssets and creates
        // an accounting hole that does NOT correspond to recoverable losses.
        //
        // Probe pricing: query the marginal NUSD/USDC rate using a 1e18 NUSD probe (~$1,
        // well within Curve's flat-zone), then scale linearly. This matches the spot
        // exchange rate the strategy actually realises during chunked unwinds and still
        // reflects NUSD depeg if it occurs (the probe returns the depegged spot rate).
        //
        // Manipulation surface: a flash-loan attacker would need to imbalance the Curve pool
        // before this read. The cost (pool depth × imbalance × A) far exceeds any profit
        // from distorting our totalAssets reading — the strategy's deposits/redemptions are
        // permissioned, and any read in a manipulated state is reverted on the next harvest.
        uint256 nusdAsUsdc = 0;
        if (totalNusd > 0) {
            uint256 usdcPerNusd = ICurveStablePool(CURVE_POOL).get_dy(CURVE_NUSD_INDEX, CURVE_USDC_INDEX, 1e18);
            // Scale linearly: NUSD 18dec × USDC-per-NUSD 6dec / 1e18 = USDC 6dec.
            nusdAsUsdc = Math.mulDiv(totalNusd, usdcPerNusd, 1e18);
        }

        // 8. Total debt in USDC
        uint256 totalDebtUsdc = usdcDebt + _usdtToUsdc(usdtDebt);

        // 9. Net = gross - debt; underwater clamp
        uint256 grossAssets = usdcBal + usdtAsUsdc + nusdAsUsdc;
        if (totalDebtUsdc >= grossAssets) return 0;
        return grossAssets - totalDebtUsdc;
    }

    // ============================================
    // PRICING HELPERS
    // ============================================

    /// @notice USDT (6 dec) → USDC (6 dec) via Chainlink USDT/USD ÷ USDC/USD
    function _usdtToUsdc(uint256 usdtAmount) internal view returns (uint256) {
        if (usdtAmount == 0) return 0;
        uint256 usdtPrice = _getValidatedChainlinkPrice(USDT_USD_FEED);
        uint256 usdcPrice = _getValidatedChainlinkPrice(USDC_USD_FEED);
        // Both 6 dec; both prices 8 dec; ratio cancels decimals
        return Math.mulDiv(usdtAmount, usdtPrice, usdcPrice);
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

    /**
     * @notice Update Pendle config (PT, market, SY) for rollover to a new maturity.
     * @dev Reverts unless totalAssets stays within INVARIANCE_TOLERANCE_BPS — this implicitly
     *      requires the old PT/SY balances and Morpho PT-collateral slots to be empty before
     *      the rollover, otherwise switching addresses would change the reported totalAssets.
     */
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

    /**
     * @notice Update a Morpho market id for a given slot (or set to bytes32(0) to disable).
     * @dev Reverts unless totalAssets stays within INVARIANCE_TOLERANCE_BPS — implicitly
     *      requires the old slot's collateral and debt to be zero before swapping.
     */
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

    function _checkInvariance(uint256 beforeTotal, uint256 afterTotal) internal pure {
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

    /// @notice Get the current Curve exchange rate for 1 NUSD → USDC (6 decimals)
    function getNusdToUsdcRate() external view returns (uint256) {
        return ICurveStablePool(CURVE_POOL).get_dy(CURVE_NUSD_INDEX, CURVE_USDC_INDEX, 1e18);
    }

    /// @notice Get USDC amount equivalent to 1e6 USDT (6 dec)
    function getUsdtToUsdcRate() external view returns (uint256) {
        return _usdtToUsdc(1e6);
    }

    /// @notice Get the current Pendle Oracle PT-to-asset rate (1e18 scale, NUSD-denominated)
    function getPtToAssetRate() external view returns (uint256) {
        return IPendleOracle(ORACLE).getPtToAssetRate(pendleMarket, TWAP_DURATION);
    }

    function getMorphoMarket(uint8 slot) external view returns (bytes32) {
        if (slot >= NUM_SLOTS) revert InvalidSlot();
        return morphoMarkets[slot];
    }

    /// @notice Get Morpho position for a single slot
    /// @dev `collateral` decimals depend on slot: slots 0/1 = sNUSD (18 dec), slots 2/3 = PT (18 dec).
    ///      `borrowAssets` decimals: slots 0/2 = USDC (6 dec), slots 1/3 = USDT (6 dec).
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

    /**
     * @notice Get full position breakdown
     * @return usdcBalance Raw USDC balance in strategy (6 decimals)
     * @return usdtBalance Raw USDT balance in strategy (6 decimals)
     * @return nusdBalance Raw NUSD balance in strategy (18 decimals)
     * @return snusdBalance Raw sNUSD balance in strategy (18 decimals)
     * @return snusdCooldownNusd Pending NUSD amount in sNUSD cooldown (18 decimals)
     * @return syBalance Raw SY-sNUSD balance in strategy (18 decimals)
     * @return ptBalance Raw PT-sNUSD balance in strategy (18 decimals)
     * @return morphoCollaterals Per-slot collateral (slots 0/1: sNUSD; slots 2/3: PT)
     * @return morphoBorrowDebts Per-slot borrow debt (slots 0/2: USDC; slots 1/3: USDT)
     * @return ptToAssetRate Current Pendle TWAP PT→NUSD rate (1e18 scale)
     * @return nusdToUsdcRate Current Curve NUSD→USDC rate for 1e18 NUSD (6 decimals)
     * @return usdtToUsdcRate Current Chainlink USDT→USDC rate for 1e6 USDT (6 decimals)
     */
    function getPositionBreakdown()
        external
        view
        returns (
            uint256 usdcBalance,
            uint256 usdtBalance,
            uint256 nusdBalance,
            uint256 snusdBalance,
            uint256 snusdCooldownNusd,
            uint256 syBalance,
            uint256 ptBalance,
            uint256[NUM_SLOTS] memory morphoCollaterals,
            uint256[NUM_SLOTS] memory morphoBorrowDebts,
            uint256 ptToAssetRate,
            uint256 nusdToUsdcRate,
            uint256 usdtToUsdcRate
        )
    {
        usdcBalance = IERC20(USDC).balanceOf(STRATEGY);
        usdtBalance = IERC20(USDT).balanceOf(STRATEGY);
        nusdBalance = IERC20(NUSD).balanceOf(STRATEGY);
        snusdBalance = IERC20(SNUSD).balanceOf(STRATEGY);

        ISNUSD.UserCooldown memory cooldown = ISNUSD(SNUSD).cooldowns(STRATEGY);
        snusdCooldownNusd = uint256(cooldown.underlyingAmount);

        syBalance = IERC20(sy).balanceOf(STRATEGY);
        ptBalance = IERC20(pt).balanceOf(STRATEGY);

        for (uint256 i; i < NUM_SLOTS; i++) {
            bytes32 marketId = morphoMarkets[i];
            if (marketId == bytes32(0)) continue;
            (, uint128 borrowShares, uint128 collateral) = IMorphoBlue(MORPHO).position(marketId, STRATEGY);
            morphoCollaterals[i] = uint256(collateral);
            morphoBorrowDebts[i] = _borrowSharesToAssets(marketId, uint256(borrowShares));
        }

        ptToAssetRate = ORACLE != address(0) ? IPendleOracle(ORACLE).getPtToAssetRate(pendleMarket, TWAP_DURATION) : 0;
        nusdToUsdcRate = ICurveStablePool(CURVE_POOL).get_dy(CURVE_NUSD_INDEX, CURVE_USDC_INDEX, 1e18);
        usdtToUsdcRate = _usdtToUsdc(1e6);
    }
}
