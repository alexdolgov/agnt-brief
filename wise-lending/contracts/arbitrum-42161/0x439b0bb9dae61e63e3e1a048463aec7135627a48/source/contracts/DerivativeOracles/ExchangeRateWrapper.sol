// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.25;

import "../InterfaceHub/IPendle.sol";

contract ExchangeRateWrapper {

    IPendleSy public immutable exchangeRateOrigin;
    uint8 public immutable decimals;

    constructor(
        address _pendleSy,
        uint8 _decimals
    )
    {
        exchangeRateOrigin = IPendleSy(
            _pendleSy
        );

        decimals = _decimals;
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
        answer = latestAnswer();

        return (
            _roundId,
            answer,
            0,
            0,
            0
        );
    }

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
        answer = latestAnswer();

        return (
            0,
            answer,
            0,
            0,
            0
        );
    }

    function latestAnswer()
        public
        view
        returns (int256)
    {
        return int256(
            exchangeRateOrigin.exchangeRate()
        );
    }
}
