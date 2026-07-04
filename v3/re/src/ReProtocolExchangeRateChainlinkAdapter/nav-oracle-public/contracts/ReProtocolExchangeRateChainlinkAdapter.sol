// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import "./interfaces/MinimalAggregatorV3Interface.sol";
import "./interfaces/INAVDataProvider.sol";

/**
 * @title Re Protocol Exchange Rate Chainlink Adapter
 * @notice Adapts NAV data from NAVConsumer to Chainlink's AggregatorV3Interface format
 * @dev This contract acts as a bridge between Re Protocol's NAV system and Chainlink price feed consumers
 */
contract ReProtocolExchangeRateChainlinkAdapter is MinimalAggregatorV3Interface {
    /// @notice The NAV data provider contract
    INAVDataProvider public immutable navDataProvider;
    
    /// @notice Number of decimals for the price feed (matches NAVConsumer)
    uint8 public constant override decimals = 18;
    
    /// @notice Description of the price feed
    string public description;

    /** 
     * @notice Constructor initializes the adapter with NAV data provider address
     * @param _navDataProvider Address of the contract implementing INAVDataProvider
     * @param _description Description of the price feed
     */
    constructor(address _navDataProvider, string memory _description) {
        require(_navDataProvider != address(0), "Zero address");
        navDataProvider = INAVDataProvider(_navDataProvider);
        description = _description;
    }
    
    /**
     * @notice Returns the latest NAV data in Chainlink format
     * @return roundId returns 0
     * @return answer The NAV value as int256 with 18 decimals
     * @return startedAt Timestamp when the round started (same as updatedAt)
     * @return updatedAt Timestamp when the round was updated
     * @return answeredInRound returns 0
     */
    function latestRoundData()
        external
        view
        override
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        // Get current NAV data from the data provider
        (uint256 nav, uint256 timestamp) = navDataProvider.getCurrentNAV();
        
        // Convert NAV to int256 for Chainlink compatibility
        answer = int256(nav);
        
        // For this implementation, all timestamps are the same
        startedAt = timestamp;
        updatedAt = timestamp;
        
        return (0, answer, startedAt, updatedAt, 0);
    }
}