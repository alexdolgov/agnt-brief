// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

/**
 * @title LumosCards
 * @notice It is the contract for LumosCard NFTs with enumeration and metadata storage.
 */
contract LumosCards is ERC721Enumerable, Ownable {
    /// @notice Base URI for metadata storage
    string private _baseTokenURI = "ipfs://";

    uint256 private _nextTokenId = 1;

    // Map the number of tokens per cardType
    mapping(uint8 => uint256) public cardCount;

    // Map the cardType for each tokenId
    mapping(uint256 => uint8) private cardTypes;

    // Map the cardName for a cardType
    mapping(uint8 => string) private cardNames;

    // Map tokenId to metadata URI
    mapping(uint256 => string) private _tokenURIs;

    /// @notice Emitted when a new NFT is minted
    event Minted(address indexed to, uint256 indexed tokenId, uint8 cardType, string uri);

    /// @notice Emitted when a card name is set
    event CardNameSet(uint8 indexed cardType, string name);

    /// @notice Emitted when base URI is updated
    event BaseURIUpdated(string newBaseURI);

    /**
     * @dev Constructor that initializes the NFT contract with name and symbol.
     */
    constructor() ERC721("LumosCards", "LUMCARD") Ownable(msg.sender) {}

    function _baseURI() internal view virtual override returns (string memory) {
        return _baseTokenURI;
    }

    function setBaseURI(string calldata baseURI_) external onlyOwner {
        _baseTokenURI = baseURI_;
        emit BaseURIUpdated(baseURI_);
    }

    function mint(address _to, string memory _uri, uint8 _cardType) external onlyOwner returns (uint256) {
        uint256 newId = _nextTokenId;
        _nextTokenId++;

        _safeMint(_to, newId);

        cardTypes[newId] = _cardType;
        cardCount[_cardType]++;
        _tokenURIs[newId] = _uri;

        emit Minted(_to, newId, _cardType, _uri);

        return newId;
    }

    function batchMint(
        address[] calldata recipients,
        string[] calldata uris,
        uint8[] calldata cardTypesList
    ) external onlyOwner {
        require(
            recipients.length == uris.length && recipients.length == cardTypesList.length,
            "batchMint: Array lengths mismatch"
        );

        for (uint256 i = 0; i < recipients.length; i++) {
            uint256 newId = _nextTokenId;
            _nextTokenId++;

            _safeMint(recipients[i], newId);

            cardTypes[newId] = cardTypesList[i];
            cardCount[cardTypesList[i]]++;
            _tokenURIs[newId] = uris[i];

            emit Minted(recipients[i], newId, cardTypesList[i], uris[i]);
        }
    }

    function setCardName(uint8 _cardType, string calldata _name) external onlyOwner {
        cardNames[_cardType] = _name;
        emit CardNameSet(_cardType, _name);
    }

    function getCardName(uint8 _cardType) external view returns (string memory) {
        return cardNames[_cardType];
    }

    function getCardType(uint256 _tokenId) external view returns (uint8) {
        return cardTypes[_tokenId];
    }

    function getCardNameOfTokenId(uint256 _tokenId) external view returns (string memory) {
        uint8 cardType = cardTypes[_tokenId];
        return cardNames[cardType];
    }

    function walletOfOwner(address _owner) public view returns (uint256[] memory) {
        uint256 ownerTokenCount = balanceOf(_owner);
        uint256[] memory ownerTokenIds = new uint256[](ownerTokenCount);

        for (uint256 i = 0; i < ownerTokenCount; i++) {
            ownerTokenIds[i] = tokenOfOwnerByIndex(_owner, i);
        }
        return ownerTokenIds;
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(tokenId > 0 && tokenId < _nextTokenId, "ERC721Metadata: URI query for nonexistent token");
        string memory currentBaseURI = _baseURI();
        string memory metadataURI = _tokenURIs[tokenId];
        return bytes(metadataURI).length > 0 ? string(abi.encodePacked(currentBaseURI, metadataURI)) : "";
    }
}
