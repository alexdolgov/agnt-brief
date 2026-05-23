// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

import { IERC20 } from "@openzeppelin-contracts-5.5.0/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin-contracts-5.5.0/token/ERC20/utils/SafeERC20.sol";
import { ReentrancyGuardTransient } from "@openzeppelin-contracts-5.5.0/utils/ReentrancyGuardTransient.sol";
import { Initializable } from "@openzeppelin-contracts-upgradeable-5.5.0/proxy/utils/Initializable.sol";
import { ERC20Upgradeable } from "@openzeppelin-contracts-upgradeable-5.5.0/token/ERC20/ERC20Upgradeable.sol";
import { ERC20PermitUpgradeable } from "@openzeppelin-contracts-upgradeable-5.5.0/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import { ERC20VotesUpgradeable } from "@openzeppelin-contracts-upgradeable-5.5.0/token/ERC20/extensions/ERC20VotesUpgradeable.sol";
import { NoncesUpgradeable } from "@openzeppelin-contracts-upgradeable-5.5.0/utils/NoncesUpgradeable.sol";

error OnlyFactory();
error ZeroAddress();
error AlreadyUnlocking();
error NoUnlockRequest();
error UnlockDelayNotMet();
error Approved();
error NotApproved();
error FeeOnTransferNotSupported();
error InsufficientBalance();
error ZeroAmount();
error TransferNotSupported();
error PendingUnlock();
error UnlockDelayExceedsMax();
error NoExcessUnderlying();
error CannotRecoverUnderlying();

/**
 * @title LockedToken 1.0
 * @author molecule.xyz
 * @notice Non-transferable locked token wrapper for ERC20 tokens with governance voting power
 * @dev This contract is cloned by LockedTokenFactory using minimal proxy pattern
 *      Users lock ERC20 tokens and receive L-tokens 1:1. Unlocking requires a delay period.
 *      Approved accounts are flagged and cannot unlock without admin approval.
 */
