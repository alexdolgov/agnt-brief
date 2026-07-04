// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "../IPriceOracle.sol";
import "../../external/AggregatorV3Interface.sol";

/**
 * @title L2SequencerAwareOracleImmutable
 * @notice Immutable gatekeeper around an IPriceOracle that blocks usage while an L2
 *         sequencer is down or within a post-recovery grace period.
 *
 * Status mapping:
 *  - Sequencer down            -> CIRCUIT_BREAKER (price = 0)
 *  - Within grace period       -> STALE          (price = 0)
 *  - Uptime feed issues/stale  -> STALE          (price = 0)
 *  - Otherwise                 -> Pass-through of underlying PriceInfo
 *
 * Pricing scale:
 *  - Enforces WAD (18 decimals) for the underlying oracle at construction.
 *  - Exposes decimals() = 18.
 *
 * Notes:
 *  - Chainlink uptime feed: answer 0 = up, 1 = down.
 *  - Arbitrum edge case: startedAt may be 0 before feed initialization; treat as unsafe.
 */
contract L2SequencerAwareOracle is IPriceOracle {
    // ========= Errors =========
    error InvalidUnderlying();
    error InvalidSequencerFeed();
    error InvalidGracePeriod();
    error UnexpectedDecimals(uint8 expected, uint8 got);

    // ========= Immutables =========
    IPriceOracle public immutable underlying;
    AggregatorV3Interface public immutable sequencerUptimeFeed;
    uint256 public immutable gracePeriod; // seconds

    // ========= Constructor =========
    /**
     * @param _underlying       Wrapped IPriceOracle (must return WAD/18)
     * @param _sequencerFeed    Chainlink L2 Sequencer Uptime Feed proxy for the target L2
     * @param _gracePeriod      e.g., 3600 (1 hour) per Chainlink’s example
     */
    constructor(address _underlying, address _sequencerFeed, uint256 _gracePeriod) {
        if (_underlying == address(0)) revert InvalidUnderlying();
        if (_sequencerFeed == address(0)) revert InvalidSequencerFeed();
        if (_gracePeriod == 0) revert InvalidGracePeriod();

        underlying = IPriceOracle(_underlying);
        sequencerUptimeFeed = AggregatorV3Interface(_sequencerFeed);
        gracePeriod = _gracePeriod;

        // Enforce system invariant: stack expects WAD (18 decimals)
        uint8 d = underlying.decimals();
        if (d != 18) revert UnexpectedDecimals(18, d);
    }

    // ========= IPriceOracle =========

    /// @notice Always 18 (WAD)
    function decimals() external pure override returns (uint8) {
        return 18;
    }

    /// @notice Latest price gated by L2 sequencer status and grace period
    function latestPriceInfo() external view override returns (PriceInfo memory) {
        // Read Chainlink L2 Sequencer Uptime Feed
        // (roundId, answer, startedAt, updatedAt, answeredInRound)
        try sequencerUptimeFeed.latestRoundData() returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256, /* updatedAt */
            uint80 answeredInRound
        ) {
            // Guard stale/inconsistent round
            if (answeredInRound < roundId) {
                return PriceInfo(0, PriceStatus.STALE);
            }

            // 0 = up, 1 = down (per Chainlink docs)
            if (answer != 0) {
                return PriceInfo(0, PriceStatus.CIRCUIT_BREAKER);
            }

            // Arbitrum edge: startedAt can be 0 before initialization — treat as unsafe
            if (startedAt == 0) {
                return PriceInfo(0, PriceStatus.STALE);
            }

            // Enforce grace window after recovery
            uint256 timeSinceUp = block.timestamp - startedAt;
            if (timeSinceUp <= gracePeriod) {
                return PriceInfo(0, PriceStatus.STALE);
            }

            // Safe: forward underlying oracle’s view
            return underlying.latestPriceInfo();
        } catch {
            // If the uptime feed read fails, err on the side of safety
            return PriceInfo(0, PriceStatus.STALE);
        }
    }

    /// @notice Convenience: inspect sequencer state from off-chain tooling
    function getSequencerState()
        external
        view
        returns (bool isUp, uint256 startedAt, uint256 timeSinceUp)
    {
        (, int256 answer, uint256 s,,) = sequencerUptimeFeed.latestRoundData();
        isUp = (answer == 0);
        startedAt = s;
        timeSinceUp = isUp && s != 0 ? (block.timestamp - s) : 0;
    }
}
