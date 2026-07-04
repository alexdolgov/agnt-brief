// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { MerkleProof } from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol"; // OZ: MerkleProof
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./BoringERC20.sol";

contract MerklAirdrop is Ownable, ReentrancyGuard {
    using BoringERC20 for IBoringERC20;
    
    bytes32 public  MERKL_ROOT;
    uint256 public END_TIME;
    mapping(address => bool) public hasClaimed;

    IBoringERC20 AIRDROP_TOKEN;

    event Claim(address indexed to, uint256 amount);

    error AlreadyClaimed();
    error NotInMerkle();
    error TimeExpired();

    constructor (
        address _token,
        bytes32 _merkleRoot,
        uint256 _endTime
    ) {
        AIRDROP_TOKEN = IBoringERC20(_token); // Set token
        MERKL_ROOT = _merkleRoot; // Update root
        END_TIME = _endTime; // Update end time
    }

    function isClaimed(address to) public view returns (bool) {
        return hasClaimed[to];
    }

    function claim(address to, uint256 amount, bytes32[] calldata proof) external {
        if (block.timestamp > END_TIME) revert TimeExpired();

        // Throw if address has already claimed tokens
        if (hasClaimed[to]) revert AlreadyClaimed();

        // Verify merkle proof, or revert if not in tree
        bytes32 leaf = keccak256(abi.encodePacked(to, amount));
        bool isValidLeaf = MerkleProof.verify(proof, MERKL_ROOT, leaf);
        if (!isValidLeaf) revert NotInMerkle();

        // Set address to claimed
        hasClaimed[to] = true;

        // Transfer tokens to address
        AIRDROP_TOKEN.safeTransfer(to, amount);

        // Emit claim event
        emit Claim(to, amount);
    }

    function updateRoot(bytes32 _merkleRoot) external onlyOwner {
        MERKL_ROOT = _merkleRoot;
    }

    function removeUnClaimed() external onlyOwner {
        require(block.timestamp > END_TIME, "Airdrop: Airdrop is still active");
        uint256 balance = AIRDROP_TOKEN.balanceOf(address(this));
        AIRDROP_TOKEN.safeTransfer(owner(), balance);
    }

    function unStuckTokens(uint256 _amount) external onlyOwner {
        uint256 balance = AIRDROP_TOKEN.balanceOf(address(this));
        uint256 _finalAmount = _amount > balance ? balance : _amount;
        AIRDROP_TOKEN.safeTransfer(owner(), _finalAmount);
    }

    function updateEndTime(uint256 _endTime) external onlyOwner {
        END_TIME = _endTime; // Update end time
    }
}