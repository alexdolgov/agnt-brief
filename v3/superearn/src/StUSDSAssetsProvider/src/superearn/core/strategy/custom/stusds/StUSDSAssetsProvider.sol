// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.29 <0.9.0;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { AggregatorV3Interface } from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import { IExternalAssetsProvider } from "@superearn/v2/interfaces/IExternalAssetsProvider.sol";

/**
 * @title StUSDSAssetsProvider
 * @notice Assets provider for a CustomStrategy holding Sky's stUSDS positions on Ethereum mainnet.
 *
 * @dev Strategy holdings priced in this provider:
 *      - Idle USDT (6 dec) - denomination, 1:1
 *      - Idle USDS (18 dec) - converted via Chainlink USDS/USDT cross rate
 *      - stUSDS (12 dec, ERC4626, slashable) - converted to USDS via convertToAssets,
 *        then USDS to USDT via Chainlink cross rate
 *
 *      stUSDS has NON-STANDARD 12 decimals. Reading balance is straightforward, but for
 *      computing the value of a unit share use convertToAssets(1e12), not 1e18.
 *
 *      Pricing relies exclusively on Chainlink AggregatorV3 feeds with a configurable
 *      staleness guard. No price floors/ceilings - staleness is the only tamper guard,
 *      consistent with stable-pair feed practice elsewhere in this codebase.
 */
