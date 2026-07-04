// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Claim} from "./Claim.sol";
import {IClaim} from "./IClaim.sol";
import {IVestingClaim} from "./IVestingClaim.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

// Errors
error NothingToClaim(); // No tokens available to claim at this time
error OnlyVestOption(); // User must have chosen Vest option in initial claim
error InvalidProof(); // Invalid merkle proof provided
error InvalidBeneficiaryCaller(); // Only beneficiary can claim for themselves
error InvalidGlobalEndTime(); // Global end time must be in the future or later than current setting

/**
 * @title VestingClaim
 * @notice Manages vesting for users who chose the Vest option in the initial claim
 * @dev Vesting schedule:
 *      - Cliff period from user's claim timestamp (configurable, e.g., 30 days)
 *      - Linear vesting after cliff (configurable, e.g., 180 days)
 *      - Optional global end time to cap vesting calculations
 *
 * When users choose the Vest option in the initial Claim contract, they receive
 * an immediate portion (determined by vestMultiplier) and the remaining tokens
 * enter this vesting schedule. This contract uses a merkle tree to verify each
 * user's vesting amount. Users must claim for themselves (msg.sender == account).
 *
 * The global end time feature allows the owner to set a deadline for vesting.
 * When set, vesting calculations are capped at min(normal vesting end, globalEndTime).
 * This enables operational control while maintaining fair vesting rates for all users.
 */
