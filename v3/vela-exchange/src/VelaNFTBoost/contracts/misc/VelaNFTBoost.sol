// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

interface INFT {
    function burn(address account, uint256 id) external;
}


contract VelaNFTBoost is Ownable, ReentrancyGuard {
    event NFTBoosted(address indexed sender, uint256 tokenId);

    address public nftContractAddress;
    uint256 public burnCooldown = 12 hours;

    mapping(address => uint256) public lastBurnTimestamp;

    constructor(address _nftContractAddress) {
        nftContractAddress = _nftContractAddress;
    }

    function nftBoost(uint256 _tokenId) external nonReentrant {
        IERC721 nftContract = IERC721(nftContractAddress);
        address nftOwner = nftContract.ownerOf(_tokenId);
        require(nftOwner == msg.sender, "Sender is not owner");
        require(
            lastBurnTimestamp[msg.sender] + burnCooldown <= block.timestamp,
            "Burn cooldown has not elapsed"
        );

        INFT(nftContractAddress).burn(msg.sender, _tokenId);

        lastBurnTimestamp[msg.sender] = block.timestamp;
        emit NFTBoosted(msg.sender, _tokenId);
    }

    function setBurnCooldown(uint256 _cooldown) external onlyOwner {
        burnCooldown = _cooldown;
    }
}
