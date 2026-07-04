// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Flying Tulip Inc. All rights reserved.
pragma solidity ^0.8.30;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {
    Ownable2StepUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";

/**
 * OracleRouter (Chainlink passthrough, strict)
 *
 * - priceUSD(asset) -> USD WAD (1e18) using asset's Chainlink feed
 *
 * Safety:
 * - Per-asset heartbeat (staleness) checks
 * - Reverts on stale/invalid reads
 *
 * Notes:
 * - Feeds must be configured to return USD (8 decimals typical). If your feed is non-USD quoted,
 *   add a quote conversion hook or configure the correct USD feed.
 */
interface AggregatorV3Interface {
    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );

    function decimals() external view returns (uint8);
}

contract OracleRouterChainlink is Initializable, UUPSUpgradeable, Ownable2StepUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }
    // Custom errors
    error NotGuardian();
    error PriceFeedDisabled();
    error AggregatorZeroAddress();
    error NegativePrice();
    error StalePrice();

    /*//////////////////////////////////////////////////////////////
                               ADMIN
    //////////////////////////////////////////////////////////////*/

    address public guardian;

    modifier onlyGuardianOrOwner() {
        _onlyGuardianOrOwner();
        _;
    }

    function _onlyGuardianOrOwner() internal view {
        if (msg.sender != guardian && msg.sender != owner()) revert NotGuardian();
    }

    event GuardianSet(address indexed g);

    function initialize(address _owner) external initializer {
        __UUPSUpgradeable_init();
        __Ownable_init(_owner);
        __Ownable2Step_init();
        guardian = _owner;
        emit GuardianSet(_owner);
    }

    function setGuardian(address g) external onlyOwner {
        guardian = g;
        emit GuardianSet(g);
    }
    // UUPS upgrade authorization: owner-gated
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    /*//////////////////////////////////////////////////////////////
                           PRICE FEEDS (USD)
    //////////////////////////////////////////////////////////////*/

    struct Feed {
        AggregatorV3Interface agg; // Chainlink aggregator
        uint32 heartbeat; // max staleness (seconds)
        bool enabled;
    }

    mapping(address => Feed) public priceFeed;

    event PriceFeedSet(address indexed asset, address indexed agg, uint32 heartbeat, bool enabled);

    function setPriceFeed(
        address asset,
        address agg,
        uint32 heartbeat,
        bool enabled
    )
        external
        onlyOwner
    {
        Feed storage f = priceFeed[asset];
        f.agg = AggregatorV3Interface(agg);
        f.heartbeat = heartbeat;
        f.enabled = enabled;
        emit PriceFeedSet(asset, agg, heartbeat, enabled);
    }

    /*//////////////////////////////////////////////////////////////
                           CORE: priceUSD / exchangeRate
    //////////////////////////////////////////////////////////////*/

    function priceUSD(address asset) public view returns (uint256 pxWad) {
        Feed storage f = priceFeed[asset];
        if (!f.enabled) revert PriceFeedDisabled();
        AggregatorV3Interface agg = f.agg;
        if (address(agg) == address(0)) revert AggregatorZeroAddress();

        (uint80 roundId, int256 ans,, uint256 updatedAt, uint80 answeredInRound) =
            agg.latestRoundData();
        if (ans <= 0) revert NegativePrice();
        if (answeredInRound < roundId || updatedAt == 0) revert StalePrice();

        // scale to 1e18
        uint256 u = uint256(ans);
        uint8 aggDecimals = agg.decimals();
        uint256 px = aggDecimals == 18
            ? u
            : (aggDecimals < 18 ? u * (10 ** (18 - aggDecimals)) : u / (10 ** (aggDecimals - 18)));

        // Staleness check: revert when stale.
        if (block.timestamp - updatedAt > f.heartbeat) {
            revert StalePrice();
        }
        return px;
    }

    /*//////////////////////////////////////////////////////////////
                          GUARDIAN CONTROLS
    //////////////////////////////////////////////////////////////*/

    // Quickly disable a feed (price or ER) if suspected compromise
    function disablePrice(address asset) external onlyGuardianOrOwner {
        Feed storage f = priceFeed[asset];
        f.enabled = false;
        emit PriceFeedSet(asset, address(f.agg), f.heartbeat, false);
    }
}
