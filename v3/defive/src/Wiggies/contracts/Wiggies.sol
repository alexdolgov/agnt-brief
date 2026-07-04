// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

/**
 * @title Wiggies
 * @notice It is the contract for Wiggy NFTs with enumeration and metadata storage.
 */
contract Wiggies is ERC721Enumerable, Ownable {
    /// @notice Base URI for metadata storage
    string private _baseTokenURI = "ipfs://";

    uint256 private _nextTokenId = 1;

    // Map the number of tokens per wiggyId
    mapping(uint8 => uint256) public wiggyCount;

    // Map the wiggyId for each tokenId
    mapping(uint256 => uint8) private wiggyIds;

    // Map the wiggyName for a tokenId
    mapping(uint8 => string) private wiggyNames;

    // Map tokenId to metadata URI
    mapping(uint256 => string) private _tokenURIs;

    /// @notice Emitted when a new NFT is minted
    event Minted(address indexed to, uint256 indexed tokenId, uint8 wiggyId, string uri);

    /// @notice Emitted when a wiggy name is set
    event WiggyNameSet(uint8 indexed wiggyId, string name);

    /// @notice Emitted when base URI is updated
    event BaseURIUpdated(string newBaseURI);

    /**
     * @dev Constructor that initializes the NFT contract with name and symbol.
     */
    constructor() ERC721("Wiggies", "WIGGY") Ownable(msg.sender) {}

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
     * @dev Mint a single NFT with metadata URI. Only the owner can execute it.
     * @param _to Address to receive the NFT.
     * @param _uri Metadata URI for the NFT.
     * @param _wiggyId Unique wiggy type ID associated with the NFT.
     */
    function mint(address _to, string memory _uri, uint8 _wiggyId) external onlyOwner returns (uint256) {
        uint256 newId = _nextTokenId;
        _nextTokenId++;

        _safeMint(_to, newId);

        wiggyIds[newId] = _wiggyId;
        wiggyCount[_wiggyId]++;
        _tokenURIs[newId] = _uri;

        emit Minted(_to, newId, _wiggyId, _uri);

        return newId;
    }

    /**
     * @dev Batch mint NFTs with metadata URIs. Only the owner can execute it.
     * @param recipients List of addresses to receive the NFTs.
     * @param uris List of metadata URIs for each NFT.
     * @param wiggyIdsList List of wiggyIds for each NFT.
     */
    function batchMint(
        address[] calldata recipients,
        string[] calldata uris,
        uint8[] calldata wiggyIdsList
    ) external onlyOwner {
        require(
            recipients.length == uris.length && recipients.length == wiggyIdsList.length,
            "batchMint: Array lengths mismatch"
        );

        for (uint256 i = 0; i < recipients.length; i++) {
            uint256 newId = _nextTokenId;
            _nextTokenId++;

            _safeMint(recipients[i], newId);

            wiggyIds[newId] = wiggyIdsList[i];
            wiggyCount[wiggyIdsList[i]]++;
            _tokenURIs[newId] = uris[i];

            emit Minted(recipients[i], newId, wiggyIdsList[i], uris[i]);
        }
    }

    /**
     * @dev Set a unique name for each wiggyId. It is supposed to be called once.
     */
    function setWiggyName(uint8 _wiggyId, string calldata _name) external onlyOwner {
        wiggyNames[_wiggyId] = _name;
        emit WiggyNameSet(_wiggyId, _name);
    }

    /**
     * @dev Get the associated wiggyName for a specific wiggyId.
     */
    function getWiggyName(uint8 _wiggyId) external view returns (string memory) {
        return wiggyNames[_wiggyId];
    }

    /**
     * @dev Get wiggyId for a specific tokenId.
     */
    function getWiggyId(uint256 _tokenId) external view returns (uint8) {
        return wiggyIds[_tokenId];
    }

    /**
     * @dev Get the associated wiggyName for a unique tokenId.
     */
    function getWiggyNameOfTokenId(uint256 _tokenId) external view returns (string memory) {
        uint8 wiggyId = wiggyIds[_tokenId];
        return wiggyNames[wiggyId];
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
