// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract MerkleRewards is Ownable, ReentrancyGuard {
    IERC20 public immutable rewardToken;

    mapping(uint256 => bytes32) public merkleRoots;
    mapping(uint256 => mapping(address => bool)) public hasClaimed;

    event RewardClaimed(
        uint256 indexed poolId,
        address indexed user,
        uint256 amount
    );
    event MerkleRootSet(uint256 indexed poolId, bytes32 merkleRoot);
    event EmergencyWithdraw(address indexed token, uint256 amount);

    error AlreadyClaimed();
    error InvalidProof();
    error TransferFailed();
    error ArrayLengthMismatch();
    error InvalidAmount();
    error InvalidToken();

    constructor(address _rewardToken) Ownable(msg.sender) {
        rewardToken = IERC20(_rewardToken);
    }

    function setMerkleRoot(
        uint256 poolId,
        bytes32 merkleRoot
    ) external onlyOwner {
        merkleRoots[poolId] = merkleRoot;
        emit MerkleRootSet(poolId, merkleRoot);
    }

    function setBatchMerkleRoots(
        uint256[] calldata poolIds,
        bytes32[] calldata roots
    ) external onlyOwner {
        if (poolIds.length != roots.length) revert ArrayLengthMismatch();

        for (uint256 i = 0; i < poolIds.length; i++) {
            merkleRoots[poolIds[i]] = roots[i];
            emit MerkleRootSet(poolIds[i], roots[i]);
        }
    }

    function claimReward(
        uint256 poolId,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) external nonReentrant {
        if (hasClaimed[poolId][msg.sender]) revert AlreadyClaimed();

        bytes32 node = keccak256(abi.encodePacked(poolId, msg.sender, amount));

        if (!MerkleProof.verify(merkleProof, merkleRoots[poolId], node)) {
            revert InvalidProof();
        }

        hasClaimed[poolId][msg.sender] = true;

        bool success = rewardToken.transfer(msg.sender, amount);
        if (!success) revert TransferFailed();

        emit RewardClaimed(poolId, msg.sender, amount);
    }

    function batchClaimRewards(
        uint256[] calldata poolIds,
        uint256[] calldata amounts,
        bytes32[][] calldata merkleProofs
    ) external nonReentrant {
        if (
            poolIds.length != amounts.length ||
            amounts.length != merkleProofs.length
        ) revert ArrayLengthMismatch();

        uint256 totalAmount;

        for (uint256 i = 0; i < poolIds.length; i++) {
            if (hasClaimed[poolIds[i]][msg.sender]) revert AlreadyClaimed();

            bytes32 node = keccak256(
                abi.encodePacked(poolIds[i], msg.sender, amounts[i])
            );

            if (
                !MerkleProof.verify(
                    merkleProofs[i],
                    merkleRoots[poolIds[i]],
                    node
                )
            ) {
                revert InvalidProof();
            }

            hasClaimed[poolIds[i]][msg.sender] = true;
            totalAmount += amounts[i];

            emit RewardClaimed(poolIds[i], msg.sender, amounts[i]);
        }

        bool success = rewardToken.transfer(msg.sender, totalAmount);
        if (!success) revert TransferFailed();
    }

    /**
     * @notice Emergency function to withdraw ERC20 tokens
     * @dev Only owner can call this function
     * @param token Address of the ERC20 token to withdraw
     * @param amount Amount of tokens to withdraw
     */
    function emergencyWithdraw(
        address token,
        uint256 amount
    ) external onlyOwner nonReentrant {
        if (token == address(0)) revert InvalidToken();
        if (amount == 0) revert InvalidAmount();

        IERC20 tokenToWithdraw = IERC20(token);
        bool success = tokenToWithdraw.transfer(owner(), amount);
        if (!success) revert TransferFailed();

        emit EmergencyWithdraw(token, amount);
    }
}