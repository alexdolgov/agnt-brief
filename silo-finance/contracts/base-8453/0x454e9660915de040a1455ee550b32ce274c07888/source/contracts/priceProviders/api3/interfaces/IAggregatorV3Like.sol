// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.13;
interface IAggregatorV3Like {
    /// @dev Decimals used for the price value. Always equal to API3_DECIMALS or CHAINLINK_USD_FEEDS_DECIMALS.
    function decimals() external view returns (uint8);

    /// @dev Get the price value and update timestamp.
    /// @return roundId always equal to 1 for compatibility.
    /// @return answer the price value in decimals.
    /// @return startedAt the timestamp of price update.
    /// @return updatedAt the timestamp of price update.
    /// @return answeredInRound always equal to 1 for compatibility.
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
