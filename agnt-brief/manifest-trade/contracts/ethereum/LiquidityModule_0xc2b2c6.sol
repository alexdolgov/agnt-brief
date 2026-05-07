// ============================================================
// FILE: contracts/module/BytesUtils.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

library BytesUtils {
    function calldataSliceSelector(bytes calldata _bytes) internal pure returns (bytes4 selector) {
        selector = _bytes[0] | (bytes4(_bytes[1]) >> 8) | (bytes4(_bytes[2]) >> 16) | (bytes4(_bytes[3]) >> 24);
    }

    function memorySliceSelector(bytes memory _bytes) internal pure returns (bytes4 selector) {
        selector = _bytes[0] | (bytes4(_bytes[1]) >> 8) | (bytes4(_bytes[2]) >> 16) | (bytes4(_bytes[3]) >> 24);
    }

    /**
     * @notice Parse and revert with a descriptive error message based on return data format
     * @dev Handles: empty data, bool, Error(string), Panic(uint256), custom errors, and unknown formats
     * @param _bytes The return data to parse
     * @param _tracingInfo Prefix to add to the error message for context
     */
    function revertWithError(bytes memory _bytes, string memory _tracingInfo) internal pure {
        // Handle empty return data (some functions don't return anything)
        if (_bytes.length == 0) {
            revert(string(abi.encodePacked(_tracingInfo, "transaction failed with no return data")));
        }

        // Handle boolean/uint256 return (32 bytes) - common for ERC20 transfers
        if (_bytes.length == 32) {
            bool success;
            assembly {
                success := mload(add(_bytes, 0x20))
            }
            if (!success) {
                revert(string(abi.encodePacked(_tracingInfo, "transaction returned false")));
            } else {
                revert(
                    string(abi.encodePacked(_tracingInfo, "transaction marked failed but returned true (unexpected)"))
                );
            }
        }

        // Need at least 4 bytes for a selector
        if (_bytes.length >= 4) {
            bytes4 selector;
            assembly {
                selector := mload(add(_bytes, 0x20))
            }

            // Handle Error(string) format: selector 0x08c379a0
            if (selector == 0x08c379a0 && _bytes.length >= 68) {
                assembly {
                    _bytes := add(_bytes, 68)
                }
                revert(string(abi.encodePacked(_tracingInfo, string(_bytes))));
            }

            // Handle Panic(uint256) format: selector 0x4e487b71
            if (selector == 0x4e487b71 && _bytes.length >= 36) {
                uint256 panicCode;
                assembly {
                    panicCode := mload(add(_bytes, 0x24))
                }
                string memory panicMsg = _getPanicMessage(panicCode);
                revert(string(abi.encodePacked(_tracingInfo, "panic: ", panicMsg)));
            }

            // Handle custom errors - just show the selector
            revert(string(abi.encodePacked(_tracingInfo, "custom error 0x", _toHexString(selector))));
        }

        // Fallback for truly unexpected formats
        revert(string(abi.encodePacked(_tracingInfo, "unexpected return data format")));
    }

    /**
     * @notice Parse and return a descriptive error message based on return data format
     * @dev Same logic as revertWithError but returns string instead of reverting
     * @param _bytes The return data to parse
     * @param _tracingInfo Prefix to add to the error message for context
     * @return string The parsed error message
     */
    function returnError(bytes memory _bytes, string memory _tracingInfo) internal pure returns (string memory) {
        // Handle empty return data
        if (_bytes.length == 0) {
            return string(abi.encodePacked(_tracingInfo, "transaction failed with no return data"));
        }

        // Handle boolean/uint256 return (32 bytes)
        if (_bytes.length == 32) {
            bool success;
            assembly {
                success := mload(add(_bytes, 0x20))
            }
            if (!success) {
                return string(abi.encodePacked(_tracingInfo, "transaction returned false"));
            } else {
                return
                    string(abi.encodePacked(_tracingInfo, "transaction marked failed but returned true (unexpected)"));
            }
        }

        // Need at least 4 bytes for a selector
        if (_bytes.length >= 4) {
            bytes4 selector;
            assembly {
                selector := mload(add(_bytes, 0x20))
            }

            // Handle Error(string) format
            if (selector == 0x08c379a0 && _bytes.length >= 68) {
                assembly {
                    _bytes := add(_bytes, 68)
                }
                return string(abi.encodePacked(_tracingInfo, string(_bytes)));
            }

            // Handle Panic(uint256) format
            if (selector == 0x4e487b71 && _bytes.length >= 36) {
                uint256 panicCode;
                assembly {
                    panicCode := mload(add(_bytes, 0x24))
                }
                string memory panicMsg = _getPanicMessage(panicCode);
                return string(abi.encodePacked(_tracingInfo, "panic: ", panicMsg));
            }

            // Handle custom errors
            return string(abi.encodePacked(_tracingInfo, "custom error 0x", _toHexString(selector)));
        }

        // Fallback
        return string(abi.encodePacked(_tracingInfo, "unexpected return data format"));
    }

    /**
     * @notice Get human-readable message for Solidity panic codes
     * @param code The panic error code
     * @return string Description of the panic error
     */
    function _getPanicMessage(uint256 code) private pure returns (string memory) {
        if (code == 0x00) return "generic/unspecified error";
        if (code == 0x01) return "assertion failed";
        if (code == 0x11) return "arithmetic underflow or overflow";
        if (code == 0x12) return "division or modulo by zero";
        if (code == 0x21) return "invalid enum conversion";
        if (code == 0x22) return "invalid storage byte array encoding";
        if (code == 0x31) return "pop() on empty array";
        if (code == 0x32) return "array out of bounds access";
        if (code == 0x41) return "out of memory error";
        if (code == 0x51) return "invalid internal function call";
        return "unknown panic code";
    }

    /**
     * @notice Convert bytes4 to hex string for error reporting
     * @param _bytes The bytes4 to convert
     * @return string The hex string representation (8 characters, no 0x prefix)
     */
    function _toHexString(bytes4 _bytes) private pure returns (string memory) {
        bytes memory hexChars = "0123456789abcdef";
        bytes memory result = new bytes(8);
        for (uint256 i = 0; i < 4; i++) {
            result[i * 2] = hexChars[uint8(_bytes[i]) >> 4];
            result[i * 2 + 1] = hexChars[uint8(_bytes[i]) & 0x0f];
        }
        return string(result);
    }
}

