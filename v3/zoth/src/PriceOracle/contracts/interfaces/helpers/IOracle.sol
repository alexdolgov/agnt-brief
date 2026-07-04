// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title Oracle Interface
 * @author ZeUSD Protocol Team
 * @notice Interface for price oracles
 * @dev Defines the standard Chainlink oracle interface for price data
 */
interface IOracle {
    /**
     * @notice Gets latest round data from price oracle
     * @return roundId The round ID
     * @return answer The price answer in the oracle's native precision (typically 8 decimals)
     * @return startedAt The timestamp when the round started
     * @return updatedAt The timestamp when the round was last updated
     * @return answeredInRound The round in which the answer was computed
     */
    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );
}
