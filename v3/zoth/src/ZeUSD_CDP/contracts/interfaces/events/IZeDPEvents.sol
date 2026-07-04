// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import '../../libraries/DataTypes.sol';

/**
 * @title ZeUSD_CDP Events Interface
 * @author ZeUSD Protocol Team
 * @notice Contains all event definitions for the ZeUSD_CDP contract
 * @dev Centralizes event definitions for better organization
 * @custom:security-contact tech@zoth.io
 */
interface IZeDPEvents {
    /**
     * @notice Emitted when a deposit NFT is minted
     * @param tokenId ID of minted token
     * @param owner Address receiving the token
     * @param metadata Associated deposit metadata
     */
    event ZeDPMinted(
        uint256 indexed tokenId,
        address indexed owner,
        DataTypes.DepositMetadata metadata
    );

    /**
     * @notice Emitted when a deposit NFT is burned
     * @param tokenId ID of burned token
     * @param owner Last owner of the token
     */
    event ZeDPBurned(uint256 indexed tokenId, address indexed owner);

    /**
     * @notice Emitted when base URI is updated
     * @param newBaseURI New base URI value
     */
    event ZeDPBaseURIUpdated(string newBaseURI);

    /**
     * @notice Emitted when deposit metadata is updated
     * @param tokenId ID of the token whose metadata was updated
     * @param metadata Updated deposit metadata
     */
    event ZeDPMetadataUpdated(uint256 indexed tokenId, DataTypes.DepositMetadata metadata);

    /**
     * @notice Emitted when the router is updated
     * @param newRouter New router address
     */
    event ZeDPRouterUpdated(address newRouter);
}
