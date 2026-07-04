// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract SmolBrainNFT is ERC721, Ownable, AccessControl {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    constructor() ERC721("Smol Brain", "SmolBrain") public {}

    modifier onlyMinter() {
        require(hasRole(MINTER_ROLE, msg.sender), "SmolBrain: caller is not the minter");
        _;
    }

    function mint(address to, uint256 tokenId) public onlyMinter returns (bool) {
        _mint(to, tokenId);
        return true;
    }

    function setMinterRole(address minter) external onlyOwner {
        _setupRole(MINTER_ROLE, minter);
    }
}
