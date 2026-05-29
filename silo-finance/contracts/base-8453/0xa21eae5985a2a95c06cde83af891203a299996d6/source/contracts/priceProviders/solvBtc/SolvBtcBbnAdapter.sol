// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.13;

import "./SolvBtcAdapter.sol";

/// @title SolvBtcBBNAdapter 
/// @notice SolvBtcBBNAdapter is an adapter for three Chainlink price feed on Base 
/// (solvBTC.bbn/solvBTC, solvBTC/BTC and BTC/USD) that provides solvBTC.bbn/USD price.
/// @custom:security-contact security@silo.finance
contract SolvBtcBbnAdapter is SolvBtcAdapter {
    /// @dev solvBTC.bbn/solvBTC Chainlink price feed on Base
    IAggregatorV3Like public constant SOLVBTCBBN_SOLVBTC_FEED =
        IAggregatorV3Like(0x67283A47E470afbCcc4aC74ccC32401a81027691);

    /// @dev solvBTC.bbn/solvBTC heartbeat
    uint256 public constant SOLVBTCBBN_SOLVBTC_HEARTBEAT = 86400 + 60 * 10 + 1;

    /// @dev Cache solvBTC.bbn/solvBTC decimals for price calculations
    // solhint-disable-next-line var-name-mixedcase
    uint8 public immutable SOLVBTCBBN_SOLVBTC_DECIMALS;

    constructor() SolvBtcAdapter() {
        SOLVBTCBBN_SOLVBTC_DECIMALS = SOLVBTCBBN_SOLVBTC_FEED.decimals();
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
        (, int256 underlyingAnswer,, uint256 underlyingUpdatedAt,) = SOLVBTCBBN_SOLVBTC_FEED.latestRoundData();

        if (block.timestamp - underlyingUpdatedAt > SOLVBTCBBN_SOLVBTC_HEARTBEAT) {
            revert UnderlyingFeedPriceIsOld();
        }

        (roundId, answer, startedAt, updatedAt, answeredInRound) = super.latestRoundData();
        answer = answer * underlyingAnswer / int256(10 ** SOLVBTCBBN_SOLVBTC_DECIMALS);
    }
}
