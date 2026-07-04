// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

import "../interfaces/IBetMining.sol";
import "../interfaces/IBEP20.sol";
import "../libraries/SafeBEP20.sol";

/**
 * @title BetMiningDistributor
 * @notice It distributes LC tokens with rolling Merkle airdrops.
 */
contract BetMiningDistributor is IBetMining, Pausable, ReentrancyGuard, Ownable {
    using SafeBEP20 for IBEP20;

    uint256 public constant BUFFER_ADMIN_WITHDRAW = 3 days;

    IBEP20 public immutable lcToken;

    // Current reward round (users can only claim pending rewards for the current round)
    uint256 public currentRewardRound;

    // Last paused timestamp
    uint256 public lastPausedTimestamp;

    // Max amount per user in current tree
    uint256 public maximumAmountPerUserInCurrentTree;

    // Total amount claimed by user (in LC)
    mapping(address => uint256) public amountClaimedByUser;

    // Merkle root for a reward round
    mapping(uint256 => bytes32) public merkleRootOfRewardRound;

    // Checks whether a merkle root was used
    mapping(bytes32 => bool) public merkleRootUsed;

    // Keeps track on whether user has claimed at a given reward round
    mapping(uint256 => mapping(address => bool)) public hasUserClaimedForRewardRound;

    event RewardsClaim(address indexed user, uint256 indexed rewardRound, uint256 amount);
    event UpdateBetMining(uint256 indexed rewardRound);
    event TokenWithdrawnOwner(uint256 amount);

    /**
     * @notice Constructor
     * @param _lcToken address of the LC token
     */
    constructor(address _lcToken) {
        lcToken = IBEP20(_lcToken);
        _pause();
    }

    /**
     * @notice Claim pending rewards
     * @param amount amount to claim
     * @param merkleProof array containing the merkle proof
     */
    function claim(uint256 amount, bytes32[] calldata merkleProof) external whenNotPaused nonReentrant {
        // Verify the reward round is not claimed already
        require(!hasUserClaimedForRewardRound[currentRewardRound][msg.sender], "Rewards: Already claimed");

        (bool claimStatus, uint256 adjustedAmount) = _canClaim(msg.sender, amount, merkleProof);

        require(claimStatus, "Rewards: Invalid proof");
        require(maximumAmountPerUserInCurrentTree >= amount, "Rewards: Amount higher than max");

        // Set mapping for user and round as true
        hasUserClaimedForRewardRound[currentRewardRound][msg.sender] = true;

        // Adjust amount claimed
        amountClaimedByUser[msg.sender] += adjustedAmount;

        // Transfer adjusted amount
        lcToken.safeTransfer(msg.sender, adjustedAmount);

        emit RewardsClaim(msg.sender, currentRewardRound, adjustedAmount);
    }

    /**
     * @notice Update trading rewards with a new merkle root
     * @dev It automatically increments the currentRewardRound
     * @param merkleRoot root of the computed merkle tree
     */
    function updateBetMining(bytes32 merkleRoot, uint256 newMaximumAmountPerUser) external onlyOwner {
        require(!merkleRootUsed[merkleRoot], "Owner: Merkle root already used");

        currentRewardRound++;
        merkleRootOfRewardRound[currentRewardRound] = merkleRoot;
        merkleRootUsed[merkleRoot] = true;
        maximumAmountPerUserInCurrentTree = newMaximumAmountPerUser;

        emit UpdateBetMining(currentRewardRound);
    }

    /**
     * @notice Pause distribution
     */
    function pauseDistribution() external onlyOwner whenNotPaused {
        lastPausedTimestamp = block.timestamp;
        _pause();
    }

    /**
     * @notice Unpause distribution
     */
    function unpauseDistribution() external onlyOwner whenPaused {
        _unpause();
    }

    /**
     * @notice Transfer lc tokens back to owner
     * @dev It is for emergency purposes
     * @param amount amount to withdraw
     */
    function withdrawTokenRewards(uint256 amount) external onlyOwner whenPaused {
        require(block.timestamp > (lastPausedTimestamp + BUFFER_ADMIN_WITHDRAW), "Owner: Too early to withdraw");
        lcToken.safeTransfer(msg.sender, amount);

        emit TokenWithdrawnOwner(amount);
    }

    /**
     * @notice Check whether it is possible to claim and how much based on previous distribution
     * @param user address of the user
     * @param amount amount to claim
     * @param merkleProof array with the merkle proof
     */
    function canClaim(
        address user,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) external view returns (bool, uint256) {
        return _canClaim(user, amount, merkleProof);
    }

    /**
     * @notice Check whether it is possible to claim and how much based on previous distribution
     * @param user address of the user
     * @param amount amount to claim
     * @param merkleProof array with the merkle proof
     */
    function _canClaim(
        address user,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) internal view returns (bool, uint256) {
        // Compute the node and verify the merkle proof
        bytes32 node = keccak256(abi.encodePacked(user, amount));
        bool canUserClaim = MerkleProof.verify(merkleProof, merkleRootOfRewardRound[currentRewardRound], node);

        if ((!canUserClaim) || (hasUserClaimedForRewardRound[currentRewardRound][user])) {
            return (false, 0);
        } else {
            return (true, amount - amountClaimedByUser[user]);
        }
    }

    function bet(
        address,
        address,
        address,
        uint256
    ) public override pure returns (bool) {
        return true;
    }

    function getLuckyPower(address) public override pure returns (uint256){
        return 0;
    }
}