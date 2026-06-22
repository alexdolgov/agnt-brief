// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@pythnetwork/pyth-sdk-solidity/IPyth.sol";
import "@pythnetwork/pyth-sdk-solidity/PythStructs.sol";

contract PythOracle {

    IPyth public pyth;
    bytes32 public priceFeedId;

    constructor(address _pyth, bytes memory _priceFeedId) {
        pyth = IPyth(_pyth);
        priceFeedId = bytes32(_priceFeedId);
    }

    /// function simulating Chainlink latestAnswer
    function latestAnswer()
    external
    view
    returns (int256) {
        PythStructs.Price memory price = getPrice(priceFeedId, 24 * 60 * 60);
        return int256(price.price);
    }

    /// function simulating Chainlink latestRoundData
    function latestRoundData()
    external
    view
    returns (
        uint80 roundId,
        int256 answer,
        uint256 startedAt,
        uint256 updatedAt,
        uint80 answeredInRound
    ) {
        PythStructs.Price memory price = getPrice(priceFeedId, 24 * 60 * 60);
        return (
            0,
            int256(price.price),
            price.publishTime,
            price.publishTime,
            1
        );
    }

    function getPrice(bytes32 id, uint256 age) public view returns (PythStructs.Price memory) {
        return pyth.getPriceNoOlderThan(id, age);
    }
}