// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "./interface/IAggregatorV3.sol";
import "./interface/IBTCD.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/// @title SBTCDOracle
/// @author BTCD Labs
/// @notice Morpho Blue oracle that prices sBTCD collateral in WBTC (loan token) terms.
///
/// @dev Architecture
/// ================
/// This contract implements Morpho Blue's `IOracle.price()` interface to enable
/// sBTCD-collateralised WBTC borrowing. It is fully immutable — all configuration
/// is set at construction and cannot be changed.
///
/// Pricing Pipeline
/// ================
/// The oracle computes a single output: how much WBTC one sBTCD is worth,
/// scaled to 10^(36 + loanDecimals - collateralDecimals) per Morpho's convention.
///
/// Step 1 — Peg model (BTCD → USD):
///   peg = sqrt(BTCUSD / P0)
///   where P0 is the initial BTC price at launch (e.g. $94,000).
///   The sqrt dampening means BTCD tracks BTC directionally but with
///   reduced volatility: a 4x BTC move produces a 2x peg move.
///
/// Step 2 — Vault exchange rate (sBTCD → BTCD):
///   assetsPerShare = vault.convertToAssets(1 sBTCD) / BTCD_UNIT
///   sBTCD_USD = peg * assetsPerShare
///
/// Step 3 — WBTC overlay (USD → WBTC):
///   WBTC_USD = BTCUSD * (WBTC/BTC)
///   loanPerColl = sBTCD_USD / WBTC_USD
///
/// Step 4 — Morpho scaling:
///   price = loanPerColl * MORPHO_SCALE / WAD
///   where MORPHO_SCALE = 10^(36 + LOAN_DECIMALS - COLLATERAL_DECIMALS)
///
/// Data Sources
/// ============
/// - Chainlink BTC/USD (8 decimals, ~1h heartbeat)
/// - Chainlink WBTC/BTC (8 decimals, ~24h heartbeat)
/// - sBTCD ERC-4626 vault (convertToAssets for share → asset rate)
///
/// Morpho Blue Compatibility
/// =========================
/// `price()` MUST NOT revert due to stale or bad feed data.  Morpho's
/// `ChainlinkDataFeedLib` deliberately omits staleness checks and expects
/// the oracle to always return a value.  On corrupt data (zero/negative
/// answers or incomplete rounds) this oracle returns 0 instead of reverting.
///
/// Staleness Monitoring (IPOR / off-chain consumers)
/// ==================================================
/// The contract also implements `IPriceOracle` which exposes a Chainlink-
/// compatible `latestRoundData()` and `decimals()`.  This lets IPOR and
/// other integrators read the derived sBTCD price (in USD, 8 decimals)
/// alongside standard round metadata.  `latestRoundData()` uses the
/// minimum `updatedAt` across both underlying feeds.
///
/// Security Properties
/// ===================
/// - All feed decimals validated <= 18 at construction (no runtime overflow)
/// - Token decimals validated <= 77 at construction (safe for 10^exp)
/// - Round completeness and answer validity checked in `_readChainlinkWad`;
///   bad data yields a 0 return from `price()` rather than a revert
/// - `latestRoundData()` exposes freshness for external monitoring
/// - Fully immutable — no admin, no upgradability, no state mutation
contract SBTCDOracle is IPriceOracle {
    using Math for uint256;

    // -------- Constants --------

    /// @dev 1e18 — the universal fixed-point precision unit used throughout.
    uint256 internal constant WAD = 1e18;

    // -------- Immutables --------

    /// @notice Chainlink BTC/USD price feed.
    AggregatorV3Interface public immutable btcUsdPriceFeed;

    /// @notice Chainlink WBTC/BTC price feed.
    AggregatorV3Interface public immutable wbtcBtcPriceFeed;

    /// @notice sBTCD ERC-4626 staking vault.
    IBTCDStakingView public immutable SBTCD;

    /// @notice Decimals reported by the BTC/USD feed (cached at construction, <= 18).
    uint8 public immutable BTC_USD_DECIMALS;

    /// @notice Decimals reported by the WBTC/BTC feed (cached at construction, <= 18).
    uint8 public immutable WBTC_BTC_DECIMALS;

    /// @notice Decimals of the loan token (WBTC = 8).
    uint8 public immutable LOAN_DECIMALS;

    /// @notice Decimals of the collateral token (sBTCD = 18).
    uint8 public immutable COLLATERAL_DECIMALS;

    /// @notice Decimals of the underlying BTCD token (= 18).
    uint8 public immutable BTCD_DECIMALS;

    /// @notice Initial peg reference price in WAD (e.g. 94_000e18 = $94,000).
    /// @dev This is the BTC/USD price at which peg = sqrt(1) = $1.00.
    uint256 internal immutable P0_WAD;

    /// @notice 10^COLLATERAL_DECIMALS — precomputed to avoid repeated exponentiation.
    uint256 public immutable COLLATERAL_UNIT;

    /// @notice 10^BTCD_DECIMALS — precomputed to avoid repeated exponentiation.
    uint256 public immutable BTCD_UNIT;

    /// @notice Morpho scaling factor: 10^(36 + LOAN_DECIMALS - COLLATERAL_DECIMALS).
    /// @dev For WBTC (8) / sBTCD (18) this is 10^26.
    uint256 public immutable MORPHO_SCALE;

    // -------- Errors --------

    /// @notice The computed Morpho scale exponent is out of the safe range [0, 77].
    error BadScaleExponent(int256 exp);

    /// @notice A Chainlink feed reports decimals > 18 (unsupported).
    error BadFeedDecimals(address feed, uint8 decimals);

    /// @notice A token reports decimals > 77 (would overflow 10^decimals).
    error BadTokenDecimals(address token, uint8 decimals);

    /// @notice A derived price evaluated to zero.
    error ZeroPrice();

    /// @notice A required address argument was address(0).
    error ZeroAddress();

    /// @notice Deploy a new SBTCDOracle.
    /// @param _btcUsdPriceFeed  Chainlink BTC/USD aggregator (must have <= 18 decimals).
    /// @param _wbtcBtcPriceFeed Chainlink WBTC/BTC aggregator (must have <= 18 decimals).
    /// @param _sbtcdVault       sBTCD ERC-4626 vault (must implement convertToAssets).
    /// @param _p0Wad            Initial BTC/USD reference price in WAD (e.g. 94_000e18).
    /// @param _loanDecimals     Decimals of the loan token (WBTC = 8).
    constructor(
        address _btcUsdPriceFeed,
        address _wbtcBtcPriceFeed,
        address _sbtcdVault,
        uint256 _p0Wad,
        uint8 _loanDecimals
    ) {
        require(
            _btcUsdPriceFeed != address(0) && _wbtcBtcPriceFeed != address(0) && _sbtcdVault != address(0),
            ZeroAddress()
        );
        require(_p0Wad > 0, ZeroPrice());

        P0_WAD = _p0Wad;

        btcUsdPriceFeed = AggregatorV3Interface(_btcUsdPriceFeed);
        wbtcBtcPriceFeed = AggregatorV3Interface(_wbtcBtcPriceFeed);

        BTC_USD_DECIMALS = btcUsdPriceFeed.decimals();
        WBTC_BTC_DECIMALS = wbtcBtcPriceFeed.decimals();

        if (BTC_USD_DECIMALS > 18) revert BadFeedDecimals(_btcUsdPriceFeed, BTC_USD_DECIMALS);
        if (WBTC_BTC_DECIMALS > 18) revert BadFeedDecimals(_wbtcBtcPriceFeed, WBTC_BTC_DECIMALS);

        LOAN_DECIMALS = _loanDecimals;
        COLLATERAL_DECIMALS = IERC20Metadata(_sbtcdVault).decimals(); // should be 18 (your override)

        address btcd = IERC4626(_sbtcdVault).asset();
        BTCD_DECIMALS = IERC20Metadata(btcd).decimals(); // should be

        SBTCD = IBTCDStakingView(_sbtcdVault);

        if (COLLATERAL_DECIMALS > 77) revert BadTokenDecimals(_sbtcdVault, COLLATERAL_DECIMALS);
        COLLATERAL_UNIT = 10 ** uint256(COLLATERAL_DECIMALS);

        if (BTCD_DECIMALS > 77) revert BadTokenDecimals(btcd, BTCD_DECIMALS);
        BTCD_UNIT = 10 ** uint256(BTCD_DECIMALS);

        int256 scaleExp = int256(36) + int256(uint256(LOAN_DECIMALS)) - int256(uint256(COLLATERAL_DECIMALS));
        // 10**77 still fits in uint256, but 10**78 does not, so we can allow up to 77
        require(scaleExp >= 0 && scaleExp <= 77, BadScaleExponent(scaleExp));
        MORPHO_SCALE = 10 ** uint256(scaleExp);
    }

    /// @inheritdoc IOracle
    /// @notice Returns the price of 1 unit of collateral (sBTCD) denominated in the
    ///         loan token (WBTC), scaled to 10^(36 + loanDecimals - collateralDecimals).
    /// @dev MUST NOT revert due to stale or bad feed data (Morpho Blue requirement).
    ///      Returns 0 when any underlying feed answer is invalid.
    /// @return morphoPrice  WBTC per sBTCD in Morpho's fixed-point convention.
    function price() external view override returns (uint256 morphoPrice) {
        (uint256 pegWad, uint256 btcUsdWad, uint256 wbtcBtcWad,,,) = _readFeedsAndComputePeg();

        // If either feed returned bad data, return 0 (non-reverting per Morpho spec)
        if (btcUsdWad == 0 || wbtcBtcWad == 0) return 0;

        // assetsPerShareWad = BTCD per 1 sBTCD share (normalize to WAD)
        uint256 assetsRaw = SBTCD.convertToAssets(COLLATERAL_UNIT); // in btcd decimals
        uint256 assetsPerShareWad = Math.mulDiv(assetsRaw, WAD, BTCD_UNIT);

        // sBTCD_USD_WAD
        uint256 sbtcdUsdWad = Math.mulDiv(pegWad, assetsPerShareWad, WAD);

        // WBTCUSD_WAD — 0 only if inputs are sub-WAD (not possible with real data)
        uint256 wbtcUsdWad = Math.mulDiv(btcUsdWad, wbtcBtcWad, WAD);
        if (wbtcUsdWad == 0) return 0;

        // WBTC per sBTCD (WAD)
        uint256 loanPerCollWad = Math.mulDiv(sbtcdUsdWad, WAD, wbtcUsdWad);

        morphoPrice = Math.mulDiv(loanPerCollWad, MORPHO_SCALE, WAD);
    }

    /// @inheritdoc IPriceOracle
    /// @notice Always returns 8 — the sBTCD price is expressed in USD with 8 decimals.
    function decimals() external pure override returns (uint8) {
        return 8;
    }

    /// @inheritdoc IPriceOracle
    /// @notice Returns the sBTCD price (USD, 8 decimals) in a Chainlink-compatible tuple.
    /// @dev `roundId` and `answeredInRound` are derived from the BTC/USD feed.
    ///      `time` is the minimum `updatedAt` across both feeds.
    ///      `price` is `peg × assetsPerShare` (sBTCD/USD) scaled to 8 decimals.
    ///      Returns 0 for `price` on bad underlying data (non-reverting).
    function latestRoundData()
        external
        view
        override
        returns (uint80 roundId, int256 pegPrice, uint256 startedAt, uint256 time, uint80 answeredInRound)
    {
        uint256 pegWad;
        (pegWad,,, roundId, answeredInRound, time) = _readFeedsAndComputePeg();
        startedAt = time;

        // Apply vault exchange rate: sBTCD price = peg × assetsPerShare
        uint256 assetsRaw = SBTCD.convertToAssets(COLLATERAL_UNIT);
        uint256 assetsPerShareWad = Math.mulDiv(assetsRaw, WAD, BTCD_UNIT);
        uint256 sbtcdUsdWad = Math.mulDiv(pegWad, assetsPerShareWad, WAD);

        pegPrice = int256(sbtcdUsdWad / 1e10);
    }

    /// -----------------------------------------------------------------------
    /// Internals
    /// -----------------------------------------------------------------------

    /// @dev Read both Chainlink feeds, validate answers, and compute the BTCD peg.
    ///      Returns 0 for individual WAD values when the corresponding feed has
    ///      bad data (zero/negative answer or incomplete round).
    ///      `pegWad` is 0 only when the BTC/USD feed is invalid (peg depends only on BTC/USD).
    /// @return pegWad           sqrt(BTCUSD / P0) in WAD (0 if BTC/USD feed is bad).
    /// @return btcUsdWad        BTC/USD price in WAD (0 if feed is bad).
    /// @return wbtcBtcWad       WBTC/BTC price in WAD (0 if feed is bad).
    /// @return roundId          Round ID from the BTC/USD feed.
    /// @return answeredInRound  Answered-in-round from the BTC/USD feed.
    /// @return minUpdatedAt     Minimum updatedAt across both feeds.
    function _readFeedsAndComputePeg()
        internal
        view
        returns (
            uint256 pegWad,
            uint256 btcUsdWad,
            uint256 wbtcBtcWad,
            uint80 roundId,
            uint80 answeredInRound,
            uint256 minUpdatedAt
        )
    {
        // Read BTC/USD
        (uint80 btcRoundId, int256 btcAnswer,, uint256 btcUpdatedAt, uint80 btcAnsweredInRound) =
            btcUsdPriceFeed.latestRoundData();

        // Read WBTC/BTC
        (uint80 wbtcRoundId, int256 wbtcAnswer,, uint256 wbtcUpdatedAt, uint80 wbtcAnsweredInRound) =
            wbtcBtcPriceFeed.latestRoundData();

        // Round metadata from BTC/USD feed
        roundId = btcRoundId;
        answeredInRound = btcAnsweredInRound;
        minUpdatedAt = btcUpdatedAt < wbtcUpdatedAt ? btcUpdatedAt : wbtcUpdatedAt;

        // BTC/USD: validate and compute peg
        if (btcAnswer > 0 && btcAnsweredInRound >= btcRoundId) {
            btcUsdWad = _scaleToWad(uint256(btcAnswer), BTC_USD_DECIMALS);
            uint256 ratioWad = Math.mulDiv(btcUsdWad, WAD, P0_WAD);
            pegWad = Math.sqrt(ratioWad * WAD);
        }

        // WBTC/BTC: validate and scale
        if (wbtcAnswer > 0 && wbtcAnsweredInRound >= wbtcRoundId) {
            wbtcBtcWad = _scaleToWad(uint256(wbtcAnswer), WBTC_BTC_DECIMALS);
        }
    }

    /// @dev Scale a Chainlink answer to WAD (18 decimals).
    ///      Safe because feed decimals are validated <= 18 at construction;
    ///      the subtraction (18 - decimals) cannot underflow.
    /// @param value    Raw Chainlink answer.
    /// @param decimals_ Feed decimals (guaranteed <= 18).
    /// @return The value scaled to 18 decimals.
    function _scaleToWad(uint256 value, uint8 decimals_) internal pure returns (uint256) {
        if (decimals_ == 18) return value;
        return value * (10 ** (18 - decimals_));
    }

}
