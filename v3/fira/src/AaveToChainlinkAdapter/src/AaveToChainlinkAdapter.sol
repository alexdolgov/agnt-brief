// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ICLSynchronicityPriceAdapter {
    function latestAnswer() external view returns (int256);
    function decimals() external view returns (uint8);
}

/// @title AaveToChainlinkAdapter
/// @notice Wraps an Aave ICLSynchronicityPriceAdapter (latestAnswer-only) into the
///         AggregatorV3Interface expected by Morpho's ChainlinkOracleV2.
/// @dev Returns synthetic round metadata (roundId=0, startedAt=0, answeredInRound=0)
///      since the underlying Aave adapter does not track rounds.
contract AaveToChainlinkAdapter {
    /// @notice The underlying Aave price adapter.
    ICLSynchronicityPriceAdapter public immutable AAVE_ORACLE;

    /// @notice Price feed decimal precision, mirrored from the Aave oracle.
    uint8 public immutable decimals;

    /// @param _aaveOracle Address of the Aave ICLSynchronicityPriceAdapter to wrap.
    constructor(address _aaveOracle) {
        AAVE_ORACLE = ICLSynchronicityPriceAdapter(_aaveOracle);
        decimals = ICLSynchronicityPriceAdapter(_aaveOracle).decimals();
    }

    /// @notice Returns price data in the Chainlink AggregatorV3Interface format.
    /// @return roundId Always 0 (not tracked).
    /// @return answer The current price from the Aave oracle.
    /// @return startedAt Always 0 (not tracked).
    /// @return updatedAt The current block timestamp.
    /// @return answeredInRound Always 0 (not tracked).
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        return (0, AAVE_ORACLE.latestAnswer(), 0, block.timestamp, 0);
    }
}
