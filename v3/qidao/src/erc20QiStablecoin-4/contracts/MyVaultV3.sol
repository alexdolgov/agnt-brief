
// contracts/MyVaultNFT.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.5.16;

import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";

contract VaultNFTv3 is ERC721Full {
            
    constructor(string memory name, string memory symbol) public ERC721Full(name, symbol) {}
    
}