// ============================================================
// FILE: contracts/module/interfaces/ILiquidityModule.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {ISafe} from "./ISafe.sol";

/// @title ILiquidityModule
/// @notice Interface for the LiquidityModule that allows controlled liquidity operations from a Safe
/// @dev This module enables an authorized bot to:
///      1. Execute swaps via whitelisted swap targets (routers) with specific function selectors
///      2. Transfer tokens ONLY to whitelisted recipients (WithdrawHelper contracts)
///      3. All whitelist additions are subject to a 2-hour timelock for security
///      4. Ownership transfers use a two-step pattern for safety
interface ILiquidityModule {
    // ========================================
    // STRUCTS
    // ========================================

    /// @notice Configuration for a whitelisted swap target
    struct SwapTarget {
        bool enabled;
        string name; // Human-readable name (e.g., "Uniswap V3 Router")
    }

    /// @notice Configuration for a whitelisted transfer recipient
    struct TransferRecipient {
        bool enabled;
        string name; // Human-readable name (e.g., "WithdrawHelper Hub")
    }

    /// @notice A single transaction to execute
    struct Tx {
        address to;
        bytes data;
        uint256 value;
        ISafe.Operation operation;
    }

    /// @notice Pending timelock operation types
    enum TimelockType {
        AddSwapTarget,
        AddTransferRecipient,
        AddToken,
        AddSelector,
        SetAuthorizedBot
    }

    /// @notice Pending timelock operation
    struct PendingOperation {
        TimelockType opType;
        address target;
        bytes4 selector;
        uint256 recipientOffset; // For AddSelector: offset where recipient is in calldata
        string name;
        uint256 executeAfter;
        bool executed;
        bool cancelled;
    }

    // ========================================
    // INITIAL CONFIGURATION STRUCTS
    // ========================================

    /// @notice Selector configuration with recipient offset
    struct SelectorConfig {
        bytes4 selector;
        uint256 recipientOffset; // Offset in calldata where recipient address is located (0 = not configured, will revert)
    }

    /// @notice Initial swap target configuration (for constructor)
    struct InitialSwapTarget {
        address target;
        string name;
        SelectorConfig[] selectors; // Function selectors with recipient offsets
    }

    /// @notice Initial transfer recipient configuration (for constructor)
    struct InitialTransferRecipient {
        address recipient;
        string name;
    }

    /// @notice Complete initial configuration (for constructor)
    struct InitialConfig {
        InitialSwapTarget[] swapTargets;
        InitialTransferRecipient[] transferRecipients;
        address[] tokens;
    }

    // ========================================
    // EVENTS
    // ========================================

    /// @notice Emitted when the module is initialized
    event ModuleInitialized(address indexed authorizedBot, address indexed owner, address indexed multisend);

    /// @notice Emitted when a swap target is added
    event SwapTargetAdded(address indexed target, string name);

    /// @notice Emitted when a swap target is removed
    event SwapTargetRemoved(address indexed target);

    /// @notice Emitted when a transfer recipient is added
    event TransferRecipientAdded(address indexed recipient, string name);

    /// @notice Emitted when a transfer recipient is removed
    event TransferRecipientRemoved(address indexed recipient);

    /// @notice Emitted when a token is whitelisted
    event TokenWhitelisted(address indexed token);

    /// @notice Emitted when a token is removed from whitelist
    event TokenRemoved(address indexed token);

    /// @notice Emitted when a selector is whitelisted for a swap target
    event SelectorWhitelisted(address indexed target, bytes4 indexed selector);

    /// @notice Emitted when a selector is removed from a swap target
    event SelectorRemoved(address indexed target, bytes4 indexed selector);

    /// @notice Emitted when an approval is executed
    event ApproveExecuted(
        address indexed safe, address indexed token, address indexed spender, uint256 amount, bool success
    );

    /// @notice Emitted when a swap is executed
    event SwapExecuted(
        address indexed safe, address indexed sender, address indexed target, bytes4 selector, bool success
    );

    /// @notice Emitted when a transfer is executed
    event TransferExecuted(
        address indexed safe, address indexed token, address indexed recipient, uint256 amount, bool success
    );

    /// @notice Emitted when a batch operation is executed
    event BatchExecuted(address indexed safe, address indexed sender, uint256 txCount, bool success);

    /// @notice Emitted when paused state changes
    event Paused(bool paused);

    /// @notice Emitted when ownership transfer is initiated
    event OwnershipTransferStarted(address indexed currentOwner, address indexed pendingOwner);

    /// @notice Emitted when ownership transfer is completed
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /// @notice Emitted when ownership transfer is cancelled
    event OwnershipTransferCancelled(address indexed currentOwner, address indexed cancelledPendingOwner);

    /// @notice Emitted when authorized bot changes
    event AuthorizedBotChanged(address indexed oldBot, address indexed newBot);

    /// @notice Emitted when a timelock operation is queued
    event TimelockQueued(
        bytes32 indexed operationId, TimelockType indexed opType, address target, bytes4 selector, uint256 executeAfter
    );

    /// @notice Emitted when a timelock operation is executed
    event TimelockExecuted(bytes32 indexed operationId, TimelockType indexed opType);

    /// @notice Emitted when a timelock operation is cancelled
    event TimelockCancelled(bytes32 indexed operationId);

    // ========================================
    // ERRORS
    // ========================================

    error InvalidAddress();
    error InvalidCalldata();
    error OnlyAuthorizedBot();
    error OnlyOwner();
    error OnlyPendingOwner();
    error ModulePaused();
    error ModuleNotEnabled();
    error SwapTargetNotWhitelisted(address target);
    error TransferRecipientNotWhitelisted(address recipient);
    error TokenNotWhitelisted(address token);
    error SelectorNotWhitelisted(address target, bytes4 selector);
    error EmptyTransactionArray();
    error TooManyTransactions();
    error ExecutionFailed(string reason);
    error TimelockNotReady(bytes32 operationId, uint256 executeAfter);
    error TimelockExpired(bytes32 operationId, uint256 expiredAt);
    error TimelockAlreadyExecuted(bytes32 operationId);
    error TimelockAlreadyCancelled(bytes32 operationId);
    error TimelockNotFound(bytes32 operationId);
    error NoPendingOwnership();
    error InvalidSwapRecipient(address recipient);
    error RecipientOffsetNotConfigured(address target, bytes4 selector);
    error DelegateCallNotAllowed();

    // ========================================
    // TIMELOCK CONSTANTS
    // ========================================

