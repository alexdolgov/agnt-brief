// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

import {AggregatorV3Interface} from "chainlink/shared/interfaces/AggregatorV3Interface.sol";

/// @title IApyxCollateralRatioOracle
/// @notice Interface for the Apyx collateralization ratio oracle
interface IApyxCollateralRatioOracle is AggregatorV3Interface {
    event RoundUpdated(uint80 indexed roundId, int256 answer, uint256 updatedAt);

    /// @notice Returns the fixed ring buffer capacity set at deploy time
    function capacity() external view returns (uint80);

    /// @notice Post a new collateralization ratio value, creating a new round
    /// @param answer The collateralization ratio scaled to 8 decimals
    function pushRound(int256 answer) external;
}
