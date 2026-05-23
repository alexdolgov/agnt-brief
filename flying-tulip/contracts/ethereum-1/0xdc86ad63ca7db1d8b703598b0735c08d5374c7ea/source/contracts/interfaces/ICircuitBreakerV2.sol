// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {IHealthcheck} from "./IHealthcheck.sol";

/// @title ICircuitBreakerV2
/// @notice Rate limiter with deferred settlement for protocol outflows
/// @dev Fee-on-transfer (FOT) and rebasing tokens are NOT supported.
///      Using such tokens will result in incorrect accounting and potential loss of funds.
interface ICircuitBreakerV2 {
    // ===== Enums =====
    enum QueueStatus {
        Pending,
        Paused
    }

    // ===== Structs =====
    struct QueuedOutflow {
        address token;
        uint40 queuedAt;
        uint40 settlesAt;
        QueueStatus status;
        address recipient;
        uint64 recoveryEpoch;
        uint256 amount;
    }

    struct LimiterConfig {
        uint64 maxDrawRateWad;
        uint48 mainWindow;
        uint48 elasticWindow;
    }

    struct AssetHealth {
        uint256 mainBuffer;
        uint256 mainBufferCap;
        uint256 elasticBuffer;
        uint256 totalCapacity;
        uint256 pendingOutflows;
        uint256 utilizationBps;
        bool isPaused;
    }

    // ===== Events =====
    event Inflow(address indexed asset, uint256 amount, uint256 newTvl);
    event OutflowImmediate(address indexed asset, address indexed to, uint256 amount);
    event OutflowQueued(
        uint256 indexed queueId,
        address indexed asset,
        address indexed recipient,
        uint256 amount,
        uint256 settlesAt
    );
    event OutflowLimiterContext(
        uint256 indexed queueId, address indexed limiterAsset, address indexed transferToken
    );
    event OutflowExecuted(
        uint256 indexed queueId, address indexed recipient, address indexed asset, uint256 amount
    );
    event OutflowPaused(uint256 indexed queueId, address indexed recipient);
    event OutflowResumed(uint256 indexed queueId, address indexed recipient);
    event OutflowSpedUp(uint256 indexed queueId, address indexed recipient, uint256 newSettlesAt);

    event ConfigUpdated(address indexed asset, LimiterConfig config);
    event DelayUpdated(uint256 newDelay);
    event Paused(address indexed by);
    event Unpaused();
    event AssetPaused(address indexed asset, address indexed by);
    event AssetUnpaused(address indexed asset);
    event EmergencyRecovery(
        address indexed asset, address indexed to, uint256 amount, uint64 newEpoch
    );
    event ProtectedContractUpdated(address indexed contract_, bool enabled);
    event GuardianUpdated(address indexed newGuardian);
    event EmergencyOverride(address indexed contract_, address indexed asset, uint256 amount);
    event HealthcheckUpdated(address indexed newHealthcheck);
    event OperatorUpdated(address indexed newOperator);
    event RecipientWhitelistUpdated(address indexed recipient, bool enabled);
    event ScopedLimiterUpdated(address indexed contract_, bool enabled);
    event AssetTracked(address indexed asset);

    // ===== Errors =====
    error NotProtectedContract();
    error NotScopedContract();
    error NotAdmin();
    error NotAdminOrGuardian();
    error NotOperatorOrOwner();
    error GloballyPaused();
    error NotPaused();
    error AssetPausedError(address asset);
    error QueueNotFound(uint256 queueId);
    error QueueNotSettled(uint256 queueId, uint256 settlesAt);
    error QueueInvalidated(uint256 queueId, uint64 queueEpoch, uint64 currentEpoch);
    error InvalidStatus(uint256 queueId, QueueStatus current, QueueStatus expected);
    error InvalidConfig();
    error ZeroAddress();
    error ZeroAmount();
    error HealthcheckFailed(uint256 queueId);
    error InvalidSettleTime(uint256 queueId, uint256 currentSettlesAt, uint256 requestedSettlesAt);
    error NoChange();

