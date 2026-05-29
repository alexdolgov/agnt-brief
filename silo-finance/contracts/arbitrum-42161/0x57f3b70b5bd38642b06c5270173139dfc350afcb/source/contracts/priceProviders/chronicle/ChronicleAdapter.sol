// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.13;

import "../api3/interfaces/IAggregatorV3Like.sol";

/// @title ChronicleAdapter
/// @notice ChronicleAdapter is a wrapper for Chronicle price feed that is compatible with ChainlinkV3PriceProvider.
/// @custom:security-contact security@silo.finance
contract ChronicleAdapter is IAggregatorV3Like {
    /// @dev constant for all Chronicle feeds
    uint8 public constant CHRONICLE_DECIMALS = 18;

    /// @dev used in the quote token feed in ChainlinkV3PriceProvider and all */USD feeds
    uint8 public constant CHAINLINK_USD_FEEDS_DECIMALS = 8;

    /// @dev Chronicle price feed address
    // solhint-disable-next-line var-name-mixedcase
    IAggregatorV3Like public immutable PRICE_FEED;

    /// @dev revert if the decimals is not equal to `CHRONICLE_DECIMALS` to prevent unexpected behaviour
    error InvalidChroniclePriceFeed();

    /// @param _priceFeed address of the Chronicle price feed.
    constructor(IAggregatorV3Like _priceFeed) {
        if (_priceFeed.decimals() != CHRONICLE_DECIMALS) {
            revert InvalidChroniclePriceFeed();
        }

        PRICE_FEED = _priceFeed;
    }
    
    /// @inheritdoc IAggregatorV3Like
    function latestRoundData() 
        external
        view
        virtual
        override
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        (roundId, answer, startedAt, updatedAt, answeredInRound) = PRICE_FEED.latestRoundData();
        
        answer = answer / int256(10 ** uint256((CHRONICLE_DECIMALS - CHAINLINK_USD_FEEDS_DECIMALS)));
    }

    /// @inheritdoc IAggregatorV3Like
    function decimals() external view virtual override returns (uint8) {
        return CHAINLINK_USD_FEEDS_DECIMALS;
    }
}
