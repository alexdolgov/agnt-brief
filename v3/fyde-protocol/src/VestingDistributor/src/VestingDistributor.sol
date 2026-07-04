// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

/// Utils /////
import {ERC20, SafeTransferLib} from "solmate/utils/SafeTransferLib.sol";
import {MerkleProof} from "openzeppelin-contracts/contracts/utils/cryptography/MerkleProof.sol";
import {Ownable} from "src/utils/Ownable.sol";

/// @title VestingDistributor
/// @notice This contract is a merkle distributor with an optional vesting schedule that
///         can be set at deployment.
///         This contract was based on the UniversalRewardsDistributor by MerlinEgalite:
///         https://github.com/MerlinEgalite/universal-rewards-distributor
contract VestingDistributor is Ownable {
  using SafeTransferLib for ERC20;

  error ClaimNotEnabled();

  /*////////////////////////////////////////////////////////////// 
                            Storage
    //////////////////////////////////////////////////////////////*/

  /// @notice token address
  address public immutable TOKEN;

  /// @notice The merkle tree's root of the current rewards distribution.
  bytes32 public root;

  /// @notice The `amount` TRSY already claimed by `account`.
  mapping(address account => uint256 amount) public claimed;

  /// @notice The total amount of fees deposited into the contract
  uint256 public cumulativeFees;

  // lock time for claiming assets
  uint256 public constant LOCK_TIME = 30 days;

  // start of the lock time
  uint256 public startLockTime;

  /*////////////////////////////////////////////////////////////// 
                            EVENTS
    //////////////////////////////////////////////////////////////*/

  /// @notice Emitted when the merkle tree's root is updated.
  /// @param newRoot The new merkle tree's root.
  event RootUpdated(bytes32 newRoot);

  /// @notice Emitted when rewards are claimed.
  /// @param account The address for which rewards are claimed rewards for.
  /// @param amount The amount of reward token claimed.
  event RewardsClaimed(address account, uint256 amount);

  /*////////////////////////////////////////////////////////////// 
                            ERRORS
    //////////////////////////////////////////////////////////////*/

  /// @notice Thrown when the merkle proof is invalid or expired.
  error ProofInvalidOrExpired();

  /// @notice Thrown when the rewards have already been claimed.
  error AlreadyClaimed();

  /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR 
    //////////////////////////////////////////////////////////////*/

  constructor(address _TOKEN) Ownable(msg.sender) {
    TOKEN = _TOKEN;
  }

  /*////////////////////////////////////////////////////////////// 
                            OWNER
    //////////////////////////////////////////////////////////////*/

  /// @notice Updates the current merkle tree's root.
  /// @param newRoot The new merkle tree's root.
  function updateRoot(bytes32 newRoot) external onlyOwner {
    root = newRoot;
    emit RootUpdated(newRoot);
  }

  ///@notice Recover asset from the contract in case of emergency
  function recoverAsset(address asset, address to, uint256 amount) external onlyOwner {
    ERC20(asset).safeTransfer(to, amount);
  }

  ///@notice deposit fees into the contract
  function deposit(address from, uint256 amount) external onlyOwner {
    ERC20(TOKEN).safeTransferFrom(from, address(this), amount);
    cumulativeFees += amount;
  }

  /// @notice Enables the claiming of rewards.
  function enableClaim() external onlyOwner {
    startLockTime = block.timestamp;
  }

  /*////////////////////////////////////////////////////////////// 
                            USER
    //////////////////////////////////////////////////////////////*/

  /// @notice Claims rewards.
  /// @param account The address to claim rewards for.
  /// @param claimable The overall claimable amount of token rewards.
  /// @param proof The merkle proof that validates this claim.
  ///@dev Claimable is a cummulative number from the epochs, so in the backend we should compute
  /// claimable - claimed to see if there are reward that can be claimed
  function claim(address account, uint256 claimable, bytes32[] calldata proof) external {
    if (startLockTime == 0) revert ClaimNotEnabled();
    if (
      !MerkleProof.verifyCalldata(
        proof, root, keccak256(bytes.concat(keccak256(abi.encode(account, claimable))))
      )
    ) revert ProofInvalidOrExpired();

    uint256 currentClaimable = (block.timestamp - startLockTime) * claimable / LOCK_TIME;
    if (currentClaimable > claimable) currentClaimable = claimable;

    uint256 amount = currentClaimable - claimed[account];
    if (amount == 0) revert AlreadyClaimed();

    claimed[account] = claimed[account] + amount;

    ERC20(TOKEN).safeTransfer(account, amount);
    emit RewardsClaimed(account, amount);
  }
}