contract StUSDSAssetsProvider is IExternalAssetsProvider {
    // ============================================
    // CONSTANTS
    // ============================================

    /// @dev Decimal difference between USDS (18) and USDT (6); USDS = USDT * 1e12
    uint256 internal constant DECIMAL_DIFF_USDS_USDT = 1e12;

    // ============================================
    // IMMUTABLE STORAGE
    // ============================================

    address public immutable STRATEGY;

    address public immutable USDT;
    address public immutable USDS;
    address public immutable STUSDS;

    /// @notice Chainlink USDT/USD price feed (8 decimals)
    address public immutable USDT_USD_FEED;
    /// @notice Chainlink USDS/USD price feed (8 decimals)
    address public immutable USDS_USD_FEED;

    /// @notice Maximum allowed staleness for Chainlink answers (seconds)
    uint256 public immutable CHAINLINK_STALENESS_THRESHOLD;

    // ============================================
    // ERRORS
    // ============================================

    error ZeroAddress();
    error InvalidPrice(address feed, int256 answer);
    error StalePrice(address feed, uint256 updatedAt);

    // ============================================
    // CONSTRUCTOR
    // ============================================

    struct ConstructorParams {
        address strategy;
        address usdt;
        address usds;
        address stusds;
        address usdtUsdFeed;
        address usdsUsdFeed;
        uint256 chainlinkStalenessThreshold;
    }

    constructor(ConstructorParams memory p) {
        if (
            p.strategy == address(0) || p.usdt == address(0) || p.usds == address(0) || p.stusds == address(0)
                || p.usdtUsdFeed == address(0) || p.usdsUsdFeed == address(0)
        ) revert ZeroAddress();

        STRATEGY = p.strategy;
        USDT = p.usdt;
        USDS = p.usds;
        STUSDS = p.stusds;
        USDT_USD_FEED = p.usdtUsdFeed;
        USDS_USD_FEED = p.usdsUsdFeed;
        CHAINLINK_STALENESS_THRESHOLD = p.chainlinkStalenessThreshold;
    }

    // ============================================
    // IExternalAssetsProvider
    // ============================================

    /// @inheritdoc IExternalAssetsProvider
    function denominationToken() external view override returns (address) {
        return USDT;
    }

    /// @inheritdoc IExternalAssetsProvider
    function getTotalAssets() external view override returns (uint256) {
        return _getTotalAssets();
    }

    /**
     * @dev Total assets denominated in USDT (6 dec):
     *      1) Idle USDT (1:1)
     *      2) Idle USDS converted to USDT via Chainlink cross rate
     *      3) stUSDS converted to USDS via ERC4626.convertToAssets, then USDS to USDT
     */
    function _getTotalAssets() internal view returns (uint256) {
        // 1. Idle USDT (denomination)
        uint256 usdtValue = IERC20(USDT).balanceOf(STRATEGY);

        // 2. Aggregate USDS exposure: idle balance + ERC4626-redeemed value of stUSDS shares.
        uint256 totalUsds = IERC20(USDS).balanceOf(STRATEGY);

        uint256 stUsdsBalance = IERC20(STUSDS).balanceOf(STRATEGY);
        if (stUsdsBalance > 0) {
            // ERC4626: shares (12 dec) -> assets (USDS, 18 dec)
            totalUsds += IERC4626(STUSDS).convertToAssets(stUsdsBalance);
        }

        // 3. Convert aggregated USDS to USDT
        uint256 usdsValueAsUsdt = _usdsToUsdt(totalUsds);

        return usdtValue + usdsValueAsUsdt;
    }

    // ============================================
    // PRICING HELPERS
    // ============================================

    /**
     * @notice USDS (18 dec) -> USDT (6 dec) via Chainlink USDS/USD divided by USDT/USD.
     * @dev Both feeds report 8 decimals so the price ratio is dimensionless. We then
     *      strip the 1e12 decimal difference between USDS (18) and USDT (6).
     *      Formula: usdtRaw = usdsRaw * usdsPriceUsd / usdtPriceUsd / 1e12
     */
    function _usdsToUsdt(uint256 usdsAmount) internal view returns (uint256) {
        if (usdsAmount == 0) return 0;
        uint256 usdsPrice = _getValidatedChainlinkPrice(USDS_USD_FEED);
        uint256 usdtPrice = _getValidatedChainlinkPrice(USDT_USD_FEED);
        // Compose mulDiv(usdsAmount, usdsPrice, usdtPrice * 1e12) but split to preserve precision
        // and avoid intermediate overflow risk on the denominator.
        uint256 scaledNumerator = Math.mulDiv(usdsAmount, usdsPrice, usdtPrice);
        return scaledNumerator / DECIMAL_DIFF_USDS_USDT;
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

    // ============================================
    // CONVENIENCE VIEWS
    // ============================================

    /// @notice USDT amount (6 dec) equivalent to 1 USDS (1e18)
    function getUsdsToUsdtRate() external view returns (uint256) {
        return _usdsToUsdt(1e18);
    }

    /// @notice USDS amount (18 dec) per 1 stUSDS (1e12 = 1 share, since stUSDS uses 12 decimals)
    function getStUsdsToUsdsRate() external view returns (uint256) {
        return IERC4626(STUSDS).convertToAssets(1e12);
    }

    /// @notice USDT amount (6 dec) per 1 stUSDS (1e12 share)
    function getStUsdsToUsdtRate() external view returns (uint256) {
        uint256 usdsPerShare = IERC4626(STUSDS).convertToAssets(1e12);
        return _usdsToUsdt(usdsPerShare);
    }

    /// @notice Snapshot of strategy balances and current rates
    function getPositionBreakdown()
        external
        view
        returns (
            uint256 usdtBalance,
            uint256 usdsBalance,
            uint256 stUsdsBalance,
            uint256 usdsToUsdtRate,
            uint256 stUsdsToUsdsRate,
            uint256 stUsdsToUsdtRate
        )
    {
        usdtBalance = IERC20(USDT).balanceOf(STRATEGY);
        usdsBalance = IERC20(USDS).balanceOf(STRATEGY);
        stUsdsBalance = IERC20(STUSDS).balanceOf(STRATEGY);

        usdsToUsdtRate = _usdsToUsdt(1e18);
        stUsdsToUsdsRate = IERC4626(STUSDS).convertToAssets(1e12);
        stUsdsToUsdtRate = _usdsToUsdt(stUsdsToUsdsRate);
    }
}
