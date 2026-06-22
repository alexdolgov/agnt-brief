// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.25;

import "forge-std/console.sol";

/**
 * @author René Hochmuth
 */

/**
 * @dev PriceFeed contract for token token.
 * Takes chainLink oracle value of token/USD and davides it
 * with the corresponding ETH value of USD taken by chainLink.
 */

import "../InterfaceHub/IPriceFeed.sol";

contract UsdIntoEthOracle {

    constructor(
        IPriceFeed _ethUsdFeed,
        IPriceFeed _tokenUsdFeed
    )
    {
        ETH_USD_FEED = _ethUsdFeed;
        TOKEN_USD_FEED = _tokenUsdFeed;

        POW_ETH_USD = 10 ** ETH_USD_FEED.decimals();
        POW_TOKEN_USD = 10 ** TOKEN_USD_FEED.decimals();
    }

    // Pricefeed for ETH in USD.
    IPriceFeed public immutable ETH_USD_FEED;

    // Pricefeed for token in USD.
    IPriceFeed public immutable TOKEN_USD_FEED;

    // 10 ** Decimals of the feeds for EthUsd.
    uint256 internal immutable POW_ETH_USD;

    // 10 ** Decimals of the feeds for token.
    uint256 internal immutable POW_TOKEN_USD;

    // Default decimals for the feed.
    uint8 internal constant FEED_DECIMALS = 18;

    // Precision factor for computations.
    uint256 internal constant PRECISION_FACTOR_E18 = 1E18;

    /**
     * @dev Read function returning latest ETH value for token.
     * Uses answer from token/Usd chainLink priceFeed then divides it
     * and combines it with the result from ETH/USD feed.
     */
    function latestAnswer()
        public
        view
        returns (uint256)
    {
        (
            ,
            int256 answerTokenUsd,
            ,
            ,
        ) = TOKEN_USD_FEED.latestRoundData();

        (
            ,
            int256 answerEthUsd,
            ,
            ,
        ) = ETH_USD_FEED.latestRoundData();

        return uint256(answerTokenUsd)
            * 10 ** FEED_DECIMALS
            / POW_TOKEN_USD
            * POW_ETH_USD
            / uint256(answerEthUsd);
    }

    /**
     * @dev Returns priceFeed decimals.
     */
    function decimals()
        external
        pure
        returns (uint8)
    {
        return FEED_DECIMALS;
    }

    /**
     * @dev Read function returning the latest round data
     * from stETH plus the latest USD value for WstETH.
     * Needed for calibrating the pricefeed in the
     * OracleHub. (see WiseOracleHub and heartbeat)
     */
    function latestRoundData()
        public
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        answer = int256(
            latestAnswer()
        );

        (
            roundId,
            ,
            startedAt,
            updatedAt,
            answeredInRound
        ) = TOKEN_USD_FEED.latestRoundData();
    }

    function getRoundData(
        uint80 _roundId
    )
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        (
            roundId,
            answer,
            startedAt,
            updatedAt,
            answeredInRound
        ) = TOKEN_USD_FEED.getRoundData(
            _roundId
        );
    }
}
