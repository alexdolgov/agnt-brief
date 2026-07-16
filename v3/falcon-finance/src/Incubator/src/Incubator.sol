// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./ExampleNFT.sol";
import "./PerryEgg.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract Incubator is AccessControl, ReentrancyGuard {

    bytes32 public constant INCUBATOR_MANAGER_ROLE = keccak256("INCUBATOR_MANAGER_ROLE");

    PerryEgg public immutable perryEgg;
    ExampleNFT public immutable perry;

    mapping(uint256 => bool) public hasHatched;

    event EggHatched(address indexed owner, uint256 indexed tokenId);

    error EggAlreadyHatched(uint256 tokenId);
    error NotEggOwner(uint256 tokenId, address caller);
    error EggDoesNotExist(uint256 tokenId);

    constructor(address _perryEgg, address _perry) {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(INCUBATOR_MANAGER_ROLE, msg.sender);

        perryEgg = PerryEgg(_perryEgg);
        perry = ExampleNFT(_perry);
    }

    function hatch(uint256 tokenId) external nonReentrant {
        if (!perryEgg.exists(tokenId)) {
            revert EggDoesNotExist(tokenId);
        }

        if (hasHatched[tokenId]) {
            revert EggAlreadyHatched(tokenId);
        }

        if (perryEgg.ownerOf(tokenId) != msg.sender) {
            revert NotEggOwner(tokenId, msg.sender);
        }

        hasHatched[tokenId] = true;

        perryEgg.transferFrom(msg.sender, address(0x0000000000000000000000000000000000000000), tokenId);

        perry.mintSpecific(msg.sender, tokenId);

        emit EggHatched(msg.sender, tokenId);
    }

    function isHatched(uint256 tokenId) external view returns (bool) {
        return hasHatched[tokenId];
    }

    function supportsInterface(bytes4 interfaceId) public view override returns (bool) {
        return super.supportsInterface(interfaceId);
    }

}
