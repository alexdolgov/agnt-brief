// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "./interface/IAggregatorV3.sol";
import "./interface/IBTCD.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/// @title SBTCDPegUsdcOracle
/// @author BTCD Labs
/// @notice Morpho Blue oracle that prices sBTCD collateral in USDC (loan token) terms.
///
/// @dev Architecture
/// ================
/// Drop-in analog of `SBTCDOracle` (PriceOracle.sol) that quotes sBTCD in
/// USDC instead of WBTC. Used by the new btcvault Morpho market where
/// sBTCD is the collateral and USDC is the loan token.
///
/// Why USDC: btcvault deposits wBTC and runs a leveraged loop that must
/// maintain net BTC exposure. Borrowing wBTC against sBTCD collateral
/// (the existing services/vault market) produces a near-zero BTC delta;
/// borrowing USDC keeps the BTC long open.
///
/// Pricing Pipeline
/// ================
/// The oracle computes a single output: how much USDC one 1e18-share
/// of sBTCD is worth, scaled to 10^(36 + LOAN_DECIMALS - COLLATERAL_DECIMALS).
///
/// Step 1 — Peg model (BTCD → USD):
///   peg = sqrt(BTCUSD / P0)
///   where P0 is the initial BTC price at launch (e.g. $94,000).
///   sqrt-dampened: a 4x BTC move produces a 2x peg move.
///   IDENTICAL to SBTCDOracle and BTCDPegUsdcOracle — must use the
///   same P0 across all three so peg values agree.
///
/// Step 2 — Vault exchange rate (sBTCD → BTCD):
///   assetsPerShare = vault.convertToAssets(1 sBTCD) / BTCD_UNIT
///   sBTCD_USD = peg * assetsPerShare
///   IDENTICAL to SBTCDOracle.
///
/// Step 3 — USDC overlay (USD → USDC):
///   USDC_per_sBTCD = sBTCD_USD / USDC_USD
///   USDC_USD is the live Chainlink USDC/USD feed (de-peg protection).
///   DIFFERS from SBTCDOracle — this is the only structural change.
///
/// Step 4 — Morpho scaling:
///   price = USDC_per_sBTCD * MORPHO_SCALE / WAD
///   where MORPHO_SCALE = 10^(36 + LOAN_DECIMALS - COLLATERAL_DECIMALS)
///   For USDC(6) / sBTCD(18): MORPHO_SCALE = 10^24.
///
/// Data Sources
/// ============
/// - Chainlink BTC/USD  (8 decimals, ~1h heartbeat)
/// - Chainlink USDC/USD (8 decimals, ~24h heartbeat)
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
/// `IPriceOracle.latestRoundData()` returns the derived sBTCD/USD price
/// (8 decimals) with `time = min(updatedAt)` across both underlying feeds.
///
/// Security Properties
/// ===================
/// - Feed decimals validated <= 18 at construction.
/// - Token decimals validated <= 77 at construction (safe for 10^exp).
/// - Round completeness + answer validity checked; bad data → 0 return.
/// - Fully immutable — no admin, no upgradability, no state mutation.
contract SBTCDPegUsdcOracle is IPriceOracle {
    using Math for uint256;

    // -------- Constants --------

    /// @dev 1e18 — the universal fixed-point precision unit used throughout.
    uint256 internal constant WAD = 1e18;

    // -------- Immutables --------

    /// @notice Chainlink BTC/USD price feed.
    AggregatorV3Interface public immutable btcUsdPriceFeed;

    /// @notice Chainlink USDC/USD price feed.
    AggregatorV3Interface public immutable usdcUsdPriceFeed;

    /// @notice sBTCD ERC-4626 staking vault.
    IBTCDStakingView public immutable SBTCD;

    /// @notice Decimals reported by the BTC/USD feed (cached at construction, <= 18).
    uint8 public immutable BTC_USD_DECIMALS;

    /// @notice Decimals reported by the USDC/USD feed (cached at construction, <= 18).
    uint8 public immutable USDC_USD_DECIMALS;

    /// @notice Decimals of the loan token (USDC = 6).
    uint8 public immutable LOAN_DECIMALS;

    /// @notice Decimals of the collateral token (sBTCD = 18).
    uint8 public immutable COLLATERAL_DECIMALS;

    /// @notice Decimals of the underlying BTCD token (= 18).
    uint8 public immutable BTCD_DECIMALS;

    /// @notice Initial peg reference price in WAD (e.g. 94_000e18 = $94,000).
    /// @dev This is the BTC/USD price at which peg = sqrt(1) = $1.00.
    ///      MUST match the value used by SBTCDOracle and BTCDPegUsdcOracle
    ///      so all peg consumers agree.
    uint256 internal immutable P0_WAD;

    /// @notice 10^COLLATERAL_DECIMALS — precomputed.
    uint256 public immutable COLLATERAL_UNIT;

    /// @notice 10^BTCD_DECIMALS — precomputed.
    uint256 public immutable BTCD_UNIT;

    /// @notice Morpho scaling factor: 10^(36 + LOAN_DECIMALS - COLLATERAL_DECIMALS).
    /// @dev For USDC(6) / sBTCD(18) this is 10^24.
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

    /// @notice Deploy a new SBTCDPegUsdcOracle.
    /// @param _btcUsdPriceFeed  Chainlink BTC/USD aggregator (must have <= 18 decimals).
    /// @param _usdcUsdPriceFeed Chainlink USDC/USD aggregator (must have <= 18 decimals).
    /// @param _sbtcdVault       sBTCD ERC-4626 vault (must implement convertToAssets and asset()).
    /// @param _p0Wad            Initial BTC/USD reference price in WAD (e.g. 94_000e18).
    /// @param _loanDecimals     Decimals of the loan token (USDC = 6).
    constructor(
        address _btcUsdPriceFeed,
        address _usdcUsdPriceFeed,
        address _sbtcdVault,
        uint256 _p0Wad,
        uint8 _loanDecimals
    ) {
        require(
            _btcUsdPriceFeed != address(0) && _usdcUsdPriceFeed != address(0) && _sbtcdVault != address(0),
            ZeroAddress()
        );
        require(_p0Wad > 0, ZeroPrice());

        P0_WAD = _p0Wad;

        btcUsdPriceFeed = AggregatorV3Interface(_btcUsdPriceFeed);
        usdcUsdPriceFeed = AggregatorV3Interface(_usdcUsdPriceFeed);

        BTC_USD_DECIMALS = btcUsdPriceFeed.decimals();
        USDC_USD_DECIMALS = usdcUsdPriceFeed.decimals();

        if (BTC_USD_DECIMALS > 18) revert BadFeedDecimals(_btcUsdPriceFeed, BTC_USD_DECIMALS);
        if (USDC_USD_DECIMALS > 18) revert BadFeedDecimals(_usdcUsdPriceFeed, USDC_USD_DECIMALS);

        LOAN_DECIMALS = _loanDecimals;
        COLLATERAL_DECIMALS = IERC20Metadata(_sbtcdVault).decimals();

        address btcd = IERC4626(_sbtcdVault).asset();
        BTCD_DECIMALS = IERC20Metadata(btcd).decimals();

        SBTCD = IBTCDStakingView(_sbtcdVault);

        if (COLLATERAL_DECIMALS > 77) revert BadTokenDecimals(_sbtcdVault, COLLATERAL_DECIMALS);
        COLLATERAL_UNIT = 10 ** uint256(COLLATERAL_DECIMALS);

        if (BTCD_DECIMALS > 77) revert BadTokenDecimals(btcd, BTCD_DECIMALS);
        BTCD_UNIT = 10 ** uint256(BTCD_DECIMALS);

        int256 scaleExp = int256(36) + int256(uint256(LOAN_DECIMALS)) - int256(uint256(COLLATERAL_DECIMALS));
        // 10**77 still fits in uint256, 10**78 does not.
        require(scaleExp >= 0 && scaleExp <= 77, BadScaleExponent(scaleExp));
        MORPHO_SCALE = 10 ** uint256(scaleExp);
    }

    /// @inheritdoc IOracle
    /// @notice USDC per 1 unit of sBTCD, scaled to MORPHO_SCALE.
    /// @dev MUST NOT revert due to stale or bad feed data (Morpho Blue requirement).
    ///      Returns 0 when any underlying feed answer is invalid.
    function price() external view override returns (uint256 morphoPrice) {
        (uint256 pegWad, uint256 btcUsdWad, uint256 usdcUsdWad,,,) = _readFeedsAndComputePeg();

        // If either feed returned bad data, return 0 (non-reverting per Morpho spec)
        if (btcUsdWad == 0 || usdcUsdWad == 0) return 0;

        // assetsPerShareWad = BTCD per 1 sBTCD share (normalize to WAD)
        uint256 assetsRaw = SBTCD.convertToAssets(COLLATERAL_UNIT); // in btcd decimals
        if (assetsRaw == 0) return 0;
        uint256 assetsPerShareWad = Math.mulDiv(assetsRaw, WAD, BTCD_UNIT);

        // sBTCD_USD_WAD = peg × assetsPerShare
        uint256 sbtcdUsdWad = Math.mulDiv(pegWad, assetsPerShareWad, WAD);

        // USDC per sBTCD (WAD) = sBTCD_USD / USDC_USD
        uint256 loanPerCollWad = Math.mulDiv(sbtcdUsdWad, WAD, usdcUsdWad);

        morphoPrice = Math.mulDiv(loanPerCollWad, MORPHO_SCALE, WAD);
    }

    /// @inheritdoc IPriceOracle
    /// @notice Always returns 8 — the sBTCD/USD price is expressed in 8 decimals.
    function decimals() external pure override returns (uint8) {
        return 8;
    }

    /// @inheritdoc IPriceOracle
    /// @notice Returns the sBTCD/USD price (8 decimals) in a Chainlink-compatible tuple.
    /// @dev `roundId` and `answeredInRound` are from the BTC/USD feed.
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

        // Apply vault exchange rate: sBTCD/USD = peg × assetsPerShare.
        uint256 assetsRaw = SBTCD.convertToAssets(COLLATERAL_UNIT);
        uint256 assetsPerShareWad = Math.mulDiv(assetsRaw, WAD, BTCD_UNIT);
        uint256 sbtcdUsdWad = Math.mulDiv(pegWad, assetsPerShareWad, WAD);

        pegPrice = int256(sbtcdUsdWad / 1e10);
    }

    /// -----------------------------------------------------------------------
    /// Internals
    /// -----------------------------------------------------------------------

    /// @dev Read both Chainlink feeds, validate answers, and compute the BTCD peg.
    /// @return pegWad           sqrt(BTCUSD / P0) in WAD (0 if BTC/USD feed is bad).
    /// @return btcUsdWad        BTC/USD price in WAD (0 if feed is bad).
    /// @return usdcUsdWad       USDC/USD price in WAD (0 if feed is bad).
    /// @return roundId          Round ID from the BTC/USD feed.
    /// @return answeredInRound  Answered-in-round from the BTC/USD feed.
    /// @return minUpdatedAt     Minimum updatedAt across both feeds.
    function _readFeedsAndComputePeg()
        internal
        view
        returns (
            uint256 pegWad,
            uint256 btcUsdWad,
            uint256 usdcUsdWad,
            uint80 roundId,
            uint80 answeredInRound,
            uint256 minUpdatedAt
        )
    {
        // Read BTC/USD
        (uint80 btcRoundId, int256 btcAnswer,, uint256 btcUpdatedAt, uint80 btcAnsweredInRound) =
            btcUsdPriceFeed.latestRoundData();

        // Read USDC/USD
        (uint80 usdcRoundId, int256 usdcAnswer,, uint256 usdcUpdatedAt, uint80 usdcAnsweredInRound) =
            usdcUsdPriceFeed.latestRoundData();

        // Round metadata from BTC/USD feed
        roundId = btcRoundId;
        answeredInRound = btcAnsweredInRound;
        minUpdatedAt = btcUpdatedAt < usdcUpdatedAt ? btcUpdatedAt : usdcUpdatedAt;

        // BTC/USD: validate and compute peg
        if (btcAnswer > 0 && btcAnsweredInRound >= btcRoundId) {
            btcUsdWad = _scaleToWad(uint256(btcAnswer), BTC_USD_DECIMALS);
            uint256 ratioWad = Math.mulDiv(btcUsdWad, WAD, P0_WAD);
            pegWad = Math.sqrt(ratioWad * WAD);
        }

        // USDC/USD: validate and scale
        if (usdcAnswer > 0 && usdcAnsweredInRound >= usdcRoundId) {
            usdcUsdWad = _scaleToWad(uint256(usdcAnswer), USDC_USD_DECIMALS);
        }
    }

    /// @dev Scale a Chainlink answer to WAD (18 decimals).
    function _scaleToWad(uint256 value, uint8 decimals_) internal pure returns (uint256) {
        if (decimals_ == 18) return value;
        return value * (10 ** (18 - decimals_));
    }
}
