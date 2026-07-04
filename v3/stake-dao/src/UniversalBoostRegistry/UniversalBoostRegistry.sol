// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.28 ^0.8.20;

// node_modules/@openzeppelin/contracts/utils/Context.sol

// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// node_modules/@openzeppelin/contracts/access/Ownable.sol

// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    constructor(address initialOwner) {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// node_modules/@openzeppelin/contracts/access/Ownable2Step.sol

// OpenZeppelin Contracts (last updated v5.1.0) (access/Ownable2Step.sol)

/**
 * @dev Contract module which provides access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * This extension of the {Ownable} contract includes a two-step mechanism to transfer
 * ownership, where the new owner must call {acceptOwnership} in order to replace the
 * old one. This can help prevent common mistakes, such as transfers of ownership to
 * incorrect accounts, or to contracts that are unable to interact with the
 * permission system.
 *
 * The initial owner is specified at deployment time in the constructor for `Ownable`. This
 * can later be changed with {transferOwnership} and {acceptOwnership}.
 *
 * This module is used through inheritance. It will make available all functions
 * from parent (Ownable).
 */
abstract contract Ownable2Step is Ownable {
    address private _pendingOwner;

    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Returns the address of the pending owner.
     */
    function pendingOwner() public view virtual returns (address) {
        return _pendingOwner;
    }

    /**
     * @dev Starts the ownership transfer of the contract to a new account. Replaces the pending transfer if there is one.
     * Can only be called by the current owner.
     *
     * Setting `newOwner` to the zero address is allowed; this can be used to cancel an initiated ownership transfer.
     */
    function transferOwnership(address newOwner) public virtual override onlyOwner {
        _pendingOwner = newOwner;
        emit OwnershipTransferStarted(owner(), newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`) and deletes any pending owner.
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual override {
        delete _pendingOwner;
        super._transferOwnership(newOwner);
    }

    /**
     * @dev The new owner accepts the ownership transfer.
     */
    function acceptOwnership() public virtual {
        address sender = _msgSender();
        if (pendingOwner() != sender) {
            revert OwnableUnauthorizedAccount(sender);
        }
        _transferOwnership(sender);
    }
}

// src/merkl/UniversalBoostRegistry.sol

/// @title UniversalBoostRegistry - Registry for StakeDAO Boosts renting.
/// @notice A registry to keep track of the Boosts rented by the users, per protocol, to work with Merkl.
/// @dev Merkl will use this registry to know which Boosts are rented by the users, per protocol, and allocate according rewards,
///      minus the protocol fees (if any), set by this contract.
///
///      Key responsibilities:
///      - Tracks boost rental status for users across different protocols
///      - Manages protocol-specific fee configurations with time-delayed updates
///      - Provides a secure fee update mechanism with owner controls and delay periods
///      - Integrates with Merkl for reward distribution calculations
///
///      The contract implements a two-phase fee update system:
///      1. Queue: Owner queues new protocol configurations
///      2. Commit: After delay period, configurations can be committed to take effect
contract UniversalBoostRegistry is Ownable2Step {
    //////////////////////////////////////////////////////
    // --- STORAGE STRUCTURES
    //////////////////////////////////////////////////////

    /// @notice Configuration parameters for a specific protocol.
    /// @dev Contains both active and queued fee configurations with timestamps for delay mechanism.
    ///      Optimized for gas efficiency by packing fields into 3 storage slots instead of 6.
    ///      Active values are used for current operations, queued values become active after commitment.
    struct ProtocolConfig {
        /// @notice Active fee percentage charged by the protocol (scaled by 1e18).
        uint128 protocolFees;
        /// @notice Queued fee percentage that will become active after commitment (scaled by 1e18).
        uint128 queuedProtocolFees;
        /// @notice Timestamp when this configuration was last committed and became active.
        uint64 lastUpdated;
        /// @notice Timestamp when a new configuration was queued (0 if not queued).
        /// @dev Used to track the delay period. Zero indicates no pending configuration.
        uint64 queuedTimestamp;
        /// @notice Active address that receives the protocol fees.
        address feeReceiver;
    }

    //////////////////////////////////////////////////////
    // --- CONSTANTS
    //////////////////////////////////////////////////////

    /// @notice The maximum fee percent (40%).
    uint128 public constant MAX_FEE_PERCENT = 0.4e18;

    //////////////////////////////////////////////////////
    // --- STATE VARIABLES
    //////////////////////////////////////////////////////

    /// @notice Delay period for new fees to take effect.
    /// @dev This prevents immediate fee changes and provides users time to react to fee updates.
    uint64 public delayPeriod = 1 days;

    /// @notice Queued delay period that will become active after commitment.
    uint64 public queuedDelayPeriod;

    /// @notice Timestamp when the queued delay period can be committed.
    uint64 public delayPeriodQueuedTimestamp;

    /// @notice Mapping of protocol ID to protocol configuration.
    /// @dev Contains both active and queued configurations in a single mapping.
    ///      Use queuedTimestamp to determine if a configuration is pending.
    mapping(bytes4 protocolId => ProtocolConfig config) public protocolConfig;

    /// @notice Mapping of account to protocol ID to boost rental status.
    /// @dev Tracks whether a user has rented a boost for a specific protocol.
    ///      True means the user is currently renting a boost, false means they are not.
    mapping(address account => mapping(bytes4 protocolId => bool status)) public isRentingBoost;

    //////////////////////////////////////////////////////
    // --- EVENTS
    //////////////////////////////////////////////////////

    /// @notice Event emitted when a boost is rented.
    /// @param account The address that rented the boost.
    /// @param protocolId The protocol ID for which the boost was rented.
    event BoostRented(address indexed account, bytes4 indexed protocolId);

    /// @notice Event emitted when a boost is returned.
    /// @param account The address that returned the boost.
    /// @param protocolId The protocol ID for which the boost was returned.
    event BoostReturned(address indexed account, bytes4 indexed protocolId);

    /// @notice Event emitted when a new protocol config is queued.
    /// @param protocolId The protocol ID for which the config was queued.
    /// @param protocolFees The queued protocol fee percentage.
    /// @param queuedTimestamp The timestamp when the configuration was queued.
    event NewProtocolConfigQueued(bytes4 indexed protocolId, uint128 protocolFees, uint64 queuedTimestamp);

    /// @notice Event emitted when a protocol config is committed.
    /// @param protocolId The protocol ID for which the config was committed.
    /// @param protocolFees The committed protocol fee percentage.
    /// @param committedTimestamp The timestamp when the configuration was committed.
    event ProtocolConfigCommitted(bytes4 indexed protocolId, uint128 protocolFees, uint64 committedTimestamp);

    /// @notice Event emitted when a new delay period is queued.
    /// @param newDelayPeriod The new delay period.
    /// @param queuedTimestamp The timestamp when it can be committed.
    event DelayPeriodQueued(uint64 newDelayPeriod, uint64 queuedTimestamp);

    /// @notice Event emitted when the delay period is committed.
    /// @param newDelayPeriod The new delay period.
    /// @param committedTimestamp The timestamp when it was committed.
    event DelayPeriodCommitted(uint64 newDelayPeriod, uint64 committedTimestamp);

    //////////////////////////////////////////////////////
    // --- ERRORS
    //////////////////////////////////////////////////////

    /// @notice Error thrown when there is no queued configuration to commit.
    error NoQueuedConfig();

    /// @notice Error thrown when a fee exceeds the maximum allowed.
    error FeeExceedsMaximum();

    /// @notice Error thrown when the delay period for new fees to take effect has not passed.
    error DelayPeriodNotPassed();

    /// @notice Error thrown when there is no queued delay period to commit.
    error NoQueuedDelayPeriod();

    //////////////////////////////////////////////////////
    // --- CONSTRUCTOR
    //////////////////////////////////////////////////////

    /// @notice Initializes the UniversalBoostRegistry contract.
    /// @dev Sets the deployer as the initial owner using Ownable2Step pattern.
    constructor(address initialOwner) Ownable(initialOwner) {}

    //////////////////////////////////////////////////////
    // --- BOOST RENTAL OPERATIONS
    //////////////////////////////////////////////////////

    /// @notice Rents a boost for a given protocol.
    /// @dev Updates the rental status to true and emits a BoostRented event.
    ///      This function can be called by any user to rent a boost for themselves.
    /// @param protocolId The protocol ID for which to rent the boost.
    function rentBoost(bytes4 protocolId) public {
        // Update the rental status for the caller and protocol
        isRentingBoost[msg.sender][protocolId] = true;

        // Emit event for off-chain tracking and Merkl integration
        emit BoostRented(msg.sender, protocolId);
    }

    /// @notice Returns a boost for a given protocol.
    /// @dev Updates the rental status to false and emits a BoostReturned event.
    ///      This function can be called by any user to return their rented boost.
    /// @param protocolId The protocol ID for which to return the boost.
    function returnBoost(bytes4 protocolId) public {
        // Update the rental status for the caller and protocol
        isRentingBoost[msg.sender][protocolId] = false;

        // Emit event for off-chain tracking and Merkl integration
        emit BoostReturned(msg.sender, protocolId);
    }

    //////////////////////////////////////////////////////
    // --- PROTOCOL CONFIGURATION MANAGEMENT
    //////////////////////////////////////////////////////

    /// @notice Queues a new protocol config for a given protocol ID.
    /// @dev Implements the first phase of the two-phase fee update mechanism.
    ///      Only the owner can queue new configurations. The configuration will not
    ///      take effect immediately - it must be committed after the delay period.
    ///      Preserves active configuration values until commitment.
    /// @param protocolId The protocol ID for which to queue the new configuration.
    /// @param protocolFees The protocol fee percentage to queue (scaled by 1e18).
    /// @custom:throws OwnableUnauthorizedAccount If caller is not the owner.
    /// @custom:throws FeeExceedsMaximum If the protocol fee exceeds the maximum allowed.
    function queueNewProtocolConfig(bytes4 protocolId, uint128 protocolFees) public onlyOwner {
        // Validate that the protocol fee doesn't exceed the maximum allowed
        require(protocolFees <= MAX_FEE_PERCENT, FeeExceedsMaximum());

        // Get storage pointer to the configuration for gas efficiency
        ProtocolConfig storage config = protocolConfig[protocolId];

        // Update only the queued configuration fields, preserving active values
        uint64 currentTime = uint64(block.timestamp);
        config.queuedProtocolFees = protocolFees;
        config.queuedTimestamp = currentTime + delayPeriod;

        // Emit event to notify about the queued configuration
        emit NewProtocolConfigQueued(protocolId, protocolFees, currentTime + delayPeriod);
    }

    /// @notice Set a new fee receiver for a given protocol.
    /// @dev This function can only be called by the owner.
    /// @param protocolId The protocol ID for which to set the new fee receiver.
    /// @param feeReceiver The new fee receiver address.
    function setFeeReceiver(bytes4 protocolId, address feeReceiver) public onlyOwner {
        protocolConfig[protocolId].feeReceiver = feeReceiver;
    }

    /// @notice Queues a new delay period.
    /// @dev This function can only be called by the owner. The new delay period
    ///      will only take effect after the current delay period has passed.
    ///      This prevents bypassing the delay mechanism by reducing the delay period.
    /// @param newDelayPeriod The new delay period to queue.
    function queueDelayPeriod(uint64 newDelayPeriod) public onlyOwner {
        uint64 currentTime = uint64(block.timestamp);
        queuedDelayPeriod = newDelayPeriod;
        delayPeriodQueuedTimestamp = currentTime + delayPeriod;

        emit DelayPeriodQueued(newDelayPeriod, currentTime + delayPeriod);
    }

    /// @notice Commits the queued delay period.
    /// @dev Can be called by anyone once the delay period has passed.
    function commitDelayPeriod() public {
        require(delayPeriodQueuedTimestamp != 0, NoQueuedDelayPeriod());
        require(uint64(block.timestamp) >= delayPeriodQueuedTimestamp, DelayPeriodNotPassed());

        uint64 currentTime = uint64(block.timestamp);
        delayPeriod = queuedDelayPeriod;

        // Clear queued values
        queuedDelayPeriod = 0;
        delayPeriodQueuedTimestamp = 0;

        emit DelayPeriodCommitted(delayPeriod, currentTime);
    }

    /// @notice Commits a new protocol config for a given protocol ID.
    /// @dev Implements the second phase of the two-phase fee update mechanism.
    ///      Can only be called after the delay period has passed since the configuration was queued.
    ///      This function can be called by anyone once the delay period has elapsed.
    ///      Moves queued values to active values and clears the queue.
    /// @param protocolId The protocol ID for which to commit the new configuration.
    /// @custom:throws DelayPeriodNotPassed If the delay period since queuing hasn't elapsed.
    /// @custom:throws NoQueuedConfig If there is no queued configuration to commit.
    function commitProtocolConfig(bytes4 protocolId) public {
        // Get storage pointer to the configuration for gas efficiency
        ProtocolConfig storage config = protocolConfig[protocolId];

        // Ensure there is a queued configuration to commit
        require(config.queuedTimestamp != 0, NoQueuedConfig());

        // Ensure sufficient time has passed since the configuration was queued
        require(uint64(block.timestamp) >= config.queuedTimestamp, DelayPeriodNotPassed());

        // Move queued values to active values
        uint64 currentTime = uint64(block.timestamp);
        config.protocolFees = config.queuedProtocolFees;
        config.lastUpdated = currentTime;

        // Clear queued values to indicate no pending configuration
        config.queuedProtocolFees = 0;
        config.queuedTimestamp = 0;

        // Emit event to notify about the committed configuration
        emit ProtocolConfigCommitted(protocolId, config.protocolFees, currentTime);
    }

    //////////////////////////////////////////////////////
    // --- VIEW FUNCTIONS
    //////////////////////////////////////////////////////

    /// @notice Returns whether a protocol configuration is currently queued and pending.
    /// @param protocolId The protocol ID to check.
    /// @return _ True if there is a queued configuration pending commitment.
    function hasQueuedConfig(bytes4 protocolId) external view returns (bool) {
        return protocolConfig[protocolId].queuedTimestamp != 0;
    }

    /// @notice Returns the timestamp when a configuration can be committed.
    /// @param protocolId The protocol ID to check.
    /// @return _ The timestamp when the configuration can be committed (0 if no queued config).
    function getCommitTimestamp(bytes4 protocolId) external view returns (uint64) {
        return protocolConfig[protocolId].queuedTimestamp;
    }

    /// @notice Returns whether a delay period is currently queued and pending.
    /// @return _ True if there is a queued delay period pending commitment.
    function hasQueuedDelayPeriod() external view returns (bool) {
        return delayPeriodQueuedTimestamp != 0;
    }

    /// @notice Returns the timestamp when the queued delay period can be committed.
    /// @return _ The timestamp when the delay period can be committed (0 if no queued delay period).
    function getDelayPeriodCommitTimestamp() external view returns (uint64) {
        return delayPeriodQueuedTimestamp;
    }
}