// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";

/**
 * @title DorRewards
 * @notice Distributes TREE token rewards to panelists and delegators via Merkle proofs.
 *
 * Off-chain reward flow
 * ---------------------
 * 1. At the end of each epoch the off-chain oracle computes cumulative per-user reward
 *    amounts (total earned across all epochs to date) and builds a Merkle tree where
 *    each leaf encodes (address, cumulativeAmount).
 * 2. The authorized distributor calls updateMerkleRoot() with the new root and the sum
 *    of all leaf amounts. The contract must hold sufficient TREE to cover all unclaimed
 *    rewards or the call reverts.
 * 3. Users call claim() with their cumulative amount and a Merkle proof. The contract
 *    pays out (cumulativeAmount - alreadyClaimed), so users can claim at any time and
 *    across multiple root updates without losing prior rewards.
 *
 * Leaf format
 * -----------
 * Leaves use double-hashing to prevent second-preimage attacks:
 *   leaf = keccak256(bytes.concat(keccak256(abi.encode(account, cumulativeAmount))))
 *
 * Solvency
 * --------
 * On each root update: balanceOf(this) >= newTotalAllocated - totalClaimed.
 * totalClaimed tracks all TREE transferred out via claims, so the check ensures the
 * contract always holds enough to pay every user their outstanding balance.
 *
 * Upgradeability
 * --------------
 * UUPS upgradeable proxy pattern. Only the owner can authorize upgrades.
 */
