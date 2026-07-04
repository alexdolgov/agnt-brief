// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IPreCcaBonusClaim} from "./interfaces/IPreCcaBonusClaim.sol";

contract PreCcaBonusClaim is IPreCcaBonusClaim, ReentrancyGuard {
    using SafeERC20 for IERC20;

    bytes32 private constant PRE_CCA_LEAF_DOMAIN = keccak256("LSN_PRE_CCA_BONUS_V1");

    /// @inheritdoc IPreCcaBonusClaim
    IERC20 public immutable override AGS_TOKEN;
    /// @inheritdoc IPreCcaBonusClaim
    uint64 public constant override CLAIM_WINDOW_SECONDS = 180 days;
    /// @inheritdoc IPreCcaBonusClaim
    address public override multisig;

    /// @inheritdoc IPreCcaBonusClaim
    bytes32 public override merkleRoot;
    /// @inheritdoc IPreCcaBonusClaim
    uint64 public override snapshotBlockB;
    /// @inheritdoc IPreCcaBonusClaim
    uint64 public override claimDeadline;

    /// @inheritdoc IPreCcaBonusClaim
    mapping(address sponsorTba => bool claimed) public override claimed;

    modifier onlyMultisig() {
        if (msg.sender != multisig) {
            revert NotAuthorized();
        }
        _;
    }

    constructor(address agsToken_, address multisig_) {
        if (agsToken_ == address(0) || multisig_ == address(0)) {
            revert ZeroAddress();
        }
        AGS_TOKEN = IERC20(agsToken_);
        multisig = multisig_;
    }

    /// @inheritdoc IPreCcaBonusClaim
    function setMultisig(address newMultisig) external override onlyMultisig {
        if (newMultisig == address(0)) {
            revert ZeroAddress();
        }
        address current = multisig;
        multisig = newMultisig;
        emit MultisigUpdated(current, newMultisig);
    }

    /// @inheritdoc IPreCcaBonusClaim
    function setMerkleRoot(bytes32 root, uint64 snapshotBlockB_) external override onlyMultisig {
        if (root == bytes32(0)) {
            revert InvalidAmount();
        }
        if (merkleRoot != bytes32(0)) {
            revert MerkleRootAlreadySet();
        }

        merkleRoot = root;
        snapshotBlockB = snapshotBlockB_;
        claimDeadline = uint64(block.timestamp) + CLAIM_WINDOW_SECONDS;

        emit PreCcaMerkleRootPublished(root, snapshotBlockB_);
        emit PreCcaClaimWindowSet(claimDeadline, CLAIM_WINDOW_SECONDS);
    }

    /// @inheritdoc IPreCcaBonusClaim
    function claim(address sponsorTba, uint256 amount, bytes32[] calldata proof) external override nonReentrant {
        if (merkleRoot == bytes32(0)) {
            revert MerkleRootUnset();
        }
        if (block.timestamp > claimDeadline) {
            revert DeadlineExpired();
        }
        if (sponsorTba == address(0)) {
            revert ZeroAddress();
        }
        if (amount == 0) {
            revert InvalidAmount();
        }
        if (claimed[sponsorTba]) {
            revert AlreadyClaimed();
        }

        bytes32 leaf = keccak256(
            abi.encode(PRE_CCA_LEAF_DOMAIN, block.chainid, address(this), snapshotBlockB, sponsorTba, amount)
        );
        if (!MerkleProof.verifyCalldata(proof, merkleRoot, leaf)) {
            revert MerkleProofInvalid();
        }

        if (AGS_TOKEN.balanceOf(address(this)) < amount) {
            revert Underfunded();
        }

        claimed[sponsorTba] = true;
        AGS_TOKEN.safeTransfer(sponsorTba, amount);

        emit PreCcaBonusClaimed(sponsorTba, amount);
    }

    /// @inheritdoc IPreCcaBonusClaim
    function rescueUnclaimed() external override onlyMultisig {
        if (block.timestamp <= claimDeadline) {
            revert DeadlineNotExpired();
        }
        uint256 balance = AGS_TOKEN.balanceOf(address(this));
        if (balance == 0) {
            revert InvalidAmount();
        }
        AGS_TOKEN.safeTransfer(multisig, balance);
        emit PreCcaBonusRescued(multisig, balance);
    }
}
