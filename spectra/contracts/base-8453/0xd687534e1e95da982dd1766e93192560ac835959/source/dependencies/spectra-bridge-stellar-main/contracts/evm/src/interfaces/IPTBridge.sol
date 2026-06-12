// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.23;

/**
 * @title IPTBridge
 * @notice Interface for the Principal Token Bridge
 * @dev Handles bridging of Spectra Principal Tokens between EVM chains and Stellar
 */
interface IPTBridge {
    // =============================================================
    //                           ERRORS
    // =============================================================

    /// @notice Error thrown when messenger is not set
    error MessengerNotSet();
    /// @notice Error thrown when Stellar bridge is not set
    error TrustedRemoteNotSet();
    /// @notice Error thrown when amount is zero
    error ZeroAmount();
    /// @notice Error thrown when recipient is empty
    error EmptyRecipient();
    /// @notice Error thrown when caller is not the messenger
    error OnlyMessenger();
    /// @notice Error thrown when source is not trusted
    error UntrustedSource();
    /// @notice Error thrown when unlock amount exceeds locked
    error InsufficientLockedBalance();
    /// @notice Error thrown when Stellar address is invalid
    error InvalidStellarAddress();
    /// @notice Error thrown when rate limit is exceeded
    error RateLimitExceeded();
    /// @notice Error thrown when fee is too high
    error FeeTooHigh();
    /// @notice Error thrown when fee recipient is not set
    error FeeRecipientNotSet();
    /// @notice Error thrown when Stellar chain identifier is empty
    error EmptyStellarChain();
    /// @notice Error thrown when wrapped Stellar PT is not recognized
    error UnknownWrappedToken();
    /// @notice Error thrown when an unrecognized message type is received
    error InvalidMessageType();
    /// @notice Error thrown when amount exceeds Stellar i128 max
    error AmountExceedsStellarMax();
    /// @notice Error thrown when `migrateMessenger` is called with mismatched array lengths
    error LengthMismatch();
    /// @notice Error thrown when an explicit refund address is the zero address
    error InvalidRefundAddress();
    /// @notice Error thrown when the post-fee bridge amount falls below the caller's
    ///         minimum (slippage protection against fee changes between quote and execution).
    error MinAmountOutNotMet();

    // =============================================================
    //                           EVENTS
    // =============================================================

    /// @notice Emitted when PTs are locked for bridging to Stellar
    event PTLocked(
        uint256 indexed nonce,
        address indexed pt,
        address indexed sender,
        uint256 amount,
        string stellarRecipient,
        uint32 sourceChainId
    );

    /// @notice Emitted when PTs are unlocked after bridging back from Stellar
    event PTUnlocked(
        bytes32 indexed stellarTxHash,
        address indexed pt,
        address indexed recipient,
        uint256 amount
    );

    /// @notice Emitted when the messenger adapter is swapped atomically with
    ///         the trusted-remote update via `migrateMessenger`.
    event MessengerMigrated(
        address indexed oldMessenger,
        address indexed newMessenger,
        string newRemote
    );

    /// @notice Emitted when the Stellar chain identifier is updated
    event StellarChainUpdated(string oldChain, string newChain);

    /// @notice Emitted when bridge fee configuration is updated
    event BridgeFeeUpdated(uint256 oldFeeBps, uint256 newFeeBps);

    /// @notice Emitted when fee recipient is updated
    event FeeRecipientUpdated(address indexed oldRecipient, address indexed newRecipient);

    /// @notice Emitted when bridge-back fee configuration is updated
    event BridgeBackFeeUpdated(uint256 oldFeeBps, uint256 newFeeBps);

    /// @notice Emitted when fees are collected during a bridge operation
    event FeeCollected(address indexed pt, address indexed recipient, uint256 amount);

    /// @notice Emitted when rate limit is updated for a PT
    event RateLimitUpdated(address indexed pt, int128 limitPerWindow, uint256 windowSeconds);

    /// @notice Emitted when fees are withdrawn by owner
    event FeesWithdrawn(address indexed pt, address indexed recipient, uint256 amount);

    /// @notice Emitted when a wrapped Stellar PT is minted on EVM
    event StellarPTMinted(
        bytes32 indexed stellarTxHash,
        address indexed wrappedToken,
        address indexed recipient,
        uint256 amount,
        string stellarPtAddress
    );

    /// @notice Emitted when a wrapped Stellar PT is burned on EVM to unlock on Stellar
    event StellarPTBurned(
        uint256 indexed nonce,
        address indexed wrappedToken,
        address indexed sender,
        uint256 amount,
        string stellarRecipient
    );

    /// @notice Emitted when the WrappedStellarPT beacon is updated
    event WrappedPtBeaconUpdated(address indexed oldBeacon, address indexed newBeacon);

    /// @notice Emitted when a new WrappedStellarPT ERC20 is deployed
    event WrappedStellarPTDeployed(
        address indexed wrappedToken,
        string stellarPtAddress,
        uint256 maturity,
        string ptSymbol
    );

    // =============================================================
    //                         FUNCTIONS
    // =============================================================

