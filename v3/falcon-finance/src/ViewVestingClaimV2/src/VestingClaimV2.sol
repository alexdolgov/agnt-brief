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
error CooldownNotExpired(); // Cooldown period has not expired
error V1MerkleRootNotSet(); // V1 contract merkle root must be set to expected value
error MaxCooldownEntriesReached(); // Must withdraw existing cooldown entries before claiming more

/**
 * @title VestingClaimV2
 * @notice Enhanced vesting contract with cooldown mechanism and existing contract compatibility
 * @dev This contract extends the original VestingClaim with:
 *      - Additional cooldown period after claiming vested tokens
 *      - Compatibility with existing VestingClaim contract state
 *      - Proper accounting for users who have already claimed from the original contract
 *
 * Key Features:
 * 1. Cooldown Mechanism: After claiming vested tokens, users must wait vestingCooldownDuration
 *    before being able to withdraw those tokens. This creates a two-step process:
 *    - Step 1: claimVesting() - claim vested tokens (starts cooldown)
 *    - Step 2: withdrawClaimed() - withdraw tokens after cooldown expires
 *
 * 2. Legacy Contract Integration: Reads state from the existing VestingClaim contract
 *    at 0x9E330c463a5B576f63D4aC92C6d54711D180E108 to properly account for
 *    users who have already partially claimed their vesting.
 *
 * 3. Multiple Cooldowns: Users can have multiple ongoing cooldowns from different claim events.
 */
