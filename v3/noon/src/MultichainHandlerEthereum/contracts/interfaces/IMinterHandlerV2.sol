// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./IMinterHandler.sol";

/**
 * @title IMinterHandlerV2
 * @notice Interface for MinterHandlerV2 with direct mint functionality
 */
interface IMinterHandlerV2 is IMinterHandler {
    // ============ Events ============
    
    /**
     * @notice Emitted when a direct mint is executed
     * @param user The user who minted
     * @param collateralAmount The amount of collateral deposited
     * @param usnAmount The amount of USN minted
     * @param collateralAddress The collateral token address
     * @param priceUsed The oracle price used for calculation (8 decimals)
     */
    event DirectMint(
        address indexed user,
        uint256 collateralAmount,
        uint256 usnAmount,
        address indexed collateralAddress,
        uint256 priceUsed
    );
    
    /**
     * @notice Emitted when a price feed is set for a collateral
     * @param collateral The collateral token address
     * @param priceFeed The Chainlink price feed address
     */
    event PriceFeedSet(address indexed collateral, address indexed priceFeed);
    
    /**
     * @notice Emitted when the price threshold is updated
     * @param newThresholdBps The new threshold in basis points
     */
    event PriceThresholdUpdated(uint256 newThresholdBps);
    
    /**
     * @notice Emitted when the direct mint daily limit is updated
     * @param newLimit The new daily limit
     */
    event DirectMintLimitUpdated(uint256 newLimit);
    
    /**
     * @notice Emitted when the oracle staleness threshold is updated
     * @param newThreshold The new staleness threshold in seconds
     */
    event OracleStalenessThresholdUpdated(uint256 newThreshold);
    
    // ============ Errors ============
    
    /**
     * @notice Thrown when price feed is not set for a collateral
     * @param collateral The collateral address
     */
    error PriceFeedNotSet(address collateral);
    
    /**
     * @notice Thrown when oracle price is stale
     * @param updatedAt The timestamp when price was last updated
     * @param currentTime The current block timestamp
     */
    error StalePrice(uint256 updatedAt, uint256 currentTime);
    
    /**
     * @notice Thrown when oracle returns invalid price
     * @param price The invalid price value
     */
    error InvalidPrice(int256 price);
    
    /**
     * @notice Thrown when collateral price is below acceptable threshold
     * @param price The current price (8 decimals)
     * @param lowerBound The minimum acceptable price
     */
    error PriceBelowThreshold(uint256 price, uint256 lowerBound);
    
    /**
     * @notice Thrown when direct mint daily limit is exceeded
     * @param limit The daily limit
     * @param requested The requested amount
     */
    error DirectMintLimitExceeded(uint256 limit, uint256 requested);
    
    // ============ External Functions ============
    
    /**
     * @notice Direct mint function - allows whitelisted users to mint USN directly
     * @param collateralAddress The collateral token address (USDC, USDT, etc.)
     * @param collateralAmount The amount of collateral to deposit
     * @param minUsnAmount Minimum USN amount to receive (slippage protection)
     */
    function directMint(
        address collateralAddress,
        uint256 collateralAmount,
        uint256 minUsnAmount
    ) external;
    
    /**
     * @notice Preview how much USN would be minted for a given collateral amount
     * @param collateralAddress The collateral token address
     * @param collateralAmount The amount of collateral
     * @return usnAmount The amount of USN that would be minted
     * @return priceUsed The price used for calculation (8 decimals)
     */
    function previewDirectMint(
        address collateralAddress,
        uint256 collateralAmount
    ) external view returns (uint256 usnAmount, uint256 priceUsed);
    
    /**
     * @notice Set price feed for a collateral token
     * @param collateral The collateral token address
     * @param priceFeed The Chainlink price feed address (collateral/USD)
     */
    function setPriceFeed(address collateral, address priceFeed) external;
    
    /**
     * @notice Set price threshold in basis points
     * @param thresholdBps Threshold in bps (100 = 1%)
     */
    function setPriceThreshold(uint256 thresholdBps) external;
    
    /**
     * @notice Set daily limit for direct mints
     * @param limit Daily limit in USN (18 decimals)
     */
    function setDirectMintLimitPerDay(uint256 limit) external;
    
    /**
     * @notice Set oracle staleness threshold
     * @param threshold Staleness threshold in seconds
     */
    function setOracleStalenessThreshold(uint256 threshold) external;
    
    // ============ View Functions ============
    
    /**
     * @notice Get the price feed for a collateral
     * @param collateral The collateral address
     * @return The price feed address
     */
    function priceFeeds(address collateral) external view returns (address);
    
    /**
     * @notice Get the price threshold in basis points
     * @return The threshold in bps
     */
    function priceThresholdBps() external view returns (uint256);
    
    /**
     * @notice Get the daily direct mint limit
     * @return The daily limit
     */
    function directMintLimitPerDay() external view returns (uint256);
    
    /**
     * @notice Get the current day's direct mint amount
     * @return The amount minted today
     */
    function currentDayDirectMintAmount() external view returns (uint256);
    
    /**
     * @notice Get the oracle staleness threshold
     * @return The staleness threshold in seconds
     */
    function oracleStalenessThreshold() external view returns (uint256);
}

