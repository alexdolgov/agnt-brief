// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title Pre-CCA Bonus Claim (LSN v1)
/// @notice Permissionless claim interface for the one-time pre-CCA bonus.
/// @dev Implements the MASTER_SPEC v1 requirements for Merkle-root publication and claiming.
interface IPreCcaBonusClaim {
    // -------- Errors --------

    /// @notice Thrown when caller is not authorized.
    error NotAuthorized();

    /// @notice Thrown when an address input is zero.
    error ZeroAddress();

    /// @notice Thrown when a numeric input is invalid.
    error InvalidAmount();

    /// @notice Thrown when merkle root was already configured.
    error MerkleRootAlreadySet();

    /// @notice Thrown when merkle root has not been configured.
    error MerkleRootUnset();

    /// @notice Thrown when claim deadline has passed.
    error DeadlineExpired();

    /// @notice Thrown when claim deadline has not passed yet.
    error DeadlineNotExpired();

    /// @notice Thrown when sponsor already claimed.
    error AlreadyClaimed();

    /// @notice Thrown when provided merkle proof is invalid.
    error MerkleProofInvalid();

    /// @notice Thrown when contract balance is insufficient to pay claim.
    error Underfunded();

    // -------- Events --------

    /// @notice Emitted when multisig is updated.
    event MultisigUpdated(address indexed oldMultisig, address indexed newMultisig);

    /// @notice Emitted when pre-CCA merkle root is published.
    event PreCcaMerkleRootPublished(bytes32 root, uint64 snapshotBlockB);

    /// @notice Emitted when claim window is set.
    event PreCcaClaimWindowSet(uint64 claimDeadline, uint64 claimWindowSeconds);

    /// @notice Emitted when a pre-CCA bonus claim succeeds.
    event PreCcaBonusClaimed(address indexed sponsorTba, uint256 amount);

    /// @notice Emitted when unclaimed funds are rescued.
    event PreCcaBonusRescued(address indexed to, uint256 amount);

    // -------- Read: Constants / Config --------

    /// @notice AGS token used for payouts.
    function AGS_TOKEN() external view returns (IERC20);

    /// @notice Claim window length in seconds.
    /// @dev Applied once from root publication timestamp to derive `claimDeadline`.
    function CLAIM_WINDOW_SECONDS() external view returns (uint64);

    /// @notice Current multisig controller.
    function multisig() external view returns (address);

    /// @notice Merkle root for claim eligibility and payout amounts.
    function merkleRoot() external view returns (bytes32);

    /// @notice Snapshot block number encoded into claim leaves.
    function snapshotBlockB() external view returns (uint64);

    /// @notice Claim deadline timestamp (seconds since epoch).
    /// @dev Claims after this timestamp revert; rescue becomes available.
    function claimDeadline() external view returns (uint64);

    // -------- Read: Claim State --------

    /// @notice Whether a sponsor has already claimed.
    /// @param sponsorTba ERC-6551 sponsor account.
    /// @return hasClaimed True if claim already executed.
    function claimed(address sponsorTba) external view returns (bool);

    // -------- Write: Admin --------

    /// @notice Update the multisig controller address.
    /// @dev Current multisig only.
    /// @param newMultisig New multisig address.
    function setMultisig(address newMultisig) external;

    /// @notice Publish the Merkle root and snapshot block exactly once.
    /// @dev Leaves are domain-bound to this contract, chain id, and snapshot block.
    /// @param root Merkle root of the eligible sponsor payouts.
    /// @param snapshotBlockB Snapshot block number used in leaf construction.
    function setMerkleRoot(bytes32 root, uint64 snapshotBlockB) external;

    // -------- Write: Claiming --------

    /// @notice Claim a pre-CCA bonus for `sponsorTba`.
    /// @dev Pays directly to the `sponsorTba` and reverts on any failure (fail-closed).
    /// @param sponsorTba ERC-6551 sponsor account receiving the payout.
    /// @param amount AGS amount encoded in the Merkle leaf.
    /// @param proof Merkle proof for (sponsorTba, amount).
    function claim(address sponsorTba, uint256 amount, bytes32[] calldata proof) external;

    /// @notice Rescue unclaimed AGS after the claim window closes.
    function rescueUnclaimed() external;
}
