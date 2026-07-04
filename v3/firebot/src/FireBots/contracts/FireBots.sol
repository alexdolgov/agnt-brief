// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract FireBots is ERC721, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("FireBots", "BOTS") {}

    function _baseURI() internal pure override returns (string memory) {
        return "ipfs://QmedrosdcooQDiJw62meLkJpWJ7v9WSV3MfdAvPsYxjX97/";
    }

    function safeMint(address to, uint n) public onlyOwner {
        for (uint i=0; i<n; i++) {
			_tokenIdCounter.increment();
            _safeMint(to, _tokenIdCounter.current());
        }
    }
}
