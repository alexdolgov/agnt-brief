// SPDX-License-Identifier: MIT
// from:
// https://github.com/smartcontractkit/chainlink-evm/blob/aaba7b0f81f98819421070350388d0b3e9907b12/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol
pragma solidity ^0.8.0;

// solhint-disable-next-line interface-starts-with-i
interface AggregatorV3Interface {
    function decimals() external view returns (uint8);

    function description() external view returns (string memory);

    function version() external view returns (uint256);

    function getRoundData(
        uint80 _roundId
    )
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}
