// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/** @title MockEnumerableCollection */
contract MockEnumerableCollection is ERC721, Ownable {

    constructor(string memory baseURI) ERC721("EnumerableCollection", "EnumerableCollection") public {
        setBaseURI(baseURI);
    }

    // The trick to change the metadata if necessary and have a reveal moment
    function setBaseURI(string memory baseURI) public onlyOwner {
        _setBaseURI(baseURI);
    }

    function mintNFT() public onlyOwner {
        _safeMint(_msgSender(), totalSupply() + 1);
    }

}
