// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/**
 * Declares structs for ERC165 tokens such as ERC721 and ERC1155.
 * Specifies a token's contract address and its token id.
 */
library Tokens {
    /// @notice Describes an ERC165 (ERC721 + ERC1155) token by its collection address and id
    struct ERC165Token {
        address contractAddress;
        uint256 tokenId;
    }
}
