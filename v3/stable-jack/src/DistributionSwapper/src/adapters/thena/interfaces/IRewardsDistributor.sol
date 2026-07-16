//SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

/**
 * @title IRewardsDistributor
 * @author 0xMemoryGrinder
 * @dev MerkleDistributor interface which updates the merkle root when the claims are made
 */
interface IRewardsDistributor {
    struct ClaimParams {
        address token;
        uint256 epoch;
        uint256 amount;
        bytes32[] merkleProof;
    }

    struct ReclaimParams {
        address account;
        ClaimParams[] params;
    }

    /**
     * @dev Claim a token reward for a given account
     * @param epoch Epoch to claim rewards for
     * @param token Token address to claim
     * @param account Account to claim rewards for
     * @param amount Rewards amount to claim
     * @param merkleProof Merkle proof to validate the claim
     */
    function claim(
        uint256 epoch,
        address token,
        address account,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) external;

    /**
     * @dev Claim multiple token rewards for given accounts
     * @param account Account to claim rewards for
     * @param params ClaimParams array containing the tokens, amounts and merkle proofs
     */
    function multiClaim(address account, ClaimParams[] calldata params) external;

    /**
     * @dev Update the merkle root
     * @param epoch Epoch id
     * @param newMerkleRoot New merkle root after a harvest, set by the operator
     */
    function addEpochRewards(uint256 epoch, bytes32 newMerkleRoot) external;
}
