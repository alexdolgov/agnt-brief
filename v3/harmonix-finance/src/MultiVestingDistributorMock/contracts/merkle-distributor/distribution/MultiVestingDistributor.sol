// apps/contracts/contracts/merkle-distributor/distribution/MultiVestingDistributor.sol
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {BaseMultiDistributor} from "../BaseMultiDistributor.sol";
import {TimePeriods} from "../../utils/TimePeriods.sol";
import {TokenAllowance} from "../../utils/TokenAllowance.sol";
import {
  IERC20,
  SafeERC20
} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

/**
 * @title MultiVestingDistributor
 * @dev Manages multiple, distinct vesting campaigns with separate TGE and linear vesting schedules.
 * @notice This version now inherits TokenAllowance to transfer tokens from a pre-configured wallet.
 */
// STEP 2: Add TokenAllowance to the list of inherited contracts
abstract contract MultiVestingDistributor is
  BaseMultiDistributor,
  TimePeriods,
  TokenAllowance
{
  using SafeERC20 for IERC20;

  // =================== STRUCTS ===================
  /**
   * @notice Configuration specific to each vesting distribution.
   * @param cliffBps The percentage of tokens unlocked at TGE, in basis points.
   * @param maxBps The denominator for the basis points (e.g., 10000 for %).
   * @param periodDuration The duration of each linear vesting step in seconds (e.g., 86400 for daily). If 1, vesting is continuous.
   * @param tgeReleaseTime The specific UNIX timestamp when the TGE (cliff) portion is released.
   */
  struct VestingConfig {
    uint96 cliffBps;
    uint96 maxBps;
    uint48 periodDuration;
    uint48 tgeReleaseTime;
  }

  // ===================== STATE =====================

  mapping(uint256 => VestingConfig) public vestingConfigs;
  mapping(uint256 => mapping(address => uint256)) public userGrants; // Tracks cumulative amount claimed by user

  // ==================== ERRORS =====================
  error InvalidVestingConfig();
  error InvalidTgeTime();

  // ==================== EVENTS =====================

  /**
   * @dev Emitted when the parameters of an existing vesting distribution are updated.
   */
  event VestingDistributionUpdated(
    uint256 indexed distributionId,
    uint48 openingTime,
    uint48 closingTime,
    uint48 tgeReleaseTime,
    uint96 cliffBps,
    uint96 maxBps,
    uint48 periodDuration
  );

  // ================= OWNER FUNCTIONS =================

  /**
   * @notice Creates a new vesting distribution with a defined vesting period and TGE time.
   * @dev Handles vesting-specific setup before calling the base contract's helper.
   */
  function createVesting(
    uint256 distributionId,
    bytes32 merkleRoot,
    address token,
    uint48 openingTime,
    uint48 closingTime,
    uint48 tgeReleaseTime,
    uint96 cliffBps,
    uint96 maxBps,
    uint48 periodDuration
  ) public onlyOwner {
    if (maxBps == 0 || cliffBps > maxBps) {
      revert InvalidVestingConfig();
    }
    // The TGE cannot happen after the entire vesting period has ended.
    if (tgeReleaseTime > closingTime) {
      revert InvalidTgeTime();
    }
    // Validate time range before any arithmetic operations
    if (openingTime >= closingTime) {
      revert InvalidTimeRange(openingTime, closingTime);
    }

    // Validate and auto-adjust periodDuration if needed
    uint48 vestingDuration = closingTime - openingTime;
    if (periodDuration > vestingDuration) {
      // Auto-fallback to continuous vesting when periodDuration is too large
      periodDuration = 1;
    }

    // Store the vesting-specific configuration
    vestingConfigs[distributionId] = VestingConfig({
      cliffBps: cliffBps,
      maxBps: maxBps,
      periodDuration: periodDuration,
      tgeReleaseTime: tgeReleaseTime
    });

    // Vesting-specific logic for the linear period
    _createPeriod(distributionId, openingTime, closingTime);
    // Core distribution creation in the base contract
    _createDistribution(distributionId, merkleRoot, token);
  }

  /**
   * @notice Sets the source token wallet for a specific distribution.
   * @dev This is a required setup step for claims to succeed. Can only be called by the owner.
   * @param distributionId The ID of the distribution to configure.
   * @param tokenWallet The address of the wallet that holds the tokens and has approved this contract.
   */
  function setTokenWallet(
    uint256 distributionId,
    address tokenWallet
  ) public onlyOwner {
    // Ensure the distribution has been created before setting a wallet for it.
    if (distributions[distributionId].merkleRoot == bytes32(0)) {
      revert InvalidDistributionId();
    }
    // Call the internal function from the TokenAllowance utility.
    _setTokenWallet(distributionId, tokenWallet);
  }

  /**
   * @notice Updates the parameters for an existing vesting distribution.
   * @dev Allows the owner to modify all vesting-related timing and percentage
   * parameters for a campaign that is already in progress.
   */
  function updateVesting(
    uint256 distributionId,
    uint48 openingTime,
    uint48 closingTime,
    uint48 tgeReleaseTime,
    uint96 cliffBps,
    uint96 maxBps,
    uint48 periodDuration
  ) public onlyOwner {
    if (distributions[distributionId].merkleRoot == bytes32(0)) {
      revert InvalidDistributionId();
    }
    if (maxBps == 0 || cliffBps > maxBps) {
      revert InvalidVestingConfig();
    }
    if (tgeReleaseTime > closingTime) {
      revert InvalidTgeTime();
    }
    // Validate time range before any arithmetic operations
    if (openingTime >= closingTime) {
      revert InvalidTimeRange(openingTime, closingTime);
    }

    // Validate and auto-adjust periodDuration if needed
    uint48 vestingDuration = closingTime - openingTime;
    if (periodDuration > vestingDuration) {
      // Auto-fallback to continuous vesting when periodDuration is too large
      periodDuration = 1;
    }

    vestingConfigs[distributionId] = VestingConfig({
      cliffBps: cliffBps,
      maxBps: maxBps,
      periodDuration: periodDuration,
      tgeReleaseTime: tgeReleaseTime
    });

    _updatePeriod(distributionId, openingTime, closingTime);

    emit VestingDistributionUpdated(
      distributionId,
      openingTime,
      closingTime,
      tgeReleaseTime,
      cliffBps,
      maxBps,
      periodDuration
    );
  }

  // =========== HOOK IMPLEMENTATIONS =============

  /**
   * @dev HOOK: For vesting, a "claim" is a withdrawal. Multiple withdrawals are allowed.
   * This hook always returns false to proceed to the amount calculation logic.
   */
  function _hookIsClaimed(
    uint256 /* distributionId */,
    address /* account */
  ) internal pure override returns (bool) {
    // Return false because the actual check for over-claiming is handled
    // by comparing vested vs. released amounts in `_hookGetClaimableAmount`.
    return false;
  }

  /**
   * @dev HOOK: Retrieves the Merkle root for the specified vesting campaign.
   */
  function _hookGetMerkleRoot(
    uint256 distributionId
  ) internal view override returns (bytes32) {
    bytes32 merkleRoot = distributions[distributionId].merkleRoot;
    if (merkleRoot == bytes32(0)) revert InvalidDistributionId();
    return merkleRoot;
  }

  /**
   * @dev HOOK: Executes the vesting "claim" by tracking the cumulative amount withdrawn
   * and transferring tokens from the pre-configured token wallet via the TokenAllowance utility.
   */
  function _hookExecuteClaim(
    uint256 distributionId,
    address account,
    uint256 payableAmount
  ) internal virtual override {
    // STEP 3: Replace the old transfer logic with the utility function call.
    userGrants[distributionId][account] += payableAmount;

    // Use the utility function to perform the allowance-based transfer.
    // This will revert if the wallet is not set or if allowance/balance is insufficient.
    _transferFromTokenWallet(
      distributionId,
      IERC20(distributions[distributionId].token),
      account,
      payableAmount
    );
  }

  function _hookGetClaimableAmount(
    uint256 distributionId,
    address account,
    uint256 totalGrantAmount
  ) internal view override returns (uint256) {
    // Validate distribution exists first
    if (distributions[distributionId].merkleRoot == bytes32(0)) {
      revert InvalidDistributionId();
    }

    uint256 totalVested = getVestedAmount(distributionId, totalGrantAmount);
    uint256 releasedAmount = userGrants[distributionId][account];

    if (totalVested <= releasedAmount) {
      return 0;
    }
    return totalVested - releasedAmount;
  }

  // =========== PUBLIC VIEW FUNCTIONS =============

  /**
   * @notice Gets the available amount for claiming, with Merkle proof validation
   * @param distributionId The ID of the vesting distribution
   * @param account The account to check available amount for
   * @param totalGrantAmount The total grant amount (will be validated against Merkle proof)
   * @param merkleProof The Merkle proof to validate the grant amount
   * @return The amount available for claiming
   */
  function getAvailableAmount(
    uint256 distributionId,
    address account,
    uint256 totalGrantAmount,
    bytes32[] calldata merkleProof
  ) public view returns (uint256) {
    // Validate distribution exists
    if (distributions[distributionId].merkleRoot == bytes32(0)) {
      revert InvalidDistributionId();
    }

    // Validate the totalGrantAmount against the Merkle proof
    bytes32 merkleRoot = _hookGetMerkleRoot(distributionId);
    bytes32 node = keccak256(abi.encodePacked(account, totalGrantAmount));

    if (!MerkleProof.verify(merkleProof, merkleRoot, node)) {
      revert InvalidProof();
    }

    return _hookGetClaimableAmount(distributionId, account, totalGrantAmount);
  }

  function getVestedAmount(
    uint256 distributionId,
    uint256 totalGrantAmount
  ) public view returns (uint256) {
    // Validate distribution exists first
    if (distributions[distributionId].merkleRoot == bytes32(0)) {
      revert InvalidDistributionId();
    }

    VestingConfig storage config = vestingConfigs[distributionId];
    (uint48 openingTime, uint48 closingTime) = getPeriod(distributionId);

    uint256 tgeAmount;
    if (block.timestamp >= config.tgeReleaseTime) {
      tgeAmount = Math.mulDiv(totalGrantAmount, config.cliffBps, config.maxBps);
    } else {
      tgeAmount = 0;
    }

    uint256 linearVested;
    uint256 totalLinearAmount = totalGrantAmount -
      Math.mulDiv(totalGrantAmount, config.cliffBps, config.maxBps);

    if (block.timestamp < openingTime) {
      linearVested = 0;
    } else if (block.timestamp >= closingTime) {
      linearVested = totalLinearAmount;
    } else {
      uint256 duration = closingTime - openingTime;
      uint256 elapsedTime = block.timestamp - openingTime;

      if (duration > 0) {
        if (config.periodDuration > 1) {
          uint256 totalPeriods = duration / config.periodDuration;
          if (totalPeriods > 0) {
            uint256 periodsPassed = elapsedTime / config.periodDuration;
            linearVested = Math.mulDiv(
              totalLinearAmount,
              periodsPassed,
              totalPeriods
            );
          }
        } else {
          linearVested = Math.mulDiv(totalLinearAmount, elapsedTime, duration);
        }
      }
    }

    return tgeAmount + linearVested;
  }
}