    // ===== Core =====
    function recordInflow(address asset, uint256 amount, uint256 preTvl) external;

    function attemptOutflow(
        address asset,
        address to,
        uint256 amount,
        uint256 preTvl
    )
        external
        returns (bool immediate, uint256 queueId);

    /// @notice Rate-limit by `limiterAsset` but queue/transfer `transferToken`
    /// @dev Use when the token being transferred differs from the rate-limit bucket key.
    ///      E.g., wrapper withdrawUnderlying uses the wrapper's `token` as limiter but
    ///      transfers individual strategy `positionToken`s.
    ///      `limiterAmount` is used for rate-limit accounting (in limiterAsset decimals).
    ///      `transferAmount` is stored in the queue and used for settlement transfers
    ///      (in transferToken decimals). They differ when decimals mismatch.
    /// @param limiterAsset Asset address used for rate-limit state (bucket key)
    /// @param transferToken Token actually transferred / queued
    /// @param to Recipient
    /// @param limiterAmount Amount in limiterAsset decimals for rate-limit accounting
    /// @param transferAmount Amount in transferToken decimals for queue storage and settlement
    /// @param preTvl TVL before the outflow (in limiterAsset decimals for consistent buffer sizing)
    function attemptOutflowWithLimiter(
        address limiterAsset,
        address transferToken,
        address to,
        uint256 limiterAmount,
        uint256 transferAmount,
        uint256 preTvl
    )
        external
        returns (bool immediate, uint256 queueId);

    // ===== Settlement =====
    function executeQueued(uint256 queueId) external;

    function executeQueuedBatch(uint256[] calldata queueIds) external;

    // ===== Views =====
    function getQueueIdsByRecipient(address recipient)
        external
        view
        returns (uint256[] memory queueIds);

    function getQueuedByRecipient(
        address recipient,
        uint256 offset,
        uint256 limit
    )
        external
        view
        returns (QueuedOutflow[] memory outflows);

    function getQueued(uint256 queueId) external view returns (QueuedOutflow memory);

    function isSettled(uint256 queueId) external view returns (bool);

    function timeUntilSettled(uint256 queueId) external view returns (uint256 remaining);

    function getAssetHealth(
        address asset,
        uint256 currentTvl
    )
        external
        view
        returns (AssetHealth memory health);

    function withdrawalCapacity(address asset, uint256 currentTvl) external view returns (uint256);

    /// @notice Check if an outflow would be immediate or queued (without recording)
    /// @dev Use this for flows that cannot be queued (e.g., position token withdrawals)
    /// @param asset The asset being withdrawn
    /// @param amount The amount to check
    /// @param currentTvl The current TVL for capacity calculation
    /// @return wouldBeImmediate True if withdrawal would be immediate, false if would be queued
    /// @return availableCapacity Current available withdrawal capacity
    function checkOutflow(
        address asset,
        uint256 amount,
        uint256 currentTvl
    )
        external
        view
        returns (bool wouldBeImmediate, uint256 availableCapacity);

    /// @notice Get asset health for a specific contract's limiter state
    /// @dev Falls back to shared state if contract is not scoped
    function getAssetHealth(
        address contract_,
        address asset,
        uint256 currentTvl
    )
        external
        view
        returns (AssetHealth memory health);

    /// @notice Get withdrawal capacity for a specific contract's limiter state
    /// @dev Falls back to shared state if contract is not scoped
    function withdrawalCapacity(
        address contract_,
        address asset,
        uint256 currentTvl
    )
        external
        view
        returns (uint256);

    /// @notice Check if outflow would be immediate for a specific contract's limiter state
    /// @dev Falls back to shared state if contract is not scoped
    function checkOutflow(
        address contract_,
        address asset,
        uint256 amount,
        uint256 currentTvl
    )
        external
        view
        returns (bool wouldBeImmediate, uint256 availableCapacity);

