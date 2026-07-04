// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {BlastERC20RebasingYield} from "./BlastERC20RebasingYield.sol";

/**
 * @title RewardDistributor
 * @notice It distributes reward tokens with rolling Merkle airdrops.
 * @author predict.fun protocol team
 */
contract RewardDistributor is Pausable, ReentrancyGuard, AccessControl, BlastERC20RebasingYield {
    using SafeERC20 for ERC20;

    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    /**
     * @notice The reward token
     */
    ERC20 public immutable REWARD_TOKEN;

    // Current round (users can only claim pending rewards for the current round)
    uint256 public currentRound;

    // Users can claim until this timestamp
    uint256 public canClaimUntil;

    // Max amount per user in current tree
    uint256 public maximumAmountPerUserInCurrentTree;

    // Total amount claimed by user (in reward token)
    mapping(address => uint256) public amountClaimedByUser;

    // Merkle root for a round
    mapping(uint256 => bytes32) public merkleRootOfRound;

    // Keeps track on whether user has claimed at a given round
    mapping(uint256 => mapping(address => bool)) public hasUserClaimedForRound;

    event RewardClaimed(address indexed user, uint256 indexed round, uint256 amount);
    event RewardDistributionUpdated(uint256 indexed round);
    event TokenWithdrawn(address currency, uint256 amount);
    event CanClaimUntilUpdated(uint256 timestamp);

    error AlreadyClaimed();
    error AmountHigherThanMax();
    error ClaimPeriodEnded();
    error InvalidProof();

    /**
     * @notice Constructor
     * @param _rewardToken address of the reward token
     * @param _owner address of the owner
     * @param _operator address of the operator
     * @param _addressFinder address finder
     */
    constructor(
        address _rewardToken,
        address _owner,
        address _operator,
        address _addressFinder
    ) BlastERC20RebasingYield(_addressFinder) {
        REWARD_TOKEN = ERC20(_rewardToken);

        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
        _grantRole(OPERATOR_ROLE, _owner);
        _grantRole(OPERATOR_ROLE, _operator);
    }

    /**
     * @notice Claim pending rewards
     * @param amount amount to claim
     * @param merkleProof array containing the merkle proof
     */
    function claim(uint256 amount, bytes32[] calldata merkleProof) external whenNotPaused nonReentrant {
        // Verify the round is not claimed already
        if (hasUserClaimedForRound[currentRound][msg.sender]) {
            revert AlreadyClaimed();
        }

        if (block.timestamp >= canClaimUntil) {
            revert ClaimPeriodEnded();
        }

        (bool claimStatus, uint256 adjustedAmount) = _canClaim(msg.sender, amount, merkleProof);

        if (!claimStatus) {
            revert InvalidProof();
        }
        if (amount > maximumAmountPerUserInCurrentTree) {
            revert AmountHigherThanMax();
        }

        // Set mapping for user and round as true
        hasUserClaimedForRound[currentRound][msg.sender] = true;

        // Adjust amount claimed
        amountClaimedByUser[msg.sender] += adjustedAmount;

        // Transfer adjusted amount
        REWARD_TOKEN.safeTransfer(msg.sender, adjustedAmount);

        emit RewardClaimed(msg.sender, currentRound, adjustedAmount);
    }

    /**
     * @notice Update reward distribution with a new merkle root
     * @dev It automatically increments the currentRound
     * @param merkleRoot root of the computed merkle tree
     */
    function updateRewardDistribution(
        bytes32 merkleRoot,
        uint256 newMaximumAmountPerUser
    ) external whenPaused onlyRole(OPERATOR_ROLE) {
        currentRound++;
        merkleRootOfRound[currentRound] = merkleRoot;
        maximumAmountPerUserInCurrentTree = newMaximumAmountPerUser;

        emit RewardDistributionUpdated(currentRound);
    }

    function updateCanClaimUntil(uint256 timestamp) external onlyRole(OPERATOR_ROLE) {
        canClaimUntil = timestamp;
        emit CanClaimUntilUpdated(timestamp);
    }

    /**
     * @notice Pause claim
     */
    function pause() external onlyRole(OPERATOR_ROLE) whenNotPaused {
        _pause();
    }

    /**
     * @notice Unpause claim
     */
    function unpause() external onlyRole(OPERATOR_ROLE) whenPaused {
        _unpause();
    }

    /**
     * @notice Transfer reward token back to owner
     * @dev It is for emergency purposes
     * @param currency currency to withdraw
     * @param amount amount to withdraw
     */
    function withdrawToken(address currency, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        ERC20(currency).safeTransfer(msg.sender, amount);
        emit TokenWithdrawn(currency, amount);
    }

    /**
     * @notice Claim WETH/USDB yield
     *
     * @param wethReceiver The address to receive WETH yield if there is any
     * @param usdbReceiver The address to receive USDB yield if there is any
     */
    function claimYield(address wethReceiver, address usdbReceiver) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _claimERC20RebasingYield(wethReceiver, usdbReceiver);
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
        if (block.timestamp >= canClaimUntil) {
            return (false, 0);
        }

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
        bytes32 node = keccak256(bytes.concat(keccak256(abi.encode(user, amount))));

        bool canUserClaim = MerkleProof.verify(merkleProof, merkleRootOfRound[currentRound], node);

        if ((!canUserClaim) || (hasUserClaimedForRound[currentRound][user])) {
            return (false, 0);
        } else {
            return (true, amount - amountClaimedByUser[user]);
        }
    }
}
