pragma solidity ^0.8.20;

interface MinimalAggregatorV3Interface {
    /// @notice Returns the precision of the feed.
    function decimals() external view returns (uint8);

    /// @notice Returns Chainlink's `latestRoundData` return values.
    /// @notice Only the `answer` field is used by `MorphoChainlinkOracleV2`.
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

interface IERC4626 {
    function convertToAssets(uint shares) external view returns(uint);
}

contract FixedPriceFeed is MinimalAggregatorV3Interface {
    
    uint8 public constant decimals = 18;

    function latestRoundData() external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound) {
        return (0, 1e18, block.timestamp, block.timestamp, 0);
    }
}
