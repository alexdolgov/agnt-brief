// SPDX-License-Identifier: MIT

pragma solidity >0.6.6;

import '@openzeppelin/contracts/token/ERC721/ERC721.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

// CakeToken with Governance.
contract BabyERC721 is ERC721, Ownable {

    constructor (string memory baseURI_, string memory name_, string memory symbol_) ERC721(name_, symbol_) {
        _setBaseURI(baseURI_); 
    }

    function mint(address to, uint256 tokenId) external onlyOwner {
        _mint(to, tokenId);
    }

    function setTokenURI(uint256 tokenId, string memory _tokenURI) external onlyOwner {
        _setTokenURI(tokenId, _tokenURI);
    }

    function setBaseURI(string memory baseURI_) external onlyOwner {
        _setBaseURI(baseURI_);
    }

    function safeMint(address to, uint256 tokenId, bytes memory _data) external onlyOwner {
        _safeMint(to, tokenId, _data);
    }

    function multiSafeMint(address[] memory tos, uint256[] memory tokenIds, bytes memory _data) external onlyOwner {
        require(tos.length == tokenIds.length, "illegal length");
        for (uint i = 0; i < tos.length; i ++) {
            _safeMint(tos[i], tokenIds[i], _data);
        }
    }
}
