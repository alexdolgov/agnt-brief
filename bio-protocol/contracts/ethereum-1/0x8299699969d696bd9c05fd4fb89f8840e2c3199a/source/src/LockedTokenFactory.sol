// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

import { LockedToken } from "./LockedToken.sol";
import { Clones } from "@openzeppelin-contracts-5.5.0/proxy/Clones.sol";
import { IERC20 } from "@openzeppelin-contracts-5.5.0/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "@openzeppelin-contracts-5.5.0/token/ERC20/extensions/IERC20Metadata.sol";
import { AccessControlUpgradeable } from "@openzeppelin-contracts-upgradeable-5.5.0/access/AccessControlUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin-contracts-upgradeable-5.5.0/proxy/utils/UUPSUpgradeable.sol";

error ZeroAddress();
error AlreadyWrapped();
error InvalidIPToken();
error LockedTokenNotFound();
error NotCreatedByFactory();
error ArrayLengthMismatch();

/**
 * @title LockedTokenFactory 1.0
 * @author molecule.xyz
 * @notice Factory for creating locked token wrappers around ERC20 tokens
 * @dev Uses minimal proxy cloning pattern for gas-efficient deployment
 *      Maintains registry to prevent duplicate wrappers per ERC20 token
 */
contract LockedTokenFactory is UUPSUpgradeable, AccessControlUpgradeable {
    /// @notice Role for operational management of deployed tokens
    bytes32 public constant OPERATIONS_ROLE = keccak256("OPERATIONS_ROLE");

    /// @notice Maximum batch size for batch operations to prevent excessive gas usage
    uint256 private constant MAX_BATCH_SIZE = 100;

    /// @notice The LockedToken implementation contract to clone
    LockedToken public lockedTokenImplementation;

    /// @notice The default unlock delay in seconds for new tokens (7 days default)
    uint64 public unlockDelay;

    /// @notice Registry mapping ERC20 token addresses to their LockedToken wrappers
    mapping(address => LockedToken) public lockedTokens;

    /// @notice Reverse lookup mapping LockedToken addresses to their underlying ERC20 token
    mapping(LockedToken => address) public underlyingTokens;

    event LockedTokenCreated(address indexed underlyingToken, LockedToken indexed lockedToken, address indexed creator, string name, string symbol);

    event LockedTokenImplementationUpdated(LockedToken indexed oldImplementation, LockedToken indexed newImplementation);

    event UnlockDelayUpdated(uint64 oldDelay, uint64 newDelay);

    event LockedTokenUnlockDelayUpdated(LockedToken indexed lockedToken, uint64 newDelay);

    event ApprovalStatusSet(LockedToken indexed lockedToken, address indexed account, bool status);

    event AdminUnlockExecuted(LockedToken indexed lockedToken, address indexed account);

    event ExcessUnderlyingRescued(LockedToken indexed lockedToken, address indexed to);

    event ERC20Recovered(LockedToken indexed lockedToken, address indexed token, address indexed to, uint256 amount);

    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initialize the factory
     * @param implementation The LockedToken implementation to clone
     * @param unlockDelay_ The default unlock delay in seconds
     */
    function initialize(LockedToken implementation, uint64 unlockDelay_) external initializer {
        __AccessControl_init();

        // Grant DEFAULT_ADMIN_ROLE to deployer
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);

        if (address(implementation) == address(0)) revert ZeroAddress();

        lockedTokenImplementation = implementation;
        unlockDelay = unlockDelay_;
        emit UnlockDelayUpdated(0, unlockDelay_);
    }

    /**
     * @notice Create a locked token wrapper for an ERC20 token
     * @param token The ERC20 token to wrap
     * @param name The name for the L-token (e.g., "Locked Token")
     * @param symbol The symbol for the L-token (e.g., "lTEST")
     * @return lockedToken The created LockedToken contract
     */
    function createLockedToken(address token, string memory name, string memory symbol)
        external
        onlyRole(OPERATIONS_ROLE)
        returns (LockedToken lockedToken)
    {
        // Validate token address
        if (token == address(0)) revert ZeroAddress();

        // Check not already wrapped
        if (address(lockedTokens[token]) != address(0)) {
            revert AlreadyWrapped();
        }

        // Validate token has ERC20 interface
        _validateERC20Token(token);

        // Clone implementation
        lockedToken = LockedToken(Clones.clone(address(lockedTokenImplementation)));

        // Register in mappings (before external call to prevent reentrancy)
        lockedTokens[token] = lockedToken;
        underlyingTokens[lockedToken] = token;

        // Emit event BEFORE external call (CEI pattern)
        emit LockedTokenCreated(token, lockedToken, msg.sender, name, symbol);

        // Initialize clone with factory's default unlock delay
        lockedToken.initialize(token, name, symbol, address(this), unlockDelay);
    }

    /**
     * @notice Update the locked token implementation
     * @param newImplementation The new LockedToken implementation
     */
    function setLockedTokenImplementation(LockedToken newImplementation) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (address(newImplementation) == address(0)) revert ZeroAddress();

        LockedToken oldImplementation = lockedTokenImplementation;
        lockedTokenImplementation = newImplementation;

        emit LockedTokenImplementationUpdated(oldImplementation, newImplementation);
    }

    /**
     * @notice Update the default unlock delay for new tokens
     * @dev This only affects newly created tokens, not existing ones
     * @param newDelay The new delay in seconds
     */
    function setUnlockDelay(uint64 newDelay) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint64 oldDelay = unlockDelay;
        unlockDelay = newDelay;
        emit UnlockDelayUpdated(oldDelay, newDelay);
    }

    /**
     * @notice Set the unlock delay for a specific locked token
     * @param lockedToken The locked token contract
     * @param newDelay The new delay in seconds
     */
    function setLockedTokenUnlockDelay(LockedToken lockedToken, uint64 newDelay) external onlyRole(OPERATIONS_ROLE) {
        // Verify locked token was created by this factory
        if (address(underlyingTokens[lockedToken]) == address(0)) {
            revert NotCreatedByFactory();
        }

        emit LockedTokenUnlockDelayUpdated(lockedToken, newDelay);

        lockedToken.setUnlockDelay(newDelay);
    }

    /**
     * @notice Set approval status on a locked token
     * @param lockedToken The locked token contract
     * @param account The account to modify
     * @param status True to set as approved, false to unset
     */
    function setApproval(LockedToken lockedToken, address account, bool status) external onlyRole(OPERATIONS_ROLE) {
        // Verify locked token was created by this factory
        if (address(underlyingTokens[lockedToken]) == address(0)) {
            revert NotCreatedByFactory();
        }

        emit ApprovalStatusSet(lockedToken, account, status);

        lockedToken.setApproval(account, status);
    }

    /**
     * @notice Admin override to unlock any account's tokens. Clears approval status on unlock.
     * @param lockedToken The locked token contract
     * @param account The account to unlock
     */
    function adminUnlock(LockedToken lockedToken, address account) external onlyRole(OPERATIONS_ROLE) {
        // Verify locked token was created by this factory
        if (address(underlyingTokens[lockedToken]) == address(0)) {
            revert NotCreatedByFactory();
        }

        emit AdminUnlockExecuted(lockedToken, account);

        lockedToken.adminUnlock(account);
    }

    /**
     * @notice Rescue excess underlying tokens from a locked token
     * @dev Recovers tokens sent directly to the LockedToken (not via lock())
     * @param lockedToken The locked token contract
     * @param to The address to send excess tokens to
     */
    function rescueExcessUnderlying(LockedToken lockedToken, address to) external onlyRole(OPERATIONS_ROLE) {
        if (address(underlyingTokens[lockedToken]) == address(0)) {
            revert NotCreatedByFactory();
        }

        emit ExcessUnderlyingRescued(lockedToken, to);

        lockedToken.rescueExcessUnderlying(to);
    }

    /**
     * @notice Recover non-underlying ERC20 tokens from a locked token
     * @dev Cannot recover the underlying token — use rescueExcessUnderlying instead
     * @param lockedToken The locked token contract
     * @param token The ERC20 token to recover
     * @param to The address to send tokens to
     * @param amount The amount to recover
     */
    function recoverERC20(LockedToken lockedToken, address token, address to, uint256 amount) external onlyRole(OPERATIONS_ROLE) {
        if (address(underlyingTokens[lockedToken]) == address(0)) {
            revert NotCreatedByFactory();
        }

        emit ERC20Recovered(lockedToken, token, to, amount);

        lockedToken.recoverERC20(token, to, amount);
    }

    /**
     * @notice Batch set approval status for multiple accounts
     * @param lockedToken The locked token contract
     * @param accounts Array of accounts to modify
     * @param statuses Array of status values (must match accounts length)
     */
    function batchSetApprovals(LockedToken lockedToken, address[] calldata accounts, bool[] calldata statuses) external onlyRole(OPERATIONS_ROLE) {
        if (accounts.length != statuses.length) revert ArrayLengthMismatch();
        if (accounts.length > MAX_BATCH_SIZE) revert ArrayLengthMismatch();

        // Verify locked token was created by this factory
        if (address(underlyingTokens[lockedToken]) == address(0)) {
            revert NotCreatedByFactory();
        }

        for (uint256 i = 0; i < accounts.length; i++) {
            emit ApprovalStatusSet(lockedToken, accounts[i], statuses[i]);
            lockedToken.setApproval(accounts[i], statuses[i]);
        }
    }

    /**
     * @notice Get the locked token for an ERC20 token
     * @param token The underlying ERC20 token
     * @return The LockedToken contract, or address(0) if not wrapped
     */
    function getLockedToken(address token) external view returns (LockedToken) {
        return lockedTokens[token];
    }

    /**
     * @notice Check if an ERC20 token is already wrapped
     * @param token The ERC20 token to check
     * @return True if wrapped, false otherwise
     */
    function isWrapped(address token) external view returns (bool) {
        return address(lockedTokens[token]) != address(0);
    }

    /**
     * @notice Get the underlying ERC20 token for a locked token
     * @param lockedToken The locked token
     * @return The underlying ERC20 token address
     */
    function getUnderlyingToken(LockedToken lockedToken) external view returns (address) {
        return underlyingTokens[lockedToken];
    }

    /**
     * @notice Validate that an address is a valid ERC20 token
     * @param token The address to validate
     */
    function _validateERC20Token(address token) internal view {
        // Check it's a contract
        uint256 size;
        assembly {
            size := extcodesize(token)
        }
        if (size == 0) revert InvalidIPToken();

        // Try calling totalSupply() to validate ERC20 interface
        // slither-disable-next-line unused-return
        try IERC20(token).totalSupply() returns (
            uint256 /* totalSupply */
        ) {
            // Valid ERC20 - interface check passed
            // Optionally check for decimals() (part of ERC20Metadata extension)
            // slither-disable-next-line unused-return
            try IERC20Metadata(token).decimals() returns (
                uint8 /* decimals */
            ) {
            // Has metadata extension
            }
                catch {
                // No decimals - still valid minimal ERC20
            }
        } catch {
            revert InvalidIPToken();
        }
    }

    /**
     * @notice Authorize upgrades (UUPS pattern)
     * @dev Only admin can upgrade
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {
        // Empty - authorization handled by onlyRole
    }
}
