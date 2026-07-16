// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title IPendleOracle
 * @notice Interface for Pendle Oracle to get PT token prices
 */
interface IPendleOracle {
    /**
     * @notice Get the TWAP price of PT token in terms of underlying asset
     * @param market The Pendle market address
     * @param twapDuration The TWAP duration in seconds
     * @return price The price scaled to 18 decimals
     */
    function getPtToAssetRate(
        address market,
        uint32 twapDuration
    ) external view returns (uint256 price);
}
