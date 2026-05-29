// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.13;

import "../api3/interfaces/IAggregatorV3Like.sol";

/// @title SolvBtcAdapter 
/// @notice SolvBtcAdapter is an adapter for two Chainlink price feed on Base (solvBTC/BTC and BTC/USD) that provides 
/// solvBTC/USD price.
/// @custom:security-contact security@silo.finance
contract SolvBtcAdapter is IAggregatorV3Like {
    /// @dev solvBTC/BTC Chainlink price feed on Base
    IAggregatorV3Like public constant SOLVBTC_BTC_FEED = IAggregatorV3Like(0xB4a1a7f260C9FF7fEd6A6fbb9fe5a9acFa725DBf);

    /// @dev BTC/USD Chainlink price feed on Base
    IAggregatorV3Like public constant BTC_USD_FEED = IAggregatorV3Like(0x64c911996D3c6aC71f9b455B1E8E7266BcbD848F);

    /// @dev BTC/USD heartbeat
    uint256 public constant BTC_USD_HEARTBEAT = 1200 + 60 * 10 + 1;

    /// @dev Cache BTC/USD decimals for price calculations
    // solhint-disable-next-line var-name-mixedcase
    uint8 public immutable BTC_USD_DECIMALS;

    /// @dev Revert if BTC/USD price is old.
    error UnderlyingFeedPriceIsOld();

    constructor() {
        BTC_USD_DECIMALS = BTC_USD_FEED.decimals();
    }

    /// @inheritdoc IAggregatorV3Like
    function latestRoundData() 
        public
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
        (, int256 underlyingAnswer,, uint256 underlyingUpdatedAt,) = BTC_USD_FEED.latestRoundData();

        if (block.timestamp - underlyingUpdatedAt > BTC_USD_HEARTBEAT) {
            revert UnderlyingFeedPriceIsOld();
        }

        (roundId, answer, startedAt, updatedAt, answeredInRound) = SOLVBTC_BTC_FEED.latestRoundData();
        answer = answer * underlyingAnswer / int256(10 ** BTC_USD_DECIMALS);
    }

    /// @inheritdoc IAggregatorV3Like
    function decimals() external view virtual override returns (uint8) {
        return SOLVBTC_BTC_FEED.decimals();
    }
}
