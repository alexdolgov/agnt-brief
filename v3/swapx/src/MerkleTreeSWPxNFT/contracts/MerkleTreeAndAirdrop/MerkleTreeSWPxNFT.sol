// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";

import "../interfaces/IAirdropClaim.sol";
import "../interfaces/ISWPxNFT.sol";

contract MerkleTreeSWPxNFT is Ownable {
    /// ============ Mutable storage ============

    /// @notice ERC20-claimee inclusion root
    bytes32 public merkleRoot;

    /// @notice airdrop managment
    address public airdropClaim;

    address public nft;

    /// @notice Mapping of addresses who have claimed tokens
    mapping(uint256 => bool) public hasClaimed;

    /// ============ Errors ============

    /// @notice Thrown if address has already claimed
    error AlreadyClaimed(address _who);
    /// @notice Thrown if address/amount are not part of Merkle tree
    error NotInMerkle(address _who, uint _amnt);

    /// ============ Constructor ============

    /// @notice Creates a new MerkleClaimERC20 contract
    /// @param _airdropClaim claim manager
    constructor(address _airdropClaim, address _nft) {
        airdropClaim = _airdropClaim;
        nft = _nft;
    }

    /// ============ Events ============

    /// @notice Emitted after a successful token claim
    /// @param who has right to claim
    /// @param to recipient of claim
    /// @param amount of tokens claimed
    event ClaimSet(
        address indexed who,
        address indexed to,
        uint256 tokenId,
        uint256 amount
    );

    /// ============ Functions ============

    /// @notice Allows claiming tokens if address is part of merkle tree
    /// @param tokenId token id which claims
    /// @param amount of tokens owed to claimee
    /// @param proof merkle proof to prove address and amount are in tree
    function claim(
        uint256 tokenId,
        uint256 amount,
        bytes32[] calldata proof
    ) external {
        // Throw if address has already claimed tokens
        if (hasClaimed[tokenId]) revert AlreadyClaimed(msg.sender);

        require(ISWPxNFT(nft).originalMinterOf(tokenId) == msg.sender, "Not an original minter");

        // Verify merkle proof, or revert if not in tree
        bytes32 leaf = keccak256(
            abi.encodePacked(keccak256(abi.encodePacked(tokenId, amount)))
        );
        bool isValidLeaf = MerkleProof.verify(proof, merkleRoot, leaf);
        if (!isValidLeaf) revert NotInMerkle(msg.sender, amount);

        // Set tokenId to claimed
        hasClaimed[tokenId] = true;

        // Mint tokens to address
        IAirdropClaim(airdropClaim).claim(
            msg.sender,
            amount,
            msg.sender
        );

        // Emit claim event
        emit ClaimSet(msg.sender, msg.sender, tokenId, amount);
    }

    /// @notice Set Merkle Root (before starting the claim!)
    /// @param _merkleRoot merkle root
    function setMerkleRoot(bytes32 _merkleRoot) external onlyOwner {
        require(_merkleRoot != bytes32(0), "root 0");
        require(merkleRoot == bytes32(0), "Already initialized");
        merkleRoot = _merkleRoot;
    }
}
