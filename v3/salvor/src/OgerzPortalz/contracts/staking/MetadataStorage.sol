// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Multicall.sol";

// Metadata storage
contract MetadataStorage is Ownable, Multicall {
    /// There is a maximum of 10 different attributes per NFT.
    uint8 public constant MAX_ATTRIBUTES = 10;

    struct Metadata {
        /// Reward given for a token address and id (usually linked to its rarity).
        /// ex: _raritiesRewards[0x123...][123] = 10 ** 18 where 10 ** 18 is the amount
        /// of ERC20 this token would earn for 1 day
        uint256 rarityReward;
        /// Array of attributes composing the NFT.
        /// Very useful when we need to check on-chain for specific conditions
        /// about specific attributes.
        /// Value of 0 means the NFT doesn't have the attribute (as it starts at 1).
        uint8[MAX_ATTRIBUTES] attributes;
    }

    bool private canUpdateMetadata;

    mapping(address => mapping(uint256 => Metadata)) private _metadata;

    constructor() {}

    /* ********************************** */
    /*               Getter               */
    /* ********************************** */

    function metadata(address contractAddress, uint256 tokenId)
        external
        view
        returns (Metadata memory)
    {
        return _metadata[contractAddress][tokenId];
    }

    function rarityReward(address contractAddress, uint256 tokenId)
        external
        view
        returns (uint256)
    {
        return _metadata[contractAddress][tokenId].rarityReward;
    }

    function attributes(address contractAddress, uint256 tokenId)
        external
        view
        returns (uint8[MAX_ATTRIBUTES] memory)
    {
        return _metadata[contractAddress][tokenId].attributes;
    }

    /**
     @notice Check if a token from a collection possess the given variant of the given attribute.
     @param attribute type of the attribute (eg: 1 -> Background).
     @param variant value of the attribute (eg: 1 -> Red).
     @param contractAddress address of the token's collection's contract.
     @param tokenId id of the token from the collection.
    */
    function hasAttribute(
        uint8 attribute,
        uint8 variant,
        address contractAddress,
        uint256 tokenId
    ) external view returns (bool) {
        return
            _metadata[contractAddress][tokenId].attributes[attribute] ==
            variant;
    }

    /* ********************************** */
    /*              Setters               */
    /* ********************************** */

    function updateMetadata(
        address tokenContract,
        uint256[] memory ids,
        Metadata[] memory data
    ) external onlyOwner {
        require(canUpdateMetadata, "Cannot update metadata");
        require(ids.length == data.length, "Arrays aren't the same length");
        unchecked {
            for (uint256 i = 0; i < ids.length; i++) {
                _metadata[tokenContract][ids[i]] = data[i];
            }
        }
    }

    function lockMetadataUpdate() external onlyOwner {
        canUpdateMetadata = false;
    }

    function unlockMetadataUpdate() external onlyOwner {
        canUpdateMetadata = true;
    }
}
