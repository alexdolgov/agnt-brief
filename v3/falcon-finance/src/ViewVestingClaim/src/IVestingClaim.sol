// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// Interface for the VestingClaim contract
interface IVestingClaim {
    // Events
    event VestingClaimed(address indexed account, uint256 amount, uint256 timestamp);
    event MerkleRootUpdated(bytes32 newRoot);
    event GlobalEndTimeUpdated(uint256 newEndTime);

    /**
     * @notice Returns the address of the token being vested
     */
    function token() external view returns (address);

    /**
     * @notice Returns the merkle root for vesting amounts
     */
    function merkleRoot() external view returns (bytes32);

    /**
     * @notice Returns the cliff duration in seconds (30 days)
     */
    function CLIFF_DURATION() external view returns (uint256);

    /**
     * @notice Returns the vesting duration in seconds (180 days)
     */
    function VESTING_DURATION() external view returns (uint256);

    /**
     * @notice Returns the global end time for vesting (0 = no limit)
     */
    function globalEndTime() external view returns (uint256);

    /**
     * @notice Returns the total vesting amount for a user (set after first claim)
     * @param account The user address
     * @return The total amount that will vest for this user
     */
    function totalVestingAmount(address account) external view returns (uint256);

    /**
     * @notice Returns how much a user has already claimed from vesting
     * @param account The user address
     * @return The amount already claimed by the user
     */
    function claimedVestingAmount(address account) external view returns (uint256);

    /**
     * @notice Returns whether a user has registered their vesting amount
     * @param account The user address to check
     * @return True if user has completed at least one vesting claim
     */
    function isRegistered(address account) external view returns (bool);

    /**
     * @notice Get the timestamp when cliff period ends for a user
     * @param account The user address
     * @return The timestamp when cliff ends (0 if user hasn't claimed)
     */
    function getCliffEnd(address account) external view returns (uint256);

    /**
     * @notice Get the timestamp when vesting period ends for a user
     * @param account The user address
     * @return The timestamp when vesting ends (0 if user hasn't claimed)
     */
    function getVestingEnd(address account) external view returns (uint256);

    /**
     * @notice Calculate how much has vested for a user at current time
     * @param account The user address
     * @return The amount that has vested so far
     */
    function getVestedAmount(address account) external view returns (uint256);

    /**
     * @notice Calculate how much a user can claim right now
     * @param account The user address
     * @return The claimable amount
     */
    function getClaimableAmount(address account) external view returns (uint256);

    /**
     * @notice Claim vested tokens
     * @param index The index in the merkle tree
     * @param account The user address (must be msg.sender)
     * @param vestingAmount The total vesting amount for this user
     * @param merkleProof The merkle proof to verify the vesting amount
     */
    function claimVesting(uint256 index, address account, uint256 vestingAmount, bytes32[] calldata merkleProof)
        external;

    /**
     * @notice Update merkle root (owner only)
     * @param newRoot The new merkle root
     */
    function setMerkleRoot(bytes32 newRoot) external;

    /**
     * @notice Set or extend the global end time for vesting (owner only)
     * @param newEndTime The new global end timestamp (0 = no limit)
     */
    function setGlobalEndTime(uint256 newEndTime) external;

    /**
     * @notice Owner can withdraw any ERC20 tokens sent to this contract
     * @param targetToken The token address to withdraw
     * @param amount The amount to withdraw
     */
    function withdrawERC20(address targetToken, uint256 amount) external;
}
