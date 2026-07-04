// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title IPendleMarket
 * @notice Interface for Pendle Market contracts
 */
interface IPendleMarket {
    /**
     * @notice Get the PT token address for this market
     * @return The PT token address
     */
    function PT() external view returns (address);

    /**
     * @notice Get the SY token address for this market
     * @return The SY token address
     */
    function SY() external view returns (address);

    /**
     * @notice Get the YT token address for this market
     * @return The YT token address
     */
    function YT() external view returns (address);

    /**
     * @notice Get market expiry timestamp
     * @return The expiry timestamp
     */
    function expiry() external view returns (uint256);

    /**
     * @notice Check if market is expired
     * @return True if expired, false otherwise
     */
    function isExpired() external view returns (bool);

    function readTokens() external view returns (
        address SY,
        address PT,
        address YT
    );
}
