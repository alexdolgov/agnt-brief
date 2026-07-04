// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

import "../interfaces/IAirdropClaim.sol";

contract MerkleTree is Ownable {
    /// ============ Mutable storage ============

    /// @notice ERC20-claimee inclusion root
    bytes32 public merkleRoot;

    /// @notice airdrop managment
    address public airdropClaim;

    /// @notice Mapping of addresses who have claimed tokens
    mapping(address => bool) public hasClaimed;

    /// ============ Errors ============

    /// @notice Thrown if address has already claimed
    error AlreadyClaimed(address _who);
    /// @notice Thrown if address/amount are not part of Merkle tree
    error NotInMerkle(address _who, uint _amnt);

    /// ============ Constructor ============

    /// @notice Creates a new MerkleClaimERC20 contract
    /// @param _airdropClaim claim manager
    constructor(address _airdropClaim) {
        airdropClaim = _airdropClaim;
    }

    /// ============ Events ============

    /// @notice Emitted after a successful token claim
    /// @param who has right to claim
    /// @param to recipient of claim
    /// @param amount of tokens claimed
    event ClaimSet(address indexed who, address indexed to, uint256 amount);

    /// ============ Functions ============

    /// @notice Allows claiming tokens if address is part of merkle tree
    /// @param to address of claimee
    /// @param amount of tokens owed to claimee
    /// @param proof merkle proof to prove address and amount are in tree
    function claim(
        address to,
        uint256 amount,
        bytes32[] calldata proof
    ) external {
        // Throw if address has already claimed tokens
        if (hasClaimed[msg.sender]) revert AlreadyClaimed(msg.sender);

        // Verify merkle proof, or revert if not in tree
        bytes32 leaf = keccak256(
            abi.encodePacked(keccak256(abi.encodePacked(msg.sender, amount)))
        );
        bool isValidLeaf = MerkleProof.verify(proof, merkleRoot, leaf);
        if (!isValidLeaf) revert NotInMerkle(msg.sender, amount);

        // Set address to claimed
        hasClaimed[msg.sender] = true;

        // Mint tokens to msg.sender
        IAirdropClaim(airdropClaim).claim(msg.sender, amount, to);

        // Emit claim event
        emit ClaimSet(msg.sender, to, amount);
    }

    /// @notice Set Merkle Root (before starting the claim!)
    /// @param _merkleRoot merkle root
    function setMerkleRoot(bytes32 _merkleRoot) external onlyOwner {
        require(_merkleRoot != bytes32(0), "root 0");
        require(merkleRoot == bytes32(0), "Already initialized");
        merkleRoot = _merkleRoot;
    }

    function setUserClaimed(address[] memory users) external onlyOwner {
        uint i = 0;
        for (i = 0; i < users.length; i++) {
            hasClaimed[users[i]] = true;
        }
    }
}
