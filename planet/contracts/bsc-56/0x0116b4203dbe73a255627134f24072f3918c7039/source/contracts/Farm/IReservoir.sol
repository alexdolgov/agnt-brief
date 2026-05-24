pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

/// @title Planet Reservoir Interface
interface IReservoir {
    /// @notice Drips accumulated rewards from the reservoir to the gammaFarm
    function drip() external;

    /// @notice Retrieves the farm drip rate per block
    /// @return dripRate The number of tokens being dripped per block in the farm
    function farmDripRate() external view returns(uint256 dripRate);

    /// @notice Retrieves the farm drip rate per block for Farm V2
    /// @return dripRate The number of tokens dripped per block in Farm V2
    function farmV2DripRate() external view returns(uint256 dripRate);

    /// @notice Distributes a specified amount of rewards from the reservoir to gammaFarm
    /// @param amount The amount of tokens to drip onto the farm
    function dripOnFarm(uint256 amount) external;


}