// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "./ERC721Permit.sol";

contract GasHeroBadge is ERC721Permit, Ownable {

    string private _baseTokenURI;
    string private _tokenSuffix;

    constructor(
        string memory name,
        string memory symbol,
        string memory baseURI,
        string memory tokenSuffix) ERC721Permit(name, symbol, "1") {
        _baseTokenURI = baseURI;
        _tokenSuffix = tokenSuffix;
    }

    function setBaseUri(string memory baseURI, string memory tokenSuffix) external onlyOwner {
        _baseTokenURI = baseURI;
        _tokenSuffix = tokenSuffix;
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        string memory uri = super.tokenURI(tokenId);
        return bytes(_tokenSuffix).length > 0 ? string(abi.encodePacked(uri, _tokenSuffix)) : uri;
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
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
