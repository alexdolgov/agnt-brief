//SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.24;

import { Ownable } from "solady/auth/Ownable.sol";
import { Pausable } from "openzeppelin/utils/Pausable.sol";
import { MerkleProofLib } from "solady/utils/MerkleProofLib.sol";
import { SafeTransferLib } from "solady/utils/SafeTransferLib.sol";
import { AOperator } from "./abstracts/AOperator.sol";
import { Errors } from "./libraries/Errors.sol";
import { FeeM } from "src/FeeM.sol";

/**
 * @title AMerkleDistributor
 * @author 0xMemoryGrinder
 * @dev Abstract contract which implements the merkle root update
 */
contract AirdropDistributor is Ownable, Pausable, FeeM {
    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    mapping(uint256 epoch => bytes32 merkleRoot) public epochsMerkleRoots;

    mapping(uint256 epoch => mapping(address account => bool claimed)) public claimedStatus;

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    event MerkleRootUpdated(uint256 epoch, bytes32 merkleRoot);
    event Claimed(uint256 epoch, address token, address account, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(address initialOwner) {
        _initializeOwner(initialOwner);
        registerMe();
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Get the merkle root for a given epoch
     * @param epoch Epoch id
     * @return bytes32 : merkle root
     */
    function getEpochMerkleRoot(uint256 epoch) external view returns (bytes32) {
        return epochsMerkleRoots[epoch];
    }

    /**
     * @notice Checks if the rewards were claimed for an user on a given period
     * @dev Checks if the rewards were claimed for an user (based on the index) on a given period
     * @param epoch Epoch id
     * @param account Account performing the claim
     * @return bool : true if already claimed
     */
    function isClaimed(uint256 epoch, address account) public view returns (bool) {
        return claimedStatus[epoch][account];
    }

    /*//////////////////////////////////////////////////////////////
                        EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function claim(
        uint256 epoch,
        address token,
        address account,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) external whenNotPaused {
        _claim(epoch, token, account, amount, merkleProof, true);
    }

    /*//////////////////////////////////////////////////////////////
                        OPERATOR FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Update the merkle root
     * @param epoch Epoch id
     * @param newMerkleRoot New merkle root after a harvest, set by the operator
     */
    function addEpochRewards(uint256 epoch, bytes32 newMerkleRoot) external onlyOwner {
        if (epoch == 0) revert Errors.ZeroValue();
        if (newMerkleRoot == bytes32(0)) revert Errors.ZeroValue();
        if (epochsMerkleRoots[epoch] != bytes32(0)) revert Errors.EpochAlreadyDistributed();

        epochsMerkleRoots[epoch] = newMerkleRoot;
        emit MerkleRootUpdated(epoch, newMerkleRoot);
    }

    /*//////////////////////////////////////////////////////////////
                            OWNER FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Pause the contract
     */
    function pause() external onlyOwner whenNotPaused {
        _pause();
    }

    /**
     * @dev Unpause the contract
     */
    function unpause() external onlyOwner whenPaused {
        _unpause();
    }

    /**
     * @dev Emergency update the merkle root
     * @param epoch Epoch id
     * @param newMerkleRoot New merkle root
     */
    function emergencyUpdateMerkleRoot(uint256 epoch, bytes32 newMerkleRoot) external onlyOwner {
        if (epoch == 0) revert Errors.ZeroValue();
        if (newMerkleRoot == bytes32(0)) revert Errors.ZeroValue();

        epochsMerkleRoots[epoch] = newMerkleRoot;
        emit MerkleRootUpdated(epoch, newMerkleRoot);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Sets the rewards as claimed for the index on the given period
     * @param epoch Epoch id
     * @param account Account performing the claim
     */
    function _setClaimed(uint256 epoch, address account) private {
        claimedStatus[epoch][account] = true;
    }

    /**
     * @dev Claim a token reward for a given account
     * @param epoch Epoch id
     * @param token Token address to claim
     * @param account Account to claim rewards for
     * @param amount Rewards amount to claim
     * @param merkleProof Merkle proof to validate the claim
     */
    function _claim(
        uint256 epoch,
        address token,
        address account,
        uint256 amount,
        bytes32[] calldata merkleProof,
        bool transfer
    ) internal {
        if (token == address(0) || account == address(0)) revert Errors.ZeroAddress();
        if (amount == 0) revert Errors.ZeroValue();
        if (epochsMerkleRoots[epoch] == bytes32(0)) revert Errors.EpochNotInitialized();
        if (isClaimed(epoch, account)) revert Errors.AlreadyClaimed();

        // Verify the claim info with the merkle proof
        if (!_verifyProof(epoch, token, account, amount, merkleProof)) {
            revert Errors.InvalidMerkleProof();
        }
        _setClaimed(epoch, account);
        if (transfer) {
            // Transfer the reward to the account
            SafeTransferLib.safeTransfer(token, account, amount);
        }
        emit Claimed(epoch, token, account, amount);
    }

    /**
     * @dev Verify the claim info with the merkle proof
     */
    function _verifyProof(
        uint256 epoch,
        address token,
        address account,
        uint256 amount,
        bytes32[] calldata proof
    ) private view returns (bool) {
        // Create merkle leaf
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(token, account, amount))));

        // Check if the computed hash (root) is equal to the provided root
        return MerkleProofLib.verifyCalldata(proof, epochsMerkleRoots[epoch], leaf);
    }
}
