// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {SSTORE2} from "solady/utils/SSTORE2.sol";
import {IFundingWorks} from "./Interfaces.sol";

/// @title FundingWorksSignature - Store SVG path signatures for FundingWorks tokens
/// @notice Allows token owners to associate an SVG path signature with their token
/// @dev Uses SSTORE2 for gas-efficient storage of signature bytes
contract FundingWorksSignature {
    /// @notice The FundingWorks NFT contract
    IFundingWorks public immutable fundingWorks;

    /// @notice Mapping from tokenId to SSTORE2 pointer contract address
    mapping(uint256 => address) public signaturePointers;

    /// @notice Emitted when a signature is set for a token
    event SignatureSet(uint256 indexed tokenId, address pointer);

    /// @notice Error thrown when caller is not the token owner
    error NotTokenOwner();

    /// @notice Error thrown when signature data is empty
    error EmptySignature();

    /// @param _fundingWorks Address of the FundingWorks NFT contract
    constructor(address _fundingWorks) {
        fundingWorks = IFundingWorks(_fundingWorks);
    }

    /// @notice Set or update the signature for a token you own
    /// @param tokenId The token ID to set the signature for
    /// @param signature The SVG path bytes to store
    function setSignature(uint256 tokenId, bytes calldata signature) external {
        if (fundingWorks.ownerOf(tokenId) != msg.sender) revert NotTokenOwner();
        if (signature.length == 0) revert EmptySignature();

        address pointer = SSTORE2.write(signature);
        signaturePointers[tokenId] = pointer;

        emit SignatureSet(tokenId, pointer);
    }

    /// @notice Get the signature for a token
    /// @param tokenId The token ID to get the signature for
    /// @return The signature bytes, or empty bytes if not set
    function getSignature(uint256 tokenId) external view returns (bytes memory) {
        address pointer = signaturePointers[tokenId];
        if (pointer == address(0)) return "";
        return SSTORE2.read(pointer);
    }

    /// @notice Check if a token has a signature set
    /// @param tokenId The token ID to check
    /// @return True if a signature is set
    function hasSignature(uint256 tokenId) external view returns (bool) {
        return signaturePointers[tokenId] != address(0);
    }
}