contract LockedToken is Initializable, ERC20Upgradeable, ERC20PermitUpgradeable, ERC20VotesUpgradeable, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;

    /// @notice Maximum unlock delay (365 days) to prevent permanent locking
    uint64 public constant MAX_UNLOCK_DELAY = 365 days;

    /// @notice The underlying ERC20 token that this locked token wraps
    address public underlyingToken;

    /// @notice The factory contract that created this locked token
    address public factory;

    /// @notice The unlock delay for this locked token in seconds
    uint64 public unlockDelay;

    /// @notice Tracks each user's lock state
    struct Lock {
        uint256 amount; // Total amount of L-tokens held
        uint64 unlockRequestTime; // Timestamp when unlock was requested (0 if not requested)
    }

    /// @notice Mapping of user addresses to their lock state
    mapping(address => Lock) public locks;

    /// @notice Mapping of addresses marked as approved (cannot unlock without admin approval)
    mapping(address => bool) public isApproved;

    /// @notice Total amount of underlying tokens currently locked in this contract
    uint256 public totalLocked;

    event Locked(address indexed user, uint256 amount);
    event UnlockRequested(address indexed user, uint256 amount, uint64 unlockTime);
    event Unlocked(address indexed user, uint256 amount);
    event UnlockCancelled(address indexed user);
    event ApprovalSet(address indexed account, bool status);
    event AdminUnlock(address indexed account, uint256 amount);
    event UnlockDelayUpdated(uint64 oldDelay, uint64 newDelay);
    event ExcessUnderlyingRescued(address indexed to, uint256 amount);
    event ERC20Recovered(address indexed token, address indexed to, uint256 amount);

    modifier onlyFactory() {
        if (msg.sender != factory) revert OnlyFactory();
        _;
    }

    modifier notApproved(address account) {
        if (isApproved[account]) revert Approved();
        _;
    }

    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initialize the locked token
     * @param underlyingToken_ The ERC20 token to wrap
     * @param name The name of the L-token
     * @param symbol The symbol of the L-token
     * @param factory_ The factory contract address
     * @param unlockDelay_ The unlock delay in seconds
     */
    function initialize(address underlyingToken_, string memory name, string memory symbol, address factory_, uint64 unlockDelay_)
        external
        initializer
    {
        if (factory_ == address(0)) revert ZeroAddress();
        if (underlyingToken_ == address(0)) revert ZeroAddress();
        if (unlockDelay_ > MAX_UNLOCK_DELAY) revert UnlockDelayExceedsMax();

        __ERC20_init(name, symbol);
        __ERC20Permit_init(name);
        __ERC20Votes_init();

        underlyingToken = underlyingToken_;
        factory = factory_;
        unlockDelay = unlockDelay_;
    }

    /**
     * @notice Lock ERC20 tokens and receive L-tokens 1:1
     * @param amount The amount of ERC20 tokens to lock
     */
    function lock(uint256 amount) external nonReentrant {
        if (amount == 0) revert ZeroAmount();
        if (locks[msg.sender].unlockRequestTime != 0) revert PendingUnlock();

        // Measure actual received amount to detect fee-on-transfer tokens
        uint256 balanceBefore = IERC20(underlyingToken).balanceOf(address(this));
        IERC20(underlyingToken).safeTransferFrom(msg.sender, address(this), amount);
        uint256 balanceAfter = IERC20(underlyingToken).balanceOf(address(this));
        uint256 received = balanceAfter - balanceBefore;

        // Explicitly reject fee-on-transfer tokens
        if (received != amount) revert FeeOnTransferNotSupported();

        // Mint L-tokens 1:1 (using received for clarity, same as amount)
        _mint(msg.sender, received);

        // Track lock
        locks[msg.sender].amount += received;
        totalLocked += received;

        emit Locked(msg.sender, received);
    }

    /**
     * @notice Request to unlock tokens (enters queue with delay)
     * @dev Approved accounts cannot call this function
     */
    function requestUnlock() external notApproved(msg.sender) {
        uint256 amount = balanceOf(msg.sender);
        if (amount == 0) revert ZeroAmount();
        if (locks[msg.sender].unlockRequestTime != 0) revert AlreadyUnlocking();

        // Get unlock delay from factory
        uint64 unlockTime = uint64(block.timestamp) + _getUnlockDelay();
        locks[msg.sender].unlockRequestTime = unlockTime;

        emit UnlockRequested(msg.sender, amount, unlockTime);
    }

    /**
     * @notice Complete unlock after delay period has passed
     * @dev Burns L-tokens and returns underlying ERC20 tokens
     */
    function unlock() external nonReentrant notApproved(msg.sender) {
        Lock memory userLock = locks[msg.sender];

        if (userLock.unlockRequestTime == 0) revert NoUnlockRequest();
        if (block.timestamp < userLock.unlockRequestTime) revert UnlockDelayNotMet();

        uint256 amount = balanceOf(msg.sender);
        if (amount == 0) revert ZeroAmount();

        // Clear unlock request
        delete locks[msg.sender].unlockRequestTime;

        // Burn L-tokens
        _burn(msg.sender, amount);

        // Update tracking
        totalLocked -= amount;
        locks[msg.sender].amount -= amount;

        // Return ERC20 tokens
        IERC20(underlyingToken).safeTransfer(msg.sender, amount);

        emit Unlocked(msg.sender, amount);
    }

    /**
     * @notice Cancel a pending unlock request
     */
    function cancelUnlockRequest() external {
        if (locks[msg.sender].unlockRequestTime == 0) revert NoUnlockRequest();

        delete locks[msg.sender].unlockRequestTime;

        emit UnlockCancelled(msg.sender);
    }

    /**
     * @notice Set or unset approval status (factory only)
     * @param account The account to modify
     * @param status True to mark as approved, false to unmark
     */
    function setApproval(address account, bool status) external onlyFactory {
        _setApproval(account, status);
    }

    /**
     * @notice Admin override to unlock account tokens (factory only)
     * @dev Used to force-unlock any account. Clears approval status on unlock.
     * @param account The account to unlock
     */
    function adminUnlock(address account) external onlyFactory nonReentrant {
        uint256 amount = balanceOf(account);
        if (amount == 0) revert ZeroAmount();

        // Clear approval (also clears any pending unlock request and emits ApprovalSet)
        _setApproval(account, false);

        // Burn L-tokens
        _burn(account, amount);

        // Update tracking
        totalLocked -= amount;
        locks[account].amount -= amount;

        // Return ERC20 tokens
        IERC20(underlyingToken).safeTransfer(account, amount);

        emit AdminUnlock(account, amount);
    }

    /**
     * @notice Set the unlock delay for this token (factory only)
     * @param newDelay The new delay in seconds
     */
    function setUnlockDelay(uint64 newDelay) external onlyFactory {
        if (newDelay > MAX_UNLOCK_DELAY) revert UnlockDelayExceedsMax();
        uint64 oldDelay = unlockDelay;
        unlockDelay = newDelay;
        emit UnlockDelayUpdated(oldDelay, newDelay);
    }

    /**
     * @notice Rescue excess underlying tokens that were sent directly (not via lock())
     * @dev Only callable by factory. Sends balance - totalLocked to recipient.
     *      Safe because balance >= totalLocked is a system invariant.
     * @param to The address to send excess tokens to
     */
    function rescueExcessUnderlying(address to) external onlyFactory nonReentrant {
        if (to == address(0)) revert ZeroAddress();

        uint256 excess = IERC20(underlyingToken).balanceOf(address(this)) - totalLocked;
        // slither-disable-next-line incorrect-equality
        if (excess == 0) revert NoExcessUnderlying();

        IERC20(underlyingToken).safeTransfer(to, excess);

        emit ExcessUnderlyingRescued(to, excess);
    }

    /**
     * @notice Recover non-underlying ERC20 tokens accidentally sent to this contract
     * @dev Only callable by factory. Cannot recover the underlying token (use rescueExcessUnderlying instead).
     * @param token The ERC20 token to recover
     * @param to The address to send tokens to
     * @param amount The amount to recover
     */
    function recoverERC20(address token, address to, uint256 amount) external onlyFactory nonReentrant {
        if (token == underlyingToken) revert CannotRecoverUnderlying();
        if (to == address(0)) revert ZeroAddress();
        if (amount == 0) revert ZeroAmount();

        IERC20(token).safeTransfer(to, amount);

        emit ERC20Recovered(token, to, amount);
    }

    /**
     * @notice Get the current unlock delay from factory
     * @return The unlock delay in seconds
     */
    function getUnlockDelay() external view returns (uint64) {
        return _getUnlockDelay();
    }

    /**
     * @notice Check if an account can unlock now
     * @param account The account to check
     * @return True if the account can unlock immediately
     */
    function canUnlockNow(address account) external view returns (bool) {
        Lock memory userLock = locks[account];
        return userLock.unlockRequestTime != 0 && block.timestamp >= userLock.unlockRequestTime && !isApproved[account];
    }

    /**
     * @notice Get time remaining until unlock (0 if can unlock)
     * @param account The account to check
     * @return The seconds remaining, or 0 if can unlock or no request pending
     */
    function timeUntilUnlock(address account) external view returns (uint64) {
        Lock memory userLock = locks[account];
        if (userLock.unlockRequestTime == 0) return 0;
        if (block.timestamp >= userLock.unlockRequestTime) return 0;
        return userLock.unlockRequestTime - uint64(block.timestamp);
    }

    /**
     * @notice Override nonces to resolve conflict between ERC20Permit and Votes
     * @dev Both ERC20PermitUpgradeable and NoncesUpgradeable define nonces, we use ERC20Permit's version
     */
    function nonces(address owner) public view override(ERC20PermitUpgradeable, NoncesUpgradeable) returns (uint256) {
        return super.nonces(owner);
    }

    /**
     * @notice Internal function to set approval status
     * @param account The account to modify
     * @param status True to mark as approved, false to unmark
     */
    function _setApproval(address account, bool status) internal {
        isApproved[account] = status;
        // Always clear pending unlock — status change invalidates prior requests
        delete locks[account].unlockRequestTime;
        emit ApprovalSet(account, status);
    }

    /**
     * @notice Internal function to get unlock delay
     * @return The unlock delay in seconds
     */
    function _getUnlockDelay() internal view returns (uint64) {
        return unlockDelay;
    }

    /**
     * @notice Override _update to make L-tokens non-transferable
     * @dev Only allows minting and burning, blocks transfers between users
     */
    function _update(address from, address to, uint256 value) internal override(ERC20Upgradeable, ERC20VotesUpgradeable) {
        // Allow minting (from == address(0)) and burning (to == address(0))
        // Block all transfers between users
        if (from != address(0) && to != address(0)) {
            revert TransferNotSupported();
        }
        super._update(from, to, value);
    }
}
