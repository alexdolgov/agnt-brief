// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * @title ISOUMetadata
 * @notice Interface for SOUMetadata contract
 */
interface ISOUMetadata {
    /**
     * @notice Generates the tokenURI for a given SOU token
     * @param tokenId The ID of the token
     * @param currentPrincipalUSD Current principal in USD (8 decimals)
     * @param originalPrincipalUSD Original principal in USD (8 decimals)
     * @param totalPaidOutUSD Total amount paid out in USD (8 decimals)
     * @return The complete tokenURI as a base64-encoded data URI
     */
    function tokenURI(
        uint256 tokenId,
        uint256 currentPrincipalUSD,
        uint256 originalPrincipalUSD,
        uint256 totalPaidOutUSD
    ) external pure returns (string memory);
}
