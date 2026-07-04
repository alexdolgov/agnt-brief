// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/common/ERC2981.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract VaporDEXAnniversaryGenesis is ERC721, ERC2981, Ownable {
    using Strings for uint256;

    uint256 public constant MAX_SUPPLY = 4;
    uint256 private _tokenIdCounter;
    string private _baseTokenURI;

    event Minted(address indexed to, uint256 indexed tokenId);
    event RoyaltyUpdated(address indexed receiver, uint96 feeNumerator);
    event BaseURIUpdated(string baseURI);

    constructor() ERC721("VaporDEX Anniversary Genesis Collection", "VAPORGEN") Ownable() {
        _setDefaultRoyalty(msg.sender, 0);
    }

    function mint(address to) external onlyOwner returns (uint256) {
        require(_tokenIdCounter < MAX_SUPPLY, "Max supply reached");

        _tokenIdCounter++;
        uint256 tokenId = _tokenIdCounter;

        _safeMint(to, tokenId);

        emit Minted(to, tokenId);

        return tokenId;
    }

    function batchMint(address[] calldata recipients) external onlyOwner {
        require(_tokenIdCounter + recipients.length <= MAX_SUPPLY, "Exceeds max supply");

        for (uint256 i = 0; i < recipients.length; i++) {
            _tokenIdCounter++;
            uint256 tokenId = _tokenIdCounter;
            _safeMint(recipients[i], tokenId);
            emit Minted(recipients[i], tokenId);
        }
    }

    function totalMinted() external view returns (uint256) {
        return _tokenIdCounter;
    }

    function setBaseURI(string memory baseURI) external onlyOwner {
        _baseTokenURI = baseURI;
        emit BaseURIUpdated(baseURI);
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }

    function setDefaultRoyalty(address receiver, uint96 feeNumerator) external onlyOwner {
        _setDefaultRoyalty(receiver, feeNumerator);
        emit RoyaltyUpdated(receiver, feeNumerator);
    }

    function deleteDefaultRoyalty() external onlyOwner {
        _deleteDefaultRoyalty();
        emit RoyaltyUpdated(address(0), 0);
    }

    function setTokenRoyalty(uint256 tokenId, address receiver, uint96 feeNumerator) external onlyOwner {
        _setTokenRoyalty(tokenId, receiver, feeNumerator);
    }

    function resetTokenRoyalty(uint256 tokenId) external onlyOwner {
        _resetTokenRoyalty(tokenId);
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        require(ownerOf(tokenId) != address(0), "Token does not exist");

        string memory baseURI = _baseURI();
        return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, tokenId.toString())) : "";
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC2981) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}
