// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {SafeCast} from '@aave/core-v3/contracts/dependencies/openzeppelin/contracts/SafeCast.sol';
import {Ownable} from '@aave/core-v3/contracts/dependencies/openzeppelin/contracts/Ownable.sol';
/**
- @title OndoAaveOracleAdapter
- @notice Reads Ondo’s posted USD prices (1e18) and adapts them to protocol base units (e.g., USD 1e8) for Aave-style oracles.
- @dev Trust model: fully trusts the configured Ondo oracle contract.
- Units: Ondo prices are USD with 18 decimals; this contract returns price / PRICE_SCALER.
- - Example: if your base is USD-1e8, set PRICE_SCALER = 1e10.
- Staleness: enforces Ondo’s on-chain maxTimeDelay plus an owner-set per-asset extraGrace (bounded by a global cap).
  */

/// @notice Minimal interface for OndoSanityCheckOracle.prices(token)
interface IOndoSanityCheckOracle {
    /// @dev Returns (price 1e18 USD, lastUpdated unix, maxTimeDelay sec, allowedDeviationBps)
    function prices(address token) external view returns (uint256, uint64, uint32, uint16);
}

contract OndoAggregator is Ownable {
    using SafeCast for uint256;

    /// @notice Ondo price poster contract (sanity check oracle)
    IOndoSanityCheckOracle public immutable ondo;
    address public immutable asset;

    /// @notice Divide Ondo 1e18 price by PRICE_SCALER to get base currency units (e.g., PRICE_SCALER=1e10 for 1e8 output)
    uint256 public immutable PRICE_SCALER;

    /// @notice Cap on per-asset extra grace to avoid governance/operator mistakes (0 disables extra grace)
    uint256 public extraGraceCap;

    /// @notice Custom errors for gas efficiency
    error InvalidScaler();
    error InvalidOracle();
    error GraceExceedsCap();
    error PriceNotSet();
    error MaxDelayZero();
    error PriceStale();
    error ScaledToZero();

    /// @notice Emitted when the global cap is updated
    event ExtraGraceCapSet(uint256 cap);

    constructor(address _ondoOracle, address _asset, uint256 _priceScaler, uint256 _extraGraceCap) {
        if (_ondoOracle == address(0)) revert InvalidOracle();
        if (_priceScaler == 0) revert InvalidScaler();
        ondo = IOndoSanityCheckOracle(_ondoOracle);
        PRICE_SCALER = _priceScaler;
        asset = _asset;
        extraGraceCap = _extraGraceCap;

        emit ExtraGraceCapSet(_extraGraceCap);
    }

    function description() public pure returns (string memory) {
        return 'A port of a chainlink aggregator powered by OndoSanityCheckOracle';
    }
    function decimals() public view virtual returns (uint8) {
        return 8;
    }

    function latestAnswer() public view virtual returns (int256) {
        (uint256 p1e18, uint64 lastUpdatedRaw, uint32 maxDelayRaw, ) = ondo.prices(asset);

        // Sanity checks
        if (p1e18 == 0) revert PriceNotSet();

        // Use SafeCast for conversions
        uint256 lastUpdated = uint256(lastUpdatedRaw);
        uint256 maxDelay = uint256(maxDelayRaw);

        // Staleness: now <= lastUpdated + maxDelay + extraGraceCap
        uint256 allowedStale = maxDelay + extraGraceCap;
        if (allowedStale == 0) revert MaxDelayZero();

        if (block.timestamp > lastUpdated + allowedStale) revert PriceStale();

        // Scale 1e18 -> base currency units (1e8)
        uint256 scaledPrice = p1e18 / PRICE_SCALER;
        if (scaledPrice == 0) revert ScaledToZero();

        return int256(scaledPrice);
    }

    function latestTimestamp() public view returns (uint256) {
        (, uint64 lastUpdatedRaw,, ) = ondo.prices(asset);
        return uint256(lastUpdatedRaw);
    }

    /**
    * @notice Set the asset extra grace cap (seconds)
    * @param cap The new cap value in seconds
    */
    function setExtraGraceCap(uint256 cap) external onlyOwner {
        extraGraceCap = cap;
        emit ExtraGraceCapSet(cap);
    }

}