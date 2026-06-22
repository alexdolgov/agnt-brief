// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.23;

import { IBeefy } from "../Interfaces/IPool.sol";
import { ChainlinkAggregatorV3Interface } from "../Interfaces/ChainlinkAggregatorV3Interface.sol";

contract OracleBeefyWETH is ChainlinkAggregatorV3Interface {
    ChainlinkAggregatorV3Interface public immutable oracle;
    address public immutable pool;

    uint8 public immutable decimals = 8;

    constructor(address _oracle, address _pool) {
        oracle = ChainlinkAggregatorV3Interface(_oracle);
        pool = _pool;
    }

    function latestRoundData()
        external
        view
        returns (uint80 _roundId, int256 _answer, uint256, uint256 _updatedAt, uint80)
    {
        (uint80 roundId, int256 answer,, uint256 updatedAt,) = oracle.latestRoundData();

        if (roundId != 0 && answer != 0 && updatedAt != 0) {
            uint256 balanceOfUnderlying = IBeefy(pool).balance();
            uint256 supply = IBeefy(pool).totalSupply();

            uint256 rate = balanceOfUnderlying * 1 ether / supply;
            uint256 endPrice = rate * uint256(answer) / 1 ether;

            return (roundId, int80(uint80(endPrice)), uint80(0), updatedAt, uint80(0));
        } else {
            return (0, 0, 0, 0, 0);
        }
    }
}