    /// @notice Get the timelock delay (6 hours)
    /// @return The timelock delay in seconds
    function TIMELOCK_DELAY() external pure returns (uint256);

    /// @notice Get the timelock expiry window (7 days)
    /// @dev Operations must be executed within this window after becoming ready
    /// @return The timelock expiry window in seconds
    function TIMELOCK_EXPIRY() external pure returns (uint256);

    // ========================================
    // TIMELOCK FUNCTIONS
    // ========================================

    /// @notice Queue addition of a swap target (subject to timelock)
    /// @param target Address of the swap target (e.g., Uniswap Router)
    /// @param name Human-readable name for the target
    /// @return operationId The unique identifier for this timelock operation
    function queueAddSwapTarget(address target, string calldata name) external returns (bytes32 operationId);

    /// @notice Queue addition of a transfer recipient (subject to timelock)
    /// @param recipient Address of the recipient
    /// @param name Human-readable name for the recipient
    /// @return operationId The unique identifier for this timelock operation
    function queueAddTransferRecipient(address recipient, string calldata name)
        external
        returns (bytes32 operationId);

    /// @notice Queue addition of a whitelisted token (subject to timelock)
    /// @param token Address of the token (e.g., USDC, USDe)
    /// @return operationId The unique identifier for this timelock operation
    function queueAddWhitelistedToken(address token) external returns (bytes32 operationId);

    /// @notice Queue addition of a whitelisted selector for a swap target (subject to timelock)
    /// @param target Address of the swap target
    /// @param selector The function selector to whitelist
    /// @param recipientOffset Offset in calldata where recipient address is located (0 = not configured, will revert)
    /// @return operationId The unique identifier for this timelock operation
    function queueAddSelector(address target, bytes4 selector, uint256 recipientOffset)
        external
        returns (bytes32 operationId);

    /// @notice Queue change of authorized bot (subject to timelock)
    /// @param newBot Address of the new authorized bot
    /// @return operationId The unique identifier for this timelock operation
    function queueSetAuthorizedBot(address newBot) external returns (bytes32 operationId);

    /// @notice Execute a queued timelock operation after delay has passed
    /// @param operationId The unique identifier for the timelock operation
    function executeTimelock(bytes32 operationId) external;

    /// @notice Cancel a pending timelock operation
    /// @param operationId The unique identifier for the timelock operation
    function cancelTimelock(bytes32 operationId) external;

    /// @notice Get details of a pending timelock operation
    /// @param operationId The unique identifier for the timelock operation
    /// @return operation The pending operation details
    function getPendingOperation(bytes32 operationId) external view returns (PendingOperation memory operation);

    // ========================================
    // IMMEDIATE REMOVAL FUNCTIONS (no timelock needed)
    // ========================================

    /// @notice Remove a swap target from the whitelist (immediate, no timelock)
    /// @param target Address of the swap target to remove
    function removeSwapTarget(address target) external;

    /// @notice Remove a transfer recipient from the whitelist (immediate, no timelock)
    /// @param recipient Address of the recipient to remove
    function removeTransferRecipient(address recipient) external;

    /// @notice Remove a token from the whitelist (immediate, no timelock)
    /// @param token Address of the token to remove
    function removeWhitelistedToken(address token) external;

    /// @notice Remove a selector from a swap target (immediate, no timelock)
    /// @param target Address of the swap target
    /// @param selector The function selector to remove
    function removeSelector(address target, bytes4 selector) external;

    // ========================================
    // VIEW FUNCTIONS - WHITELIST STATUS
    // ========================================

    /// @notice Check if a swap target is whitelisted
    /// @param target Address to check
    /// @return enabled Whether the target is whitelisted
    /// @return name The target's name
    function getSwapTarget(address target) external view returns (bool enabled, string memory name);

    /// @notice Check if a transfer recipient is whitelisted
    /// @param recipient Address to check
    /// @return enabled Whether the recipient is whitelisted
    /// @return name The recipient's name
    function getTransferRecipient(address recipient) external view returns (bool enabled, string memory name);

    /// @notice Check if a token is whitelisted
    /// @param token Address to check
    /// @return Whether the token is whitelisted
    function isTokenWhitelisted(address token) external view returns (bool);

    /// @notice Check if a selector is whitelisted for a swap target
    /// @param target Address of the swap target
    /// @param selector The function selector to check
    /// @return Whether the selector is whitelisted
    function isSelectorWhitelisted(address target, bytes4 selector) external view returns (bool);

    // ========================================
    // EXECUTION FUNCTIONS
    // ========================================

    /// @notice Approve a whitelisted spender (swap target) to spend tokens from Safe
    /// @dev Typically called once per token/spender pair with max amount
    /// @param safe The Safe address
    /// @param token The whitelisted token to approve
    /// @param spender The whitelisted spender (must be a swap target)
    /// @param amount Amount to approve (use type(uint256).max for unlimited)
    /// @return success Whether the approval succeeded
    function executeApprove(address safe, address token, address spender, uint256 amount)
        external
        returns (bool success);

    /// @notice Execute a swap on behalf of the Safe
    /// @dev The swap target and function selector must both be whitelisted
    /// @param safe The Safe address
    /// @param swapTarget The whitelisted swap target
    /// @param swapData The calldata for the swap (selector must be whitelisted)
    /// @param value ETH value to send (if any)
    /// @return success Whether the execution succeeded
    /// @return returnData The return data from the execution
    function executeSwap(address safe, address swapTarget, bytes calldata swapData, uint256 value)
        external
        returns (bool success, bytes memory returnData);

    /// @notice Transfer tokens from Safe to a whitelisted recipient
    /// @param safe The Safe address
    /// @param token The whitelisted token to transfer
    /// @param recipient The whitelisted recipient (e.g., WithdrawHelper)
    /// @param amount Amount to transfer
    /// @return success Whether the transfer succeeded
    function executeTransfer(address safe, address token, address recipient, uint256 amount)
        external
        returns (bool success);

    /// @notice Execute a batch of operations (swaps and transfers)
    /// @dev Uses MultiSend for atomic execution. All operations must use whitelisted targets/selectors
    /// @param safe The Safe address
    /// @param txs Array of transactions to execute
    /// @return success Whether the batch succeeded
    /// @return returnData The return data from the batch execution
    function executeBatch(address safe, Tx[] calldata txs) external returns (bool success, bytes memory returnData);

    // ========================================
    // ADMIN FUNCTIONS
    // ========================================

