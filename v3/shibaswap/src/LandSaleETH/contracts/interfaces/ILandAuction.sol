// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

/**
 * @title ILandAuction
 * @dev Interface for LandAuction contract, exposing only getCurrentBid functionality
 */
interface ILandAuction {
    /**
     * @dev Returns the current bid for given coordinates
     * @param x X-coordinate of the land
     * @param y Y-coordinate of the land
     * @return amount The bid amount
     * @return bidder The address of the bidder
     */
    function getCurrentBid(
        int16 x,
        int16 y
    ) external view returns (uint256 amount, address bidder);

    /**
     * @dev Returns the category for given coordinates
     */
    function getCategory(int16 x, int16 y) external view returns (int8);

    /**
     * @dev Returns the reserve price for given coordinates
     */
    function getReservePrice(int16 x, int16 y) external view returns (uint256);
}