contract VestingClaim is IVestingClaim, Ownable2Step, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /* ------------- IMMUTABLES ------------- */
    address public immutable token;
    Claim public immutable claimContract;
    uint256 public immutable CLIFF_DURATION;
    uint256 public immutable VESTING_DURATION;

    /* ------------- STATE VARIABLES ------------- */
    bytes32 public merkleRoot;

    // Global end time for vesting claims
    // Vesting calculations will cap at this time
    uint256 public globalEndTime;

    // Track the verified total vesting amount for each user
    // If > 0, user has registered and been verified
    mapping(address => uint256) public totalVestingAmount;

    // Track how much each user has already claimed from vesting
    mapping(address => uint256) public claimedVestingAmount;

    /* ------------- CONSTRUCTOR ------------- */

    /**
     * @notice Initialize the VestingClaim contract
     * @param _owner The owner of the contract
     * @param _token The token being vested
     * @param _claimContract The initial Claim contract address
     * @param _merkleRoot The merkle root for vesting amounts
     * @param _cliffDuration The cliff duration in seconds (e.g., 30 days)
     * @param _vestingDuration The vesting duration in seconds (e.g., 180 days)
     * @param _globalEndTime The global end timestamp for vesting (must be in the future)
     */
    constructor(
        address _owner,
        address _token,
        address _claimContract,
        bytes32 _merkleRoot,
        uint256 _cliffDuration,
        uint256 _vestingDuration,
        uint256 _globalEndTime
    ) Ownable(_owner) {
        require(_token != address(0), "token not set");
        require(_claimContract != address(0), "claimContract not set");
        require(_merkleRoot != bytes32(0), "merkleRoot not set");
        require(_cliffDuration > 0, "cliff duration must be > 0");
        require(_vestingDuration > 0, "vesting duration must be > 0");
        require(_globalEndTime > block.timestamp, "globalEndTime must be in future");

        token = _token;
        claimContract = Claim(_claimContract);
        merkleRoot = _merkleRoot;
        CLIFF_DURATION = _cliffDuration;
        VESTING_DURATION = _vestingDuration;
        globalEndTime = _globalEndTime;
    }

    /* ------------- WRITE FUNCTIONS ------------- */

    /**
     * @notice Claim vested tokens using merkle proof
     * @param index The index in the merkle tree
     * @param account The user address (must be msg.sender)
     * @param vestingAmount The total vesting amount for this user
     * @param merkleProof The merkle proof to verify the vesting amount
     */
    function claimVesting(uint256 index, address account, uint256 vestingAmount, bytes32[] calldata merkleProof)
        external
        nonReentrant
    {
        if (msg.sender != account) revert InvalidBeneficiaryCaller();

        // Verify user chose Vest option
        if (claimContract.claimedOptionMap(account) != IClaim.Option.Vest) {
            revert OnlyVestOption();
        }

        bytes32 node = keccak256(abi.encodePacked(index, account, vestingAmount));
        if (!MerkleProof.verify(merkleProof, merkleRoot, node)) {
            revert InvalidProof();
        }

        if (totalVestingAmount[account] != vestingAmount) {
            totalVestingAmount[account] = vestingAmount;
        }

        // Calculate claimable amount using stored vesting amount
        uint256 claimable = getClaimableAmount(account);
        if (claimable == 0) {
            revert NothingToClaim();
        }

        // Update claimed amount
        claimedVestingAmount[account] += claimable;

        // Transfer tokens
        IERC20(token).safeTransfer(account, claimable);

        emit VestingClaimed(account, claimable, block.timestamp);
    }

    /**
     * @notice Update merkle root (owner only)
     * @param newRoot The new merkle root
     */
    function setMerkleRoot(bytes32 newRoot) external onlyOwner {
        merkleRoot = newRoot;
        emit MerkleRootUpdated(newRoot);
    }

    /**
     * @notice Owner can withdraw any ERC20 tokens sent to this contract
     * @param targetToken The token address to withdraw
     * @param amount The amount to withdraw
     */
    function withdrawERC20(address targetToken, uint256 amount) external onlyOwner {
        IERC20(targetToken).safeTransfer(owner(), amount);
    }

    /**
     * @notice Extend the global end time for vesting (owner only)
     * @dev Can only extend to a future time later than current setting
     * @param newEndTime The new global end timestamp
     */
    function setGlobalEndTime(uint256 newEndTime) external onlyOwner {
        if (newEndTime <= globalEndTime) revert InvalidGlobalEndTime();
        globalEndTime = newEndTime;
        emit GlobalEndTimeUpdated(newEndTime);
    }

    /* ------------- VIEW FUNCTIONS ------------- */

    /**
     * @notice Get the timestamp when cliff period ends for a user
     * @param account The user address
     * @return The timestamp when cliff ends (0 if user hasn't claimed)
     */
    function getCliffEnd(address account) public view returns (uint256) {
        uint256 claimTimestamp = claimContract.claimedTimestampMap(account);
        if (claimTimestamp == 0) {
            return 0;
        }
        return claimTimestamp + CLIFF_DURATION;
    }

    /**
     * @notice Get the timestamp when vesting period ends for a user
     * @param account The user address
     * @return The timestamp when vesting ends (0 if user hasn't claimed)
     */
    function getVestingEnd(address account) public view returns (uint256) {
        uint256 cliffEnd = getCliffEnd(account);
        if (cliffEnd == 0) {
            return 0;
        }
        return cliffEnd + VESTING_DURATION;
    }

    /**
     * @notice Calculate how much has vested for a user at current time
     * @dev Uses the stored vesting amount from registration
     * @param account The user address
     * @return The amount that has vested so far
     */
    function getVestedAmount(address account) public view returns (uint256) {
        uint256 userVestingAmount = totalVestingAmount[account];
        if (userVestingAmount == 0) return 0;
        return _getVestedAmount(account, userVestingAmount);
    }

    /**
     * @notice Calculate how much a user can claim right now
     * @dev Uses the stored vesting amount from registration
     * @param account The user address
     * @return The claimable amount
     */
    function getClaimableAmount(address account) public view returns (uint256) {
        uint256 vested = getVestedAmount(account);
        uint256 alreadyClaimed = claimedVestingAmount[account];
        return vested > alreadyClaimed ? vested - alreadyClaimed : 0;
    }

    /**
     * @notice Returns whether a user has registered their vesting amount
     * @dev Returns true if totalVestingAmount > 0 (set after first successful claim)
     * @param account The user address to check
     * @return True if user has completed at least one vesting claim
     */
    function isRegistered(address account) public view returns (bool) {
        return totalVestingAmount[account] > 0;
    }

    /* ------------- INTERNAL FUNCTIONS ------------- */

    /**
     * @dev Internal helper to calculate vested amount with a given total
     * @dev Takes into account globalEndTime (caps vesting at that time)
     * @param account The user address
     * @param _totalVestingAmount The total amount that will vest for this user
     * @return The amount that has vested so far
     */
    function _getVestedAmount(address account, uint256 _totalVestingAmount) internal view returns (uint256) {
        uint256 claimTimestamp = claimContract.claimedTimestampMap(account);
        if (claimTimestamp == 0) {
            return 0; // User hasn't claimed yet
        }

        // Check if cliff period has ended
        uint256 cliffEnd = claimTimestamp + CLIFF_DURATION;
        if (block.timestamp < cliffEnd) {
            return 0; // Still in cliff period
        }

        uint256 vestingEnd = cliffEnd + VESTING_DURATION;

        // Calculate effective end time (minimum of vestingEnd and globalEndTime)
        uint256 effectiveEnd = globalEndTime < vestingEnd ? globalEndTime : vestingEnd;

        // If effective end is at/before cliff, nothing vests
        if (effectiveEnd <= cliffEnd) {
            return 0;
        }

        // Time used for vesting calculation is capped at effectiveEnd
        uint256 timeForCalc = block.timestamp < effectiveEnd ? block.timestamp : effectiveEnd;

        // If we've reached the normal vesting end (and global end allows it), return full amount
        if (timeForCalc >= vestingEnd && effectiveEnd == vestingEnd) {
            return _totalVestingAmount;
        }

        // Linear vesting: calculate based on time elapsed since cliff
        uint256 timeElapsed = timeForCalc - cliffEnd;
        return (_totalVestingAmount * timeElapsed) / VESTING_DURATION;
    }
}
