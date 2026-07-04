// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/**
 * @title ZeUSD_CDP Error Interface
 * @author ZeUSD Protocol Team
 * @notice Contains all error definitions for the ZeUSD_CDP contract
 * @dev Centralizes error definitions for better organization
 * @custom:security-contact tech@zoth.io
 */
interface IZeDPErrors {
    /**
     * @notice Error thrown for invalid address inputs
     * @param addr The invalid address
     */
    error ZeDP_InvalidAddress(address addr);
    /**
     * @notice Error thrown when token doesn't exist
     * @param tokenId ID of non-existent token
     */
    error ZeDP_TokenNotExists(uint256 tokenId);
}
