// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.23;

import { ChainlinkAggregatorV3Interface } from "../Interfaces/ChainlinkAggregatorV3Interface.sol";

contract OracleRETH is ChainlinkAggregatorV3Interface {
    ChainlinkAggregatorV3Interface public immutable eth_oracle;
    ChainlinkAggregatorV3Interface public immutable rate_oracle;

    uint8 public immutable decimals = 8;

    constructor(address _eth_oracle, address _rate_oracle) {
        eth_oracle = ChainlinkAggregatorV3Interface(_eth_oracle);
        rate_oracle = ChainlinkAggregatorV3Interface(_rate_oracle);
    }

    function latestRoundData()
        external
        view
        returns (uint80 _roundId, int256 _answer, uint256, uint256 _updatedAt, uint80)
    {
        (uint80 roundId_eth, int256 answer_eth,, uint256 updatedAt_eth,) =
            eth_oracle.latestRoundData();
        (uint80 roundId_rate, int256 answer_rate,, uint256 updatedAt_rate,) =
            rate_oracle.latestRoundData();

        if (
            roundId_eth != 0 && answer_eth != 0 && updatedAt_eth != 0 && roundId_rate != 0
                && answer_rate != 0 && updatedAt_rate != 0
        ) {
            uint256 correctedRate = uint256(answer_rate) / 10e10;
            uint256 endPrice = correctedRate * uint256(answer_eth) / (10 ** decimals);

            return (roundId_eth, int80(uint80(endPrice)), uint80(0), updatedAt_eth, uint80(0));
        } else {
            return (0, 0, 0, 0, 0);
        }
    }
}
