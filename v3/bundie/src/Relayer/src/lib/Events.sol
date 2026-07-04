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

/// @title Events
/// @author Bundie Team
/// @notice Events emitted across Bundie router and account contracts
/// @dev Library containing all event definitions for the Bundie protocol.
///      Events are organized by the contract category that emits them.
///
///      ## Event Categories
///      - Router Events: Strategy execution and configuration
///      - Account Events: Position and allocation management
///      - AccountManager Events: Factory and registry operations
///      - RouterManager Events: Protocol router management
///      - Token Whitelist Events: Asset whitelist management
///      - Emergency Recovery Events: Admin recovery operations
library Events {
    // ========================== Router Events ==========================

    /// @notice Emitted when a strategy is enabled or disabled
    /// @param id Strategy identifier
    /// @param asset Asset token address for the strategy
    /// @param enabled New enabled state
    event StrategyEnabled(bytes32 indexed id, address indexed asset, bool enabled);

    /// @notice Emitted when a user deposits funds into a strategy
    /// @param id Strategy identifier
    /// @param user User address who made the deposit
    /// @param asset Asset token address deposited
    /// @param amountReceived Amount of tokens received by the strategy
    event Deposited(bytes32 indexed id, address indexed user, address indexed asset, uint256 amountReceived);

    /// @notice Emitted when a user withdraws funds from a strategy
    /// @param id Strategy identifier
    /// @param user User address who made the withdrawal
    /// @param asset Asset token address withdrawn
    /// @param amountOut Amount of tokens returned to user
    event Withdrawn(bytes32 indexed id, address indexed user, address indexed asset, uint256 amountOut);

    /// @notice Emitted when a strategy is registered or updated
    /// @param id Strategy identifier
    /// @param name Human-readable strategy name
    /// @param chainId Target chain ID for the strategy
    /// @param composer Vault/composer address on target chain
    /// @param enabled Whether strategy is enabled
    event StrategySet(bytes32 indexed id, string name, uint32 chainId, address composer, bool enabled);

    // ========================== Account Events ==========================

    /// @notice Emitted when user deposits to a strategy
    /// @param user User address who made the deposit
    /// @param strategyId Strategy identifier
    /// @param router Router address that processed the deposit
    /// @param amount Amount deposited
    /// @param msgGuid Bridge message GUID
    event StrategyDeposit(
        address indexed user, bytes32 indexed strategyId, address indexed router, uint256 amount, bytes32 msgGuid
    );

    /// @notice Emitted when user withdraws from a strategy
    /// @param user User address who made the withdrawal
    /// @param strategyId Strategy identifier
    /// @param router Router address that processed the withdrawal
    /// @param amount Amount withdrawn
    /// @param msgGuid Bridge message GUID (bytes32(0) for local)
    /// @param positionId Unique position identifier
    event StrategyWithdrawal(
        address indexed user,
        bytes32 indexed strategyId,
        address indexed router,
        uint256 amount,
        bytes32 msgGuid,
        uint256 positionId
    );

    /// @notice Emitted when ETH is recovered from a contract
    /// @param recipient Recipient address
    /// @param amount Amount of ETH recovered
    event ETHRecovered(address indexed recipient, uint256 amount);

    /// @notice Emitted when stuck ERC-20 tokens are rescued from an account by the protocol owner
    /// @param token Token address rescued
    /// @param to Recipient address
    /// @param amount Amount rescued
    event TokensRescued(address indexed token, address indexed to, uint256 amount);

    /// @notice Emitted when an ETH recovery attempt fails (e.g., recipient is non-payable)
    /// @param recipient Intended recipient address
    /// @param amount Amount of ETH that failed to transfer
    event ETHRecoveryFailed(address indexed recipient, uint256 amount);

    /// @notice Emitted when an excess native fee refund could not be sent and is credited for later claiming
    /// @param returnRecipient The intended refund recipient from bridge params
    /// @param amount Amount of native token credited
    event NativeFeeRefundCredited(address indexed returnRecipient, uint256 amount);

    /// @notice Emitted when a credited native fee refund is claimed
    /// @param returnRecipient The original refund recipient key (claimer)
    /// @param to The address that actually received the refund
    /// @param amount Amount of native token claimed
    event NativeFeeRefundClaimed(address indexed returnRecipient, address indexed to, uint256 amount);

    /// @notice Emitted when fee charging is skipped due to insufficient asset balance in the payer
    /// @dev Used to avoid reverting "management-fee-only" collection calls when the account has no liquid assets.
    /// @param user Account owner address
    /// @param strategyId Strategy identifier
    /// @param assetToken Asset token the fee would have been charged in
    /// @param required Required fee amount
    /// @param available Available asset balance in the payer
    /// @param msgGuid Bridge message GUID (bytes32(0) for local / periodic collection)
    event FeeChargeSkippedInsufficientBalance(
        address indexed user,
        bytes32 indexed strategyId,
        address indexed assetToken,
        uint256 required,
        uint256 available,
        bytes32 msgGuid
    );

    /// @notice Emitted when fee charging reverts unexpectedly (e.g., token blacklist on fee recipient)
    /// @dev Non-reverting: fee is skipped to avoid blocking withdrawal confirmations
    /// @param user Account owner address
    /// @param strategyId Strategy identifier
    /// @param assetToken Asset token the fee would have been charged in
    /// @param msgGuid Bridge message GUID (bytes32(0) for local operations)
    event FeeChargeFailed(
        address indexed user, bytes32 indexed strategyId, address indexed assetToken, bytes32 msgGuid
    );

    /// @notice Emitted when user deposits asset tokens to account
    /// @param user User address who made the deposit
    /// @param assetToken Token address deposited
    /// @param amount Amount deposited
    event AssetDeposit(address indexed user, address indexed assetToken, uint256 amount);

    /// @notice Emitted when user withdraws asset tokens from account
    /// @param user User address who made the withdrawal
    /// @param assetToken Token address withdrawn
    /// @param amount Amount withdrawn
    /// @param recipient Address that received the tokens
    event AssetWithdrawal(address indexed user, address indexed assetToken, uint256 amount, address recipient);

    /// @notice Emitted when a position is fully withdrawn
    /// @param user User address who made the withdrawal
    /// @param strategyId Strategy identifier of the withdrawn position
    event PositionFullyWithdrawn(address indexed user, bytes32 indexed strategyId);

    /// @notice Emitted when a position is partially withdrawn
    /// @param user User address who made the withdrawal
    /// @param strategyId Strategy identifier of the withdrawn position
    /// @param amount Amount withdrawn from position
    event PositionPartiallyWithdrawn(address indexed user, bytes32 indexed strategyId, uint256 amount);

    /// @notice Emitted when a cross-chain deposit is confirmed by validator
    /// @param user Account owner address
    /// @param strategyId Strategy identifier
    /// @param amount Amount of shares received
    /// @param msgGuid Bridge message GUID
    event DepositConfirmed(address indexed user, bytes32 indexed strategyId, uint256 amount, bytes32 msgGuid);

    /// @notice Emitted when a cross-chain withdrawal is confirmed by validator
    /// @param user Account owner address
    /// @param strategyId Strategy identifier
    /// @param amount Amount of assets received
    /// @param msgGuid Bridge message GUID
    event WithdrawalConfirmed(address indexed user, bytes32 indexed strategyId, uint256 amount, bytes32 msgGuid);

    /// @notice Emitted when deposit fails on destination chain (shares never arrived)
    /// @param user Account owner address
    /// @param strategyId Strategy identifier
    /// @param amount Original deposit amount
    /// @param msgGuid Bridge message GUID
    event DepositFailed(address indexed user, bytes32 indexed strategyId, uint256 amount, bytes32 msgGuid);

    /// @notice Emitted when withdrawal fails on destination chain (assets never arrived)
    /// @param user Account owner address
    /// @param strategyId Strategy identifier
    /// @param amount Original withdrawal amount
    /// @param msgGuid Bridge message GUID
    event WithdrawalFailed(address indexed user, bytes32 indexed strategyId, uint256 amount, bytes32 msgGuid);

    /// @notice Emitted when deposit refund is confirmed (assets returned to account)
    /// @param user Account owner address
    /// @param strategyId Strategy identifier
    /// @param amount Refunded amount
    /// @param msgGuid Bridge message GUID
    event DepositRefunded(address indexed user, bytes32 indexed strategyId, uint256 amount, bytes32 msgGuid);

    /// @notice Emitted when withdrawal refund is confirmed (shares returned to account)
    /// @param user Account owner address
    /// @param strategyId Strategy identifier
    /// @param amount Refunded amount
    /// @param msgGuid Bridge message GUID
    event WithdrawalRefunded(address indexed user, bytes32 indexed strategyId, uint256 amount, bytes32 msgGuid);

    /// @notice Emitted when management fee is charged on a position
    /// @param user Account owner address
    /// @param strategyId Strategy identifier
    /// @param assetToken Asset token address
    /// @param principal Principal (cost basis) used for calculation
    /// @param feeAmount Management fee amount charged
    /// @param feeBps Management fee rate (annualized bps)
    /// @param accrualStart Start of accrual period
    /// @param accrualEnd End of accrual period
    event ManagementFeeCharged(
        address indexed user,
        bytes32 indexed strategyId,
        address assetToken,
        uint256 principal,
        uint256 feeAmount,
        uint16 feeBps,
        uint48 accrualStart,
        uint48 accrualEnd
    );

    // ========================== AccountManager Events ==========================

    /// @notice Emitted when a new account is created for a user
    /// @param user User address who owns the account
    /// @param account Deployed account proxy address
    /// @param accountNumber Sequential account number (total accounts deployed)
    event AccountCreated(address indexed user, address indexed account, uint256 accountNumber);

    /// @notice Emitted when account implementation is upgraded
    /// @param oldImpl Previous implementation address
    /// @param newImpl New implementation address
    event AccountUpgraded(address oldImpl, address newImpl);

    /// @notice Emitted when an account implementation upgrade is queued
    /// @param oldImpl Previous implementation address
    /// @param newImpl New implementation address
    /// @param eta Timestamp after which the upgrade can be executed
    event AccountUpgradeQueued(address oldImpl, address newImpl, uint48 eta);

    /// @notice Emitted when a queued upgrade is cancelled
    /// @param pendingImpl The implementation that was cancelled
    event AccountUpgradeCancelled(address pendingImpl);

    /// @notice Emitted when validator address is updated
    /// @param oldValidator Previous validator address
    /// @param newValidator New validator address
    event ValidatorUpdated(address indexed oldValidator, address indexed newValidator);

    /// @notice Emitted when allocations/deposits are paused or unpaused
    /// @param paused True if paused, false if unpaused
    event AllocationsPauseUpdated(bool paused);

    // ========================== RouterManager Events ==========================

    /// @notice Emitted when a new router is deployed for a protocol
    /// @param protocol Protocol name
    /// @param router Deployed router proxy address
    event RouterDeployed(string indexed protocol, address indexed router);

    /// @notice Emitted when router base logic is upgraded
    /// @param oldImpl Previous implementation address
    /// @param newImpl New implementation address
    event RouterUpgraded(address indexed oldImpl, address indexed newImpl);

    /// @notice Emitted when a router base logic upgrade is queued
    /// @param oldImpl Previous implementation address
    /// @param newImpl New implementation address
    /// @param eta Timestamp after which the upgrade can be executed
    event RouterUpgradeQueued(address oldImpl, address newImpl, uint48 eta);

    /// @notice Emitted when a queued router upgrade is cancelled
    /// @param pendingImpl The implementation that was cancelled
    event RouterUpgradeCancelled(address pendingImpl);

    /// @notice Emitted when AccountManager is set in RouterManager
    /// @param accountManager AccountManager contract address
    event AccountManagerSet(address indexed accountManager);

    /// @notice Emitted when FeeManager is set or updated in AccountManager
    /// @param feeManager FeeManager contract address
    event FeeManagerSet(address indexed feeManager);

    /// @notice Emitted when WETH address is set in AccountManager
    /// @param weth WETH contract address
    event WethSet(address indexed weth);

    // ========================== Token Whitelist Events ==========================

    /// @notice Emitted when a token is added or removed from whitelist
    /// @param token Token address
    /// @param whitelisted True if added, false if removed
    event TokenWhitelisted(address indexed token, bool whitelisted);

    // ========================== Emergency Recovery Events ==========================

    /// @notice Emitted when ERC20 tokens are recovered from a contract
    /// @param token Token address recovered
    /// @param recipient Recipient address
    /// @param amount Amount recovered
    event TokenRecovered(address indexed token, address indexed recipient, uint256 amount);

    /// @notice Emitted when a low-level error occurs
    /// @param lowLevelData The low-level error data
    event ErrorLogBytes(bytes lowLevelData);

    // ========================== Fee Events ==========================

    /// @notice Emitted when a performance fee is charged on realized profit
    /// @param user Account owner address
    /// @param strategyId Strategy identifier
    /// @param assetToken Asset token the fee was charged in
    /// @param profit Realized profit in asset units
    /// @param feeAmount Fee charged in asset units
    /// @param feeBps Fee rate in bps
    /// @param msgGuid Bridge message GUID (bytes32(0) for local withdrawals)
    event PerformanceFeeCharged(
        address indexed user,
        bytes32 indexed strategyId,
        address indexed assetToken,
        uint256 profit,
        uint256 feeAmount,
        uint16 feeBps,
        bytes32 msgGuid
    );

    /// @notice Emitted when a fee configuration is scheduled for activation
    /// @param perfFeeBps Performance fee bps
    /// @param mgmtFeeBpsAnnual Annual management fee bps
    /// @param recipient Fee recipient address
    /// @param validAfter Timestamp after which the config applies
    event FeeConfigScheduled(uint16 perfFeeBps, uint16 mgmtFeeBpsAnnual, address indexed recipient, uint48 validAfter);

    /// @notice Emitted when fee configuration is updated immediately (no delay / same value)
    /// @param perfFeeBps Performance fee bps
    /// @param mgmtFeeBpsAnnual Annual management fee bps
    /// @param recipient Fee recipient address
    event FeeConfigSet(uint16 perfFeeBps, uint16 mgmtFeeBpsAnnual, address indexed recipient);

    // ========================== Relayer Events ==========================

    /// @notice Emitted when a bridge fee is deducted from a deposit or withdrawal
    /// @param user Account owner address
    /// @param assetToken Token the fee was charged in
    /// @param fee Amount deducted as bridge fee
    /// @param relayer Relayer contract that received the fee
    event BridgeFeeDeducted(address indexed user, address indexed assetToken, uint256 fee, address relayer);

    /// @notice Emitted when bridge fee collection is skipped (e.g., received assets <= fee on withdrawal confirmation)
    /// @param user Account owner address
    /// @param assetToken Token the fee would have been charged in
    /// @param fee Configured fee amount
    /// @param available Available amount
    event BridgeFeeSkipped(address indexed user, address indexed assetToken, uint256 fee, uint256 available);

    /// @notice Emitted when the relayer funds a bridge operation with ETH
    /// @param bridgeModule Bridge module that received the ETH
    /// @param amount Amount of ETH sent
    event RelayerFunded(address indexed bridgeModule, uint256 amount);

    /// @notice Emitted when a bridge fee is configured for an asset token on the relayer
    /// @param token Asset token address
    /// @param fee Fee amount in token decimals
    event BridgeFeeSet(address indexed token, uint256 fee);

    /// @notice Emitted when bridgeManager is updated on the Relayer
    /// @param bridgeManager New bridge manager address
    event BridgeManagerUpdated(address indexed bridgeManager);
}
