// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '../libraries/DataTypes.sol';
import '@openzeppelin/contracts/token/ERC721/IERC721.sol';
import '@openzeppelin/contracts/token/ERC721/extensions/IERC721Enumerable.sol';

/**
 * @title Deposit NFT Interface
 * @author ZeUSD Protocol Team
 * @notice Interface for managing deposit NFTs in the ZeUSD protocol
 * @dev Extends ERC721 functionality with deposit-specific features
 */
interface IZeUSD_CDP is IERC721Enumerable {
    /**
     * @notice Gets all token IDs owned by a specific address
     * @dev Used for retrieving user's deposit positions
     * @param owner Address to query
     * @return Array of token IDs owned by the address
     * @custom:security No access control required, public view
     */
    function getTokensByOwner(address owner) external view returns (uint256[] memory);

    /**
     * @notice Gets deposit details for a specific token ID
     * @dev Retrieves the original deposit metadata associated with the NFT
     * @param tokenId ID of the token to query
     * @return metadata Deposit metadata for NFT
     * @custom:security Token must exist
     */
    function getDepositDetails(
        uint256 tokenId
    ) external view returns (DataTypes.OldDepositMetadata memory metadata);

    /**
     * @notice Mints a new NFT with deposit details
     * @dev Creates a new deposit NFT and stores associated metadata
     * @param to Address to mint the NFT to
     * @param metadata Deposit metadata to associate with the NFT
     * @return tokenId ID of the newly minted NFT
     * @custom:security Only callable by router
     * @custom:emits Transfer
     */
    function mint(
        address to,
        DataTypes.DepositMetadata calldata metadata
    ) external returns (uint256);

    /**
     * @notice Burns an NFT
     * @dev Permanently removes an NFT and its associated metadata
     * @param tokenId ID of the token to burn
     * @custom:security Only callable by authorized contracts
     * @custom:emits Transfer to zero address
     */
    function burn(uint256 tokenId) external;

    /**
     * @notice Gets the next token ID without incrementing
     * @return The next token ID that will be used
     */
    function getNextTokenId() external view returns (uint256);
}
