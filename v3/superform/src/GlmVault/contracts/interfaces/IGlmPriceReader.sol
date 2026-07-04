// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

interface IGlmPriceReader {
    event SetGmxAddresses(address reader, address dataStore);
    event SetGlmAddresses(address glmManager, address glmVault);
    event SetChainlinkOracle(address token, address oracle);
    event SetArbitrumSequencer(address arbitrumSequencer);

    struct GMXAddresses {
        address reader;
        address dataStore;
    }

    function getGlmPrice() external view returns (uint256);

    function getTokenPrice(address token) external view returns (uint256);

    function getMarketTokenPrice(address marketToken) external view returns (uint256);

    function calculateTokenConverstion(
        address inputGmToken,
        address outputGmToken,
        uint256 inputAmount
    ) external view returns (uint256 outputAmount);
}
