// apps/contracts/contracts/merkle-distributor/BaseMultiDistributor.sol

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

// import "hardhat/console.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
// import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
// import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {IMultiMerkleDistributor} from "./interfaces/IMultiMerkleDistributor.sol";
import {
  IERC20,
  SafeERC20
} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title BaseMultiDistributor
 * @dev An abstract contract that provides a robust and centralized claim process
 * for multiple Merkle-based distributions. It uses a hook-based system to allow
 * child contracts to implement their specific logic.
 */
abstract contract BaseMultiDistributor is
  IMultiMerkleDistributor,
  Initializable,
  UUPSUpgradeable,
  OwnableUpgradeable,
  PausableUpgradeable
{
  using SafeERC20 for IERC20;
  // ===================== STATE =====================

  mapping(uint256 => Distribution) public distributions;

  // ==================== EVENTS =====================

  /**
   * @dev Emitted when the owner manually withdraws tokens from the contract.
   * @notice This is a privileged action and should be monitored.
   */
  event OwnerWithdrew(
    address indexed token,
    address indexed recipient,
    uint256 amount
  );

  // ==================== ERRORS =====================

  error AlreadyClaimed();
  error InvalidProof();
  error ZeroAddress();
  error InvalidDistributionId();
  error DistributionAlreadyExists();
  error NothingToClaim();

  // ================= CONSTRUCTOR ===================

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /**
   * @notice Initializes the contract, setting the initial owner.
   * @dev This function replaces the constructor for upgradeable contracts.
   */
  function initialize(address initialOwner) public virtual initializer {
    __UUPSUpgradeable_init();
    __Ownable_init(initialOwner);
    __Pausable_init();
  }

  // ======== UUPS UPGRADE MECHANISM ==========

  /**
   * @dev Required by the UUPS pattern. Authorizes only the owner to upgrade the contract.
   */
  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyOwner {}

  // ======== OWNER: DISTRIBUTION MANAGEMENT ========

  /**
   * @notice Allows the owner to withdraw a specified amount of any ERC20 token.
   * @dev This is a privileged administrative function for managing contract funds.
   * It should be used with caution, for example, to recover mistakenly sent tokens
   * or to claw back funds after a distribution has concluded.
   * @param tokenAddress The address of the ERC20 token to withdraw.
   * @param amount The amount of tokens to withdraw (in wei).
   * @param recipient The address to receive the withdrawn tokens.
   */
  function withdrawTokens(
    address tokenAddress,
    uint256 amount,
    address recipient
  ) public onlyOwner {
    if (tokenAddress == address(0) || recipient == address(0)) {
      revert ZeroAddress();
    }
    if (amount == 0) {
      revert NothingToClaim(); // Reusing this error for zero amount
    }

    IERC20 token = IERC20(tokenAddress);

    // The safeTransfer function will automatically revert if the contract
    // does not have a sufficient balance of the token.
    token.safeTransfer(recipient, amount);

    emit OwnerWithdrew(tokenAddress, recipient, amount);
  }

  /**
   * @notice Updates the Merkle root for an existing distribution.
   * @dev Useful for correcting errors in a distribution list post-creation.
   * Can only be called by the owner.
   */
  function setMerkleRoot(
    uint256 distributionId,
    bytes32 newMerkleRoot
  ) public onlyOwner {
    if (distributions[distributionId].merkleRoot == bytes32(0)) {
      revert InvalidDistributionId();
    }
    distributions[distributionId].merkleRoot = newMerkleRoot;
    emit DistributionMerkleRootUpdated(distributionId, newMerkleRoot);
  }

  /**
   * @notice Updates the token for an existing distribution.
   * @dev Useful for token migrations or correcting an initial setup error.
   * Can only be called by the owner.
   */
  function setToken(uint256 distributionId, address newToken) public onlyOwner {
    if (distributions[distributionId].merkleRoot == bytes32(0)) {
      revert InvalidDistributionId();
    }
    if (newToken == address(0)) {
      revert ZeroAddress();
    }
    distributions[distributionId].token = newToken;
    emit DistributionTokenUpdated(distributionId, newToken);
  }

  // ========== OWNER: PAUSABLE CONTROL ===========

  /**
   * @notice Pauses the contract, disabling all claim actions.
   * @dev Can only be called by the owner.
   */
  function pause() public onlyOwner {
    _pause();
  }

  /**
   * @notice Unpauses the contract, re-enabling all claim actions.
   * @dev Can only be called by the owner.
   */
  function unpause() public onlyOwner {
    _unpause();
  }

  // ============ PUBLIC USER FUNCTIONS =============

  /**
   * @notice The main public-facing claim function.
   * @dev It orchestrates the entire claim process, calling hooks for child contracts
   * to provide distribution-specific details and actions. This function is not
   * virtual to ensure a consistent and secure claim flow.
   */
  function claim(
    uint256 distributionId,
    address account,
    uint256 amount,
    bytes32[] calldata merkleProof
  ) public virtual override whenNotPaused {
    // HOOK 1: Check if the account has already been claimed for this distribution.
    if (_hookIsClaimed(distributionId, account)) {
      revert AlreadyClaimed();
    }

    // HOOK 2: Retrieve the Merkle root specific to this distribution.
    bytes32 merkleRoot = _hookGetMerkleRoot(distributionId);

    // Core validation logic, shared by all children.
    bytes32 node = keccak256(abi.encodePacked(account, amount));
    if (!MerkleProof.verify(merkleProof, merkleRoot, node)) {
      revert InvalidProof();
    }

    // HOOK 3: Execute the claim action (e.g., transfer tokens, create a vesting grant).
    uint256 claimableAmount = _hookGetClaimableAmount(
      distributionId,
      account,
      amount
    );

    if (claimableAmount == 0) {
      revert NothingToClaim();
    }

    _hookExecuteClaim(distributionId, account, claimableAmount);

    // Emit the standardized event.
    emit Claimed(distributionId, account, claimableAmount);
  }

  // ============= PUBLIC VIEW FUNCTIONS ============

  /**
   * @notice Retrieves the static information for a specific distribution.
   */
  function getDistribution(
    uint256 distributionId
  ) public view virtual override returns (Distribution memory) {
    Distribution storage dist = distributions[distributionId];
    if (dist.merkleRoot == bytes32(0)) {
      revert InvalidDistributionId();
    }
    return Distribution({merkleRoot: dist.merkleRoot, token: dist.token});
  }

  // ========= INTERNAL HELPERS & HOOKS ==========

  /**
   * @dev Internal helper to create a new distribution. Called by child contracts.
   * It handles shared validation and state updates.
   */
  function _createDistribution(
    uint256 distributionId,
    bytes32 merkleRoot,
    address token
  ) internal {
    if (distributions[distributionId].merkleRoot != bytes32(0)) {
      revert DistributionAlreadyExists();
    }
    if (token == address(0)) {
      revert ZeroAddress();
    }
    distributions[distributionId] = Distribution({
      merkleRoot: merkleRoot,
      token: token
    });
    emit DistributionCreated(distributionId, merkleRoot, token);
  }

  // ======= ABSTRACT HOOKS FOR CHILDREN ========

  /**
   * @dev HOOK: Abstract function to check the claim status from child state.
   * @return bool True if the account has already been claimed.
   */
  function _hookIsClaimed(
    uint256 distributionId,
    address account
  ) internal view virtual returns (bool);

  /**
   * @dev HOOK: Abstract function to retrieve the Merkle root for a given distribution.
   * @return bytes32 The Merkle root for that distribution.
   */
  function _hookGetMerkleRoot(
    uint256 distributionId
  ) internal view virtual returns (bytes32);

  /**
   * @dev HOOK: Abstract function to execute the claim logic.
   * @notice This is where children implement their specific behavior, like transferring
   * tokens or setting up a vesting schedule.
   */
  function _hookExecuteClaim(
    uint256 distributionId,
    address account,
    uint256 amount
  ) internal virtual;

  function _hookGetClaimableAmount(
    uint256 distributionId,
    address account,
    uint256 amount
  ) internal view virtual returns (uint256);
}