    /// @notice Set the paused state (immediate, no timelock)
    /// @param _paused New paused state
    function setPaused(bool _paused) external;

    /// @notice Initiate ownership transfer (two-step pattern)
    /// @param newOwner Address of the new owner
    function transferOwnership(address newOwner) external;

    /// @notice Accept ownership transfer (must be called by pending owner)
    function acceptOwnership() external;

    /// @notice Cancel pending ownership transfer
    function cancelOwnershipTransfer() external;

    // ========================================
    // VIEW FUNCTIONS
    // ========================================

    /// @notice Get the module version
    /// @return Version string
    function getVersion() external pure returns (string memory);

    /// @notice Get the MULTISEND address
    /// @return The MultiSend contract address
    function MULTISEND() external view returns (address);

    /// @notice Get the authorized bot address
    /// @return The authorized bot address
    function authorizedBot() external view returns (address);

    /// @notice Get the owner address
    /// @return The owner address
    function owner() external view returns (address);

    /// @notice Get the pending owner address
    /// @return The pending owner address (zero if no transfer pending)
    function pendingOwner() external view returns (address);

    /// @notice Check if the module is paused
    /// @return Whether the module is paused
    function paused() external view returns (bool);
}

// ============================================================
// FILE: contracts/module/interfaces/IMultiSend.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IMultiSend {
    function multiSend(bytes memory transactions) external payable;
}

// ============================================================
// FILE: contracts/module/interfaces/ISafe.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface ISafe {
    enum Operation {
        Call,
        DelegateCall
    }

    /// @dev Allows a Module to execute a Safe transaction without any further confirmations.
    /// @param to Destination address of module transaction.
    /// @param value Ether value of module transaction.
    /// @param data Data payload of module transaction.
    /// @param operation Operation type of module transaction.
    function execTransactionFromModule(address to, uint256 value, bytes calldata data, Operation operation)
        external
        returns (bool success);

    /// @dev Allows a Module to execute a Safe transaction without any further confirmations and return data
    /// @param to Destination address of module transaction.
    /// @param value Ether value of module transaction.
    /// @param data Data payload of module transaction.
    /// @param operation Operation type of module transaction.
    function execTransactionFromModuleReturnData(address to, uint256 value, bytes memory data, Operation operation)
        external
        returns (bool success, bytes memory returnData);

    /// @dev Allows to execute a Safe transaction confirmed by required number of owners and then pays the account that submitted the transaction.
    ///      Note: The fees are always transferred, even if the user transaction fails.
    /// @param to Destination address of Safe transaction.
    /// @param value Ether value of Safe transaction.
    /// @param data Data payload of Safe transaction.
    /// @param operation Operation type of Safe transaction.
    /// @param safeTxGas Gas that should be used for the Safe transaction.
    /// @param baseGas Gas costs that are independent of the transaction execution(e.g. base transaction fee, signature check, payment of the refund)
    /// @param gasPrice Gas price that should be used for the payment calculation.
    /// @param gasToken Token address (or 0 if ETH) that is used for the payment.
    /// @param refundReceiver Address of receiver of gas payment (or 0 if tx.origin).
    /// @param signatures Packed signature data ({bytes32 r}{bytes32 s}{uint8 v})
    function execTransaction(
        address to,
        uint256 value,
        bytes calldata data,
        Operation operation,
        uint256 safeTxGas,
        uint256 baseGas,
        uint256 gasPrice,
        address gasToken,
        address payable refundReceiver,
        bytes memory signatures
    ) external payable returns (bool success);

    function enableModule(address module) external;

    function isModuleEnabled(address module) external view returns (bool);

    function approveHash(bytes32 hashToApprove) external;
}

// ============================================================
// FILE: contracts/module/LiquidityModule.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {BytesUtils} from "./BytesUtils.sol";
import {ISafe} from "./interfaces/ISafe.sol";
import {IMultiSend} from "./interfaces/IMultiSend.sol";
import {ILiquidityModule} from "./interfaces/ILiquidityModule.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

/**
 * @title LiquidityModule
 * @author Manifest Finance
 * @notice Safe Module for controlled liquidity operations with timelock security
 * @dev This module enables an authorized bot to execute operations on behalf of a Safe:
 *
 *      SECURITY MODEL:
 *      1. Swaps: Only to whitelisted swap targets with whitelisted function selectors
 *      2. Transfers: Only whitelisted tokens to whitelisted recipients (WithdrawHelper)
 *      3. Timelock: All whitelist additions require 2-hour delay for security
 *      4. Two-step ownership: Ownership transfers require acceptance by new owner
 *      5. All operations executed atomically via Safe's execTransactionFromModuleReturnData
 *
 *      ROLES:
 *      - authorizedBot: Can execute swaps and transfers (operational EOA)
 *      - owner: Can manage whitelists via timelock, pause, and change settings (multisig recommended)
 *
 *      FLOW:
 *      1. Deposits arrive at Safe via CCTP/LayerZero
 *      2. Bot triggers swaps (Safe executes directly, atomic)
 *      3. Bot triggers transfers to WithdrawHelper (Safe executes directly)
 *      4. WithdrawHelper handles user payouts with compliance checks
 */
