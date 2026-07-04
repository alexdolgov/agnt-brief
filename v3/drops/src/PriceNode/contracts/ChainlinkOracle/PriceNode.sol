// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "./PriceAggregator.sol";

contract PriceNode {
    address public owner;
    PriceAggregator[] public aggregators;

    constructor() public {
        owner = msg.sender;
    }

    function register(
        uint8 decimals,
        string memory description,
        int256 initialAnswer
    ) external {
        require(msg.sender == owner);
        PriceAggregator aggregator = new PriceAggregator(
            decimals,
            description,
            initialAnswer
        );
        aggregators.push(aggregator);
    }

    function setAnswers(
        uint256[] calldata indexes,
        int256[] calldata newAnswers
    ) external {
        require(msg.sender == owner);
        for (uint256 i = 0; i < indexes.length; i++) {
            PriceAggregator aggregator = aggregators[i];
            aggregator.setLatestAnswer(newAnswers[i]);
        }
    }

    function setOwner(address newOwner) external {
        require(msg.sender == owner);
        owner = newOwner;
    }
}
