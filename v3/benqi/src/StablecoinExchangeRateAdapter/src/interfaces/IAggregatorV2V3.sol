// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/**
 * @title AggregatorV2V3Interface
 * @notice Interface for price feed aggregators
 */
interface AggregatorV2V3Interface {
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
    function latestAnswer() external view returns (int256);
    function decimals() external view returns (uint8);
}
