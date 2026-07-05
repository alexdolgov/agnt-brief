// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "@openzeppelin-3.2.0/contracts/access/Ownable.sol";
import "@openzeppelin-3.2.0/contracts/math/SafeMath.sol";
import "./interfaces/IBEP20.sol";
import "./SafeBEP20.sol";

import "./archive/BunnyFactoryV2.sol";
import "./archive/BunnyFactoryV3.sol";
import "./BunnyMintingStation.sol";

/** @title BunnyFactoryV4.
 * @notice It is a contract for users to mint 'starter NFTs'.
 */
contract BunnyFactoryV4 is Ownable {
    using SafeMath for uint256;
    using SafeBEP20 for IBEP20;

    BunnyFactoryV2 public bunnyFactoryV2;
    BunnyFactoryV3 public bunnyFactoryV3;
    BunnyMintingStation public bunnyMintingStation;

    IBEP20 public cakeToken;

    // starting block
    uint256 public startBlockNumber;

    // Number of CAKEs a user needs to pay to acquire a token
    uint256 public tokenPrice;

    // Map if address has already claimed a NFT
    mapping(address => bool) public hasClaimed;

    // IPFS hash for new json
    string private ipfsHash;

    // number of total series (i.e. different visuals)
    uint8 private constant numberBunnyIds = 11;

    // number of previous series (i.e. different visuals)
    uint8 private constant previousNumberBunnyIds = 9;

    // Map the token number to URI
    mapping(uint8 => string) private bunnyIdURIs;

    // Event to notify when NFT is successfully minted
    event BunnyMint(address indexed to, uint256 indexed tokenId, uint8 indexed bunnyId);

    /**
     * @dev
     */
    constructor(
        BunnyFactoryV2 _bunnyFactoryV2,
        BunnyFactoryV3 _bunnyFactoryV3,
        BunnyMintingStation _bunnyMintingStation,
        IBEP20 _cakeToken,
        uint256 _tokenPrice,
        string memory _ipfsHash,
        uint256 _startBlockNumber
    ) public {
        bunnyFactoryV2 = _bunnyFactoryV2;
        bunnyFactoryV3 = _bunnyFactoryV3;
        bunnyMintingStation = _bunnyMintingStation;
        cakeToken = _cakeToken;
        tokenPrice = _tokenPrice;
        ipfsHash = _ipfsHash;
        startBlockNumber = _startBlockNumber;
    }

    /**
     * @dev Mint NFTs from the BunnyMintingStation contract.
     * Users can specify what bunnyId they want to mint. Users can claim once.
     */
    function mintNFT(uint8 _bunnyId) external {
        address senderAddress = _msgSender();

        bool hasClaimedV2 = bunnyFactoryV2.hasClaimed(senderAddress);
        bool hasClaimedV3 = bunnyFactoryV3.hasClaimed(senderAddress);

        // Check if _msgSender() has claimed in previous factory
        require(!hasClaimedV2 && !hasClaimedV3, "Has claimed in v2 or v3");
        // Check _msgSender() has not claimed
        require(!hasClaimed[senderAddress], "Has claimed");
        // Check block time is not too late
        require(block.number > startBlockNumber, "too early");
        // Check that the _bunnyId is within boundary:
        require(_bunnyId >= previousNumberBunnyIds, "bunnyId too low");
        // Check that the _bunnyId is within boundary:
        require(_bunnyId < numberBunnyIds, "bunnyId too high");

        // Update that _msgSender() has claimed
        hasClaimed[senderAddress] = true;

        // Send CAKE tokens to this contract
        cakeToken.safeTransferFrom(senderAddress, address(this), tokenPrice);

        string memory tokenURI = bunnyIdURIs[_bunnyId];

        uint256 tokenId = bunnyMintingStation.mintCollectible(senderAddress, tokenURI, _bunnyId);

        emit BunnyMint(senderAddress, tokenId, _bunnyId);
    }

    /**
     * @dev It transfers the CAKE tokens back to the chef address.
     * Only callable by the owner.
     */
    function claimFee(uint256 _amount) external onlyOwner {
        cakeToken.safeTransfer(_msgSender(), _amount);
    }

    /**
     * @dev Set up json extensions for bunnies 10
     * Assign tokenURI to look for each bunnyId in the mint function
     * Only the owner can set it.
     */
    function setBunnyJson(string calldata _bunnyId10Json) external onlyOwner {
        bunnyIdURIs[10] = string(abi.encodePacked(ipfsHash, _bunnyId10Json));
    }

    /**
     * @dev Allow to set up the start number
     * Only the owner can set it.
     */
    function setStartBlockNumber(uint256 _newStartBlockNumber) external onlyOwner {
        require(_newStartBlockNumber > block.number, "too short");
        startBlockNumber = _newStartBlockNumber;
    }

    /**
     * @dev Allow to change the token price
     * Only the owner can set it.
     */
    function updateTokenPrice(uint256 _newTokenPrice) external onlyOwner {
        tokenPrice = _newTokenPrice;
    }

    function canMint(address userAddress) external view returns (bool) {
        if (
            (hasClaimed[userAddress]) ||
            (bunnyFactoryV2.hasClaimed(userAddress)) ||
            (bunnyFactoryV3.hasClaimed(userAddress))
        ) {
            return false;
        } else {
            return true;
        }
    }
}
