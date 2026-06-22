// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Pausable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract LitterBox is ERC721, ERC721Pausable, ERC721Burnable, ERC721Enumerable, ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;
    address private auctionAddress;
    mapping(uint256 => uint256) private _catIdMap;
    IERC721 private _catContract;

    constructor() ERC721("LitterBox", "LBX") {}

    function setAuctionAddress(address _auctionAddress) external onlyOwner {
        auctionAddress = _auctionAddress;
    }

    function setCatContract(address _catContractAddress) external onlyOwner {
        _catContract = IERC721(_catContractAddress);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function safeMint(address to, string memory uri) external {
        require(msg.sender == auctionAddress, "Only the auction address can mint tokens");
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }

    function setAccessControl(uint256 tokenId, uint256 catId) external {
        require(_isApprovedOrOwner(msg.sender, tokenId), "Caller is not the token owner or approved");
        require(_catContract.ownerOf(catId) == msg.sender, "Caller is not the owner of the specified cat token");
        _catIdMap[tokenId] = catId;
    }

    function getAccessControl(uint256 tokenId) external view returns (uint256) {
        require(_exists(tokenId), "Token does not exist");
        return _catIdMap[tokenId];
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize) internal override(ERC721, ERC721Pausable, ERC721Enumerable) {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
        delete _catIdMap[tokenId];
    }

    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721Enumerable, ERC721URIStorage) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}
