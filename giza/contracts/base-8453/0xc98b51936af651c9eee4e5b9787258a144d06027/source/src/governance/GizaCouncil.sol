// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {Ownable} from "src/utils/Ownable.sol";

contract GizaCouncil is ERC721, Ownable {
    uint256 public tokenId = 1;

    using Strings for uint256;

    error NonTransferable();

    string public baseURI;

    constructor(address _owner) ERC721("Giza Council", "Giza Council") Ownable(_owner) {}

    function setBaseURI(string memory _baseURI) public onlyOwner {
        baseURI = _baseURI;
    }

    function tokenURI(uint256 _tokenId) public view override returns (string memory) {
        return string.concat(baseURI, Strings.toString(_tokenId));
    }

    function safeMint(address to) public onlyOwner {
        _safeMint(to, tokenId);
        tokenId++;
    }

    function burn(uint256 _tokenId) public onlyOwner {
        _burn(_tokenId);
    }

    function safeTransferFrom(address, address, uint256, bytes memory) public pure override {
        revert NonTransferable();
    }

    function transferFrom(address, address, uint256) public pure override {
        revert NonTransferable();
    }
}
