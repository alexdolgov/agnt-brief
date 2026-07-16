// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '@openzeppelin/contracts/token/ERC721/extensions/IERC721Enumerable.sol';
import '@openzeppelin/contracts/access/manager/IAccessManager.sol';
import './errors/IZeDPErrors.sol';
import './events/IZeDPEvents.sol';

/**
 * @title Deposit NFT Interface
 * @author ZeUSD Protocol Team
 * @notice Interface for managing deposit NFTs in the ZeUSD protocol
 * @dev Extends ERC721 functionality with deposit-specific features
 */
interface IZeDP is IERC721Enumerable, IZeDPErrors, IZeDPEvents {
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
    ) external view returns (DataTypes.DepositMetadata memory metadata);

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

    /**
     * @notice Updates withdrawal status for a token
     * @param tokenId Token ID to update
     * @param status New withdrawal status
     * @return Success indicator
     */
    function updateWithdrawalStatus(uint256 tokenId, bool status) external returns (bool);

    /**
     * @notice Sets the base URI for token metadata
     * @param newBaseURI New base URI to set
     */
    function setBaseURI(string memory newBaseURI) external;

    /**
     * @notice Updates deposit metadata for a specific token
     * @param tokenId ID of the token to update
     * @param params Parameters for updating deposit metadata
     */
    function updateDepositMetadata(
        uint256 tokenId,
        DataTypes.MetadataUpdateParams calldata params
    ) external;

    /**
     * @notice Gets the access manager interface
     * @return The access manager contract instance
     */
    function accessManager() external view returns (IAccessManager);
}