    /**
     * @notice Bridges Principal Tokens to Stellar
     * @dev Reverts if amount > type(int128).max (~1.7e38) as Stellar uses i128
     * @dev Reverts with `InvalidRefundAddress` if `refundAddress` is the zero address
     * @dev Reverts with `MinAmountOutNotMet` if `amount - fee < minAmountOut`
     * @param pt The address of the Principal Token
     * @param amount The amount of PT to bridge
     * @param stellarRecipient The Stellar address to receive the wrapped PT
     * @param refundAddress The address to receive any excess gas refunds. Must be
     *        able to accept native value (e.g. an EOA, or a contract with a
     *        payable `receive()`/fallback)
     * @param minAmountOut Post-fee floor the caller will accept. Reverts with
     *        `MinAmountOutNotMet` if `amount - fee < minAmountOut`. Pass `0`
     *        to opt out of slippage protection (not recommended).
     * @return nonce Unique identifier for this bridge request
     */
    function bridgeToStellar(
        address pt,
        uint256 amount,
        string calldata stellarRecipient,
        address refundAddress,
        uint256 minAmountOut
    ) external payable returns (uint256 nonce);

    /**
     * @notice Estimates the gas cost for bridging
     * @param pt The address of the Principal Token
     * @param amount The amount of PT to bridge
     * @param stellarRecipient The Stellar address to receive the wrapped PT
     * @return gasCost The estimated gas cost in native currency
     */
    function estimateBridgeCost(
        address pt,
        uint256 amount,
        string calldata stellarRecipient
    ) external view returns (uint256 gasCost);

    /**
     * @notice Returns the locked balance for a specific PT
     * @param pt The address of the Principal Token
     * @return The total locked balance
     */
    function lockedBalance(address pt) external view returns (uint256);

    /**
     * @notice Atomically swap the messenger adapter and snapshot the prior
     *         trusted remote for the migration grace period.
     * @dev    Each messenger encodes the source sender address differently;
     *         in-flight inbound messages from the previous messenger only
     *         validate against the snapshot captured here.
     * @param newMessenger The address of the new messenger
     * @param newRemote    Trusted remote address in the new messenger's
     *                     encoding
     */
    function migrateMessenger(address newMessenger, string calldata newRemote) external;

    /**
     * @notice Clears the previous messenger and the previous trusted-remote
     *         snapshot captured at the last `migrateMessenger`.
     */
    function clearPreviousMessenger() external;

    /**
     * @notice Returns the previous messenger address (zero if no migration
     *         is currently in its grace period)
     */
    function previousMessenger() external view returns (address);

    /**
     * @notice Returns the trusted remote snapshot captured at the most recent
     *         `migrateMessenger` call. Empty string after
     *         `clearPreviousMessenger`.
     */
    function previousTrustedRemote() external view returns (string memory);

    /**
     * @notice Sets the Stellar chain identifier
     * @param stellarChain The Stellar chain identifier (e.g., "stellar-2026-q1-2")
     */
    function setStellarChain(string calldata stellarChain) external;

    /**
     * @notice Bridges a wrapped Stellar PT back to Stellar (burn on EVM, unlock on Stellar)
     * @dev Reverts if amount > type(int128).max (~1.7e38) as Stellar uses i128
     * @dev Reverts with `InvalidRefundAddress` if `refundAddress` is the zero address
     * @dev Reverts with `MinAmountOutNotMet` if `amount - fee < minAmountOut`
     * @param wrappedToken The wrapped ERC20 token address
     * @param amount The amount to burn and unlock
     * @param stellarRecipient The Stellar address to receive the unlocked PT (56-char strkey)
     * @param refundAddress The address to receive any excess gas refunds. Must be
     *        able to accept native value (e.g. an EOA, or a contract with a
     *        payable `receive()`/fallback)
     * @param minAmountOut Post-fee floor the caller will accept. Reverts with
     *        `MinAmountOutNotMet` if `amount - fee < minAmountOut`. Pass `0`
     *        to opt out of slippage protection (not recommended).
     * @return nonce Unique identifier for this bridge request
     */
    function bridgeStellarPtBack(
        address wrappedToken,
        uint256 amount,
        string calldata stellarRecipient,
        address refundAddress,
        uint256 minAmountOut
    ) external payable returns (uint256 nonce);

    /**
     * @notice Receives a cross-chain message from the messenger
     * @param sourceChain The source chain identifier
     * @param sourceAddress The source contract address
     * @param payload The encoded message payload
     */
    function receiveMessage(
        string calldata sourceChain,
        string calldata sourceAddress,
        bytes calldata payload
    ) external;

    /**
     * @notice Returns the wrapped ERC20 address for a Stellar PT
     * @param stellarPtAddress The 56-char Stellar strkey (C...)
     * @return The wrapped ERC20 address (zero if not deployed)
     */
    function wrappedStellarPts(string calldata stellarPtAddress) external view returns (address);

    /**
     * @notice Sets the UpgradeableBeacon for WrappedStellarPT instances
     * @param beacon The beacon address
     */
    function setWrappedPtBeacon(address beacon) external;
}
