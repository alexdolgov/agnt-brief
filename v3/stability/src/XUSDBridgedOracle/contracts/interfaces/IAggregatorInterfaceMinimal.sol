// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

interface IAggregatorInterfaceMinimal {
    /// @notice Latest USD price with 8 decimals
    function latestAnswer() external view returns (int256);

    /// @notice Latest round and price
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}
