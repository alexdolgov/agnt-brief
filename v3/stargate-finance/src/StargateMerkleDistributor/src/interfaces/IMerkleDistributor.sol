// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title Merkle-based token distributor interface
 * @notice Interface for StargateMerkleDistributor.
 */
interface IMerkleDistributor {
    /**
     * @notice Emitted after an eligible claim succeeds.
     */
    event Claimed(uint256 index, address indexed account, uint256 amount);

    /**
     * @notice Emitted when the owner removes tokens from the contract in an emergency scenario.
     */
    event EmergencyWithdrawn(address token, address receiver, uint256 amount);

    /**
     * @notice Merkle proof did not match the configured root.
     */
    error InvalidProof();

    /**
     * @notice Claim bitmap already marks the provided index as claimed.
     */
    error AlreadyClaimed();

    /**
     * @notice Address of the ERC20 token distributed by the contract.
     * @return ERC20 token interface used for transfers.
     */
    function token() external view returns (IERC20);

    /**
     * @notice Merkle root that encodes account eligibility and claimable amounts.
     * @return Root hash of the merkle tree.
     */
    function merkleRoot() external view returns (bytes32);

    /**
     * @notice Claim tokens for `account` if the provided data matches the merkle root.
     * @param index Leaf index assigned to the claim in the tree.
     * @param account Address that should receive the tokens.
     * @param amount Exact amount encoded in the merkle leaf.
     * @param merkleProof Array of sibling hashes proving membership under `merkleRoot`.
     */
    function claim(uint256 index, address account, uint256 amount, bytes32[] calldata merkleProof) external;

    /**
     * @notice Check whether a leaf index has already been marked as claimed.
     * @param index Leaf index assigned to the claim in the tree.
     * @return True if the claim at `index` can no longer be processed.
     * @dev for tracking the claims a packed array of booleans based on the index is used
     */
    function isClaimed(uint256 index) external view returns (bool);
}
