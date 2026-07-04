// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "../../external/AggregatorV3Interface.sol";
import "../../pricing/IPriceOracle.sol";

/**
 * @title CompositeOracle
 * @notice On-chain price oracle that multiplies two Chainlink feeds to compose a USD price.
 *         Example: (sUSDe/USDe) * (USDe/USD) => sUSDe/USD.
 * @dev Returns WAD (1e18) prices and IPriceOracle.PriceStatus codes.
 */
contract CompositeOracle is IPriceOracle {
    error InvalidFeed();
    error InvalidParams();

    uint8 private constant WAD_DECIMALS = 18;

    AggregatorV3Interface public immutable feedA; // e.g., base/quote (sUSDe/USDe)
    IPriceOracle public immutable feedB; // e.g., USDe/USD ThresholdOracle
    uint32 public immutable stalenessA;

    constructor(address _feedA, address _feedBOracle, uint32 _stalenessA) {
        if (_feedA == address(0) || _feedBOracle == address(0)) revert InvalidFeed();
        if (_stalenessA == 0) revert InvalidParams();
        feedA = AggregatorV3Interface(_feedA);
        feedB = IPriceOracle(_feedBOracle);
        stalenessA = _stalenessA;
    }

    function latestPriceInfo() external view override returns (PriceInfo memory) {
        (uint80 roundA, int256 priceA,, uint256 updatedA, uint80 answeredA) =
            feedA.latestRoundData();
        // Staleness for feedA only (feedB handles its own staleness policy)
        if (block.timestamp - updatedA > stalenessA) {
            return PriceInfo(0, PriceStatus.STALE);
        }

        // Invalid rounds or non-positive price on feedA
        if (priceA <= 0 || answeredA < roundA) {
            return PriceInfo(0, PriceStatus.INVALID);
        }

        // Scale each feed to WAD
        uint8 decA = feedA.decimals();
        uint256 wadA = decA <= 18
            ? uint256(priceA) * (10 ** (18 - decA))
            : uint256(priceA) / (10 ** (decA - 18));

        // Get USD leg from IPriceOracle
        PriceInfo memory b = feedB.latestPriceInfo();
        if (b.status == PriceStatus.STALE) {
            return PriceInfo(0, PriceStatus.STALE);
        }
        if (b.status == PriceStatus.INVALID || b.price == 0) {
            return PriceInfo(0, PriceStatus.INVALID);
        }

        // Composite WAD price: (wadA * b.price) / 1e18
        uint256 composite = (wadA * b.price) / 1e18;

        if (composite == 0 || composite > type(uint96).max) {
            return PriceInfo(0, PriceStatus.INVALID);
        }

        return PriceInfo(uint96(composite), PriceStatus.VALID);
    }

    function decimals() external pure override returns (uint8) {
        return WAD_DECIMALS;
    }
}
