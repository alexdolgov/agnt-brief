//SPDX-License-Identifier: Unlicense
//Declare the version of solidity to compile this contract.
//This must match the version of solidity in your hardhat.config.js file
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

contract TestERC721 is ERC721Burnable {
    constructor(uint256 initialSupply) ERC721("TestERC721", "TEST") {
        for (uint256 i = 0; i < initialSupply; i++) {
            _mint(msg.sender, i);
        }
    }
}
