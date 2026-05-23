// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { ERC721Enumerable, ERC721 } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

// @warning: This contract is for testing purposes only
contract BeraERC721EnumerableMock is ERC721Enumerable {
    constructor() ERC721("Bera Mock", "BERAM") {}

    function mint(address to, uint256 tokenId) public {
        _mint(to, tokenId);
    }
}