contract DorRewards is Initializable, ReentrancyGuard, OwnableUpgradeable, UUPSUpgradeable, PausableUpgradeable {
    using SafeERC20 for IERC20;

    // =========================================================
    // State
    // =========================================================

    IERC20 public immutable TREE_TOKEN;

    /// @notice Address authorised to update the Merkle root.
    address public distributor;

    /// @notice Current Merkle root encoding cumulative rewards for all users.
    bytes32 public merkleRoot;

    /// @notice Sum of all leaf amounts in the current Merkle root.
    uint256 public totalAllocated;

    /// @notice Cumulative amount already claimed per user.
    mapping(address => uint256) public claimed;

    /// @notice Total TREE transferred out via claims across all time.
    uint256 public totalClaimed;

    /// @notice Window index (block.timestamp / cooldownPeriod) of the last root update.
    ///         Used to enforce at-most-one update per cooldown window.
    uint256 public lastUpdateWindow;

    /// @notice Duration of one cooldown window in seconds. Defaults to 1 day.
    ///         Owner-controlled. Must be > 0.
    uint256 public cooldownPeriod;

    /// @notice Maximum additional TREE that can be allocated in a single root update.
    ///         A value of 0 means no cap is enforced.
    uint256 public epochBudget;

    // =========================================================
    // Events
    // =========================================================

    event DistributorUpdated(address indexed oldDistributor, address indexed newDistributor);
    event MerkleRootUpdated(bytes32 indexed oldRoot, bytes32 indexed newRoot, uint256 totalAllocated);
    event RewardsClaimed(address indexed user, uint256 amount);
    event CooldownPeriodUpdated(uint256 oldPeriod, uint256 newPeriod);
    event EpochBudgetUpdated(uint256 oldBudget, uint256 newBudget);

    // =========================================================
    // Errors
    // =========================================================

    error NotDistributor();
    error TotalAllocatedDecreased();
    error InsufficientContractBalance();
    error InvalidProof();
    error NothingToClaim();
    error ZeroAddress();
    error ZeroRoot();
    error RootUpdateTooFrequent();
    error EpochBudgetExceeded();
    error ZeroCooldownPeriod();

    // =========================================================
    // Constructor / Initializer
    // =========================================================

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address _treeToken) {
        if (_treeToken == address(0)) revert ZeroAddress();
        TREE_TOKEN = IERC20(_treeToken);
        _disableInitializers();
    }

    function initialize(address _treeToken, address _initialOwner, address _distributor) external initializer {
        if (_treeToken == address(0) || _initialOwner == address(0) || _distributor == address(0)) {
            revert ZeroAddress();
        }
        __Ownable_init(_initialOwner);
        __Pausable_init();
        distributor = _distributor;
        cooldownPeriod = 1 days;
    }

    // =========================================================
    // Upgrade authorization
    // =========================================================

    /// @dev Only the owner can upgrade the implementation.
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    // =========================================================
    // Admin
    // =========================================================

    /// @notice Recover tokens held by this contract.
    /// @dev Intended for integer-division dust and accidentally sent tokens.
    ///      When rescuing treeToken, the solvency invariant is enforced: the call reverts
    ///      if the transfer would leave the contract unable to cover allocated-but-unclaimed rewards.
    /// @param token  ERC20 contract to rescue.
    /// @param to     Recipient (must not be address(0)).
    /// @param amount Amount to transfer.
    function rescueTokens(address token, address to, uint256 amount) external onlyOwner {
        if (to == address(0)) revert ZeroAddress();
        IERC20(token).safeTransfer(to, amount);
        if (token == address(TREE_TOKEN)) {
            uint256 outstanding = totalAllocated > totalClaimed ? totalAllocated - totalClaimed : 0;
            if (TREE_TOKEN.balanceOf(address(this)) < outstanding) revert InsufficientContractBalance();
        }
    }

    /// @notice Set the cooldown window duration. Must be > 0.
    function setCooldownPeriod(uint256 _cooldownPeriod) external onlyOwner {
        if (_cooldownPeriod == 0) revert ZeroCooldownPeriod();
        emit CooldownPeriodUpdated(cooldownPeriod, _cooldownPeriod);
        cooldownPeriod = _cooldownPeriod;
    }

    /// @notice Set the maximum TREE that can be newly allocated per root update.
    ///         Set to 0 to disable the cap.
    function setEpochBudget(uint256 _epochBudget) external onlyOwner {
        emit EpochBudgetUpdated(epochBudget, _epochBudget);
        epochBudget = _epochBudget;
    }

    /// @notice Update the address authorised to call updateMerkleRoot().
    function setDistributor(address _distributor) external onlyOwner {
        if (_distributor == address(0)) revert ZeroAddress();
        emit DistributorUpdated(distributor, _distributor);
        distributor = _distributor;
    }

    /// @notice Pause root updates and claims. Callable by owner only.
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpause. Callable by owner only.
    function unpause() external onlyOwner {
        _unpause();
    }

    // =========================================================
    // Distributor
    // =========================================================

    /**
     * @notice Publish a new Merkle root encoding cumulative rewards for all users.
     *
     * @dev Only the authorised distributor can call this. `newTotalAllocated` must be
     *      the sum of every leaf's cumulativeAmount in the new tree — it must be >= the
     *      previous totalAllocated (cumulative rewards never decrease). The contract must
     *      hold enough TREE to cover all outstanding (unclaimed) rewards after the update.
     *
     * @param newRoot           Merkle root of the new reward tree.
     * @param newTotalAllocated Sum of all cumulative amounts in the new tree.
     */
    function updateMerkleRoot(bytes32 newRoot, uint256 newTotalAllocated) external whenNotPaused {
        if (msg.sender != distributor) revert NotDistributor();
        uint256 _cooldownPeriod = cooldownPeriod;
        if (block.timestamp / _cooldownPeriod == lastUpdateWindow) revert RootUpdateTooFrequent();
        uint256 _epochBudget = epochBudget;
        if (newTotalAllocated < totalAllocated) revert TotalAllocatedDecreased();
        if (newRoot == bytes32(0)) revert ZeroRoot();
        if (_epochBudget != 0 && newTotalAllocated - totalAllocated > _epochBudget) revert EpochBudgetExceeded();
        if (TREE_TOKEN.balanceOf(address(this)) < newTotalAllocated - totalClaimed) {
            revert InsufficientContractBalance();
        }

        emit MerkleRootUpdated(merkleRoot, newRoot, newTotalAllocated);
        merkleRoot = newRoot;
        totalAllocated = newTotalAllocated;
        lastUpdateWindow = block.timestamp / _cooldownPeriod;
    }

    // =========================================================
    // User
    // =========================================================

    /**
     * @notice Claim accumulated TREE rewards.
     *
     * @dev Verifies a Merkle proof that msg.sender is entitled to `cumulativeAmount`
     *      in total across all epochs. Transfers (cumulativeAmount - alreadyClaimed).
     *      Can be called multiple times as the root is updated with higher allocations.
     *
     * @param cumulativeAmount Total TREE earned by msg.sender (from the current Merkle tree).
     * @param proof            Merkle proof path for the (msg.sender, cumulativeAmount) leaf.
     * @return amount          TREE transferred to the caller in this transaction.
     */
    function claim(uint256 cumulativeAmount, bytes32[] calldata proof) external whenNotPaused nonReentrant returns (uint256 amount) {
        bytes32 leaf;
        assembly {
            mstore(0x00, caller())
            mstore(0x20, cumulativeAmount)
            mstore(0x00, keccak256(0x00, 0x40))
            leaf := keccak256(0x00, 0x20)
        }
        if (!MerkleProof.verify(proof, merkleRoot, leaf)) revert InvalidProof();

        uint256 alreadyClaimed = claimed[msg.sender];
        if (cumulativeAmount <= alreadyClaimed) revert NothingToClaim();

        amount = cumulativeAmount - alreadyClaimed;
        claimed[msg.sender] = cumulativeAmount;
        totalClaimed += amount;

        TREE_TOKEN.safeTransfer(msg.sender, amount);
        emit RewardsClaimed(msg.sender, amount);
    }
}
