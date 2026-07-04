// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

/**
 * @title ISyntheticToken
 * @notice Interface for SyntheticToken functions used by fractionalization contracts
 */
interface ISyntheticToken {
    /**
     * @notice Get the owner of a token, even if it has been burned.
     * @dev If the token exists, returns the current owner via ownerOf().
     *      If the token has been burned, returns the last owner stored before burning.
     *      Used to allow users to claim staked tokens after their subdomain NFT is revoked and burned.
     * @param tokenId The ID of the token.
     * @return The address of the current owner if token exists, or last owner if burned.
     */
    function lastOwnerOf(uint256 tokenId) external view returns (address);

    /**
     * @notice Check if a subdomain is operational (not revoked or expired)
     * @param parentTokenId The parent domain token ID
     * @param label The subdomain label
     * @return True if operational, false otherwise
     */
    function isSubdomainOperational(
        uint256 parentTokenId,
        string calldata label
    ) external view returns (bool);
}
