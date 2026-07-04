// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

/// @title Errors
/// @author Bundie Team
/// @notice Custom errors used across Bundie router and account contracts
/// @dev Library containing all custom error definitions for gas-efficient error handling.
///      Custom errors are preferred over require() strings for lower gas costs.
///
///      ## Error Categories
///      - Router Errors: Strategy execution and configuration
///      - Account Errors: Position and allocation management
///      - AccountManager Errors: Factory and registry operations
///      - RouterManager Errors: Protocol router management
///      - Token Whitelist Errors: Asset whitelist management
///      - Bridge Module Errors: Cross-chain operation errors
library Errors {
    // ========================== Router Errors ==========================

    /// @notice Thrown when attempting to execute a disabled strategy
    /// @param id The strategy identifier that is disabled
    error StrategyDisabled(bytes32 id);

    /// @notice Thrown when a required address parameter is zero
    error InvalidAddress();

    /// @notice Thrown when user has insufficient balance for an operation
    /// @param required The amount required for the operation
    /// @param available The amount available in the balance
    error InsufficientBalance(uint256 required, uint256 available);

    /// @notice Thrown when no funds are received during a deposit (fee-on-transfer edge case)
    error NoFundsReceived();

    /// @notice Thrown when a withdrawal operation fails
    error WithdrawFailed();

    /// @notice Thrown when deposit amount is below the strategy minimum
    /// @param amount The attempted deposit amount
    /// @param minimum The required minimum deposit
    error BelowMinimumDeposit(uint256 amount, uint256 minimum);

    /// @notice Thrown when strategy name is empty during registration
    error InvalidStrategyName();

    /// @notice Thrown when an operation amount is zero
    error ZeroAmount();

    /// @notice Thrown when attempting an operation on a strategy already in PROCESSING state
    /// @param strategyId The strategy that is currently processing
    error StrategyAlreadyProcessing(bytes32 strategyId);

    /// @notice Thrown when received shares are below minimum expected (slippage protection)
    /// @param received The actual amount of shares received
    /// @param minExpected The minimum shares expected
    error InsufficientSharesReceived(uint256 received, uint256 minExpected);

    /// @notice Thrown when received assets are below minimum expected (slippage protection)
    /// @param received The actual amount of assets received
    /// @param minExpected The minimum assets expected
    error InsufficientAssetsReceived(uint256 received, uint256 minExpected);

    /// @notice Thrown when a strategy is not found in the router
    /// @param strategyId The strategy identifier that was not found
    error StrategyNotFound(bytes32 strategyId);

    /// @notice Thrown when an invalid message ID is provided or returned
    error InvalidMessageId();

    /// @notice Thrown when attempting to process an already processed message
    /// @param messageId The message that was already processed
    error MessageAlreadyProcessed(bytes32 messageId);

    /// @notice Thrown when account has insufficient balance for an operation
    /// @param required The amount required
    /// @param available The amount available in the account
    error InsufficientVaultBalance(uint256 required, uint256 available);

    /// @notice Thrown when attempting to deploy a router for an existing protocol
    /// @param protocol The protocol name that already has a router
    error ProtocolAlreadyExists(string protocol);

    /// @notice Thrown when protocol name is empty during router deployment
    error EmptyProtocolName();

    /// @notice Thrown when caller is not authorized for an operation
    /// @param caller The address that attempted the unauthorized call
    error UnauthorizedCaller(address caller);

    /// @notice Thrown when a zero address is provided where non-zero is required
    error ZeroAddress();

    /// @notice Thrown when an ETH transfer fails
    error ETHTransferFailed();

    /// @notice Thrown when native token (msg.value) is unexpectedly provided for an operation
    /// @dev Used to prevent accidental ETH being stuck in contracts that don't consume msg.value for some paths.
    error NativeValueNotAllowed();

    /// @notice Thrown when chain ID is invalid (zero or unsupported)
    error InvalidChainId();

    /// @notice Thrown when minimum deposit value is invalid
    error InvalidMinDeposit();

    /// @notice Thrown when an invalid operation type is provided
    error InvalidOperation();

    /// @notice Thrown when an invalid recovery type is provided
    error InvalidRecoveryType();

    /// @notice Thrown when an external call fails and the revert data is emitted separately
    /// @dev Used in try/catch wrappers that already emit `Events.ErrorLogBytes(lowLevelData)`
    error ExternalCallFailed();

    // ========================== Account Errors ==========================

    /// @notice Thrown when a position is not found at the specified index
    error PositionNotFound();

    /// @notice Thrown when attempting to deposit to a disabled strategy in account
    /// @param strategyId The strategy that is disabled
    error AccountStrategyDisabled(bytes32 strategyId);

    /// @notice Thrown when caller is not the account owner
    /// @param sender The address that made the call
    /// @param expected The expected account owner address
    error UnauthorizedUser(address sender, address expected);

    /// @notice Thrown when a pending deposit is not found for the given GUID
    /// @param msgGuid The message GUID that was not found
    error PendingDepositNotFound(bytes32 msgGuid);

    /// @notice Thrown when a pending withdrawal is not found for the given GUID
    /// @param msgGuid The message GUID that was not found
    error PendingWithdrawalNotFound(bytes32 msgGuid);

    /// @notice Thrown when attempting to create a pending operation using a GUID that is already in use
    /// @dev Prevents overwriting pendingDeposits/pendingWithdrawals and prevents duplicate GUIDs in enumeration arrays.
    /// @param msgGuid The message GUID that is already present in pending state
    error PendingOperationAlreadyExists(bytes32 msgGuid);

    /// @notice Thrown when a deposit operation fails
    error DepositFailed();

    /// @notice Thrown when account has insufficient balance for a withdrawal
    error AccountInsufficientBalance();

    /// @notice Thrown when no share tokens were received during deposit confirmation
    error NoShareOFTReceived();

    /// @notice Thrown when attempting to create a new position for a strategy whose share token is already used
    /// @dev Prevents ambiguous accounting when multiple strategies share the same share token in a single account.
    /// @param shareToken The share token that is already in use by another position
    error ShareTokenAlreadyInUse(address shareToken);

    // ========================== AccountManager Errors ==========================

    /// @notice Thrown when attempting to create an account for a user who already has one
    /// @param user The user address that already has an account
    error AccountAlreadyExists(address user);

    /// @notice Thrown when implementation address is invalid
    /// @param impl The invalid implementation address
    error InvalidImplementation(address impl);

    /// @notice Thrown when an implementation contract is not deployed (no code)
    /// @param impl The implementation address
    error ImplementationNotDeployed(address impl);

    /// @notice Thrown when attempting to upgrade to the same implementation
    /// @param impl The implementation address
    error SameImplementation(address impl);

    /// @notice Thrown when the FeeManager proxy is not owned by the factory
    /// @param currentOwner The current FeeManager owner
    error FeeManagerNotOwnedByFactory(address currentOwner);

    /// @notice Thrown when attempting to transfer FeeManager ownership back to the factory
    error CannotTransferToFactory();

    /// @notice Thrown when an upgrade has already been scheduled
    /// @param pendingImpl The implementation already queued for upgrade
    error UpgradeAlreadyScheduled(address pendingImpl);

    /// @notice Thrown when attempting to execute an upgrade before delay elapsed
    /// @param eta The earliest timestamp when upgrade can execute
    /// @param current The current block timestamp
    error UpgradeDelayNotElapsed(uint48 eta, uint48 current);

    /// @notice Thrown when attempting to execute or cancel without a queued upgrade
    error UpgradeNotScheduled();

    /// @notice Thrown when validator address is invalid (zero)
    /// @param validator The invalid validator address
    error InvalidValidator(address validator);

    /// @notice Thrown when array index is out of bounds
    /// @param index The index that was accessed
    /// @param length The length of the array
    error IndexOutOfBounds(uint256 index, uint256 length);

    // ========================== RouterManager Errors ==========================

    /// @notice Thrown when a protocol is not found in the registry
    /// @param protocol The protocol name that was not found
    error ProtocolNotFound(string protocol);

    /// @notice Thrown when router address is invalid
    /// @param router The invalid router address
    error InvalidRouter(address router);

    /// @notice Thrown when account manager is not a contract or does not conform to the expected interface
    /// @param accountManager The invalid accountManager address
    error InvalidAccountManager(address accountManager);

    // ========================== Token Whitelist Errors ==========================

    /// @notice Thrown when attempting to whitelist a token that is already whitelisted
    /// @param token The token address that is already whitelisted
    error TokenAlreadyWhitelisted(address token);

    /// @notice Thrown when attempting to use a token that is not whitelisted
    /// @param token The token address that is not whitelisted
    error TokenNotWhitelisted(address token);

    // ========================== Bridge Module Errors ==========================

    /// @notice Thrown when bridge module address is invalid or not configured
    error InvalidBridge();

    /// @notice Thrown when bridge module is paused or not active
    error BridgeInactive();

    /// @notice Thrown when bridge execution params are malformed or incorrect length
    error InvalidBridgeParams();

    /// @notice Thrown when destination chain is not supported by the bridge
    /// @param chainId The unsupported chain ID
    error UnsupportedDestinationChain(uint32 chainId);

    /// @notice Thrown when a bridge operation fails
    error BridgeOperationFailed();

    // ========================== Vault Module Errors ==========================

    /// @notice Thrown when vault module address is invalid or not configured
    error InvalidVaultModule();

    /// @notice Thrown when vault module is paused or not active
    error VaultModuleInactive();

    // ========================== Fee Errors ==========================

    /// @notice Thrown when a fee bps exceeds the configured hard cap
    /// @param bps The requested bps
    /// @param maxBps The maximum allowed bps
    error FeeBpsTooHigh(uint256 bps, uint256 maxBps);

    /// @notice Thrown when an invalid fee recipient is configured
    error InvalidFeeRecipient();

    /// @notice Thrown when a fee change delay is below the required minimum
    /// @param provided The delay provided by the caller
    /// @param minimum The minimum required delay
    error FeeDelayTooShort(uint48 provided, uint48 minimum);

    /// @notice Thrown when deposits/allocations are paused
    error AllocationsPaused();

    /// @notice Thrown when attempting to withdraw an asset token while cross-chain withdrawals are pending for it
    /// @param assetToken The asset token locked by pending withdrawals
    error AssetLockedByPendingWithdrawal(address assetToken);

    // ========================== Relayer Errors ==========================

    /// @notice Thrown when the relayer has insufficient ETH to fund a bridge fee
    /// @param required The amount of ETH required
    /// @param available The amount of ETH available in the relayer
    error InsufficientRelayerBalance(uint256 required, uint256 available);

    /// @notice Thrown when an unapproved bridge module attempts to pull ETH from the relayer
    /// @param module The bridge module that attempted the call
    error BridgeModuleNotApproved(address module);

    /// @notice Thrown when the bridge fee exceeds the deposit/withdrawal amount
    /// @param fee The bridge fee amount
    /// @param amount The deposit or received amount
    error BridgeFeeExceedsAmount(uint256 fee, uint256 amount);

    /// @notice Thrown when the relayer address is not set
    error RelayerNotSet();
}
