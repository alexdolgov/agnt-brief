//SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.24;

import { Ownable } from "solady/auth/Ownable.sol";
import { MerkleProofLib } from "solady/utils/MerkleProofLib.sol";
import { SafeTransferLib } from "solady/utils/SafeTransferLib.sol";
import { IRewardsDistributor } from "./interfaces/IRewardsDistributor.sol";
import { AOperator } from "./abstracts/AOperator.sol";
import { Errors } from "./libraries/Errors.sol";

/**
 * @title AMerkleDistributor
 * @author 0xMemoryGrinder
 * @dev Abstract contract which implements the merkle root update
 */
contract RewardsDistributor is IRewardsDistributor, Ownable, AOperator {
    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    mapping(uint256 epoch => bytes32 merkleRoot) public epochsMerkleRoots;

    mapping(uint256 epoch => mapping(address account => bool claimed)) public claimedStatus;

    uint256 public constant CLAIM_AVAILABILITY_DELAY = 365 days;

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    event MerkleRootUpdated(uint256 epoch, bytes32 merkleRoot);
    event Claimed(uint256 epoch, address token, address account, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(address initialOperator, address initialOwner) AOperator(initialOperator, initialOwner) { }

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
    ) external override {
        _claim(epoch, token, account, amount, merkleProof, true);
    }

    function multiClaim(address account, IRewardsDistributor.ClaimParams[] calldata params) external override {
        (address[] memory tokens, uint256[] memory amounts) = _verifyMultiClaim(account, params);
        
        for (uint256 i; i < tokens.length; ++i) {
            SafeTransferLib.safeTransfer(tokens[i], account, amounts[i]);
        }
    }

    /*//////////////////////////////////////////////////////////////
                        OPERATOR FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Update the merkle root
     * @param epoch Epoch id
     * @param newMerkleRoot New merkle root after a harvest, set by the operator
     */
    function addEpochRewards(uint256 epoch, bytes32 newMerkleRoot) external onlyOperatorOrOwner {
        if (epoch == 0) revert Errors.ZeroValue();
        if (newMerkleRoot == bytes32(0)) revert Errors.ZeroValue();
        if (epochsMerkleRoots[epoch] != bytes32(0)) revert Errors.EpochAlreadyDistributed();

        epochsMerkleRoots[epoch] = newMerkleRoot;
        emit MerkleRootUpdated(epoch, newMerkleRoot);
    }

    /*//////////////////////////////////////////////////////////////
                            OWNER FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function retrieveUnclaimedReward(
        uint256 epoch,
        address token,
        address account,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) external onlyOwner {
        if (epoch + CLAIM_AVAILABILITY_DELAY > block.timestamp) revert Errors.ClaimStillAvailable();

        _claim(epoch, token, account, amount, merkleProof, false);

        // Transfer the reward to the owner
        SafeTransferLib.safeTransfer(token, owner(), amount);
    }

    function retrieveUnclaimedRewards(
        address account, IRewardsDistributor.ClaimParams[] calldata params
    ) external onlyOwner {
        for (uint256 i; i < params.length; ++i) {
            if (params[i].epoch + CLAIM_AVAILABILITY_DELAY > block.timestamp) revert Errors.ClaimStillAvailable();
        }

       (address[] memory tokens, uint256[] memory amounts) = _verifyMultiClaim(account, params);
        
        for (uint256 i; i < tokens.length; ++i) {
            SafeTransferLib.safeTransfer(tokens[i], owner(), amounts[i]);
        } 
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

    /**
     * @dev Claim multiple token rewards for given accounts
     * @param account Account to claim rewards for
     * @param params ClaimParams array containing the indexesn tokens, amounts and merkle proofs
     */
    function _verifyMultiClaim(address account, IRewardsDistributor.ClaimParams[] calldata params) internal returns (address[] memory, uint256[] memory) {
        uint256 length = params.length;
        address[] memory tokens = new address[](length);
        uint256[] memory claimedAmounts = new uint256[](length);
        uint256 uniqueTokens = 0;

        if (length == 0) revert Errors.EmptyArray();

        // Fill the tokens array with unique tokens
        for (uint256 i; i < length; ++i) {
            bool found = false;
            for (uint256 j; j < i; ++j) {
                if (params[i].token == tokens[j]) {
                    found = true;
                    break;
                }
            }
            if (found) continue;

            tokens[i] = params[i].token;
            ++uniqueTokens;
        }

        for (uint256 i; i < length; ++i) {
            _claim(
                params[i].epoch,
                params[i].token,
                account,
                params[i].amount,
                params[i].merkleProof,
                false
            );

            // Find the index of the token in the tokens array and add the claimed amount
            for (uint256 j; j < uniqueTokens; ++j) {
                if (params[i].token == tokens[j]) {
                    claimedAmounts[j] += params[i].amount;
                    break;
                }
            }
        }

        // Resizing the arrays to the unique tokens
        assembly {
            mstore(tokens, uniqueTokens)
            mstore(claimedAmounts, uniqueTokens)
        }

        return (tokens, claimedAmounts);
    }
}
