// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.13;

import "../api3/interfaces/IAggregatorV3Like.sol";

/// @title UniBTCAdapter
/// @notice UniBTCAdapter is an adapter for two Chainlink price feeds (uniBTC/BTC and ETH/BTC) that provides 
/// uniBTC/ETH price.
/// @custom:security-contact security@silo.finance
contract UniBTCAdapter is IAggregatorV3Like {
    /// @dev uniBTC/BTC Chainlink price feed
    IAggregatorV3Like public constant UNIBTC_BTC_FEED = IAggregatorV3Like(0x089730f866C6D478398ce1632C7C38677c475EC1);

    /// @dev ETH/BTC Chainlink price feed
    IAggregatorV3Like public constant ETH_BTC_FEED = IAggregatorV3Like(0xe4b9bcD7d0AA917f19019165EB89BdbbF36d2cBe);

    /// @dev ETH/BTC heartbeat
    uint256 public constant ETH_BTC_HEARTBEAT = 3600 + 60 * 10 + 1;

    /// @dev Cache ETH / BTC decimals for price calculations
    // solhint-disable-next-line var-name-mixedcase
    uint8 public immutable ETH_BTC_FEED_DECIMALS;

    /// @dev Revert if ETH/BTC price is old. This contract does not revert if the price of uniBTC/BTC feed is old,
    /// because the timestamp of uniBTC/BTC update is returned in latestRoundData(). The revert will be executed
    /// on a ChainlinkV3PriceProvider level.
    error UnderlyingFeedPriceIsOld();

    constructor() {
        ETH_BTC_FEED_DECIMALS = ETH_BTC_FEED.decimals();
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
        (, int256 ethBtcAnswer,, uint256 ethBtcUpdatedAt,) = ETH_BTC_FEED.latestRoundData();

        if (block.timestamp - ethBtcUpdatedAt > ETH_BTC_HEARTBEAT) {
            revert UnderlyingFeedPriceIsOld();
        }

        // 1. 10 ** ETH_BTC_FEED.decimals() results in "one" with ETH_BTC_FEED.decimals() = 8
        //
        // 2. uniBtcBtcAnswer * int256((10 ** ETH_BTC_FEED.decimals())) results in uniBtcBtcAnswer with 
        // UNIBTC_BTC_FEED.decimals() + ETH_BTC_FEED.decimals() = 18 + 8 = 26 decimals. int256 is safe for storing
        // <=10**76. uniBtcBtcAnswer ~ 1 with decimals. This multiplication is safe.
        //
        // 3. (2) / answer results in division by ETH_BTC_FEED.latestRoundData() (~0.03714344 with 8 decimals).
        // Numerator is ~1 with 26 decimals, denumerator is <1 with 8 decimals. Relative precision error
        // is ~ 10^(-18), which is similar to using regular 18 precision decimals. 
        //
        // Result is uniBTC / BTC * BTC / ETH = uniBTC / ETH with UNIBTC_BTC_FEED.decimals() = 18.
        (roundId, answer, startedAt, updatedAt, answeredInRound) = UNIBTC_BTC_FEED.latestRoundData();
        answer = answer * int256((10 ** ETH_BTC_FEED_DECIMALS)) / ethBtcAnswer;
    }

    /// @inheritdoc IAggregatorV3Like
    function decimals() external view virtual override returns (uint8) {
        return UNIBTC_BTC_FEED.decimals();
    }
}
