// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "@openzeppelin-3.2.0/contracts/access/Ownable.sol";

import "./BunnyMintingStation.sol";

contract BunnyAthleticGame is Ownable {
    BunnyMintingStation public immutable bunnyMintingStation;

    uint8 public immutable bunnyId1; // Nft can be minted 1
    uint8 public immutable bunnyId2; // Nft can be minted 2
    uint8 public immutable bunnyId3; // Nft can be minted 3

    // Map the token number to URI
    mapping(uint8 => string) private bunnyIdURIs;

    mapping(uint8 => bool) public hasClaimed;

    event BunnyMint(address indexed to, uint256 indexed tokenId, uint8 indexed bunnyId);
    event NewTokenURI(uint8 indexed bunnyId, string tokenURI);

    /**
     * @notice It initializes the contract.
     * @param _bunnyMintingStationAddress: BunnyMintingStation address
     * @param _bunnyId1: Nft can be minted 1
     * @param _bunnyId2: Nft can be minted 2
     * @param _bunnyId3: Nft can be minted 3
     */
    constructor(
        address _bunnyMintingStationAddress,
        uint8 _bunnyId1,
        uint8 _bunnyId2,
        uint8 _bunnyId3
    ) public {
        bunnyMintingStation = BunnyMintingStation(_bunnyMintingStationAddress);
        bunnyId1 = _bunnyId1;
        bunnyId2 = _bunnyId2;
        bunnyId3 = _bunnyId3;
    }

    /**
     * @notice Update tokenURI for distribution
     * @dev Only callable by owner.
     */
    function updateTokenURI(uint8 _bunnyId, string memory _newTokenURI) external onlyOwner {
        require(_bunnyId == bunnyId1 || _bunnyId == bunnyId2 || _bunnyId == bunnyId3, "BunnyId is not exist");

        // update tokenURI
        bunnyIdURIs[_bunnyId] = _newTokenURI;

        emit NewTokenURI(_bunnyId, _newTokenURI);
    }

    /**
     * @notice Mint a NFT from the BunnyMintingStation contract.
     * @dev Users can claim once. It maps to the teamId.
     */
    function mintNFT(address _recipient, uint8 _bunnyId) external onlyOwner {
        require(canClaim(_bunnyId), "User: Not eligible");
        hasClaimed[_bunnyId] = true;
        require(_bunnyId == bunnyId1 || _bunnyId == bunnyId2 || _bunnyId == bunnyId3, "BunnyId is not exist");

        string memory tokenURI = bunnyIdURIs[_bunnyId];

        // Mint collectible and send it to the user.
        uint256 tokenId = bunnyMintingStation.mintCollectible(_recipient, tokenURI, _bunnyId);
        emit BunnyMint(_recipient, tokenId, _bunnyId);
    }

    /**
     * @notice Check if user can claim NFT.
     */
    function canClaim(uint8 _bunnyId) public view returns (bool) {
        if (!hasClaimed[_bunnyId]) {
            return true;
        }
        return false;
    }
}