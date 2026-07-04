// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "./ERC721Permit.sol";

contract GasHeroCoupon is ERC721Permit, Ownable {
    constructor(
        string memory name,
        string memory symbol) ERC721Permit(name, symbol, "1") {
    }

    string[] private tokenUris;

    function pushTokenUris(string[] memory tokenUri) public onlyOwner {
        for (uint i = 0; i < tokenUri.length; i++) {
            tokenUris.push(tokenUri[i]);
        }
    }

    function setTokenUri(uint32 idx, string memory tokenUri) public onlyOwner {
        tokenUris[idx] = tokenUri;
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721: invalid token ID");

        uint256 idx = tokenId / 100000;
        if (idx >= tokenUris.length) {
            return "";
        } else {
            return tokenUris[idx];
        }
    }

    function mint(address to, uint256 tokenId) public onlyOwner {
        _mint(to, tokenId);
    }

    function burn(uint256 tokenId) external virtual {
        require(
            _isApprovedOrOwner(_msgSender(), tokenId),
            "Burn caller is not owner nor approved"
        );
        _burn(tokenId);
    }
}