contract LiquidityModule is ILiquidityModule, ReentrancyGuard {
    using BytesUtils for bytes;

    // ========================================
    // CONSTANTS
    // ========================================

    /// @notice Timelock delay for admin operations (6 hours)
    uint256 public constant TIMELOCK_DELAY = 6 hours;

    /// @notice Timelock expiry window (7 days)
    /// @dev Operations must be executed within 7 days after becoming ready, otherwise they expire
    uint256 public constant TIMELOCK_EXPIRY = 7 days;

    /// @notice Maximum transactions per batch (gas limit protection)
    uint8 public constant MAX_BATCH_SIZE = 10;

    /// @notice ERC20 transfer selector
    bytes4 private constant TRANSFER_SELECTOR = 0xa9059cbb; // transfer(address,uint256)

    /// @notice ERC20 approve selector
    bytes4 private constant APPROVE_SELECTOR = 0x095ea7b3; // approve(address,uint256)

    // ========================================
    // STATE VARIABLES
    // ========================================

    /// @notice MultiSend contract address for batch operations
    address public immutable MULTISEND;

    /// @notice Authorized bot that can execute operations
    address public authorizedBot;

    /// @notice Owner for administrative operations
    address public owner;

    /// @notice Pending owner for two-step ownership transfer
    address public pendingOwner;

    /// @notice Pause flag for emergency stop
    bool public paused;

    /// @notice Whitelisted swap targets (e.g., Uniswap Router)
    mapping(address => SwapTarget) public swapTargets;

    /// @notice Whitelisted transfer recipients (e.g., WithdrawHelper)
    mapping(address => TransferRecipient) public transferRecipients;

    /// @notice Whitelisted tokens for transfers (e.g., USDC, USDe)
    mapping(address => bool) public whitelistedTokens;

    /// @notice Whitelisted selectors per swap target
    /// @dev swapTarget => selector => enabled
    mapping(address => mapping(bytes4 => bool)) public whitelistedSelectors;

    /// @notice Recipient offset in calldata for each selector
    /// @dev swapTarget => selector => offset (bytes from start of calldata, including 4-byte selector)
    /// @dev If offset > 0, the recipient at that offset must be Safe or whitelisted transfer recipient
    /// @dev If offset = 0, the selector is considered unconfigured and the transaction will revert
    mapping(address => mapping(bytes4 => uint256)) public selectorRecipientOffset;

    /// @notice Pending timelock operations
    mapping(bytes32 => PendingOperation) public pendingOperations;

    /// @notice Nonce for generating unique operation IDs
    uint256 private _operationNonce;

    // ========================================
    // MODIFIERS
    // ========================================

    modifier onlyAuthorizedBot() {
        if (msg.sender != authorizedBot) revert OnlyAuthorizedBot();
        _;
    }

    modifier onlyOwner() {
        if (msg.sender != owner) revert OnlyOwner();
        _;
    }

    modifier onlyPendingOwner() {
        if (msg.sender != pendingOwner) revert OnlyPendingOwner();
        _;
    }

    modifier notPaused() {
        if (paused) revert ModulePaused();
        _;
    }

    // ========================================
    // CONSTRUCTOR
    // ========================================

    /**
     * @notice Initialize the LiquidityModule with optional initial configuration
     * @dev Initial configuration is set without timelock to enable immediate use after deployment.
     *      All future additions will require the 2-hour timelock.
     * @param _authorizedBot Address authorized to execute operations
     * @param _owner Address for administrative operations
     * @param _multisend MultiSend contract address for batch operations
     * @param _initialConfig Initial whitelist configuration (swap targets, recipients, tokens)
     */
    constructor(address _authorizedBot, address _owner, address _multisend, InitialConfig memory _initialConfig) {
        if (_authorizedBot == address(0)) revert InvalidAddress();
        if (_owner == address(0)) revert InvalidAddress();
        if (_multisend == address(0)) revert InvalidAddress();

        authorizedBot = _authorizedBot;
        owner = _owner;
        MULTISEND = _multisend;

        // Set up initial swap targets and their selectors
        for (uint256 i; i < _initialConfig.swapTargets.length;) {
            InitialSwapTarget memory st = _initialConfig.swapTargets[i];
            if (st.target != address(0)) {
                swapTargets[st.target] = SwapTarget({enabled: true, name: st.name});
                emit SwapTargetAdded(st.target, st.name);

                // Whitelist selectors for this swap target
                for (uint256 j; j < st.selectors.length;) {
                    SelectorConfig memory sc = st.selectors[j];
                    whitelistedSelectors[st.target][sc.selector] = true;
                    selectorRecipientOffset[st.target][sc.selector] = sc.recipientOffset;
                    emit SelectorWhitelisted(st.target, sc.selector);
                    unchecked {
                        ++j;
                    }
                }
            }
            unchecked {
                ++i;
            }
        }

        // Set up initial transfer recipients
        for (uint256 i; i < _initialConfig.transferRecipients.length;) {
            InitialTransferRecipient memory tr = _initialConfig.transferRecipients[i];
            if (tr.recipient != address(0)) {
                transferRecipients[tr.recipient] = TransferRecipient({enabled: true, name: tr.name});
                emit TransferRecipientAdded(tr.recipient, tr.name);
            }
            unchecked {
                ++i;
            }
        }

        // Set up initial whitelisted tokens
        for (uint256 i; i < _initialConfig.tokens.length;) {
            address token = _initialConfig.tokens[i];
            if (token != address(0)) {
                whitelistedTokens[token] = true;
                emit TokenWhitelisted(token);
            }
            unchecked {
                ++i;
            }
        }

        emit ModuleInitialized(_authorizedBot, _owner, _multisend);
    }

    // ========================================
    // TIMELOCK QUEUE FUNCTIONS
    // ========================================

    /// @inheritdoc ILiquidityModule
    function queueAddSwapTarget(address target, string calldata name)
        external
        onlyOwner
        returns (bytes32 operationId)
    {
        if (target == address(0)) revert InvalidAddress();

        operationId = _generateOperationId();
        uint256 executeAfter = block.timestamp + TIMELOCK_DELAY;

        pendingOperations[operationId] = PendingOperation({
            opType: TimelockType.AddSwapTarget,
            target: target,
            selector: bytes4(0),
            recipientOffset: 0,
            name: name,
            executeAfter: executeAfter,
            executed: false,
            cancelled: false
        });

        emit TimelockQueued(operationId, TimelockType.AddSwapTarget, target, bytes4(0), executeAfter);
    }

    /// @inheritdoc ILiquidityModule
    function queueAddTransferRecipient(address recipient, string calldata name)
        external
        onlyOwner
        returns (bytes32 operationId)
    {
        if (recipient == address(0)) revert InvalidAddress();

        operationId = _generateOperationId();
        uint256 executeAfter = block.timestamp + TIMELOCK_DELAY;

        pendingOperations[operationId] = PendingOperation({
            opType: TimelockType.AddTransferRecipient,
            target: recipient,
            selector: bytes4(0),
            recipientOffset: 0,
            name: name,
            executeAfter: executeAfter,
            executed: false,
            cancelled: false
        });

        emit TimelockQueued(operationId, TimelockType.AddTransferRecipient, recipient, bytes4(0), executeAfter);
    }

    /// @inheritdoc ILiquidityModule
    function queueAddWhitelistedToken(address token) external onlyOwner returns (bytes32 operationId) {
        if (token == address(0)) revert InvalidAddress();

        operationId = _generateOperationId();
        uint256 executeAfter = block.timestamp + TIMELOCK_DELAY;

        pendingOperations[operationId] = PendingOperation({
            opType: TimelockType.AddToken,
            target: token,
            selector: bytes4(0),
            recipientOffset: 0,
            name: "",
            executeAfter: executeAfter,
            executed: false,
            cancelled: false
        });

        emit TimelockQueued(operationId, TimelockType.AddToken, token, bytes4(0), executeAfter);
    }

    /// @inheritdoc ILiquidityModule
    function queueAddSelector(address target, bytes4 selector, uint256 recipientOffset)
        external
        onlyOwner
        returns (bytes32 operationId)
    {
        if (target == address(0)) revert InvalidAddress();

        operationId = _generateOperationId();
        uint256 executeAfter = block.timestamp + TIMELOCK_DELAY;

        pendingOperations[operationId] = PendingOperation({
            opType: TimelockType.AddSelector,
            target: target,
            selector: selector,
            recipientOffset: recipientOffset,
            name: "",
            executeAfter: executeAfter,
            executed: false,
            cancelled: false
        });

        emit TimelockQueued(operationId, TimelockType.AddSelector, target, selector, executeAfter);
    }

    /// @inheritdoc ILiquidityModule
    function queueSetAuthorizedBot(address newBot) external onlyOwner returns (bytes32 operationId) {
        if (newBot == address(0)) revert InvalidAddress();

        operationId = _generateOperationId();
        uint256 executeAfter = block.timestamp + TIMELOCK_DELAY;

        pendingOperations[operationId] = PendingOperation({
            opType: TimelockType.SetAuthorizedBot,
            target: newBot,
            selector: bytes4(0),
            recipientOffset: 0,
            name: "",
            executeAfter: executeAfter,
            executed: false,
            cancelled: false
        });

        emit TimelockQueued(operationId, TimelockType.SetAuthorizedBot, newBot, bytes4(0), executeAfter);
    }

    // ========================================
    // TIMELOCK EXECUTION
    // ========================================

    /// @inheritdoc ILiquidityModule
    function executeTimelock(bytes32 operationId) external onlyOwner {
        PendingOperation storage op = pendingOperations[operationId];

        // Validate operation exists
        if (op.executeAfter == 0) revert TimelockNotFound(operationId);

        // Validate not already executed
        if (op.executed) revert TimelockAlreadyExecuted(operationId);

        // Validate not cancelled
        if (op.cancelled) revert TimelockAlreadyCancelled(operationId);

        // Validate timelock has passed
        if (block.timestamp < op.executeAfter) {
            revert TimelockNotReady(operationId, op.executeAfter);
        }

        // Validate timelock has not expired
        uint256 expiresAt = op.executeAfter + TIMELOCK_EXPIRY;
        if (block.timestamp > expiresAt) {
            revert TimelockExpired(operationId, expiresAt);
        }

        // Mark as executed
        op.executed = true;

        // Execute based on operation type
        if (op.opType == TimelockType.AddSwapTarget) {
            swapTargets[op.target] = SwapTarget({enabled: true, name: op.name});
            emit SwapTargetAdded(op.target, op.name);
        } else if (op.opType == TimelockType.AddTransferRecipient) {
            transferRecipients[op.target] = TransferRecipient({enabled: true, name: op.name});
            emit TransferRecipientAdded(op.target, op.name);
        } else if (op.opType == TimelockType.AddToken) {
            whitelistedTokens[op.target] = true;
            emit TokenWhitelisted(op.target);
        } else if (op.opType == TimelockType.AddSelector) {
            whitelistedSelectors[op.target][op.selector] = true;
            selectorRecipientOffset[op.target][op.selector] = op.recipientOffset;
            emit SelectorWhitelisted(op.target, op.selector);
        } else if (op.opType == TimelockType.SetAuthorizedBot) {
            address oldBot = authorizedBot;
            authorizedBot = op.target;
            emit AuthorizedBotChanged(oldBot, op.target);
        }

        emit TimelockExecuted(operationId, op.opType);
    }

    /// @inheritdoc ILiquidityModule
    function cancelTimelock(bytes32 operationId) external onlyOwner {
        PendingOperation storage op = pendingOperations[operationId];

        // Validate operation exists
        if (op.executeAfter == 0) revert TimelockNotFound(operationId);

        // Validate not already executed
        if (op.executed) revert TimelockAlreadyExecuted(operationId);

        // Validate not already cancelled
        if (op.cancelled) revert TimelockAlreadyCancelled(operationId);

        // Mark as cancelled
        op.cancelled = true;

        emit TimelockCancelled(operationId);
    }

    /// @inheritdoc ILiquidityModule
    function getPendingOperation(bytes32 operationId) external view returns (PendingOperation memory) {
        return pendingOperations[operationId];
    }

    // ========================================
    // IMMEDIATE REMOVAL FUNCTIONS (no timelock)
    // ========================================

    /// @inheritdoc ILiquidityModule
    function removeSwapTarget(address target) external onlyOwner {
        if (!swapTargets[target].enabled) revert SwapTargetNotWhitelisted(target);

        delete swapTargets[target];

        emit SwapTargetRemoved(target);
    }

    /// @inheritdoc ILiquidityModule
    function removeTransferRecipient(address recipient) external onlyOwner {
        if (!transferRecipients[recipient].enabled) revert TransferRecipientNotWhitelisted(recipient);

        delete transferRecipients[recipient];

        emit TransferRecipientRemoved(recipient);
    }

    /// @inheritdoc ILiquidityModule
    function removeWhitelistedToken(address token) external onlyOwner {
        if (!whitelistedTokens[token]) revert TokenNotWhitelisted(token);

        whitelistedTokens[token] = false;

        emit TokenRemoved(token);
    }

    /// @inheritdoc ILiquidityModule
    function removeSelector(address target, bytes4 selector) external onlyOwner {
        if (!whitelistedSelectors[target][selector]) {
            revert SelectorNotWhitelisted(target, selector);
        }

        whitelistedSelectors[target][selector] = false;

        emit SelectorRemoved(target, selector);
    }

    // ========================================
    // VIEW FUNCTIONS - WHITELIST STATUS
    // ========================================

    /// @inheritdoc ILiquidityModule
    function getSwapTarget(address target) external view returns (bool enabled, string memory name) {
        SwapTarget storage st = swapTargets[target];
        return (st.enabled, st.name);
    }

    /// @inheritdoc ILiquidityModule
    function getTransferRecipient(address recipient) external view returns (bool enabled, string memory name) {
        TransferRecipient storage tr = transferRecipients[recipient];
        return (tr.enabled, tr.name);
    }

    /// @inheritdoc ILiquidityModule
    function isTokenWhitelisted(address token) external view returns (bool) {
        return whitelistedTokens[token];
    }

    /// @inheritdoc ILiquidityModule
    function isSelectorWhitelisted(address target, bytes4 selector) external view returns (bool) {
        return whitelistedSelectors[target][selector];
    }

    // ========================================
    // EXECUTION FUNCTIONS
    // ========================================

    /// @inheritdoc ILiquidityModule
    function executeApprove(address safe, address token, address spender, uint256 amount)
        external
        onlyAuthorizedBot
        notPaused
        nonReentrant
        returns (bool success)
    {
        // Validate Safe
        if (safe == address(0)) revert InvalidAddress();

        // Validate token is whitelisted
        if (!whitelistedTokens[token]) revert TokenNotWhitelisted(token);

        // Validate spender is a whitelisted swap target
        if (!swapTargets[spender].enabled) revert SwapTargetNotWhitelisted(spender);

        // Validate module is enabled on Safe
        if (!ISafe(safe).isModuleEnabled(address(this))) revert ModuleNotEnabled();

        // Build approve calldata
        bytes memory approveData = abi.encodeWithSelector(APPROVE_SELECTOR, spender, amount);

        // Execute approve via Safe
        bytes memory returnData;
        (success, returnData) =
            ISafe(safe).execTransactionFromModuleReturnData(token, 0, approveData, ISafe.Operation.Call);

        emit ApproveExecuted(safe, token, spender, amount, success);

        // Revert with descriptive error if failed
        if (!success) {
            returnData.revertWithError("LiquidityModule: approve failed: ");
        }
    }

    /// @inheritdoc ILiquidityModule
    function executeSwap(address safe, address swapTarget, bytes calldata swapData, uint256 value)
        external
        onlyAuthorizedBot
        notPaused
        nonReentrant
        returns (bool success, bytes memory returnData)
    {
        // Validate Safe
        if (safe == address(0)) revert InvalidAddress();

        // Validate swap target is whitelisted
        if (!swapTargets[swapTarget].enabled) revert SwapTargetNotWhitelisted(swapTarget);

        // Validate calldata has at least a selector (4 bytes)
        if (swapData.length < 4) revert InvalidCalldata();

        // Extract and validate selector
        bytes4 selector = bytes4(swapData[:4]);
        if (!whitelistedSelectors[swapTarget][selector]) {
            revert SelectorNotWhitelisted(swapTarget, selector);
        }

        // Validate recipient in swap calldata
        uint256 recipientOffset = selectorRecipientOffset[swapTarget][selector];
        if (recipientOffset == 0) revert RecipientOffsetNotConfigured(swapTarget, selector);
        {
            // Ensure calldata is long enough to contain recipient at offset
            // Recipient is 32 bytes (address padded to 32 bytes in ABI encoding)
            if (swapData.length < recipientOffset + 32) revert InvalidCalldata();

            // Extract recipient address from calldata (last 20 bytes of the 32-byte slot)
            address recipient;
            assembly {
                // swapData.offset points to start of calldata bytes
                // recipientOffset is measured from start of swapData (including selector)
                // We load 32 bytes and the address is in the lower 20 bytes
                recipient := calldataload(add(swapData.offset, recipientOffset))
            }

            // Recipient must be the Safe or a whitelisted transfer recipient
            if (recipient != safe && !transferRecipients[recipient].enabled) {
                revert InvalidSwapRecipient(recipient);
            }
        }

        // Validate module is enabled on Safe
        if (!ISafe(safe).isModuleEnabled(address(this))) revert ModuleNotEnabled();

        // Execute swap via Safe
        (success, returnData) =
            ISafe(safe).execTransactionFromModuleReturnData(swapTarget, value, swapData, ISafe.Operation.Call);

        emit SwapExecuted(safe, msg.sender, swapTarget, selector, success);

        // Revert with descriptive error if failed
        if (!success) {
            returnData.revertWithError("LiquidityModule: swap failed: ");
        }
    }

    /// @inheritdoc ILiquidityModule
    function executeTransfer(address safe, address token, address recipient, uint256 amount)
        external
        onlyAuthorizedBot
        notPaused
        nonReentrant
        returns (bool success)
    {
        // Validate Safe
        if (safe == address(0)) revert InvalidAddress();

        // Validate token is whitelisted
        if (!whitelistedTokens[token]) revert TokenNotWhitelisted(token);

        // Validate recipient is whitelisted
        if (!transferRecipients[recipient].enabled) revert TransferRecipientNotWhitelisted(recipient);

        // Validate module is enabled on Safe
        if (!ISafe(safe).isModuleEnabled(address(this))) revert ModuleNotEnabled();

        // Build transfer calldata
        bytes memory transferData = abi.encodeWithSelector(TRANSFER_SELECTOR, recipient, amount);

        // Execute transfer via Safe
        bytes memory returnData;
        (success, returnData) =
            ISafe(safe).execTransactionFromModuleReturnData(token, 0, transferData, ISafe.Operation.Call);

        emit TransferExecuted(safe, token, recipient, amount, success);

        // Revert with descriptive error if failed
        if (!success) {
            returnData.revertWithError("LiquidityModule: transfer failed: ");
        }
    }

    /// @inheritdoc ILiquidityModule
    function executeBatch(address safe, Tx[] calldata txs)
        external
        onlyAuthorizedBot
        notPaused
        nonReentrant
        returns (bool success, bytes memory returnData)
    {
        // Validate Safe
        if (safe == address(0)) revert InvalidAddress();

        // Validate transaction array
        if (txs.length == 0) revert EmptyTransactionArray();
        if (txs.length > MAX_BATCH_SIZE) revert TooManyTransactions();

        // Validate module is enabled on Safe
        if (!ISafe(safe).isModuleEnabled(address(this))) revert ModuleNotEnabled();

        // Validate each transaction
        for (uint256 i; i < txs.length;) {
            _validateTransaction(txs[i], safe);
            unchecked {
                ++i;
            }
        }

        // Build execution
        if (txs.length == 1) {
            // Single transaction - execute directly
            (success, returnData) =
                ISafe(safe).execTransactionFromModuleReturnData(txs[0].to, txs[0].value, txs[0].data, txs[0].operation);
        } else {
            // Multiple transactions - use MultiSend
            bytes memory multiSendData;
            for (uint256 i; i < txs.length;) {
                multiSendData = abi.encodePacked(
                    multiSendData,
                    uint8(txs[i].operation),
                    txs[i].to,
                    txs[i].value,
                    uint256(txs[i].data.length),
                    txs[i].data
                );
                unchecked {
                    ++i;
                }
            }

            bytes memory multiSendCalldata = abi.encodeWithSelector(IMultiSend.multiSend.selector, multiSendData);

            (success, returnData) = ISafe(safe).execTransactionFromModuleReturnData(
                MULTISEND, 0, multiSendCalldata, ISafe.Operation.DelegateCall
            );
        }

        emit BatchExecuted(safe, msg.sender, txs.length, success);

        // Revert with descriptive error if failed
        if (!success) {
            returnData.revertWithError("LiquidityModule: batch failed: ");
        }
    }

    // ========================================
    // ADMIN FUNCTIONS
    // ========================================

    /// @inheritdoc ILiquidityModule
    function setPaused(bool _paused) external onlyOwner {
        paused = _paused;
        emit Paused(_paused);
    }

    /// @inheritdoc ILiquidityModule
    function transferOwnership(address newOwner) external onlyOwner {
        if (newOwner == address(0)) revert InvalidAddress();

        pendingOwner = newOwner;

        emit OwnershipTransferStarted(owner, newOwner);
    }

    /// @inheritdoc ILiquidityModule
    function acceptOwnership() external onlyPendingOwner {
        address oldOwner = owner;
        owner = pendingOwner;
        pendingOwner = address(0);

        emit OwnershipTransferred(oldOwner, owner);
    }

    /// @inheritdoc ILiquidityModule
    function cancelOwnershipTransfer() external onlyOwner {
        if (pendingOwner == address(0)) revert NoPendingOwnership();

        address cancelledPending = pendingOwner;
        pendingOwner = address(0);

        emit OwnershipTransferCancelled(owner, cancelledPending);
    }

    // ========================================
    // VIEW FUNCTIONS
    // ========================================

    /// @inheritdoc ILiquidityModule
    function getVersion() external pure returns (string memory) {
        return "LiquidityModule v1.0.0";
    }

    // ========================================
    // INTERNAL FUNCTIONS
    // ========================================

    /**
     * @notice Generate a unique operation ID for timelock operations
     * @dev Uses keccak256 of nonce, sender, and block timestamp
     * @return operationId The unique operation identifier
     */
    function _generateOperationId() internal returns (bytes32 operationId) {
        operationId = keccak256(abi.encodePacked(_operationNonce, msg.sender, block.timestamp));
        unchecked {
            ++_operationNonce;
        }
    }

    /**
     * @notice Validate a transaction before execution
     * @dev Checks target, selector whitelist, recipient validation, and rejects DelegateCall
     * @param _tx The transaction to validate
     * @param safe The Safe address (used to validate swap recipients)
     */
    function _validateTransaction(Tx calldata _tx, address safe) internal view {
        if (_tx.to == address(0)) revert InvalidAddress();

        // CRITICAL: Reject DelegateCall operations
        // DelegateCall would execute target code in Safe's context, allowing storage manipulation
        if (_tx.operation != ISafe.Operation.Call) revert DelegateCallNotAllowed();

        // Check if this is a token transfer
        if (_tx.data.length >= 4) {
            bytes4 selector = bytes4(_tx.data[:4]);

            // If it's a transfer, validate token and recipient
            if (selector == TRANSFER_SELECTOR) {
                // Validate token is whitelisted
                if (!whitelistedTokens[_tx.to]) revert TokenNotWhitelisted(_tx.to);

                // Decode recipient from transfer data
                if (_tx.data.length >= 36) {
                    // Decode the recipient address from transfer(address,uint256) calldata
                    address recipient = abi.decode(_tx.data[4:36], (address));

                    // Validate recipient is whitelisted
                    if (!transferRecipients[recipient].enabled) {
                        revert TransferRecipientNotWhitelisted(recipient);
                    }
                }
                return;
            }

            // If it's an approve, validate the spender is a whitelisted swap target
            if (selector == APPROVE_SELECTOR) {
                // Validate token is whitelisted
                if (!whitelistedTokens[_tx.to]) revert TokenNotWhitelisted(_tx.to);

                // Decode spender from approve data
                if (_tx.data.length >= 36) {
                    // Decode the spender address from approve(address,uint256) calldata
                    address spender = abi.decode(_tx.data[4:36], (address));

                    // Validate spender is a whitelisted swap target
                    if (!swapTargets[spender].enabled) {
                        revert SwapTargetNotWhitelisted(spender);
                    }
                }
                return;
            }

            // For any other call (swap), validate swap target, selector, and recipient
            if (!swapTargets[_tx.to].enabled) revert SwapTargetNotWhitelisted(_tx.to);
            if (!whitelistedSelectors[_tx.to][selector]) {
                revert SelectorNotWhitelisted(_tx.to, selector);
            }

            // Validate recipient in swap calldata
            uint256 recipientOffset = selectorRecipientOffset[_tx.to][selector];
            if (recipientOffset == 0) revert RecipientOffsetNotConfigured(_tx.to, selector);
            {
                // Ensure calldata is long enough to contain recipient at offset
                if (_tx.data.length < recipientOffset + 32) revert InvalidCalldata();

                // Extract recipient address from calldata
                address swapRecipient = abi.decode(_tx.data[recipientOffset:recipientOffset + 32], (address));

                // Recipient must be the Safe or a whitelisted transfer recipient
                if (swapRecipient != safe && !transferRecipients[swapRecipient].enabled) {
                    revert InvalidSwapRecipient(swapRecipient);
                }
            }
        } else {
            // No selector means this should be a swap target (fallback call)
            if (!swapTargets[_tx.to].enabled) revert SwapTargetNotWhitelisted(_tx.to);
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/ReentrancyGuard.sol)

pragma solidity ^0.8.20;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If EIP-1153 (transient storage) is available on the chain you're deploying at,
 * consider using {ReentrancyGuardTransient} instead.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant NOT_ENTERED = 1;
    uint256 private constant ENTERED = 2;

    uint256 private _status;

    /**
     * @dev Unauthorized reentrant call.
     */
    error ReentrancyGuardReentrantCall();

    constructor() {
        _status = NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be NOT_ENTERED
        if (_status == ENTERED) {
            revert ReentrancyGuardReentrantCall();
        }

        // Any calls to nonReentrant after this point will fail
        _status = ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == ENTERED;
    }
}
