// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "./AggregatorV2V3Interface.sol";

contract PriceAggregator is AggregatorV2V3Interface {
    address public owner;
    int256 _answer;

    //
    // V3 Interface:
    //
    uint8 public override decimals;
    string public override description;
    uint256 public constant override version = 1;

    constructor(
        uint8 _decimals,
        string memory _description,
        int256 initialAnswer
    ) public {
        owner = msg.sender;
        _answer = initialAnswer;
        decimals = _decimals;
        description = _description;
    }

    function setLatestAnswer(int256 newAnswer) external {
        require(msg.sender == owner);
        _answer = newAnswer;
    }

    //
    // V2 Interface:
    //
    function latestAnswer() external view override returns (int256) {
        return _answer;
    }

    function latestTimestamp() external view override returns (uint256) {
        return block.timestamp;
    }

    function latestRound() external view override returns (uint256) {
        return 1;
    }

    function getAnswer(uint256) external view override returns (int256) {
        return _answer;
    }

    function getTimestamp(uint256) external view override returns (uint256) {
        return block.timestamp;
    }

    event AnswerUpdated(
        int256 indexed current,
        uint256 indexed roundId,
        uint256 timestamp
    );
    event NewRound(
        uint256 indexed roundId,
        address indexed startedBy,
        uint256 startedAt
    );

    // getRoundData and latestRoundData should both raise "No data present"
    // if they do not have data to report, instead of returning unset values
    // which could be misinterpreted as actual reported values.
    function getRoundData(uint80 _roundId)
        external
        view
        override
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        return (_roundId, _answer, block.timestamp, block.timestamp, 1);
    }

    function latestRoundData()
        external
        view
        override
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        return (1, _answer, block.timestamp, block.timestamp, 1);
    }
}
