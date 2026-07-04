// SPDX-License-Identifier: MIT
pragma solidity >=0.8.29;

import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { MerkleProof } from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { Pausable } from "@openzeppelin/contracts/utils/Pausable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

struct Claim {
    uint256 amount;
    uint32 timestamp;
}

contract IntuitionEthClaim is Ownable, Pausable, ReentrancyGuard {
    /*//////////////////////////////////////////////////////////////
                              STATE VARIABLES
    //////////////////////////////////////////////////////////////*/
    bytes32 private _merkleRoot;

    uint32 private _claimEndTimestamp;

    mapping(address account => Claim claim) private _claims;

    /*//////////////////////////////////////////////////////////////
                              EVENTS
    //////////////////////////////////////////////////////////////*/
    event Claimed(address indexed user, uint256 amount, uint32 timestamp);

    /*//////////////////////////////////////////////////////////////
                              ERRORS
    //////////////////////////////////////////////////////////////*/

    /// @notice Thrown when a claim is attempted after the claim period has ended.
    error ClaimExpired();

    /// @notice Thrown when a admin claim is attempted before the claim period has ended.
    error ClaimsNotExpired();

    /// @notice Thrown when an invalid merkle root is provided.
    error InvalidMerkleRoot();

    /// @notice Thrown when an invalid merkle proof is provided.
    error InvalidMerkleProof();

    /// @notice Thrown when a claim is attempted with insufficient balance.
    error InsufficientBalance();

    /// @notice Thrown when a claim is attempted more than once.
    error PreviouslyClaimed();

    constructor(address admin_, bytes32 merkleRoot_, uint32 claimEndTimestamp_) Ownable(admin_) {
        if (merkleRoot_ == bytes32(0)) revert InvalidMerkleRoot();
        _merkleRoot = merkleRoot_;
        _claimEndTimestamp = claimEndTimestamp_;
    }

    /// @notice Allow the contract to receive ETH
    receive() external payable {}

    /*//////////////////////////////////////////////////////////////
                               GETTERS
    //////////////////////////////////////////////////////////////*/

    function claims(address account) external view returns (uint256 amount, uint32 timestamp) {
        Claim storage c = _claims[account];
        return (c.amount, c.timestamp);
    }

    function claimEndTimestamp() external view returns (uint32) {
        return _claimEndTimestamp;
    }

    function merkleRoot() external view returns (bytes32) {
        return _merkleRoot;
    }

    /*//////////////////////////////////////////////////////////////
                               USER ACTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Claim vested tokens, transferring them directly to the caller.
     */
    function claim(uint256 amount, bytes32[] calldata proof) external whenNotPaused nonReentrant {

        if (block.timestamp > _claimEndTimestamp) revert ClaimExpired();
        address payable recipient = payable(msg.sender);
        Claim storage c = _claims[recipient];

        // --- validations --- //
        if (c.timestamp != 0 && c.amount != 0) revert PreviouslyClaimed(); // Already claimed
        _verifyProof(recipient, amount, proof); // Validate the merkle proof

        // --- state updates --- //
        c.amount = amount;
        c.timestamp = uint32(block.timestamp);

        // --- effects --- //
        Address.sendValue(recipient, amount);

        emit Claimed(recipient, amount, uint32(block.timestamp));
    }

    /*//////////////////////////////////////////////////////////////
                               OWNER ACTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Owner withdraws all ETH from the contract.
    /// @param amount The amount of ETH to withdraw.
    /// @dev Reverts if the balance is zero.
    function withdraw(uint256 amount) external onlyOwner whenPaused nonReentrant {
        // Check if the claim period has ended.
        if (block.timestamp < _claimEndTimestamp) revert ClaimsNotExpired();

        // Check if the contract has enough balance.
        if (address(this).balance < amount) revert InsufficientBalance();

        // Send the requested amount to the owner.
        Address.sendValue(payable(owner()), amount);
    }

    /// @notice Owner pauses the contract.
    function pause() external onlyOwner whenNotPaused {
        _pause();
    }

    /// @notice Owner unpauses the contract.
    function unpause() external onlyOwner whenPaused {
        _unpause();
    }

    function setClaimEndTimestamp(uint32 newClaimEndTimestamp) external onlyOwner {
        _claimEndTimestamp = newClaimEndTimestamp;
    }

    /*//////////////////////////////////////////////////////////////
                              INTERNAL LOGIC
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Validates the merkle proof for (`user`,`amount`).  Reverts if invalid.
     */
    function _verifyProof(address user, uint256 amount, bytes32[] calldata proof) internal view {
        bytes32 leaf = keccak256(abi.encodePacked(user, amount));
        if (!MerkleProof.verify(proof, _merkleRoot, leaf)) revert InvalidMerkleProof();
    }
}
