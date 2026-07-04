//SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

/**
 * @title ILandRegistry
 * @dev Interface for LandRegistry contract, defining core land management functions
 */
interface ILandRegistry {
    /**
     * @dev Mints a new land token at specified coordinates
     * @param user Address to receive the token
     * @param x X-coordinate of the land
     * @param y Y-coordinate of the land
     */
    function mint(
        address user,
        int16 x,
        int16 y
    ) external;

    /**
     * @dev Checks if a token exists by tokenId
     * @param tokenId The token identifier
     * @return bool indicating if the token exists
     */
    function exists(uint256 tokenId) external view returns (bool);

    /**
     * @dev Checks if a token exists at specific coordinates
     * @param x X-coordinate of the land
     * @param y Y-coordinate of the land
     * @return bool indicating if the token exists
     */
    function exists(int16 x, int16 y) external view returns (bool);
}