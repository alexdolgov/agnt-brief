// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {
    ERC721,
    ERC721Enumerable
} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

import { IDomfiRegistry } from "./interfaces/IDomfiRegistry.sol";
import { IDomfiLockedDepositNft } from "./interfaces/IDomfiLockedDepositNft.sol";

contract DomfiLockedDepositNft is IDomfiLockedDepositNft, ERC721Enumerable {
    IDomfiRegistry immutable registry;

    constructor(string memory name, string memory symbol, IDomfiRegistry registryAddress)
        ERC721(name, symbol)
    {
        registry = registryAddress;
    }

    modifier onlyVault() {
        _onlyVault();
        _;
    }

    function _onlyVault() private view {
        if (msg.sender != registry.getContractAddress("vault")) {
            revert NotVault(msg.sender);
        }
    }

    function mint(address to, uint256 tokenId) external onlyVault {
        _safeMint(to, tokenId);
    }

    function burn(uint256 tokenId) external onlyVault {
        _burn(tokenId);
    }
}
