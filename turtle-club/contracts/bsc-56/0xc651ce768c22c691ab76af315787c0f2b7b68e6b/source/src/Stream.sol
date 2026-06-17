// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IStream} from "@/interfaces/IStream.sol";
/**
 * @title Stream
 * @dev Upgradeable contract for distributing rewards to users using Merkle Tree proofs
 * @author Turtle DAO
 */

contract Stream is IStream, Initializable, UUPSUpgradeable, Ownable2StepUpgradeable, PausableUpgradeable {
    using SafeERC20 for IERC20;
    using MerkleProof for bytes32[];
    // ================= STORAGE =================

    /// @custom:storage-location erc7201:turtle.storage.Stream
    struct StreamStorage {
        /// @notice Unique identifier of the reward stream
        bytes16 streamId;
        /// @notice The ERC20 token used for rewards
        IERC20 rewardToken;
        /// @notice Current Merkle root defining user reward entitlements
        MerkleRoot root;
        /// @notice Previous Merkle root, retained to support transitions
        MerkleRoot prevRoot;
        /// @notice Total amount of rewards claimed so far
        uint claimedRewards;
        /// @notice Mapping to track total amount claimed by each user across all rounds
        mapping(address => uint) claimedByUser;
    }

    // keccak256(abi.encode(uint(keccak256("turtle.storage.Stream")) - 1)) & ~bytes32(uint(0xff))
    bytes32 private constant StreamStorageLocation = 0x68a89ffc4a3e10c7fc9fc00c3e645f27a6f817f602bfbca3e51720bc7f312200;

    function _getStreamStorage() private pure returns (StreamStorage storage $) {
        assembly {
            $.slot := StreamStorageLocation
        }
    }

    // ================= EVENTS =================

    event StreamInitialized(bytes16 indexed streamId, IERC20 indexed rewardToken);

    event RewardsClaimed(address indexed user, uint40 indexed timestamp, uint claimedAmount, uint totalClaimedAmount);

    event MerkleRootUpdated(bytes32 rootHash, uint40 timestamp);

    event MerkleRootCleared();

    event PrevMerkleRootCleared();

    event FundsWithdrawn(address to, uint amount, address msgSender);

    event TokensRescued(IERC20 token, address to, uint amount);

    // ================= ERRORS =================

    error InvalidProof();
    error CannotRescueRewardToken();
    error AmountCannotBeZero();
    error InvalidRewardToken();
    error NoClaimableAmount();
    error InvalidMerkleRootHash();
    error InvalidMerkleRootTimestamp();
    error InvalidToAddress();
    error CannotRenounceOwnership();

    // ================= INITIALIZATION =================

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Initializes the Stream contract
     * @param rewardToken Address of the ERC20 token used for rewards
     */
    function initialize(bytes16 streamId, IERC20 rewardToken) external initializer {
        if (address(rewardToken) == address(0)) revert InvalidRewardToken();

        StreamStorage storage $ = _getStreamStorage();
        $.streamId = streamId;
        $.rewardToken = rewardToken;
        emit StreamInitialized(streamId, rewardToken);

        __UUPSUpgradeable_init();

        // NOTE: When a Stream contract is deployed via the StreamFactory, ownership is permanently assigned
        // to the StreamFactory and is not transferable.
        // In contrast, when a Stream contract is deployed as a standalone instance, ownership should be
        // transferable, provided the deployer (msg.sender) is an EOA or it has implemented the relevant logic.
        __Ownable_init(msg.sender);
        __Pausable_init();
    }

    // ================= VIEW FUNCTIONS =================

    /**
     * @dev Returns the version of the contract
     */
    function version() external pure returns (string memory) {
        return "1.0.0";
    }

    function isStream() external pure returns (bool) {
        return true;
    }

    function getStreamId() external view returns (bytes16) {
        return _getStreamStorage().streamId;
    }

    function getRewardToken() external view returns (IERC20) {
        return _getStreamStorage().rewardToken;
    }

    /// @notice Latest Merkle root
    function getRoot() external view returns (MerkleRoot memory) {
        return _getStreamStorage().root;
    }

    function getPrevRoot() external view returns (MerkleRoot memory) {
        return _getStreamStorage().prevRoot;
    }

    /// @notice Total amount of rewards claimed so far
    function getClaimedRewards() external view returns (uint) {
        return _getStreamStorage().claimedRewards;
    }

    /// @notice Function to track total amount claimed by each user across all rounds
    function getClaimedRewards(address user) external view returns (uint) {
        return _getStreamStorage().claimedByUser[user];
    }

    /**
     * @dev Returns the contract's reward token balance
     */
    function getContractBalance() external view returns (uint) {
        return _getStreamStorage().rewardToken.balanceOf(address(this));
    }

    // ================= CLAIM REWARDS =================

    /**
     * @dev Returns how much the user can claim right now (delta). Returns 0 if not claimable.
     * @param user User address
     * @param amount User's cumulative entitlement under current Merkle root
     * @param timestamp The timestamp associated with the Merkle root
     * @param merkleProof Merkle proof
     */
    function canClaim(
        address user,
        uint amount,
        uint40 timestamp,
        bytes32[] calldata merkleProof
    ) external view returns (uint) {
        // Paused
        if (paused()) return 0;

        // amount > 0
        if (amount == 0) return 0;

        // rootHash check
        bytes32 rootHash = _getMerkleRootHash(timestamp);
        if (rootHash == bytes32(0)) return 0;

        // Verify Merkle proof (for cumulative entitlement)
        if (!_verifyProof(merkleProof, rootHash, user, amount)) return 0;

        StreamStorage storage $ = _getStreamStorage();

        uint alreadyClaimed = $.claimedByUser[user];
        if (amount <= alreadyClaimed) return 0;

        uint toClaim;
        unchecked {
            toClaim = amount - alreadyClaimed;
        }

        // Must have enough balance to pay the full delta
        if ($.rewardToken.balanceOf(address(this)) < toClaim) return 0;

        return toClaim;
    }

    /**
     * @notice Claims rewards using a Merkle proof.
     * @dev This function can only be called when the contract is not paused.
     * @param amount The user's total cumulative entitlement under the Merkle root.
     * @param timestamp The timestamp associated with the Merkle root used for validation.
     * @param merkleProof The Merkle proof validating the user's cumulative entitlement.
     * @return The actual amount claimed.
     */
    function claim(
        uint amount,
        uint40 timestamp,
        bytes32[] calldata merkleProof
    ) external whenNotPaused returns (uint) {
        return _claimFor(msg.sender, amount, timestamp, merkleProof);
    }

    /**
     * @notice Claims rewards on behalf of a user using a Merkle proof.
     * @dev Only callable by the contract owner, to ensure that only permitted callers can
     *      trigger third-party claims. This function can only be called when the contract is not paused.
     * @param user The address receiving the claimed rewards.
     * @param amount The user's total cumulative entitlement under the Merkle root.
     * @param timestamp The timestamp associated with the Merkle root used for validation.
     * @param merkleProof The Merkle proof validating the user's cumulative entitlement.
     * @return The actual amount claimed.
     */
    function claimFor(
        address user,
        uint amount,
        uint40 timestamp,
        bytes32[] calldata merkleProof
    ) external whenNotPaused onlyOwner returns (uint) {
        return _claimFor(user, amount, timestamp, merkleProof);
    }

    /**
     * @dev Internal function to process a reward claim for a user using a Merkle proof.
     *      This function verifies the user's entitlement based on the provided Merkle proof,
     *      ensures the contract holds enough tokens, updates claim tracking, and transfers the claimable amount.
     * @param user The address of the user entitled to claim rewards.
     * @param amount The total cumulative reward amount the user is entitled to claim under the Merkle root.
     * @param timestamp The timestamp associated with the Merkle root.
     * @param merkleProof An array of hashes constituting the Merkle proof to validate the user's entitlement.
     * @return The actual amount claimed.
     *
     * Requirements:
     * - The `amount` must be greater than zero.
     * - The Merkle proof must be valid for the (user, amount) pair under the Merkle root.
     * - The user must not have already claimed the full entitled amount.
     * - The contract must have a sufficient token balance to fulfill the claim.
     *
     * Effects:
     * - Updates the user's claimed amount to the new cumulative value.
     * - Increments the total claimed rewards.
     * - Transfers the claimable amount (total earned minus already claimed) to the user.
     */
    function _claimFor(
        address user,
        uint amount,
        uint40 timestamp,
        bytes32[] calldata merkleProof
    ) private returns (uint) {
        if (amount == 0) revert AmountCannotBeZero();

        bytes32 rootHash = _getMerkleRootHash(timestamp);
        if (rootHash == bytes32(0)) revert InvalidMerkleRootTimestamp();

        // Verify the Merkle proof for cumulative entitlement
        if (!_verifyProof(merkleProof, rootHash, user, amount)) revert InvalidProof();

        StreamStorage storage $ = _getStreamStorage();

        uint alreadyClaimed = $.claimedByUser[user];
        if (amount <= alreadyClaimed) revert NoClaimableAmount();
        uint toClaim;
        unchecked {
            toClaim = amount - alreadyClaimed;
        }

        // Update state using cumulative tracking
        $.claimedByUser[user] = amount;
        $.claimedRewards += toClaim;

        // Transfer the delta
        $.rewardToken.safeTransfer(user, toClaim);

        emit RewardsClaimed(user, timestamp, toClaim, amount);

        return toClaim;
    }

    function _getMerkleRootHash(uint40 timestamp) private view returns (bytes32 hash) {
        StreamStorage storage $ = _getStreamStorage();

        MerkleRoot memory root = $.root;
        if (root.timestamp == timestamp) return root.hash;

        root = $.prevRoot;
        if (root.timestamp == timestamp) return root.hash;
    }

    function _verifyProof(
        bytes32[] calldata merkleProof,
        bytes32 rootHash,
        address user,
        uint amount
    ) private pure returns (bool) {
        bytes32 leaf = keccak256(abi.encodePacked(user, amount));
        return merkleProof.verifyCalldata(rootHash, leaf);
    }

    // ================= UPDATE MERKLE ROOT =================

    /**
     * @dev Updates stream's Merkle root
     * @param rootHash The Merkle root hash
     * @param timestamp The Merkle root timestamp
     */
    function setMerkleRoot(bytes32 rootHash, uint40 timestamp) external onlyOwner {
        if (rootHash == bytes32(0)) revert InvalidMerkleRootHash();

        StreamStorage storage $ = _getStreamStorage();

        MerkleRoot memory currentRoot = $.root;
        if (currentRoot.timestamp >= timestamp) revert InvalidMerkleRootTimestamp();

        $.prevRoot = currentRoot;
        $.root = MerkleRoot({hash: rootHash, timestamp: timestamp});

        emit MerkleRootUpdated(rootHash, timestamp);
    }

    function clearMerkleRoot() external onlyOwner {
        StreamStorage storage $ = _getStreamStorage();
        $.root = MerkleRoot({hash: bytes32(0), timestamp: 0});
        emit MerkleRootCleared();
    }

    function clearPrevMerkleRoot() external onlyOwner {
        StreamStorage storage $ = _getStreamStorage();
        $.prevRoot = MerkleRoot({hash: bytes32(0), timestamp: 0});
        emit PrevMerkleRootCleared();
    }

    // ================= STREAM CONFIG =================

    /**
     * @dev Pauses the contract, preventing claims
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @dev Unpauses the contract, allowing claims
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @dev Withdraw reward token
     * @param to Address to send the tokens
     * @param amount Amount to withdraw
     */
    function withdrawFunds(address to, uint amount) external onlyOwner {
        if (to == address(0)) revert InvalidToAddress();

        StreamStorage storage $ = _getStreamStorage();
        // Only reward token can be withdrawn
        IERC20 rewardToken = $.rewardToken;
        rewardToken.safeTransfer(to, amount);

        emit FundsWithdrawn(to, amount, msg.sender);
    }

    function rescueTokens(IERC20 token, address payable to, uint amount) external onlyOwner returns (uint) {
        if (to == address(0)) revert InvalidToAddress();

        StreamStorage storage $ = _getStreamStorage();

        if (token == $.rewardToken) revert CannotRescueRewardToken();

        bool isNative = address(token) == address(0);

        uint balance = isNative ? address(this).balance : token.balanceOf(address(this));
        if (balance < amount) amount = balance;

        if (isNative) {
            (bool success, bytes memory revertData) = to.call{value: amount}("");
            if (!success) {
                assembly {
                    revert(add(revertData, 32), mload(revertData))
                }
            }
        } else {
            token.safeTransfer(to, amount);
        }

        emit TokensRescued(token, to, amount);
        return amount;
    }

    /**
     * @dev Authorizes contract upgrades (only owner)
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    /**
     * @dev Prevents renouncing ownership to avoid leaving the contract without an owner
     */
    function renounceOwnership() public pure override {
        revert CannotRenounceOwnership();
    }
}
