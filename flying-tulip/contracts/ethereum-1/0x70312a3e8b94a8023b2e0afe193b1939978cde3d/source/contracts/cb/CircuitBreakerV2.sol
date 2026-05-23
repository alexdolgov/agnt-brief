// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {Initializable} from "openzeppelin-contracts/contracts/proxy/utils/Initializable.sol";
import {
    Ownable2StepUpgradeable
} from "openzeppelin-contracts-upgradeable/contracts/access/Ownable2StepUpgradeable.sol";
import {
    UUPSUpgradeable
} from "openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {
    ReentrancyGuardTransient
} from "openzeppelin-contracts/contracts/utils/ReentrancyGuardTransient.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";

import {ICircuitBreakerV2} from "./ICircuitBreakerV2.sol";
import {IHealthcheck} from "./IHealthcheck.sol";
import {LimiterLib} from "./LimiterLib.sol";

/// @title CircuitBreakerV2
/// @notice Rate limiter implementing dual buffer system (ERC-7265 inspired) with deferred settlement
/// @dev Uses main buffer (time-replenishing) + elastic buffer (deposit-tracking) to prevent flashloan DoS.
///      Fee-on-transfer (FOT) and rebasing tokens are NOT supported.
///      Using such tokens will result in incorrect accounting and potential loss of funds.
contract CircuitBreakerV2 is
    ICircuitBreakerV2,
    Initializable,
    Ownable2StepUpgradeable,
    UUPSUpgradeable,
    ReentrancyGuardTransient
{
    using SafeERC20 for IERC20;
    using LimiterLib for LimiterLib.LimiterState;
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableSet for EnumerableSet.AddressSet;

    // ===== Constants =====
    // min delay needs to be selected carefully depending on chain configuration to give enough blocks for confirmation
    uint256 public constant MIN_DELAY = 5 minutes;
    uint256 public constant MAX_DELAY = 7 days;

    // ===== Storage =====

    /// @notice Queue of deferred outflows awaiting settlement
    mapping(uint256 => QueuedOutflow) private _queue;
    uint256 public nextQueueId;
    uint256 public activeQueueCount;

    /// @notice Queue IDs by recipient for enumeration (pending/paused only, removed on execution)
    mapping(address => EnumerableSet.UintSet) private _recipientQueueIds;

    /// @notice Per-asset rate limiter state
    mapping(address => LimiterLib.LimiterState) private _limiterState;

    /// @notice Per-asset rate limiter configuration (overrides default if set)
    mapping(address => LimiterLib.LimiterConfig) private _assetConfig;

    /// @notice Total amount queued but not yet executed per asset
    mapping(address asset => uint256) public pendingOutflows;

    /// @notice Epoch counter for invalidating queue entries after emergency recovery
    mapping(address asset => uint64) public assetRecoveryEpoch;

    /// @notice Per-asset pause state
    mapping(address => bool) private _assetPaused;

    /// @notice Global rate limiting configuration (used when no per-asset config)
    LimiterLib.LimiterConfig private _defaultConfig;

    /// @notice Time delay before queued outflows can be executed
    uint256 public settlementDelay;

    /// @notice Whether the circuit breaker is globally paused
    bool public paused;

    /// @notice Whitelist of addresses allowed to call recordInflow/attemptOutflow
    EnumerableSet.AddressSet private _protectedContracts;

    /// @notice Array-like set of assets with tracked state for enumeration
    EnumerableSet.AddressSet private _trackedAssets;

    /// @notice Guardian address that can pause but not unpause
    address public guardian;

    /// @notice Optional healthcheck contract for invariant verification at execution
    IHealthcheck public healthcheck;

    /// @notice Operator address that can speedUp queued withdrawals
    address public operator;

    /// @notice Whitelisted recipient addresses that bypass rate limiting entirely
    EnumerableSet.AddressSet private _whitelistedRecipients;

    /// @notice Contracts opted into per-contract limiter isolation
    mapping(address => bool) private _scopedLimiter;

    /// @notice Per-contract limiter state (used when _scopedLimiter[contract] is true)
    mapping(address => mapping(address => LimiterLib.LimiterState)) private _scopedLimiterState;

    /// @notice Epoch counter per contract, incremented each time scope is enabled
    mapping(address => uint64) private _scopeEpoch;

    /// @notice Epoch at which each (contract, asset) scoped state was last written
    mapping(address => mapping(address => uint64)) private _scopedStateEpoch;

    // ===== Constructor =====
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _owner,
        uint256 _settlementDelay,
        uint64 _maxDrawRateWad,
        uint48 _mainWindow,
        uint48 _elasticWindow
    )
        public
        initializer
    {
        if (_settlementDelay < MIN_DELAY || _settlementDelay > MAX_DELAY) {
            revert InvalidConfig();
        }
        if (_maxDrawRateWad == 0 || _maxDrawRateWad > 1e18) {
            revert InvalidConfig();
        }
        if (_mainWindow == 0 || _elasticWindow == 0) {
            revert InvalidConfig();
        }

        __Context_init();
        __Ownable_init(_owner);
        __Ownable2Step_init();

        settlementDelay = _settlementDelay;
        _defaultConfig = LimiterLib.LimiterConfig({
            maxDrawRateWad: _maxDrawRateWad, mainWindow: _mainWindow, elasticWindow: _elasticWindow
        });

        nextQueueId = 1;
    }

    // ===== Modifiers =====
    modifier onlyProtectedContract() {
        if (!_protectedContracts.contains(msg.sender)) {
            revert NotProtectedContract();
        }
        _;
    }

    modifier onlyAdminOrGuardian() {
        if (msg.sender != owner() && msg.sender != guardian) {
            revert NotAdminOrGuardian();
        }
        _;
    }

    modifier onlyOperatorOrOwner() {
        if (msg.sender != owner() && msg.sender != operator) {
            revert NotOperatorOrOwner();
        }
        _;
    }

    // ===== Core =====

    /// @inheritdoc ICircuitBreakerV2
    function recordInflow(
        address _asset,
        uint256 _amount,
        uint256 _preTvl
    )
        external
        onlyProtectedContract
    {
        if (paused) {
            revert GloballyPaused();
        }
        if (_assetPaused[_asset]) {
            revert AssetPausedError(_asset);
        }

        // Zero amount is a no-op
        if (_amount == 0) {
            return;
        }

        _trackAssetIfNew(_asset);

        LimiterLib.LimiterConfig memory config = _getConfig(_asset);
        LimiterLib.LimiterState memory state = _readLimiterState(_asset);

        // Update buffers with time decay/replenishment, then increase elastic buffer by deposit amount
        LimiterLib.LimiterState memory newState =
            LimiterLib.applyInflow(state, config, _preTvl, _amount);

        _writeLimiterState(_asset, newState);

        emit Inflow(_asset, _amount, _preTvl + _amount);
    }

    /// @inheritdoc ICircuitBreakerV2
    function attemptOutflow(
        address _asset,
        address _to,
        uint256 _amount,
        uint256 _preTvl
    )
        external
        onlyProtectedContract
        returns (bool immediate, uint256 queueId)
    {
        return _attemptOutflowWithLimiter(_asset, _asset, _to, _amount, _amount, _preTvl);
    }

    /// @inheritdoc ICircuitBreakerV2
    function attemptOutflowWithLimiter(
        address _limiterAsset,
        address _transferToken,
        address _to,
        uint256 _limiterAmount,
        uint256 _transferAmount,
        uint256 _preTvl
    )
        external
        onlyProtectedContract
        returns (bool immediate, uint256 queueId)
    {
        return _attemptOutflowWithLimiter(
            _limiterAsset, _transferToken, _to, _limiterAmount, _transferAmount, _preTvl
        );
    }

    /// @inheritdoc ICircuitBreakerV2
    function executeQueued(uint256 _queueId) external nonReentrant {
        _executeQueued(_queueId);
    }

    /// @inheritdoc ICircuitBreakerV2
    function executeQueuedBatch(uint256[] calldata _queueIds) external nonReentrant {
        for (uint256 i = 0; i < _queueIds.length; i++) {
            _executeQueued(_queueIds[i]);
        }
    }

    // ===== Views =====

    /// @inheritdoc ICircuitBreakerV2
    function getQueueIdsByRecipient(address _recipient) external view returns (uint256[] memory) {
        return _recipientQueueIds[_recipient].values();
    }

    /// @inheritdoc ICircuitBreakerV2
    function getQueuedByRecipient(
        address _recipient,
        uint256 _offset,
        uint256 _limit
    )
        external
        view
        returns (QueuedOutflow[] memory outflows)
    {
        EnumerableSet.UintSet storage ids = _recipientQueueIds[_recipient];
        uint256 total = ids.length();

        if (_offset >= total) {
            return new QueuedOutflow[](0);
        }

        uint256 end = _offset + _limit;
        if (end > total) {
            end = total;
        }

        uint256 count = end - _offset;
        outflows = new QueuedOutflow[](count);

        for (uint256 i = 0; i < count; i++) {
            outflows[i] = _queue[ids.at(_offset + i)];
        }
    }

    /// @inheritdoc ICircuitBreakerV2
    function getQueued(uint256 _queueId) external view returns (QueuedOutflow memory) {
        return _queue[_queueId];
    }

    /// @inheritdoc ICircuitBreakerV2
    function isSettled(uint256 _queueId) external view returns (bool) {
        QueuedOutflow storage q = _queue[_queueId];
        if (q.amount == 0) {
            return false;
        }
        if (q.status != QueueStatus.Pending) {
            return false;
        }
        return block.timestamp >= q.settlesAt;
    }

    /// @inheritdoc ICircuitBreakerV2
    function timeUntilSettled(uint256 _queueId) external view returns (uint256 remaining) {
        QueuedOutflow storage q = _queue[_queueId];
        if (q.settlesAt <= block.timestamp) {
            return 0;
        }
        return q.settlesAt - block.timestamp;
    }

    /// @inheritdoc ICircuitBreakerV2
    /// @dev Reads shared limiter state only. For scoped contracts use getAssetHealth(contract_, asset, tvl).
    function getAssetHealth(
        address _asset,
        uint256 _currentTvl
    )
        external
        view
        returns (AssetHealth memory health)
    {
        LimiterLib.LimiterConfig memory config = _getConfig(_asset);
        LimiterLib.LimiterState memory state = _limiterState[_asset];

        (uint256 mainBuffer, uint256 elasticBuffer, uint256 mainBufferCap) =
            LimiterLib.getBuffers(state, config, _currentTvl);

        uint256 totalCapacity = mainBuffer + elasticBuffer;
        uint256 pending = pendingOutflows[_asset];

        uint256 utilizationBps = 0;
        if (mainBufferCap > 0) {
            uint256 used = mainBufferCap > mainBuffer ? mainBufferCap - mainBuffer : 0;
            utilizationBps = (used * 10000) / mainBufferCap;
        }

        health = AssetHealth({
            mainBuffer: mainBuffer,
            mainBufferCap: mainBufferCap,
            elasticBuffer: elasticBuffer,
            totalCapacity: totalCapacity,
            pendingOutflows: pending,
            utilizationBps: utilizationBps,
            isPaused: _assetPaused[_asset]
        });
    }

    /// @inheritdoc ICircuitBreakerV2
    /// @dev Reads shared limiter state only. For scoped contracts use withdrawalCapacity(contract_, asset, tvl).
    function withdrawalCapacity(
        address _asset,
        uint256 _currentTvl
    )
        external
        view
        returns (uint256)
    {
        LimiterLib.LimiterConfig memory config = _getConfig(_asset);
        LimiterLib.LimiterState memory state = _limiterState[_asset];
        return LimiterLib.getCapacity(state, config, _currentTvl);
    }

    /// @inheritdoc ICircuitBreakerV2
    /// @dev Reads shared limiter state only. For scoped contracts use
    ///      checkOutflow(contract_, asset, amount, tvl).
    function checkOutflow(
        address _asset,
        uint256 _amount,
        uint256 _currentTvl
    )
        external
        view
        returns (bool wouldBeImmediate, uint256 availableCapacity)
    {
        LimiterLib.LimiterConfig memory config = _getConfig(_asset);
        LimiterLib.LimiterState memory state = _limiterState[_asset];
        availableCapacity = LimiterLib.getCapacity(state, config, _currentTvl);
        wouldBeImmediate = _amount <= availableCapacity;
    }

    /// @inheritdoc ICircuitBreakerV2
    function getAssetHealth(
        address _contract,
        address _asset,
        uint256 _currentTvl
    )
        external
        view
        returns (AssetHealth memory health)
    {
        if (!_protectedContracts.contains(_contract)) {
            revert NotProtectedContract();
        }

        LimiterLib.LimiterConfig memory config = _getConfig(_asset);
        LimiterLib.LimiterState memory state = _viewLimiterState(_contract, _asset);

        (uint256 mainBuffer, uint256 elasticBuffer, uint256 mainBufferCap) =
            LimiterLib.getBuffers(state, config, _currentTvl);

        uint256 totalCapacity = mainBuffer + elasticBuffer;
        uint256 pending = pendingOutflows[_asset];

        uint256 utilizationBps = 0;
        if (mainBufferCap > 0) {
            uint256 used = mainBufferCap > mainBuffer ? mainBufferCap - mainBuffer : 0;
            utilizationBps = (used * 10000) / mainBufferCap;
        }

        health = AssetHealth({
            mainBuffer: mainBuffer,
            mainBufferCap: mainBufferCap,
            elasticBuffer: elasticBuffer,
            totalCapacity: totalCapacity,
            pendingOutflows: pending,
            utilizationBps: utilizationBps,
            isPaused: _assetPaused[_asset]
        });
    }

    /// @inheritdoc ICircuitBreakerV2
    function withdrawalCapacity(
        address _contract,
        address _asset,
        uint256 _currentTvl
    )
        external
        view
        returns (uint256)
    {
        if (!_protectedContracts.contains(_contract)) {
            revert NotProtectedContract();
        }

        LimiterLib.LimiterConfig memory config = _getConfig(_asset);
        LimiterLib.LimiterState memory state = _viewLimiterState(_contract, _asset);
        return LimiterLib.getCapacity(state, config, _currentTvl);
    }

    /// @inheritdoc ICircuitBreakerV2
    function checkOutflow(
        address _contract,
        address _asset,
        uint256 _amount,
        uint256 _currentTvl
    )
        external
        view
        returns (bool wouldBeImmediate, uint256 availableCapacity)
    {
        if (!_protectedContracts.contains(_contract)) {
            revert NotProtectedContract();
        }

        LimiterLib.LimiterConfig memory config = _getConfig(_asset);
        LimiterLib.LimiterState memory state = _viewLimiterState(_contract, _asset);
        availableCapacity = LimiterLib.getCapacity(state, config, _currentTvl);
        wouldBeImmediate = _amount <= availableCapacity;
    }

    // ===== Enumeration Views =====

    /// @inheritdoc ICircuitBreakerV2
    function isProtectedContract(address _contract) external view returns (bool) {
        return _protectedContracts.contains(_contract);
    }

    /// @inheritdoc ICircuitBreakerV2
    function getProtectedContracts() external view returns (address[] memory) {
        return _protectedContracts.values();
    }

    /// @inheritdoc ICircuitBreakerV2
    function protectedContractCount() external view returns (uint256) {
        return _protectedContracts.length();
    }

    /// @inheritdoc ICircuitBreakerV2
    function isTrackedAsset(address _asset) external view returns (bool) {
        return _trackedAssets.contains(_asset);
    }

    /// @inheritdoc ICircuitBreakerV2
    function getTrackedAssets() external view returns (address[] memory) {
        return _trackedAssets.values();
    }

    /// @inheritdoc ICircuitBreakerV2
    function trackedAssetCount() external view returns (uint256) {
        return _trackedAssets.length();
    }

    /// @inheritdoc ICircuitBreakerV2
    function isWhitelistedRecipient(address _recipient) external view returns (bool) {
        return _whitelistedRecipients.contains(_recipient);
    }

    /// @inheritdoc ICircuitBreakerV2
    function getWhitelistedRecipients() external view returns (address[] memory) {
        return _whitelistedRecipients.values();
    }

    /// @inheritdoc ICircuitBreakerV2
    function whitelistedRecipientCount() external view returns (uint256) {
        return _whitelistedRecipients.length();
    }

    /// @inheritdoc ICircuitBreakerV2
    function isScopedLimiter(address _contract) external view returns (bool) {
        return _scopedLimiter[_contract];
    }

    /// @inheritdoc ICircuitBreakerV2
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
        )
    {
        return (
            !paused,
            owner(),
            guardian,
            settlementDelay,
            _protectedContracts.length(),
            _trackedAssets.length(),
            activeQueueCount
        );
    }

    // ===== Admin/Guardian =====

    /// @inheritdoc ICircuitBreakerV2
    function pause() external onlyAdminOrGuardian {
        paused = true;
        emit Paused(msg.sender);
    }

    /// @inheritdoc ICircuitBreakerV2
    function pauseAsset(address _asset) external onlyAdminOrGuardian {
        _assetPaused[_asset] = true;
        emit AssetPaused(_asset, msg.sender);
    }

    /// @inheritdoc ICircuitBreakerV2
    function pauseQueued(uint256 _queueId) external onlyAdminOrGuardian {
        QueuedOutflow storage q = _queue[_queueId];
        if (q.amount == 0) {
            revert QueueNotFound(_queueId);
        }
        if (q.status != QueueStatus.Pending) {
            revert InvalidStatus(_queueId, q.status, QueueStatus.Pending);
        }

        q.status = QueueStatus.Paused;

        emit OutflowPaused(_queueId, q.recipient);
    }

    // ===== Admin =====

    /// @inheritdoc ICircuitBreakerV2
    function unpause() external onlyOwner {
        paused = false;
        emit Unpaused();
    }

    /// @inheritdoc ICircuitBreakerV2
    function unpauseAsset(address _asset) external onlyOwner {
        _assetPaused[_asset] = false;
        emit AssetUnpaused(_asset);
    }

    /// @inheritdoc ICircuitBreakerV2
    function speedUp(uint256 _queueId, uint256 _newSettleDelay) external onlyOperatorOrOwner {
        QueuedOutflow storage q = _queue[_queueId];
        if (q.amount == 0) {
            revert QueueNotFound(_queueId);
        }
        if (q.status != QueueStatus.Pending) {
            revert InvalidStatus(_queueId, q.status, QueueStatus.Pending);
        }

        if (block.timestamp >= q.settlesAt) {
            revert QueueNotSettled(_queueId, q.settlesAt);
        }

        uint256 newSettlesAt = block.timestamp + _newSettleDelay;
        if (newSettlesAt > q.settlesAt) {
            revert InvalidSettleTime(_queueId, q.settlesAt, newSettlesAt);
        }

        q.settlesAt = SafeCast.toUint40(newSettlesAt);

        emit OutflowSpedUp(_queueId, q.recipient, newSettlesAt);
    }

    /// @inheritdoc ICircuitBreakerV2
    function resumeQueued(uint256 _queueId) external onlyOwner {
        QueuedOutflow storage q = _queue[_queueId];
        if (q.amount == 0) {
            revert QueueNotFound(_queueId);
        }
        if (q.status != QueueStatus.Paused) {
            revert InvalidStatus(_queueId, q.status, QueueStatus.Paused);
        }

        q.status = QueueStatus.Pending;

        emit OutflowResumed(_queueId, q.recipient);
    }

    /// @inheritdoc ICircuitBreakerV2
    function emergencyRecover(address _asset, address _to) external onlyOwner {
        if (!paused) {
            revert NotPaused();
        }
        if (_to == address(0)) {
            revert ZeroAddress();
        }

        uint256 balance = IERC20(_asset).balanceOf(address(this));

        // Increment epoch to invalidate all pending queue entries for this asset
        assetRecoveryEpoch[_asset]++;

        // Reset pending tracking (queue entries are now invalid)
        pendingOutflows[_asset] = 0;

        // Transfer all held tokens to recovery address
        if (balance > 0) {
            IERC20(_asset).safeTransfer(_to, balance);
        }

        emit EmergencyRecovery(_asset, _to, balance, assetRecoveryEpoch[_asset]);
    }

    /// @inheritdoc ICircuitBreakerV2
    function emergencyOverride(address _asset, uint256 _amount) external onlyOwner {
        if (_amount == 0) {
            revert ZeroAmount();
        }

        // Writing lastUpdated = now discards pending main-buffer replenishment.
        // Accepted loss of current buffer: conservative, speedUp is preferred for unblocking queued outflows.
        LimiterLib.LimiterState memory state = _limiterState[_asset];

        // Add amount to elastic buffer (no cap, decays naturally over elasticWindow)
        // Elastic buffer is depleted first on outflows, making override immediately usable
        uint256 newElasticBuffer = uint256(state.elasticBuffer) + _amount;
        if (newElasticBuffer > type(uint96).max) {
            newElasticBuffer = type(uint96).max;
        }

        _limiterState[_asset] = LimiterLib.LimiterState({
            mainBuffer: state.mainBuffer,
            elasticBuffer: uint96(newElasticBuffer),
            lastUpdated: uint64(block.timestamp)
        });

        emit EmergencyOverride(address(0), _asset, _amount);
    }

    /// @inheritdoc ICircuitBreakerV2
    function emergencyOverrideScoped(
        address _contract,
        address _asset,
        uint256 _amount
    )
        external
        onlyOwner
    {
        if (_amount == 0) {
            revert ZeroAmount();
        }
        if (!_protectedContracts.contains(_contract)) {
            revert NotProtectedContract();
        }
        if (!_scopedLimiter[_contract]) {
            revert NotScopedContract();
        }

        LimiterLib.LimiterState memory state;
        if (_scopedStateEpoch[_contract][_asset] == _scopeEpoch[_contract]) {
            state = _scopedLimiterState[_contract][_asset];
        }

        uint256 newElasticBuffer = uint256(state.elasticBuffer) + _amount;
        if (newElasticBuffer > type(uint96).max) {
            newElasticBuffer = type(uint96).max;
        }

        _scopedLimiterState[_contract][_asset] = LimiterLib.LimiterState({
            mainBuffer: state.mainBuffer,
            elasticBuffer: uint96(newElasticBuffer),
            lastUpdated: uint64(block.timestamp)
        });
        _scopedStateEpoch[_contract][_asset] = _scopeEpoch[_contract];

        emit EmergencyOverride(_contract, _asset, _amount);
    }

    /// @inheritdoc ICircuitBreakerV2
    function setDelay(uint256 _newDelay) external onlyOwner {
        if (_newDelay < MIN_DELAY || _newDelay > MAX_DELAY) {
            revert InvalidConfig();
        }
        settlementDelay = _newDelay;
        emit DelayUpdated(_newDelay);
    }

    /// @inheritdoc ICircuitBreakerV2
    function setConfig(address _asset, LimiterConfig calldata _config) external onlyOwner {
        _validateConfig(_config);
        _assetConfig[_asset] = LimiterLib.LimiterConfig({
            maxDrawRateWad: _config.maxDrawRateWad,
            mainWindow: _config.mainWindow,
            elasticWindow: _config.elasticWindow
        });
        emit ConfigUpdated(_asset, _config);
    }

    /// @inheritdoc ICircuitBreakerV2
    function setDefaultConfig(LimiterConfig calldata _config) external onlyOwner {
        _validateConfig(_config);
        _defaultConfig = LimiterLib.LimiterConfig({
            maxDrawRateWad: _config.maxDrawRateWad,
            mainWindow: _config.mainWindow,
            elasticWindow: _config.elasticWindow
        });
        emit ConfigUpdated(address(0), _config);
    }

    /// @inheritdoc ICircuitBreakerV2
    function setProtectedContract(address _contract, bool _enabled) external onlyOwner {
        if (_contract == address(0)) {
            revert ZeroAddress();
        }

        bool wasEnabled = _protectedContracts.contains(_contract);
        if (wasEnabled == _enabled) {
            return; // No change
        }

        if (_enabled) {
            _protectedContracts.add(_contract);
        } else {
            _protectedContracts.remove(_contract);
            if (_scopedLimiter[_contract]) {
                _scopedLimiter[_contract] = false;
                emit ScopedLimiterUpdated(_contract, false);
            }
        }

        emit ProtectedContractUpdated(_contract, _enabled);
    }

    /// @inheritdoc ICircuitBreakerV2
    function setGuardian(address _newGuardian) external onlyOwner {
        if (_newGuardian == guardian) {
            revert NoChange();
        }
        guardian = _newGuardian;
        emit GuardianUpdated(_newGuardian);
    }

    /// @inheritdoc ICircuitBreakerV2
    function setHealthcheck(address _healthcheck) external onlyOwner {
        healthcheck = IHealthcheck(_healthcheck);
        emit HealthcheckUpdated(_healthcheck);
    }

    /// @inheritdoc ICircuitBreakerV2
    function setOperator(address _operator) external onlyOwner {
        operator = _operator;
        emit OperatorUpdated(_operator);
    }

    /// @inheritdoc ICircuitBreakerV2
    function setWhitelistedRecipient(address _recipient, bool _enabled) external onlyOwner {
        if (_recipient == address(0)) {
            revert ZeroAddress();
        }
        bool wasEnabled = _whitelistedRecipients.contains(_recipient);
        if (wasEnabled == _enabled) {
            revert NoChange();
        }
        if (_enabled) {
            _whitelistedRecipients.add(_recipient);
        } else {
            _whitelistedRecipients.remove(_recipient);
        }
        emit RecipientWhitelistUpdated(_recipient, _enabled);
    }

    /// @inheritdoc ICircuitBreakerV2
    function setScopedLimiter(address _contract, bool _enabled) external onlyOwner {
        if (!_protectedContracts.contains(_contract)) {
            revert NotProtectedContract();
        }
        if (_scopedLimiter[_contract] == _enabled) {
            revert NoChange();
        }
        _scopedLimiter[_contract] = _enabled;
        if (_enabled) {
            _scopeEpoch[_contract]++;
        }
        emit ScopedLimiterUpdated(_contract, _enabled);
    }

    // ===== Internal =====

    /// @notice Read limiter state for the calling protected contract (scoped or shared)
    /// @dev Returns zero state if scoped state was written under a previous scope epoch
    function _readLimiterState(address _asset)
        internal
        view
        returns (LimiterLib.LimiterState memory)
    {
        if (_scopedLimiter[msg.sender]) {
            if (_scopedStateEpoch[msg.sender][_asset] != _scopeEpoch[msg.sender]) {
                return LimiterLib.LimiterState(0, 0, 0);
            }
            return _scopedLimiterState[msg.sender][_asset];
        }
        return _limiterState[_asset];
    }

    /// @notice Write limiter state for the calling protected contract (scoped or shared)
    function _writeLimiterState(address _asset, LimiterLib.LimiterState memory _state) internal {
        if (_scopedLimiter[msg.sender]) {
            _scopedLimiterState[msg.sender][_asset] = _state;
            _scopedStateEpoch[msg.sender][_asset] = _scopeEpoch[msg.sender];
        } else {
            _limiterState[_asset] = _state;
        }
    }

    /// @notice Read limiter state for a specific contract (for view functions)
    /// @dev Returns zero state if scoped state was written under a previous scope epoch
    function _viewLimiterState(
        address _contract,
        address _asset
    )
        internal
        view
        returns (LimiterLib.LimiterState memory)
    {
        if (_scopedLimiter[_contract]) {
            if (_scopedStateEpoch[_contract][_asset] != _scopeEpoch[_contract]) {
                return LimiterLib.LimiterState(0, 0, 0);
            }
            return _scopedLimiterState[_contract][_asset];
        }
        return _limiterState[_asset];
    }

    /// @notice Core outflow logic supporting decoupled limiter/transfer tokens
    /// @param _limiterAsset Asset used for rate-limit state (bucket key)
    /// @param _transferToken Token actually transferred/queued (may differ from limiter)
    function _attemptOutflowWithLimiter(
        address _limiterAsset,
        address _transferToken,
        address _to,
        uint256 _limiterAmount,
        uint256 _transferAmount,
        uint256 _preTvl
    )
        internal
        returns (bool immediate, uint256 queueId)
    {
        if (paused) {
            revert GloballyPaused();
        }
        if (_assetPaused[_limiterAsset]) {
            revert AssetPausedError(_limiterAsset);
        }
        if (_limiterAsset != _transferToken && _assetPaused[_transferToken]) {
            revert AssetPausedError(_transferToken);
        }

        if (_transferAmount == 0) {
            revert ZeroAmount();
        }
        if (_to == address(0)) {
            revert ZeroAddress();
        }

        _trackAssetIfNew(_limiterAsset);
        if (_limiterAsset != _transferToken) {
            _trackAssetIfNew(_transferToken);
        }

        // Whitelist bypass — no buffer consumption
        if (_whitelistedRecipients.contains(_to)) {
            emit OutflowImmediate(_transferToken, _to, _transferAmount);
            return (true, 0);
        }

        // Normal rate limiting — use _limiterAmount (in limiterAsset decimals)
        LimiterLib.LimiterConfig memory config = _getConfig(_limiterAsset);
        LimiterLib.LimiterState memory state = _readLimiterState(_limiterAsset);

        // Update buffers and attempt to deduct (elastic buffer first, then main buffer)
        LimiterLib.OutflowResult memory result =
            LimiterLib.applyOutflow(state, config, _preTvl, _limiterAmount);

        // If no overflow, outflow fits within capacity - process immediately
        if (result.overflow == 0) {
            _writeLimiterState(
                _limiterAsset,
                LimiterLib.LimiterState({
                    mainBuffer: result.newMainBuffer,
                    elasticBuffer: result.newElasticBuffer,
                    lastUpdated: uint64(block.timestamp)
                })
            );

            emit OutflowImmediate(_transferToken, _to, _transferAmount);
            return (true, 0);
        } else {
            // Rate limit exceeded — queue with _transferAmount (actual token amount for settlement)
            return _createQueueEntry(_limiterAsset, _transferToken, _to, _transferAmount);
        }
    }

    /// @notice Create a queue entry for deferred settlement
    /// @dev Called when outflow exceeds rate limit capacity
    /// @param _limiterAsset Asset used for rate-limit state (for context event)
    /// @param _transferToken Token that will actually be transferred on execution
    function _createQueueEntry(
        address _limiterAsset,
        address _transferToken,
        address _to,
        uint256 _amount
    )
        internal
        returns (bool immediate, uint256 queueId)
    {
        queueId = nextQueueId++;
        uint40 queuedAt = SafeCast.toUint40(block.timestamp);
        uint40 settlesAt = SafeCast.toUint40(block.timestamp + settlementDelay);

        // Capture current epoch from transferToken - entry becomes invalid if emergency recovery occurs
        uint64 epoch = assetRecoveryEpoch[_transferToken];

        _queue[queueId] = QueuedOutflow({
            token: _transferToken,
            recipient: _to,
            amount: _amount,
            queuedAt: queuedAt,
            settlesAt: settlesAt,
            recoveryEpoch: epoch,
            status: QueueStatus.Pending
        });

        // Track for recipient enumeration (O(1) add)
        _recipientQueueIds[_to].add(queueId);

        // Track pending amount by transferToken (matches emergencyRecover)
        pendingOutflows[_transferToken] += _amount;
        activeQueueCount += 1;

        emit OutflowQueued(queueId, _transferToken, _to, _amount, settlesAt);

        // Supplementary event when limiter differs from transfer token
        if (_limiterAsset != _transferToken) {
            emit OutflowLimiterContext(queueId, _limiterAsset, _transferToken);
        }

        return (false, queueId);
    }

    /// @notice Execute a queued outflow after settlement delay
    /// @dev Validates status, epoch, and timing before releasing funds
    function _executeQueued(uint256 _queueId) internal {
        if (paused) {
            revert GloballyPaused();
        }

        QueuedOutflow storage q = _queue[_queueId];

        // Deleted structs have amount=0, so this catches both non-existent and already-executed queues
        if (q.amount == 0) {
            revert QueueNotFound(_queueId);
        }

        if (_assetPaused[q.token]) {
            revert AssetPausedError(q.token);
        }

        // Check status - only Pending queues can be executed (Paused must be resumed first)
        if (q.status == QueueStatus.Paused) {
            revert InvalidStatus(_queueId, q.status, QueueStatus.Pending);
        }

        // Check epoch - invalidated if emergency recovery occurred after queueing
        uint64 currentEpoch = assetRecoveryEpoch[q.token];
        if (q.recoveryEpoch != currentEpoch) {
            revert QueueInvalidated(_queueId, q.recoveryEpoch, currentEpoch);
        }

        // Check settlement delay has passed
        if (block.timestamp < q.settlesAt) {
            revert QueueNotSettled(_queueId, q.settlesAt);
        }

        // Cache values before deletion
        address recipient = q.recipient;
        address token = q.token;
        uint256 amount = q.amount;

        // Healthcheck validation (if configured)
        IHealthcheck hc = healthcheck;
        if (address(hc) != address(0)) {
            if (!hc.isHealthy(_queueId, token, recipient, amount)) {
                revert HealthcheckFailed(_queueId);
            }
        }

        // Remove from recipient tracking (O(1) removal)
        _recipientQueueIds[recipient].remove(_queueId);

        // Delete struct to free storage (subsequent calls revert with QueueNotFound since amount=0)
        delete _queue[_queueId];

        pendingOutflows[token] -= amount;
        activeQueueCount -= 1;

        // Transfer tokens to recipient
        IERC20(token).safeTransfer(recipient, amount);

        emit OutflowExecuted(_queueId, recipient, token, amount);
    }

    /// @notice Get rate limiter config for an asset (per-asset or default)
    function _getConfig(address _asset) internal view returns (LimiterLib.LimiterConfig memory) {
        LimiterLib.LimiterConfig memory config = _assetConfig[_asset];
        // If no per-asset config (maxDrawRateWad == 0), use default
        if (config.maxDrawRateWad == 0) {
            return _defaultConfig;
        }
        return config;
    }

    /// @notice Validate rate limiter configuration parameters
    function _validateConfig(LimiterConfig calldata _config) internal pure {
        // Rate must be > 0 and <= 100% (1e18 WAD)
        if (_config.maxDrawRateWad == 0 || _config.maxDrawRateWad > 1e18) {
            revert InvalidConfig();
        }
        // Windows must be non-zero for replenishment/decay to work
        if (_config.mainWindow == 0 || _config.elasticWindow == 0) {
            revert InvalidConfig();
        }
    }

    /// @notice Track asset for enumeration on first interaction
    function _trackAssetIfNew(address _asset) internal {
        if (_trackedAssets.add(_asset)) {
            emit AssetTracked(_asset);
        }
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}
}