    function pendingOutflows(address asset) external view returns (uint256);

    function settlementDelay() external view returns (uint256);

    function paused() external view returns (bool);

    function nextQueueId() external view returns (uint256);

    function assetRecoveryEpoch(address asset) external view returns (uint64);

    // ===== Enumeration Views =====

    /// @notice Check if an address is a registered protected contract
    function isProtectedContract(address contract_) external view returns (bool);

    /// @notice Get all registered protected contracts
    function getProtectedContracts() external view returns (address[] memory);

    /// @notice Get count of registered protected contracts
    function protectedContractCount() external view returns (uint256);

    /// @notice Check if an asset has been tracked (had inflows/outflows)
    function isTrackedAsset(address asset) external view returns (bool);

    /// @notice Get all tracked assets
    function getTrackedAssets() external view returns (address[] memory);

    /// @notice Get count of tracked assets
    function trackedAssetCount() external view returns (uint256);

    /// @notice Check if a contract has scoped limiter state
    function isScopedLimiter(address contract_) external view returns (bool);

    /// @notice Check if an address is a whitelisted recipient
    function isWhitelistedRecipient(address recipient) external view returns (bool);

    /// @notice Get all whitelisted recipients
    function getWhitelistedRecipients() external view returns (address[] memory);

    /// @notice Get count of whitelisted recipients
    function whitelistedRecipientCount() external view returns (uint256);

    /// @notice Get comprehensive system status for monitoring dashboards
    function getSystemStatus()
        external
        view
        returns (
            bool active,
            address admin,
            address guardianAddr,
            uint256 delay,
            uint256 numProtectedContracts,
            uint256 numTrackedAssets,
            uint256 numQueuedOutflows
        );

    // ===== Admin =====
    function unpause() external;
    function unpauseAsset(address asset) external;
    /// @notice Speed up a queued outflow by reducing its settlement time
    /// @param queueId The queue ID to speed up
    /// @param newSettleDelay The new delay from now (0 = instant, settlesAt = block.timestamp)
    /// @dev Reverts if newSettleDelay would result in a later settlesAt than current
    function speedUp(uint256 queueId, uint256 newSettleDelay) external;
    function resumeQueued(uint256 queueId) external;
    function emergencyRecover(address asset, address to) external;

    /// @notice Temporarily increase elastic buffer capacity to allow a specific withdrawal
    /// @dev Writing lastUpdated discards pending main-buffer replenishment. Accepted: capacity
    ///      loss is conservative, `speedUp` is preferred for unblocking queued outflows, and
    ///      replenishment resumes on the next inflow/outflow.
    /// @param asset The asset to increase capacity for
    /// @param amount The amount to add to elastic buffer capacity
    function emergencyOverride(address asset, uint256 amount) external;

    /// @notice Temporarily increase elastic buffer capacity for a scoped contract's state
    /// @dev Only works for contracts with scoped limiter enabled. Reverts if not registered or not scoped.
    function emergencyOverrideScoped(address contract_, address asset, uint256 amount) external;

    function setScopedLimiter(address contract_, bool enabled) external;

    function setDelay(uint256 newDelay) external;
    function setConfig(address asset, LimiterConfig calldata config) external;
    function setDefaultConfig(LimiterConfig calldata config) external;
    function setProtectedContract(address contract_, bool enabled) external;
    function setGuardian(address newGuardian) external;
    function setHealthcheck(address healthcheck_) external;
    function setOperator(address operator_) external;
    function setWhitelistedRecipient(address recipient, bool enabled) external;

    // ===== Admin/Guardian =====
    function pause() external;
    function pauseAsset(address asset) external;
    function pauseQueued(uint256 queueId) external;

    // ===== Roles =====
    function guardian() external view returns (address);
    function healthcheck() external view returns (IHealthcheck);
    function operator() external view returns (address);
}
