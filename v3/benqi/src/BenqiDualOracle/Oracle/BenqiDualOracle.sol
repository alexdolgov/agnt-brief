// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./interfaces/IPriceOracle.sol";
import "./interfaces/IQiToken.sol";
import "./interfaces/IQiErc20.sol";
import "./BenqiPriceOracle.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";

/**
 * @title BenqiDualOracle
 * @author BENQI Finance
 * @notice Implements a dual oracle system with Edge as primary and Chainlink as backup
 * @dev Dual oracle system with mechanisms for:
 *      - Staleness detection
 *      - Price deviation detection
 *      - Automatic fallback between oracles
 *      - Manual override to use only one oracle in case of compromise
 */
contract BenqiDualOracle is IPriceOracle, Ownable2Step {
    // ============ State Variables ============

    /// @notice Enum representing different oracle modes
    enum OracleMode {
        EDGE_ONLY, // Use only Edge oracle
        CL_ONLY, // Use only Chainlink oracle
        DUAL // Use both oracles (default)

    }

    /// @notice Current oracle mode
    OracleMode public oracleMode = OracleMode.DUAL;

    /// @notice Primary oracle (Edge)
    BenqiPriceOracle public immutable edgeOracle;

    /// @notice Backup oracle (Chainlink)
    BenqiPriceOracle public immutable chainlinkOracle;

    /// @notice Configuration parameters for each asset's oracle feeds
    struct AssetOracleConfig {
        address edgeFeed; // Address of Edge price feed
        address chainlinkFeed; // Address of Chainlink price feed
        uint256 stalenessThreshold; // Time in seconds before a price is considered stale
        bool isConfigured; // Whether the asset is configured
        uint256 deviationThreshold; // Custom deviation threshold for this asset (0 = use default)
    }

    /// @notice Mapping from asset address to oracle configuration
    mapping(address => AssetOracleConfig) public assetConfigs;

    /// @notice Default maximum allowed deviation between oracle prices (5% in 18 decimals)
    uint256 public deviationThreshold = 5e16;

    /// @notice Maximum allowed deviation threshold (20% in 18 decimals)
    uint256 public maxDeviationThreshold = 20e16;

    /// @notice Address of the qiAVAX token
    address public qiAvaxAddress;

    /// @notice AVAX's "underlying" address representation
    address public constant AVAX_UNDERLYING = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    // ============ Errors ============

    /// @notice Error for zero or invalid addresses
    error InvalidAddress();

    /// @notice Error when Edge oracle returns zero price
    error EdgeOracleZeroPrice();

    /// @notice Error when Chainlink oracle returns zero price
    error ChainlinkOracleZeroPrice();

    /// @notice Error when Edge oracle is unresponsive
    error EdgeOracleUnresponsive();

    /// @notice Error when Chainlink oracle is unresponsive
    error ChainlinkOracleUnresponsive();

    /// @notice Error when asset is not configured in the system
    error UnconfiguredAsset();

    /// @notice Error when both oracles report stale prices
    error BothOraclesStale();

    /// @notice Error when price deviation exceeds threshold
    error PriceDeviationDetected();

    /// @notice Error when deviation threshold is set too high
    error DeviationThresholdTooHigh();

    /// @notice Error when maximum deviation threshold is set too high
    error MaxDeviationThresholdTooHigh();

    /// @notice Error when no oracle is selected for price setting
    error NoOracleSelected();

    /// @notice Error when setting a zero price
    error ZeroPrice();

    /// @notice Error when Edge oracle price is stale
    error EdgeOracleStalePriceError(address asset, uint256 timestamp, uint256 stalenessThreshold);

    /// @notice Error when Chainlink oracle price is stale
    error ChainlinkOracleStalePriceError(address asset, uint256 timestamp, uint256 stalenessThreshold);

    /// @notice Error when manual price has significant deviation from feed price
    error ManualPriceDeviationError(address asset, uint256 manualPrice, uint256 feedPrice);

    /// @notice Error when both oracles have the same addresses
    error SameOracleAddresses();

    /// @notice Error when deviation threshold is invalid
    error InvalidDeviationThreshold();

    /// @notice Error when no valid feed price is available for validation during manual price setting
    error NoValidFeedForValidation(address asset);

    // ============ Events ============

    /// @notice Emitted when an asset's oracle feeds are configured
    event AssetOraclesConfigured(
        address indexed asset,
        address edgeFeed,
        address chainlinkFeed,
        uint256 stalenessThreshold,
        uint256 deviationThreshold
    );

    /// @notice Emitted when Edge oracle reports a stale price
    event EdgeOracleStalePrice(address indexed asset, uint256 timestamp, uint256 stalenessThreshold);

    /// @notice Emitted when Chainlink oracle reports a stale price
    event ChainlinkOracleStalePrice(address indexed asset, uint256 timestamp, uint256 stalenessThreshold);

    /// @notice Emitted when there's a significant deviation between oracle prices
    event OraclePriceDeviation(
        address indexed asset, uint256 edgePrice, uint256 chainlinkPrice, uint256 deviation, uint256 threshold
    );

    /// @notice Emitted when global deviation threshold is changed
    event DeviationThresholdChanged(uint256 oldThreshold, uint256 newThreshold);

    /// @notice Emitted when maximum deviation threshold is changed
    event MaxDeviationThresholdChanged(uint256 oldThreshold, uint256 newThreshold);

    /// @notice Emitted when oracle admin rights are transferred
    event OracleAdminTransferred(address indexed newAdmin);

    /// @notice Emitted when oracle mode is changed
    event OracleModeChanged(OracleMode oldMode, OracleMode newMode);

    /// @notice Emitted when direct price is set
    event DirectPriceSet(address indexed asset, uint256 price, bool setInEdge, bool setInChainlink);

    /// @notice Emitted when underlying price is set
    event UnderlyingPriceSet(address indexed qiToken, uint256 price, bool setInEdge, bool setInChainlink);

    // ============ Constructor ============

    /**
     * @notice Constructs the dual oracle system
     * @param _edgeOracle Address of the Edge oracle contract
     * @param _chainlinkOracle Address of the Chainlink oracle contract
     * @param _qiAvaxAddress Address of the qiAVAX token
     */
    constructor(BenqiPriceOracle _edgeOracle, BenqiPriceOracle _chainlinkOracle, address _qiAvaxAddress)
        Ownable(msg.sender)
    {
        if (
            address(_edgeOracle) == address(0) || address(_chainlinkOracle) == address(0)
                || _qiAvaxAddress == address(0)
        ) {
            revert InvalidAddress();
        }

        if (address(_chainlinkOracle) == address(_edgeOracle)) revert SameOracleAddresses();

        edgeOracle = _edgeOracle;
        chainlinkOracle = _chainlinkOracle;
        qiAvaxAddress = _qiAvaxAddress;
    }

    // ============ External Functions ============

    /**
     * @notice Sets up oracle feeds for an asset
     * @dev Configures both Edge and Chainlink oracles for a single asset
     * @param asset The ERC20 token address to configure
     * @param edgeFeed The Edge price feed address
     * @param chainlinkFeed The Chainlink price feed address
     * @param stalenessThreshold Time in seconds before a price is considered stale
     * @param customDeviationThreshold Custom deviation threshold for this asset (0 = use default)
     */
    function setAssetOracles(
        address asset,
        address edgeFeed,
        address chainlinkFeed,
        uint256 stalenessThreshold,
        uint256 customDeviationThreshold
    ) external onlyOwner {
        // Input validation
        if (asset == address(0) || edgeFeed == address(0) || chainlinkFeed == address(0)) {
            revert InvalidAddress();
        }
        if (stalenessThreshold == 0) {
            revert InvalidAddress();
        }

        // Validate Edge feed responsiveness and get price
        uint256 edgePrice;
        uint256 edgeTimestamp;
        try edgeOracle.getUnderlyingPriceWithTimestamp(IQiToken(asset)) returns (uint256 price, uint256 timestamp) {
            if (price == 0) revert EdgeOracleZeroPrice();
            edgePrice = price;
            edgeTimestamp = timestamp;
        } catch {
            revert EdgeOracleUnresponsive();
        }

        // Validate Chainlink feed interface and get price
        uint256 chainlinkPrice;
        uint256 chainlinkTimestamp;
        try chainlinkOracle.getUnderlyingPriceWithTimestamp(IQiToken(asset)) returns (uint256 price, uint256 timestamp)
        {
            if (price == 0) revert ChainlinkOracleZeroPrice();
            chainlinkPrice = price;
            chainlinkTimestamp = timestamp;
        } catch {
            revert ChainlinkOracleUnresponsive();
        }

        // Check if either price is stale
        if (isPriceStale(edgeTimestamp, stalenessThreshold)) {
            revert EdgeOracleStalePriceError(asset, edgeTimestamp, stalenessThreshold);
        }
        if (isPriceStale(chainlinkTimestamp, stalenessThreshold)) {
            revert ChainlinkOracleStalePriceError(asset, chainlinkTimestamp, stalenessThreshold);
        }

        // Calculate and check price deviation
        uint256 deviation = calculateDeviation(edgePrice, chainlinkPrice);
        uint256 assetDeviationThreshold = customDeviationThreshold > 0 ? customDeviationThreshold : deviationThreshold;

        if (assetDeviationThreshold > maxDeviationThreshold) revert DeviationThresholdTooHigh();

        if (deviation > assetDeviationThreshold) {
            emit OraclePriceDeviation(asset, edgePrice, chainlinkPrice, deviation, assetDeviationThreshold);
            revert PriceDeviationDetected();
        }

        // Configure Edge Oracle
        edgeOracle.setFeed(asset, edgeFeed);

        // Configure Chainlink Oracle
        chainlinkOracle.setFeed(asset, chainlinkFeed);

        // Store the configuration
        assetConfigs[asset] = AssetOracleConfig({
            edgeFeed: edgeFeed,
            chainlinkFeed: chainlinkFeed,
            stalenessThreshold: stalenessThreshold,
            isConfigured: true,
            deviationThreshold: assetDeviationThreshold
        });

        emit AssetOraclesConfigured(asset, edgeFeed, chainlinkFeed, stalenessThreshold, assetDeviationThreshold);
    }

    /**
     * @notice Sets the oracle mode
     * @dev Only callable by owner, allows switching between dual mode and single oracle modes
     * @param _mode The oracle mode to set
     */
    function setOracleMode(OracleMode _mode) external onlyOwner {
        OracleMode oldMode = oracleMode;
        oracleMode = _mode;

        emit OracleModeChanged(oldMode, _mode);
    }

    /**
     * @notice Gets the price of an underlying asset
     * @dev Implements the fallback logic between Edge and Chainlink oracles
     * @param qiToken The QiToken whose underlying asset price is being fetched
     * @return The price of the underlying asset in USD, scaled to 18 decimals
     */
    function getUnderlyingPrice(IQiToken qiToken) public view override returns (uint256) {
        address asset = address(qiToken);
        AssetOracleConfig memory config = assetConfigs[asset];

        if (!config.isConfigured) revert UnconfiguredAsset();

        if (oracleMode == OracleMode.EDGE_ONLY) {
            (uint256 edgePriceResult, uint256 edgeTimestampSingle, bool isStaleResult) =
                getOraclePriceWithFreshness(qiToken, true, config.stalenessThreshold);
            // Zero price check is inside getOraclePriceWithFreshness (it reverts if price is 0)
            if (isStaleResult) {
                revert EdgeOracleStalePriceError(asset, edgeTimestampSingle, config.stalenessThreshold);
            }
            return edgePriceResult;
        }

        if (oracleMode == OracleMode.CL_ONLY) {
            (uint256 chainlinkPriceResult, uint256 chainlinkTimestampSingle, bool isStaleResult) =
                getOraclePriceWithFreshness(qiToken, false, config.stalenessThreshold);
            // Zero price check is inside getOraclePriceWithFreshness
            if (isStaleResult) {
                revert ChainlinkOracleStalePriceError(asset, chainlinkTimestampSingle, config.stalenessThreshold);
            }
            return chainlinkPriceResult;
        }

        // Default dual oracle logic
        uint256 edgePrice;
        uint256 chainlinkPrice;
        uint256 edgeTimestamp;
        uint256 chainlinkTimestamp;
        bool isEdgeStale;
        bool isChainlinkStale;

        (edgePrice, edgeTimestamp, isEdgeStale) = getOraclePriceWithFreshness(
            qiToken,
            true, // isEdge
            config.stalenessThreshold
        );

        (chainlinkPrice, chainlinkTimestamp, isChainlinkStale) = getOraclePriceWithFreshness(
            qiToken,
            false, // isEdge
            config.stalenessThreshold
        );

        // First check if both are stale
        if (isEdgeStale && isChainlinkStale) {
            // We can't emit events in a view function, so we just revert with the appropriate error
            revert BothOraclesStale();
        }

        // Then check individual staleness
        if (isEdgeStale) {
            // Return Chainlink when Edge is stale without emitting event
            return chainlinkPrice;
        }

        if (isChainlinkStale) {
            // Use Edge when Chainlink is stale without emitting event
            return edgePrice;
        }

        // Both prices are fresh, validate against each other
        uint256 deviation = calculateDeviation(edgePrice, chainlinkPrice);
        uint256 thresholdToUse = config.deviationThreshold > 0 ? config.deviationThreshold : deviationThreshold;

        if (deviation > thresholdToUse) {
            // We can't emit events in view functions, so just revert
            revert PriceDeviationDetected();
        }

        // Edge is primary oracle when both are valid
        return edgePrice;
    }

    /**
     * @notice Set the global deviation threshold
     * @dev Only callable by owner
     * @param newThreshold New deviation threshold (in 18 decimals)
     */
    function setDeviationThreshold(uint256 newThreshold) external onlyOwner {
        if (newThreshold == 0) revert InvalidDeviationThreshold();
        if (newThreshold > maxDeviationThreshold) revert DeviationThresholdTooHigh();

        uint256 oldThreshold = deviationThreshold;
        deviationThreshold = newThreshold;

        emit DeviationThresholdChanged(oldThreshold, newThreshold);
    }

    /**
     * @notice Set the maximum allowed deviation threshold
     * @dev Only callable by owner
     * @param newMaxThreshold New maximum deviation threshold (in 18 decimals)
     */
    function setMaxDeviationThreshold(uint256 newMaxThreshold) external onlyOwner {
        if (newMaxThreshold == 0) revert InvalidAddress();
        if (newMaxThreshold > 50e16) revert MaxDeviationThresholdTooHigh(); // Hard cap at 50%

        uint256 oldThreshold = maxDeviationThreshold;
        maxDeviationThreshold = newMaxThreshold;

        // If current deviation threshold is higher than new max, adjust it
        if (deviationThreshold > newMaxThreshold) {
            uint256 oldDeviationThreshold = deviationThreshold;
            deviationThreshold = newMaxThreshold;
            emit DeviationThresholdChanged(oldDeviationThreshold, newMaxThreshold);
        }

        emit MaxDeviationThresholdChanged(oldThreshold, newMaxThreshold);
    }

    /**
     * @notice Transfers admin rights of both oracle contracts to a new address
     * @dev Only callable by owner
     * @param newAdmin The address to receive admin rights
     */
    function transferOracleAdmins(address newAdmin) external onlyOwner {
        if (newAdmin == address(0)) revert InvalidAddress();

        // Transfer Edge Oracle admin
        edgeOracle.setAdmin(newAdmin);

        // Transfer Chainlink Oracle admin
        chainlinkOracle.setAdmin(newAdmin);

        emit OracleAdminTransferred(newAdmin);
    }

    /**
     * @notice Sets the direct price for an asset in both underlying oracles
     * @dev Only callable by owner, propagates the price to both oracles
     * @param asset The asset address to set the price for
     * @param price The price to set (scaled to 18 decimals)
     * @param setInEdge Whether to set the price in the Edge oracle
     * @param setInChainlink Whether to set the price in the Chainlink oracle
     * @param manualOverrideAllowed If true, skips feed price deviation validation
     */
    function setDirectPrice(
        address asset,
        uint256 price,
        bool setInEdge,
        bool setInChainlink,
        bool manualOverrideAllowed
    ) external onlyOwner {
        if (asset == address(0)) revert InvalidAddress();
        if (!setInEdge && !setInChainlink) revert NoOracleSelected();
        if (price == 0) revert ZeroPrice();

        // Validate against Edge and Chainlink feeds if override is not allowed
        if (!manualOverrideAllowed) {
            validateFeedPriceDeviation(asset, price);
        }

        // Set price in Edge oracle
        if (setInEdge) {
            edgeOracle.setDirectPrice(asset, price);
        }

        // Set price in Chainlink oracle
        if (setInChainlink) {
            chainlinkOracle.setDirectPrice(asset, price);
        }

        emit DirectPriceSet(asset, price, setInEdge, setInChainlink);
    }

    /**
     * @notice Sets the underlying price for a QiToken in both underlying oracles
     * @dev Only callable by owner, propagates the price to both oracles
     * @param qiToken The QiToken to set the underlying price for
     * @param underlyingPriceMantissa The price to set (scaled to 18 decimals)
     * @param setInEdge Whether to set the price in the Edge oracle
     * @param setInChainlink Whether to set the price in the Chainlink oracle
     * @param manualOverrideAllowed If true, skips feed price deviation validation
     */
    function setUnderlyingPrice(
        IQiToken qiToken,
        uint256 underlyingPriceMantissa,
        bool setInEdge,
        bool setInChainlink,
        bool manualOverrideAllowed
    ) external onlyOwner {
        if (address(qiToken) == address(0)) revert InvalidAddress();
        if (!setInEdge && !setInChainlink) revert NoOracleSelected();
        if (underlyingPriceMantissa == 0) revert ZeroPrice();

        // Get the underlying asset address
        address underlying;
        if (address(qiToken) == qiAvaxAddress) {
            underlying = AVAX_UNDERLYING;
        } else {
            underlying = address(IQiErc20(address(qiToken)).underlying());
        }

        // Validate against Edge and Chainlink feeds if override is not allowed
        if (!manualOverrideAllowed) {
            validateFeedPriceDeviation(underlying, underlyingPriceMantissa);
        }

        // Set price in Edge oracle
        if (setInEdge) {
            edgeOracle.setUnderlyingPrice(qiToken, underlyingPriceMantissa);
        }

        // Set price in Chainlink oracle
        if (setInChainlink) {
            chainlinkOracle.setUnderlyingPrice(qiToken, underlyingPriceMantissa);
        }

        emit UnderlyingPriceSet(address(qiToken), underlyingPriceMantissa, setInEdge, setInChainlink);
    }

    // ============ Internal Functions ============

    /**
     * @notice Validates a manual price against oracle feed prices to prevent large deviations
     * @param asset The asset address to check feed prices for
     * @param manualPrice The manual price to validate against feed prices
     * @dev Reverts with ManualPriceDeviationError if deviation is too large.
     * @dev Reverts with NoValidFeedForValidation if no valid feed price is found for comparison.
     */
    function validateFeedPriceDeviation(address asset, uint256 manualPrice) internal view {
        bool hasValidFeedForValidation = false;

        // Check Edge feed if available
        IAggregatorV2V3Interface edgeFeed = edgeOracle.getFeed(asset);
        if (address(edgeFeed) != address(0)) {
            uint256 feedPrice = getFeedPrice(edgeFeed);
            if (feedPrice > 0) {
                hasValidFeedForValidation = true;
                // Check for significant deviation (10x or 0.1x difference)
                if (manualPrice > feedPrice * 10 || feedPrice > manualPrice * 10) {
                    revert ManualPriceDeviationError(asset, manualPrice, feedPrice);
                }
            }
        }

        // Check Chainlink feed if available
        IAggregatorV2V3Interface chainlinkFeed = chainlinkOracle.getFeed(asset);
        if (address(chainlinkFeed) != address(0)) {
            uint256 feedPrice = getFeedPrice(chainlinkFeed);
            if (feedPrice > 0) {
                hasValidFeedForValidation = true;
                // Check for significant deviation (10x or 0.1x difference)
                if (manualPrice > feedPrice * 10 || feedPrice > manualPrice * 10) {
                    revert ManualPriceDeviationError(asset, manualPrice, feedPrice);
                }
            }
        }

        // If this function is called (implying manualOverrideAllowed was false in the caller)
        // and no feed provided a valid price for validation, then revert.
        if (!hasValidFeedForValidation) {
            revert NoValidFeedForValidation(asset);
        }
    }

    /**
     * @notice Safely gets a normalized price from a feed
     * @param feed The price feed to read from
     * @return price The normalized price (18 decimals) or 0 if an error occurs
     */
    function getFeedPrice(IAggregatorV2V3Interface feed) internal view returns (uint256 price) {
        try feed.latestRoundData() returns (uint80, int256 answer, uint256, uint256, uint80) {
            if (answer > 0) {
                uint256 feedDecimals = feed.decimals();
                price = normalizePrice(uint256(answer), uint8(feedDecimals));
            }
        } catch {
            // Return 0 on any error
            price = 0;
        }
        return price;
    }

    /**
     * @notice Checks if a price is stale based on timestamp
     * @param timestamp The timestamp when the price was last updated
     * @param stalenessThreshold The threshold in seconds
     * @return Whether the price is stale
     */
    function isPriceStale(uint256 timestamp, uint256 stalenessThreshold) internal view returns (bool) {
        return block.timestamp > timestamp + stalenessThreshold;
    }

    /**
     * @notice Normalizes price to 18 decimals
     * @param price The price to normalize
     * @param currentDecimals The current decimal places of the price
     * @return The price normalized to 18 decimals
     */
    function normalizePrice(uint256 price, uint8 currentDecimals) internal pure returns (uint256) {
        if (currentDecimals == 18) {
            return price;
        } else if (currentDecimals < 18) {
            return price * (10 ** (18 - currentDecimals));
        } else {
            return price / (10 ** (currentDecimals - 18));
        }
    }

    /**
     * @notice Calculates percentage deviation between two prices
     * @dev Formula: |price1 - price2| / max(price1, price2) * 100%
     *      This ensures we get the relative difference as a percentage of the larger price
     *      which gives a more conservative deviation estimate
     * @param price1 First price (scaled to 18 decimals)
     * @param price2 Second price (scaled to 18 decimals)
     * @return The deviation as a percentage in 18 decimals (e.g., 0.05e18 = 5%)
     */
    function calculateDeviation(uint256 price1, uint256 price2) internal pure returns (uint256) {
        // Return maximum deviation if either price is zero
        if (price1 == 0 || price2 == 0) {
            return type(uint256).max;
        }

        // Calculate absolute difference
        uint256 priceDiff = price1 > price2 ? price1 - price2 : price2 - price1;

        // Use the larger price as denominator for a more conservative estimate
        uint256 largerPrice = price1 > price2 ? price1 : price2;

        // Maintain higher precision throughout the calculation
        return (priceDiff * 1e36) / largerPrice / 1e18;
    }

    /**
     * @notice Gets price from an oracle and checks if it's fresh
     * @param qiToken The QiToken to get price for
     * @param isEdge Whether to use Edge oracle (true) or Chainlink oracle (false)
     * @param stalenessThreshold Staleness threshold in seconds
     * @return price The price from the oracle
     * @return timestamp The timestamp when the price was last updated
     * @return isStale Whether the price is considered stale
     */
    function getOraclePriceWithFreshness(IQiToken qiToken, bool isEdge, uint256 stalenessThreshold)
        internal
        view
        returns (uint256 price, uint256 timestamp, bool isStale)
    {
        if (isEdge) {
            // Get from Edge oracle
            (price, timestamp) = edgeOracle.getUnderlyingPriceWithTimestamp(qiToken);
            if (price == 0) revert EdgeOracleZeroPrice();
        } else {
            // Get from Chainlink oracle
            (price, timestamp) = chainlinkOracle.getUnderlyingPriceWithTimestamp(qiToken);
            if (price == 0) revert ChainlinkOracleZeroPrice();
        }

        // Check for staleness
        isStale = isPriceStale(timestamp, stalenessThreshold);

        return (price, timestamp, isStale);
    }
}
