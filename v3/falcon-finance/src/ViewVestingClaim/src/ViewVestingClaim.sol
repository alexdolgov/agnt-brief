// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Claim} from "./Claim.sol";
import {IClaim} from "./IClaim.sol";
import {IVestingClaim} from "./IVestingClaim.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

// Errors
error InvalidProof(); // Invalid merkle proof provided
error UserNotEligible(); // User did not choose Vest option or has not claimed yet

/**
 * @title ViewVestingClaim
 * @notice View contract to calculate vesting amounts without requiring first claim transaction
 * @dev This contract allows viewing of vesting data by providing merkle proof parameters
 *      and handles cases where users haven't made their first vesting claim yet.
 *
 * Handles four main cases:
 * 1. Cliff ended, no first claim made - calculates based on merkle data
 * 2. Some tokens claimed - uses existing VestingClaim view functions
 * 3. User ineligible - didn't select vesting or hasn't claimed initially
 * 4. Cliff not ended - returns 0 claimable amount
 */
contract ViewVestingClaim {
    /* ------------- IMMUTABLES ------------- */
    Claim public immutable claimContract;
    IVestingClaim public immutable vestingContract;

    /* ------------- CONSTRUCTOR ------------- */

    /**
     * @notice Initialize the ViewVestingClaim contract
     * @param _claimContract The initial Claim contract address
     * @param _vestingContract The VestingClaim contract address
     */
    constructor(address _claimContract, address _vestingContract) {
        require(_claimContract != address(0), "claimContract not set");
        require(_vestingContract != address(0), "vestingContract not set");

        claimContract = Claim(_claimContract);
        vestingContract = IVestingClaim(_vestingContract);
    }

    /* ------------- VIEW FUNCTIONS ------------- */

    /**
     * @notice Calculate how much has vested for a user using merkle proof data
     * @dev This function works even if the user hasn't made their first claim
     * @param index The index in the merkle tree
     * @param account The user address
     * @param vestingAmount The total vesting amount for this user from merkle tree
     * @param merkleProof The merkle proof to verify the vesting amount
     * @return The amount that has vested so far
     */
    function getVestedAmount(uint256 index, address account, uint256 vestingAmount, bytes32[] calldata merkleProof)
        public
        view
        returns (uint256)
    {
        // Verify merkle proof
        if (!_verifyMerkleProof(index, account, vestingAmount, merkleProof)) {
            revert InvalidProof();
        }

        // Check if user is eligible (chose Vest option)
        if (!_isUserEligible(account)) {
            revert UserNotEligible();
        }

        // If user has already registered in VestingClaim, use that contract's logic
        if (vestingContract.isRegistered(account)) {
            return vestingContract.getVestedAmount(account);
        }

        // User hasn't registered yet, calculate based on merkle data
        return _calculateVestedAmount(account, vestingAmount);
    }

    /**
     * @notice Calculate how much a user can claim right now using merkle proof data
     * @dev This function works even if the user hasn't made their first claim
     * @param index The index in the merkle tree
     * @param account The user address
     * @param vestingAmount The total vesting amount for this user from merkle tree
     * @param merkleProof The merkle proof to verify the vesting amount
     * @return The claimable amount
     */
    function getClaimableAmount(uint256 index, address account, uint256 vestingAmount, bytes32[] calldata merkleProof)
        public
        view
        returns (uint256)
    {
        // Verify merkle proof
        if (!_verifyMerkleProof(index, account, vestingAmount, merkleProof)) {
            revert InvalidProof();
        }

        // Check if user is eligible (chose Vest option)
        if (!_isUserEligible(account)) {
            revert UserNotEligible();
        }

        // If user has already registered in VestingClaim, use that contract's logic
        if (vestingContract.isRegistered(account)) {
            return vestingContract.getClaimableAmount(account);
        }

        // User hasn't registered yet, calculate based on merkle data
        uint256 vested = _calculateVestedAmount(account, vestingAmount);
        uint256 alreadyClaimed = vestingContract.claimedVestingAmount(account);
        return vested > alreadyClaimed ? vested - alreadyClaimed : 0;
    }

    /**
     * @notice Get the timestamp when cliff period ends for a user
     * @param account The user address
     * @return The timestamp when cliff ends (0 if user hasn't claimed initially)
     */
    function getCliffEnd(address account) public view returns (uint256) {
        return vestingContract.getCliffEnd(account);
    }

    /**
     * @notice Get the timestamp when vesting period ends for a user
     * @param account The user address
     * @return The timestamp when vesting ends (0 if user hasn't claimed initially)
     */
    function getVestingEnd(address account) public view returns (uint256) {
        return vestingContract.getVestingEnd(account);
    }

    /**
     * @notice Check if a user is eligible for vesting (chose Vest option and made initial claim)
     * @param account The user address
     * @return True if user is eligible for vesting
     */
    function isUserEligible(address account) public view returns (bool) {
        return _isUserEligible(account);
    }

    /**
     * @notice Check if a user has registered their vesting amount in the VestingClaim contract
     * @param account The user address
     * @return True if user has completed at least one vesting claim
     */
    function isRegistered(address account) public view returns (bool) {
        return vestingContract.isRegistered(account);
    }

    /* ------------- INTERNAL FUNCTIONS ------------- */

    /**
     * @dev Verify the merkle proof for vesting amount
     * @param index The index in the merkle tree
     * @param account The user address
     * @param vestingAmount The total vesting amount for this user
     * @param merkleProof The merkle proof to verify
     * @return True if proof is valid
     */
    function _verifyMerkleProof(uint256 index, address account, uint256 vestingAmount, bytes32[] calldata merkleProof)
        internal
        view
        returns (bool)
    {
        bytes32 node = keccak256(abi.encodePacked(index, account, vestingAmount));
        return MerkleProof.verify(merkleProof, vestingContract.merkleRoot(), node);
    }

    /**
     * @dev Check if user is eligible for vesting
     * @param account The user address
     * @return True if user chose Vest option and made initial claim
     */
    function _isUserEligible(address account) internal view returns (bool) {
        // Check if user chose Vest option
        IClaim.Option userOption = claimContract.claimedOptionMap(account);
        if (userOption != IClaim.Option.Vest) {
            return false;
        }

        // Check if user has made initial claim (has a claim timestamp)
        uint256 claimTimestamp = claimContract.claimedTimestampMap(account);
        return claimTimestamp > 0;
    }

    /**
     * @dev Calculate vested amount using VestingClaim logic but with provided vesting amount
     * @dev This replicates the _getVestedAmount logic from VestingClaim.sol
     * @param account The user address
     * @param totalVestingAmount The total amount that will vest for this user
     * @return The amount that has vested so far
     */
    function _calculateVestedAmount(address account, uint256 totalVestingAmount) internal view returns (uint256) {
        uint256 claimTimestamp = claimContract.claimedTimestampMap(account);
        if (claimTimestamp == 0) {
            return 0; // User hasn't claimed yet
        }

        // Check if cliff period has ended
        uint256 cliffEnd = claimTimestamp + vestingContract.CLIFF_DURATION();
        if (block.timestamp < cliffEnd) {
            return 0; // Still in cliff period
        }

        uint256 vestingEnd = cliffEnd + vestingContract.VESTING_DURATION();

        // Calculate effective end time (minimum of vestingEnd and globalEndTime)
        uint256 globalEndTime = vestingContract.globalEndTime();
        uint256 effectiveEnd = globalEndTime > 0 && globalEndTime < vestingEnd ? globalEndTime : vestingEnd;

        // If effective end is at/before cliff, nothing vests
        if (effectiveEnd <= cliffEnd) {
            return 0;
        }

        // Time used for vesting calculation is capped at effectiveEnd
        uint256 timeForCalc = block.timestamp < effectiveEnd ? block.timestamp : effectiveEnd;

        // If we've reached the normal vesting end (and global end allows it), return full amount
        if (timeForCalc >= vestingEnd && effectiveEnd == vestingEnd) {
            return totalVestingAmount;
        }

        // Linear vesting: calculate based on time elapsed since cliff
        uint256 timeElapsed = timeForCalc - cliffEnd;
        return (totalVestingAmount * timeElapsed) / vestingContract.VESTING_DURATION();
    }
}
