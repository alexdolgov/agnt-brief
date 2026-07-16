// SPDX-License-Identifier: Copyright 2022 Shipyard Software, Inc.
pragma solidity >=0.8.4;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";

library SafeAggregatorInterface {
    using SafeCast for int256;

    // Returns the latest price from the oracle as a uint256, reverting if invalid or older than minimumTime
    function safeUnsignedLatest(address oracle, uint256 minimumTime) public view returns (uint256) {
        (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound) = AggregatorV3Interface(oracle).latestRoundData();
        require((roundId==answeredInRound) && (updatedAt+minimumTime > block.timestamp), "Oracle out of date");
        return answer.toUint256();
    }

    // Returns the uint256 price at a certain round from the oracle, and the timestamp of that round
    // Reverts if invalid
    function safeUnsignedAndTimestampAtRound(address oracle, uint80 roundId) public view returns (uint256,uint256) {
        (uint80 theRoundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound) = AggregatorV3Interface(oracle).getRoundData(roundId);
        require(theRoundId==answeredInRound, "Oracle reading invalid");
        return (answer.toUint256(), updatedAt);
    }

    function latestTimestamp(address oracle) internal view returns (uint256) {
        (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound) = AggregatorV3Interface(oracle).latestRoundData();
        return updatedAt;
    }

}