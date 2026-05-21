// apps/contracts/contracts/merkle-distributor/interfaces/IMultiMerkleDistributor.sol

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/**
 * @title IMultiMerkleDistributor
 * @dev Interface for a distributor capable of handling multiple, distinct distributions
 * (e.g., airdrops, vesting schedules) from a single contract.
 */
interface IMultiMerkleDistributor {
  // ==================== STRUCTS ====================

  /**
   * @notice Represents the core, non-changing data for a single distribution.
   */
  struct Distribution {
    bytes32 merkleRoot;
    address token;
  }

  // ==================== EVENTS =====================

  /**
   * @notice Emitted when a user successfully claims their allocation from a distribution.
   * @param distributionId The ID of the distribution being claimed from.
   * @param account The address of the claimant.
   * @param amount The amount of tokens claimed.
   */
  event Claimed(
    uint256 indexed distributionId,
    address indexed account,
    uint256 amount
  );

  /**
   * @notice Emitted when a new distribution is created by the owner.
   * @param distributionId The ID of the new distribution.
   * @param merkleRoot The Merkle root for the new distribution.
   * @param token The token contract for the new distribution.
   */
  event DistributionCreated(
    uint256 indexed distributionId,
    bytes32 indexed merkleRoot,
    address indexed token
  );

  /**
   * @notice Emitted when the Merkle root of a distribution is updated by the owner.
   */
  event DistributionMerkleRootUpdated(
    uint256 indexed distributionId,
    bytes32 newMerkleRoot
  );

  /**
   * @notice Emitted when the token of a distribution is updated by the owner.
   */
  event DistributionTokenUpdated(
    uint256 indexed distributionId,
    address indexed newToken
  );

  // =================== FUNCTIONS ===================

  /**
   * @notice Allows a user to claim their tokens from a specific distribution.
   * @dev The contract must verify the Merkle proof against the stored root for the given distributionId.
   * @param distributionId The ID of the distribution to claim from.
   * @param account The recipient's address.
   * @param amount The amount of tokens to claim.
   * @param merkleProof The Merkle proof to verify the claim.
   */
  function claim(
    uint256 distributionId,
    address account,
    uint256 amount,
    bytes32[] calldata merkleProof
  ) external;

  /**
   * @notice Retrieves the static information for a specific distribution.
   * @param distributionId The ID of the distribution to retrieve.
   * @return The Distribution struct containing the merkleRoot and token address.
   */
  function getDistribution(
    uint256 distributionId
  ) external view returns (Distribution memory);
}
