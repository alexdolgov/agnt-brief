// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "./interfaces/IStakeNOONRewarder.sol";

/**
 * @title stakeNOONRewarder
 * @notice Merkle-based cumulative NOON reward distributor.
 *
 * Cumulative model: each merkle leaf encodes the user's *total* entitlement
 * across all distributions. When a user claims, they receive the difference
 * between the new cumulative amount and what they have already claimed.
 * A distributionId counter tracks each round so proofs from old rounds
 * cannot be replayed against a new merkle root.
 */
contract stakeNOONRewarder is IStakeNOONRewarder, Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    IERC20 public noon;

    uint256 public currentDistributionId;
    RewardDistribution public currentDistribution;
    mapping(address => uint256) public claimedAmounts; // user => total cumulative claimed amount

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _noon, address initialOwner) public initializer {
        require(_noon != address(0), "NOON address cannot be zero");
        require(initialOwner != address(0), "Owner address cannot be zero");

        __Ownable_init(initialOwner);
        __ReentrancyGuard_init();

        noon = IERC20(_noon);

        emit RewarderInitialized(_noon, initialOwner);
    }

    function createRewardDistribution(bytes32 merkleRoot, uint256 additionalReward) external onlyOwner {
        require(additionalReward > 0, "Reward must be greater than 0");
        require(!currentDistribution.isActive, "Active distribution exists");

        currentDistributionId++;

        // Transfer NOON tokens to this contract
        noon.safeTransferFrom(msg.sender, address(this), additionalReward);

        currentDistribution = RewardDistribution({
            merkleRoot: merkleRoot,
            additionalReward: additionalReward,
            distributionId: currentDistributionId,
            isActive: true
        });

        emit RewardDistributionCreated(currentDistributionId, merkleRoot, additionalReward);
    }

    function claimReward(RewardClaim calldata claim) external nonReentrant {
        require(currentDistribution.isActive, "No active distribution");

        // Double-hash the leaf to prevent second preimage attacks
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(msg.sender, claim.amount))));
        require(MerkleProof.verify(claim.proof, currentDistribution.merkleRoot, leaf), "Invalid proof");

        // Calculate claimable amount (cumulative model)
        uint256 alreadyClaimed = claimedAmounts[msg.sender];
        require(claim.amount > alreadyClaimed, "No new rewards to claim");
        uint256 claimableAmount = claim.amount - alreadyClaimed;

        // Update total claimed amount
        claimedAmounts[msg.sender] = claim.amount;

        // Transfer reward
        noon.safeTransfer(msg.sender, claimableAmount);

        emit RewardClaimed(msg.sender, claimableAmount, currentDistribution.distributionId);
    }

    function endRewardDistribution() external onlyOwner {
        require(currentDistribution.isActive, "No active distribution");
        currentDistribution.isActive = false;
        emit RewardDistributionEnded(currentDistribution.distributionId);
    }

    /**
     * @notice Recover leftover NOON tokens from the contract (e.g. unclaimed rewards after a distribution ends).
     * @param to The address to send the recovered tokens to.
     * @param amount The amount of NOON to recover.
     */
    function recoverLeftoverRewards(address to, uint256 amount) external onlyOwner {
        require(to != address(0), "Cannot recover to zero address");
        require(amount > 0, "Amount must be greater than 0");
        noon.safeTransfer(to, amount);
        emit LeftoverRecovered(to, amount);
    }

    function getTotalClaimedAmount(address user) external view returns (uint256) {
        return claimedAmounts[user];
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}
