// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


interface IProxy {
    function read() external view returns (int224 value, uint32 timestamp);
}


interface AggregatorInterface {
    function decimals() external view returns (uint8);
    function latestAnswer() external view returns (int256);
}

contract Api3Oracle {
    AggregatorInterface immutable ETH_TO_USD_FEED = AggregatorInterface(0x3c6Cd9Cc7c7a4c2Cf5a82734CD249D7D593354dA);
    address marketApiProxy = address(0xE9c73f025039E2a00b9988eC48C874e202933E80);
    error InvalidOraclePrice();

    function latestAnswer() external view returns (int256 uniEthToUsdPrice) {
        int256 ethToUsd = ETH_TO_USD_FEED.latestAnswer();
        if (ethToUsd < 0) revert InvalidOraclePrice();
        (int224 value, ) = IProxy(marketApiProxy).read();
        uniEthToUsdPrice = (ethToUsd * int256(value))/1e18;
    }
}