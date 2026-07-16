// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface ISuperStateOracle {
    function decimals() external view returns (uint8);
    function latestRoundData() external view returns (uint80 roundId, uint256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}