contract VestingClaimV2 is IVestingClaim, Ownable2Step, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /* ------------- STRUCTS ------------- */
    struct CooldownEntry {
        uint256 amount;
        uint256 releaseTime;
    }

    /* ------------- IMMUTABLES ------------- */
    address public immutable token;
    Claim public immutable claimContract;
    IVestingClaim public immutable existingVestingContract;
    uint256 public immutable CLIFF_DURATION;
    uint256 public immutable VESTING_DURATION;
    uint256 public immutable vestingCooldownDuration;

    // Expected merkle root on V1 contract - V2 claims only allowed when V1 has this root set
    bytes32 public constant EXPECTED_V1_MERKLE_ROOT =
        0x74d3ba498e1223f77287fab2d904e994ca03b63336d5b384eee2335b237d573e;

    // Maximum number of cooldown entries per account to prevent unbounded array growth
    uint256 public constant MAX_COOLDOWN_ENTRIES = 10;

    /* ------------- STATE VARIABLES ------------- */
    bytes32 public merkleRoot;
    uint256 public globalEndTime;

    // Track the verified total vesting amount for each user
    mapping(address => uint256) public totalVestingAmount;

    // Track how much each user has claimed from vesting (including legacy claims)
    mapping(address => uint256) public claimedVestingAmount;

    // Cooldown tracking: user => array of cooldown entries
    mapping(address => CooldownEntry[]) public cooldownEntries;

    // Track total amount in cooldown for each user
    mapping(address => uint256) public totalCooldownAmount;

    /* ------------- EVENTS ------------- */
    event TokensWithdrawn(address indexed account, uint256 amount, uint256 timestamp);

    /* ------------- CONSTRUCTOR ------------- */

    /**
     * @notice Initialize the VestingClaimV2 contract
     * @param _owner The owner of the contract
     * @param _token The token being vested
     * @param _claimContract The initial Claim contract address
     * @param _existingVestingContract The existing VestingClaim contract address
     * @param _merkleRoot The merkle root for vesting amounts
     * @param _cliffDuration The cliff duration in seconds (e.g., 30 days)
     * @param _vestingDuration The vesting duration in seconds (e.g., 180 days)
     * @param _globalEndTime The global end timestamp for vesting (must be in the future)
     * @param _vestingCooldownDuration The cooldown duration in seconds after claiming
     */
    constructor(
        address _owner,
        address _token,
        address _claimContract,
        address _existingVestingContract,
        bytes32 _merkleRoot,
        uint256 _cliffDuration,
        uint256 _vestingDuration,
        uint256 _globalEndTime,
        uint256 _vestingCooldownDuration
    ) Ownable(_owner) {
        require(_token != address(0), "token not set");
        require(_claimContract != address(0), "claimContract not set");
        require(_existingVestingContract != address(0), "existingVestingContract not set");
        require(_merkleRoot != bytes32(0), "merkleRoot not set");
        require(_cliffDuration > 0, "cliff duration must be > 0");
        require(_vestingDuration > 0, "vesting duration must be > 0");
        require(_globalEndTime > block.timestamp, "globalEndTime must be in future");
        require(_vestingCooldownDuration > 0, "cooldown duration must be > 0");

        token = _token;
        claimContract = Claim(_claimContract);
        existingVestingContract = IVestingClaim(_existingVestingContract);
        merkleRoot = _merkleRoot;
        CLIFF_DURATION = _cliffDuration;
        VESTING_DURATION = _vestingDuration;
        globalEndTime = _globalEndTime;
        vestingCooldownDuration = _vestingCooldownDuration;
    }

    /* ------------- WRITE FUNCTIONS ------------- */

    /**
     * @notice Claim vested tokens using merkle proof (starts cooldown)
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

        // Check cooldown entries limit to prevent unbounded array growth
        if (cooldownEntries[account].length >= MAX_COOLDOWN_ENTRIES) {
            revert MaxCooldownEntriesReached();
        }

        // Safety check: ensure V1 contract has expected merkle root before allowing V2 claims
        if (existingVestingContract.merkleRoot() != EXPECTED_V1_MERKLE_ROOT) {
            revert V1MerkleRootNotSet();
        }

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

        uint256 claimable = getClaimableAmount(account);
        if (claimable == 0) {
            revert NothingToClaim();
        }

        // Update claimed amount (from v2 contract)
        claimedVestingAmount[account] += claimable;

        // Add to cooldown instead of immediate transfer
        uint256 releaseTime = block.timestamp + vestingCooldownDuration;
        cooldownEntries[account].push(CooldownEntry({amount: claimable, releaseTime: releaseTime}));
        totalCooldownAmount[account] += claimable;

        emit VestingClaimed(account, claimable, block.timestamp);
    }

    /**
     * @notice Withdraw tokens from a specific cooldown entry that has completed its cooldown period
     * @dev Each claim creates one cooldown entry, and each entry must be withdrawn separately.
     *      This design prevents unbounded loops and ensures gas costs are predictable.
     * @param index The index of the cooldown entry to withdraw
     */
    function withdrawClaimed(uint256 index) external nonReentrant {
        CooldownEntry[] storage entries = cooldownEntries[msg.sender];
        require(index < entries.length, "Index out of bounds");

        CooldownEntry storage entry = entries[index];
        if (block.timestamp < entry.releaseTime) {
            revert CooldownNotExpired();
        }

        uint256 withdrawAmount = entry.amount;
        totalCooldownAmount[msg.sender] -= withdrawAmount;

        // Remove this entry by swapping with the last entry and popping
        entries[index] = entries[entries.length - 1];
        entries.pop();

        // Transfer tokens
        IERC20(token).safeTransfer(msg.sender, withdrawAmount);

        emit TokensWithdrawn(msg.sender, withdrawAmount, block.timestamp);
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
     * @notice Calculate how much a user can claim right now (accounting for legacy claims)
     * @dev Uses the stored vesting amount from registration and legacy contract state
     * @param account The user address
     * @return The claimable amount
     */
    function getClaimableAmount(address account) public view returns (uint256) {
        uint256 vested = getVestedAmount(account);
        uint256 totalClaimed = getTotalClaimedAmount(account);
        return vested > totalClaimed ? vested - totalClaimed : 0;
    }

    /**
     * @notice Get total amount claimed by user (including from legacy contract)
     * @param account The user address
     * @return The total amount claimed across both contracts
     */
    function getTotalClaimedAmount(address account) public view returns (uint256) {
        uint256 legacyClaimed = existingVestingContract.claimedVestingAmount(account);
        uint256 currentClaimed = claimedVestingAmount[account];
        return legacyClaimed + currentClaimed;
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

    /**
     * @notice Get the number of active cooldown entries for a user
     * @param account The user address
     * @return The number of active cooldown entries
     */
    function getCooldownEntriesCount(address account) external view returns (uint256) {
        return cooldownEntries[account].length;
    }

    /**
     * @notice Get details of a specific cooldown entry
     * @param account The user address
     * @param index The index of the cooldown entry
     * @return amount The amount in cooldown
     * @return releaseTime The timestamp when tokens can be withdrawn
     */
    function getCooldownEntry(address account, uint256 index)
        external
        view
        returns (uint256 amount, uint256 releaseTime)
    {
        require(index < cooldownEntries[account].length, "Index out of bounds");
        CooldownEntry storage entry = cooldownEntries[account][index];
        return (entry.amount, entry.releaseTime);
    }

    /**
     * @notice Check if a specific cooldown entry is ready for withdrawal
     * @param account The user address
     * @param index The index of the cooldown entry
     * @return True if the entry's cooldown has expired and can be withdrawn
     */
    function isCooldownExpired(address account, uint256 index) external view returns (bool) {
        if (index >= cooldownEntries[account].length) {
            return false;
        }
        return block.timestamp >= cooldownEntries[account][index].releaseTime;
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
