// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./libs/ChainlinkLib.sol";
import "./libs/FixedPoint.sol";
import "./libs/UniswapV2Library.sol";
import "./TokenConfigWrapper.sol";
import "./ReporterData.sol";
import "./IGuardedPriceOracle.sol";
import "./IRToken.sol";

/**
 * Price feed with anchor based in uniswap pair TWAP
 * Inspired by Compound Open Price Feed
 */
contract IronPriceOracle is Ownable, TokenConfigWrapper, ReporterData, IGuardedPriceOracle {
    using FixedPoint for *;

    struct Observation {
        uint256 timestamp;
        uint256 acc;
    }

    /// @notice Indicator that this is a PriceOracle contract (for inspection)
    bool public constant isPriceOracle = true;

    /// @notice The Open Oracle Reporter
    mapping(address => bool) public reporters;

    /// @notice Official prices by symbol hash
    mapping(bytes32 => uint256) public prices;

    uint256 public constant PRECISION = 1e18;

    /// @notice base token price in 18 decimals scale
    mapping(BaseToken => uint256) baseTokenPrice;

    /// @notice base token scale = 10 ^ decimals
    mapping(BaseToken => uint256) baseTokenBaseUnit;

    /// @notice base token price in 18 decimals scale
    mapping(BaseToken => address) baseTokenChainlinkFeed;

    /// @notice The old observation for each routeHash
    mapping(bytes32 => Observation) public oldObservations;

    /// @notice The new observation for each routeHash
    mapping(bytes32 => Observation) public newObservations;

    /// @notice The highest ratio of the new price to the anchor price that will still trigger the price to be updated
    uint256 public immutable upperBoundAnchorRatio;

    /// @notice The lowest ratio of the new price to the anchor price that will still trigger the price to be updated
    uint256 public immutable lowerBoundAnchorRatio;

    /// @notice The minimum amount of time in seconds required for the old uniswap price accumulator to be replaced
    uint256 public immutable anchorPeriod;

    // ============== MODIFIER ==============
    modifier onlyReporter() {
        require(reporters[msg.sender], "!reporter");
        _;
    }

    constructor(
        address reporter_,
        uint256 anchorToleranceMantissa_,
        uint256 anchorPeriod_
    ) {
        anchorPeriod = anchorPeriod_;
        upperBoundAnchorRatio = anchorToleranceMantissa_ > type(uint256).max - 100e16
            ? type(uint256).max
            : 100e16 + anchorToleranceMantissa_;
        lowerBoundAnchorRatio = anchorToleranceMantissa_ < 100e16 ? 100e16 - anchorToleranceMantissa_ : 1;

        baseTokenChainlinkFeed[BaseToken.ETH] = 0xF9680D99D6C9589e2a93a78A04A279e509205945;
        baseTokenChainlinkFeed[BaseToken.USDC] = 0xfE4A8cc5b5B2366C1B58Bea3858e81843581b2F7;
        baseTokenChainlinkFeed[BaseToken.MATIC] = 0xAB594600376Ec9fD91F8e885dADF0CE036862dE0;
        baseTokenBaseUnit[BaseToken.ETH] = 1e18;
        baseTokenBaseUnit[BaseToken.USDC] = 1e6;
        baseTokenBaseUnit[BaseToken.MATIC] = 1e18;
        reporters[reporter_] = true;
    }

    function postPrices(bytes[] calldata messages, string[] calldata symbols) external override onlyReporter {
        require(messages.length != 0, "emptyMessages");

        // Save the prices
        for (uint256 i = 0; i < messages.length; i++) {
            putPriceData(msg.sender, messages[i]);
        }

        fetchBasePrice();

        // Try to update the view storage
        for (uint256 i = 0; i < symbols.length; i++) {
            postPriceInternal(symbols[i]);
        }
    }

    function postPriceInternal(string memory symbol) internal {
        bytes32 symbolHash = keccak256(abi.encodePacked(symbol));
        TokenConfig memory config = getTokenConfigBySymbolHash[symbolHash];
        require(config.priceSource == PriceSource.REPORTER, "only reporter prices get posted");

        uint256 reporterPrice = getPriceData(msg.sender, symbol);
        uint256 anchorPrice = fetchAnchorPrice(symbol, config);

        if (isWithinAnchor(reporterPrice, anchorPrice)) {
            prices[symbolHash] = reporterPrice;
            emit PriceUpdated(symbol, reporterPrice);
        } else {
            emit PriceGuarded(symbol, reporterPrice, anchorPrice);
        }
    }

    // ================= VIEW FUNCTIONS ==================

    function getUnderlyingPrice(address rToken) external view override returns (uint256) {
        TokenConfig memory config = getTokenConfigByRToken[rToken];
        return (1e18 * price(config)) / config.baseUnit;
    }

    function price(string memory symbol) external view returns (uint256) {
        TokenConfig memory config = getTokenConfigBySymbol(symbol);
        return price(config);
    }

    // ===================== INTERNAL FUNCTIONS =====================

    function price(TokenConfig memory config) internal view returns (uint256) {
        if (config.priceSource == PriceSource.FIXED_CHAINLINK) {
            return ChainlinkLib.consult(getChainlinkFeedBySymbolHash[config.symbolHash], PRECISION);
        }
        return prices[config.symbolHash];
    }

    function isWithinAnchor(uint256 reporterPrice, uint256 anchorPrice) internal view returns (bool) {
        if (reporterPrice > 0) {
            uint256 anchorRatio = (anchorPrice * PRECISION) / reporterPrice;
            return anchorRatio <= upperBoundAnchorRatio && anchorRatio >= lowerBoundAnchorRatio;
        }
        return false;
    }

    function fetchBasePrice() internal {
        fetchBasePrice(BaseToken.ETH);
        fetchBasePrice(BaseToken.USDC);
        fetchBasePrice(BaseToken.MATIC);
    }

    function fetchBasePrice(BaseToken baseToken) internal {
        baseTokenPrice[baseToken] = ChainlinkLib.consult(baseTokenChainlinkFeed[baseToken], PRECISION);
    }

    function fetchAnchorPrice(string memory symbol, TokenConfig memory config) internal returns (uint256 anchorPrice) {
        PriceRoute[] memory routes = getPriceRouteBySymbolHash[config.symbolHash];
        uint256 nRoute = routes.length;

        require(nRoute != 0, "invalidRouteConfig");

        if (nRoute == 1) {
            anchorPrice = fetchTWAPPrice(symbol, config.baseUnit, routes[0]);
        } else {
            uint256 sum = 0;

            for (uint256 i = 0; i < nRoute; i++) {
                sum += fetchTWAPPrice(symbol, config.baseUnit, routes[i]);
            }

            anchorPrice = sum / nRoute;
        }
    }

    function fetchTWAPPrice(
        string memory symbol,
        uint256 baseUnit,
        PriceRoute memory route
    ) internal virtual returns (uint256) {
        (uint256 nowCumulativePrice, uint256 oldCumulativePrice, uint256 oldTimestamp) = pokeWindowValues(route);

        // This should be impossible, but better safe than sorry
        require(block.timestamp > oldTimestamp, "now must come after before");
        uint256 timeElapsed = block.timestamp - oldTimestamp;

        FixedPoint.uq112x112 memory priceAverage = FixedPoint.uq112x112(
            uint224((nowCumulativePrice - oldCumulativePrice) / timeElapsed)
        );
        uint256 rawUniswapPriceMantissa = priceAverage.decode112with18();
        uint256 unscaledPriceMantissa = rawUniswapPriceMantissa * baseTokenPrice[route.baseToken];
        uint256 twapPrice = (unscaledPriceMantissa * baseUnit) / baseTokenBaseUnit[route.baseToken] / PRECISION;
        emit AnchorPriceUpdated(symbol, route.uniswapPair, twapPrice, oldTimestamp, block.timestamp);
        return twapPrice;
    }

    /**
     * @dev Get time-weighted average prices for a token at the current timestamp.
     *  Update new and old observations of lagging window if period elapsed.
     */
    function pokeWindowValues(PriceRoute memory route)
        internal
        returns (
            uint256,
            uint256,
            uint256
        )
    {
        bytes32 routeHash = route.routeHash;
        uint256 cumulativePrice = currentCumulativePrice(route.uniswapPair, route.isUniswapReversed);
        Observation memory newObservation = newObservations[routeHash];

        // Update new and old observations if elapsed time is greater than or equal to anchor period
        uint256 timeElapsed = block.timestamp - newObservation.timestamp;
        if (timeElapsed >= anchorPeriod) {
            oldObservations[routeHash].timestamp = newObservation.timestamp;
            oldObservations[routeHash].acc = newObservation.acc;

            newObservations[routeHash].timestamp = block.timestamp;
            newObservations[routeHash].acc = cumulativePrice;
            emit UniswapWindowUpdated(
                routeHash,
                newObservation.timestamp,
                block.timestamp,
                newObservation.acc,
                cumulativePrice
            );
        }
        return (cumulativePrice, oldObservations[routeHash].acc, oldObservations[routeHash].timestamp);
    }

    function currentCumulativePrice(address uniswapMarket, bool isUniswapReversed) internal view returns (uint256) {
        (uint256 cumulativePrice0, uint256 cumulativePrice1, ) = UniswapV2Library.currentCumulativePrices(
            uniswapMarket
        );
        if (isUniswapReversed) {
            return cumulativePrice1;
        } else {
            return cumulativePrice0;
        }
    }

    // ============= OPERATING FUNCTION =================
    function _setTokenConfig(
        address rToken,
        string memory symbol,
        uint256 decimal,
        PriceSource priceSource,
        uint256 fixedPrice,
        address chainlinkFeed,
        BaseToken[] calldata baseToken,
        address[] calldata uniswapPair,
        bool[] calldata isUniswapReversed
    ) public onlyOwner {
        require(decimal > 0, "zeroDecimal");
        require(baseToken.length == uniswapPair.length, "uniswapPairMissMatch");
        require(baseToken.length == isUniswapReversed.length, "isPairReversedMissMatch");

        bytes32 symbolHash = keccak256(abi.encodePacked(symbol));
        TokenConfigWrapper._setTokenConfig(rToken, symbolHash, decimal, priceSource);

        if (priceSource == PriceSource.FIXED_USD) {
            require(fixedPrice != 0, "!fixedPrice");
            prices[symbolHash] = fixedPrice;
            return;
        }

        if (priceSource == PriceSource.FIXED_CHAINLINK) {
            require(chainlinkFeed != address(0), "missingChainlinkAddress");
            require(baseToken.length == 0, "priceRouteNotNeccessary");
            getChainlinkFeedBySymbolHash[symbolHash] = chainlinkFeed;
            return;
        }

        require(baseToken.length > 0, "emptyPriceRoute");

        for (uint256 i = 0; i < baseToken.length; i++) {
            bytes32 routeHash = keccak256(abi.encodePacked(symbol, uniswapPair[i]));
            _setAnchorPriceRoute(symbolHash, routeHash, baseToken[i], uniswapPair[i], isUniswapReversed[i]);

            uint256 cumulativePrice = currentCumulativePrice(uniswapPair[i], isUniswapReversed[i]);
            oldObservations[routeHash].timestamp = block.timestamp;
            newObservations[routeHash].timestamp = block.timestamp;
            oldObservations[routeHash].acc = cumulativePrice;
            newObservations[routeHash].acc = cumulativePrice;
        }
    }

    function _addReporter(address reporter) external onlyOwner {
        require(reporter != address(0), "zeroAddress");
        require(!reporters[reporter], "alreadyAdded");
        reporters[reporter] = true;
    }

    function _removeReporter(address reporter) external onlyOwner {
        require(reporter != address(0), "zeroAddress");
        require(reporters[reporter], "notWhitelisted");
        reporters[reporter] = false;
    }
}
