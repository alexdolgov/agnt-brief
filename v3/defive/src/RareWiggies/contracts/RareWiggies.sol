// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import { ERC721Enumerable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";

/**
 * @title Rare Wiggies NFT Collection
 * @notice A limited edition NFT collection created by MoreOddCandy.
 * @dev This contract implements an ERC721Enumerable token with a fixed max supply.
 */
contract RareWiggies is ERC721Enumerable, Ownable {
    using Strings for uint256;

    /// @notice Base URI for metadata storage
    string private _baseTokenURI = "ipfs://";

    /// @notice Maximum supply of NFTs
    uint256 public immutable maxSupply = 100;

    /// @notice Tracks the next token ID to be minted
    uint256 private _nextTokenId = 1;

    /// @dev Mapping of token IDs to their respective URIs
    mapping(uint256 => string) private _tokenURIs;

    /// @notice Emitted when a new NFT is minted
    event Minted(address indexed to, uint256 indexed tokenId, string uri);

    /// @notice Emitted when base URI is updated
    event BaseURIUpdated(string newBaseURI);

    /**
     * @dev Constructor initializes the NFT collection with a name and symbol.
     * @notice Sets the deployer as the initial owner.
     */
    constructor() ERC721("Rare Wiggies", "RWIGGY") Ownable(msg.sender) {}

    /**
     * @dev Returns the base URI for computing `tokenURI`.
     * @return The base URI string.
     */
    function _baseURI() internal view virtual override returns (string memory) {
        return _baseTokenURI;
    }

    /**
     * @dev Sets a new base URI. Only callable by the owner.
     * @param baseURI_ The new base URI.
     */
    function setBaseURI(string calldata baseURI_) external onlyOwner {
        _baseTokenURI = baseURI_;
        emit BaseURIUpdated(baseURI_);
    }

    /**
     * @notice Mints a new NFT to the specified address.
     * @dev Only the contract owner can mint new tokens.
     * @param _to Address receiving the minted NFT.
     * @param _uri Metadata URI associated with the token.
     */
    function mint(address _to, string memory _uri) public onlyOwner {
        require(_nextTokenId <= maxSupply, "Max supply reached");
        uint256 newId = _nextTokenId;
        _nextTokenId++;

        _safeMint(_to, newId);

        _tokenURIs[newId] = _uri;

        emit Minted(_to, newId, _uri);
    }

    /**
     * @dev Batch mint NFTs with metadata URIs. Only the owner can execute it.
     * @param recipients List of addresses to receive the NFTs.
     * @param uris List of metadata URIs for each NFT.
     */
    function batchMint(address[] calldata recipients, string[] calldata uris) external onlyOwner {
        require(recipients.length == uris.length, "batchMint: Array lengths mismatch");

        for (uint256 i = 0; i < recipients.length; i++) {
            uint256 newId = _nextTokenId;
            _nextTokenId++;

            _safeMint(recipients[i], newId);

            _tokenURIs[newId] = uris[i];

            emit Minted(recipients[i], newId, uris[i]);
        }
    }

    /**
     * @notice Returns all token IDs owned by a given address.
     * @param _owner Address to query.
     * @return Array of token IDs owned by `_owner`.
     */
    function walletOfOwner(address _owner) public view returns (uint256[] memory) {
        uint256 ownerTokenCount = balanceOf(_owner);
        uint256[] memory ownerTokenIds = new uint256[](ownerTokenCount);

        for (uint256 i = 0; i < ownerTokenCount; i++) {
            ownerTokenIds[i] = tokenOfOwnerByIndex(_owner, i);
        }
        return ownerTokenIds;
    }

    /**
     * @notice Retrieves the metadata URI for a given token ID.
     * @dev Overrides the default ERC721 `tokenURI` function.
     * @param tokenId The ID of the token.
     * @return The full metadata URI for the token.
     */
    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(tokenId > 0 && tokenId < _nextTokenId, "ERC721Metadata: URI query for nonexistent token");
        string memory currentBaseURI = _baseURI();
        string memory metadataURI = _tokenURIs[tokenId];
        return bytes(metadataURI).length > 0 ? string(abi.encodePacked(currentBaseURI, metadataURI)) : "";
    }
}
