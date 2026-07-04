// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {Status} from "../../../common/SaleStruct.sol";

/**
 * @title INFTInternal
 * @notice Define enum, struct, event and errors used by NFTs listed in INOs.
 */
interface INFTInternal {
    /// @ notice Define the type of NFT according to INO needs.
    enum Type {
        Sequential,
        RandomisedUri,
        ConfigRoyalty
    }

    /// @notice Thrown when someone other than the INO tries to mint.
    error ERC721Base_InoOnlyApprovedMinter();
    /// @notice Thrown when trying to mint more than maximum supply.
    error ERC721Base_MintQuantityExceedsMaxSupply(
        uint256 total,
        uint256 maxSupply
    );
    /// @notice Thrown when trying to make an action BUT INO is not completed.
    error ERC721Base_OnlyIfInoCompleted(Status current);
    error ERC721Base_PostmintAndReduceSupply_QuantityExceedsMaxSupply(
        uint256 maxSupply,
        uint256 exceededBy
    );
    /// @notice Thrown when trying to premint wheras INO already started, even if paused.
    error ERC721Base_Premint_INOStarted(Status current);
    /// @notice Thrown when updating provenance hash once INO is opened, paused or closed.
    error ERC721Base_SetProvenanceHash(Status current);
    /**
     * @notice Thrown when updating base URI once INO is opened, paused or closed, except if reveal date
     *         and new uri equls provenan hash.
     */
    error ERC721Base_SetBaseURI(Status current);
    /// @notice Thrown when trying to increase maximum supply.
    error ERC721Base_ReduceSupplyTo_NotGreaterEqThan(uint256 maxSupply);
    /// @notice Thrown when trying to decrease maximum supply below total quantity supply.
    error ERC721Base_ReduceSupplyTo_NotLowerEqThan(uint256 totalSupply);

    event MintedAllUnsold(uint256 indexed quantity);
    event MintedSomeUnsoldAndReducedSupply(
        uint256 indexed quantity,
        uint256 indexed reducedBy,
        uint256 indexed newSupply
    );
    event NFTDeployed(
        Type indexed nftType,
        address indexed initialOwner,
        string indexed name,
        string symbol
    );
    event Preminted(
        address indexed receiver,
        uint256 indexed quantity,
        uint256 indexed startTokenId
    );
    /// @dev Emit an event when the royalties info is updated.
    event RoyaltyInfoUpdated(address receiver, uint256 bps);
    /// @dev Emit an event when the royalties info for a token is updated.
    event TokenRoyaltyInfoUpdated(
        uint256 tokenId,
        address receiver,
        uint256 bps
    );
    event SupplyReduced(uint256 indexed oldSupply, uint256 indexed newSupply);
}
