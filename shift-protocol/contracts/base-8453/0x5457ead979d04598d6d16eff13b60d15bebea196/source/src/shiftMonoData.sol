// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title ShiftMonoData
/// @notice ERC721 NFT collection for Shift
/// @dev Extends OpenZeppelin's ERC721 and Ownable, With single metadata for all tokens
contract ShiftMonoData is ERC721, Ownable {
    uint256 private s_nextTokenId;
    string private s_baseUri;

    /**
     * @notice Initializes the ShiftOdg NFT contract
     * @param _initialOwner Address of the initial owner of the contract
     * @param _baseUri Base URI for NFT metadata
     */
    constructor(address _initialOwner, string memory _nftName, string memory _nftSymbol, string memory _baseUri)
        ERC721(_nftName, _nftSymbol)
        Ownable(_initialOwner)
    {
        s_baseUri = _baseUri;
    }

    /// @notice Returns the base URI for NFT metadata
    /// @return Base URI configured in the contract
    function _baseURI() internal view override returns (string memory) {
        return s_baseUri;
    }

    /// @notice Returns the metadata URI for a given token
    /// @dev All tokens share the same metadata URI in this implementation
    /// @param tokenId The ID of the token to query (unused but required by ERC721)
    /// @return The metadata URI for the token
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return _baseURI();
    }

    /// @notice Mints a single NFT to a specific address
    /// @param _to Address that will receive the NFT
    /// @return Token ID of the minted NFT
    function safeMint(address _to) public onlyOwner returns (uint256) {
        uint256 tokenId = s_nextTokenId++;
        _safeMint(_to, tokenId);
        return tokenId;
    }

    /// @notice Mints multiple NFTs to different addresses in a gas-efficient manner
    /// @param _recipients Array of addresses that will receive the NFTs (one per address)
    /// @dev Uses unchecked to optimize gas consumption
    function batchSafeMint(address[] calldata _recipients) external onlyOwner {
        uint256 length = _recipients.length;
        uint256 tokenId = s_nextTokenId;

        unchecked {
            for (uint256 i = 0; i < length; ++i) {
                _safeMint(_recipients[i], tokenId + i);
            }
            s_nextTokenId = tokenId + length;
        }
    }
}
