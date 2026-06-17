// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./Karak_NFT.sol";

contract Claim is Ownable {
    using MerkleProof for bytes32[];

    KarakNFT public nftContract;
    
    // Single Merkle root for all tiers
    bytes32 public merkleRoot;
    
    // Mapping to track claimed addresses per tier
    mapping(address => uint256) public claimedBitmap;
    
    // Events
    event NFTClaimed(address indexed claimer, uint256 tokenId, KarakNFT.Tier tier);
    event MerkleRootUpdated(bytes32 newRoot);
    
    constructor(address _nftContract) Ownable(msg.sender) {
        nftContract = KarakNFT(_nftContract);
    }

    function hasClaimed(address user) public view returns (bool) {
        return claimedBitmap[user] != 0;
    }

    function _setClaimed(address user, KarakNFT.Tier tier) internal {
        uint256 bitPosition = uint256(tier);
        claimedBitmap[user] = claimedBitmap[user] | (1 << bitPosition);
    }
    
    function claim(
        bytes32[] calldata merkleProof,
        KarakNFT.Tier tier,
        uint256 leafIndex
    ) external returns (uint256) {
        require(!hasClaimed(msg.sender), "Address has already claimed");
        require(merkleRoot != bytes32(0), "Merkle root not set");
        
        // Create leaf node (hash of claimer's address, tier, and index)
        bytes32 leaf = keccak256(
            abi.encodePacked(msg.sender, uint256(tier), leafIndex)
        );
        
        // Verify the Merkle proof against the single root
        require(
            MerkleProof.verify(merkleProof, merkleRoot, leaf),
            "Invalid Merkle proof"
        );
        
        // Mark as claimed for this tier
        _setClaimed(msg.sender, tier);
        
        // Mint NFT
        uint256 tokenId = nftContract.mint(msg.sender, tier);
        
        emit NFTClaimed(msg.sender, tokenId, tier);

        return tokenId;
    }
    
    // Set Merkle root for a specific tier
    function setMerkleRoot(bytes32 _merkleRoot) external onlyOwner {
        require(_merkleRoot != bytes32(0), "Invalid Merkle root");
        merkleRoot = _merkleRoot;
        emit MerkleRootUpdated(_merkleRoot);
    }
    
    // Get claim status for an address and tier
    function canClaim(address user) external view returns (bool) {
        return !hasClaimed(user) && merkleRoot != bytes32(0);
    }
    
}