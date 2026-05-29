// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.13;

import "@api3/contracts/api3-server-v1/proxies/interfaces/IDapiProxy.sol";
import "../../interfaces/IPriceProvidersRepository.sol";
import "./interfaces/IAggregatorV3Like.sol";

/// @title API3Adapter
/// @notice API3Adapter is a wrapper for API3 price feed that is compatible with ChainlinkV3PriceProvider.
/// @custom:security-contact security@silo.finance
contract API3Adapter is IAggregatorV3Like {
    /// @dev constant for all API3 feeds
    uint8 public constant API3_DECIMALS = 18;
    /// @dev used in the quote token feed in ChainlinkV3PriceProvider and all */USD feeds on Arbitrum
    uint8 public constant CHAINLINK_USD_FEEDS_DECIMALS = 8;

    // solhint-disable var-name-mixedcase
    /// @dev API3 price feed address
    IDapiProxy public immutable PRICE_FEED;
    /// @dev decimals will be equal to CHAINLINK_USD_FEEDS_DECIMALS if true, otherwise API3_DECIMALS
    bool public immutable CONVERT_DECIMALS;
    // solhint-enable var-name-mixedcase

    /// @dev revert if the ticker name hash does not match with the ticker hash from the API3 price feed
    error InvalidTickerHash();

    /// @param _priceFeed address of the API3 price feed.
    /// @param _tickerName market ticker, for example, "RDNT/USD". Used only for the price feed verification.
    /// @param _convertDecimals sets the adapter decimals equal to the quote aggregator decimals. Must be true if the
    /// price feed is ".../USD", otherwise ChainlinkV3PriceProvider will revert for *-USD feeds. *-ETH or exchange rate
    /// feeds must have false for this variable to avoid the precision error. 
    /// If _convertDecimals is true, the adapter will be deployed with 8 decimals.
    /// If _convertDecimals is false, the adapter will be deployed with 18 decimals.
    constructor(IDapiProxy _priceFeed, string memory _tickerName, bool _convertDecimals) {
        if (_priceFeed.dapiNameHash() != keccak256(abi.encodePacked(bytes32(abi.encodePacked(_tickerName))))) {
            revert InvalidTickerHash();
        }

        PRICE_FEED = _priceFeed;
        CONVERT_DECIMALS = _convertDecimals;
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
        (answer, updatedAt) = PRICE_FEED.read();
        
        // The following variables are set for compatibility with Chainlink price feeds. These variables are not
        // used by ChainlinkV3PriceProvider
        roundId = 1;
        answeredInRound = roundId;
        startedAt = updatedAt;

        if (CONVERT_DECIMALS) {
            answer = answer / int256(uint256(10) ** uint256((API3_DECIMALS - CHAINLINK_USD_FEEDS_DECIMALS)));
        }
    }

    /// @inheritdoc IAggregatorV3Like
    function decimals() external view virtual override returns (uint8) {
        return CONVERT_DECIMALS ? CHAINLINK_USD_FEEDS_DECIMALS : API3_DECIMALS;
    }
}
