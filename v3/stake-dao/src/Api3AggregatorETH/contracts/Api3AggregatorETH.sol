// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interfaces/IAggregatorInterface.sol";
import "./interfaces/IApi3ProxyConsumer.sol";

contract Api3AggregatorETH {
    IAggregatorInterface immutable ETH_TO_USD_FEED;
    IApi3ProxyConsumer marketApiProxy;
    error InvalidOraclePrice();

    constructor(address _marketApiProxy, address _ethUsdConsumer) {
        ETH_TO_USD_FEED = IAggregatorInterface(_ethUsdConsumer);
        marketApiProxy = IApi3ProxyConsumer(_marketApiProxy);
    }

    function latestAnswer() external view returns (int256 uniEthToUsdPrice) {
        int256 ethToUsd = ETH_TO_USD_FEED.latestAnswer();
        if (ethToUsd < 0) revert InvalidOraclePrice();
        (int224 value, ) = marketApiProxy.read();
        uniEthToUsdPrice = (ethToUsd * int256(value)) / 1e18;
    }
}
