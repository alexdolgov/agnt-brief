// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.13;

import "../api3/interfaces/IAggregatorV3Like.sol";

/// @title LbtcAdapter 
/// @notice LbtcAdapter is an adapter for two price feed on Base (Redstone LBTC/BTC and Chainlink BTC/USD) that 
/// provides LBTC/USD price.
/// @custom:security-contact security@silo.finance
contract LbtcAdapter is IAggregatorV3Like {
    /// @dev Redstone LBTC/BTC price feed on Base
    IAggregatorV3Like public constant LBTC_BTC_FEED = IAggregatorV3Like(0x5C4c8d6f6Bf79B718F3e8399AaBdFEd01cB7e48f);

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

        (roundId, answer, startedAt, updatedAt, answeredInRound) = LBTC_BTC_FEED.latestRoundData();
        answer = answer * underlyingAnswer / int256(10 ** BTC_USD_DECIMALS);
    }

    /// @inheritdoc IAggregatorV3Like
    function decimals() external view virtual override returns (uint8) {
        return LBTC_BTC_FEED.decimals();
    }
}
