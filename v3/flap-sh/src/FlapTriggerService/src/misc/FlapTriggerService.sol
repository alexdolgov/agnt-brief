// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {Initializable} from "@openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {AccessControlUpgradeable} from "@openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IFlapTriggerService, ITriggerReceiver} from "./IFlapTriggerService.sol";

/// @title FlapTriggerService
/// @notice Upgradeable decentralised scheduler that lets smart contracts request delayed
///         or immediate function callbacks executed by a trusted backend.
/// @dev    Designed to operate behind a TransparentUpgradeableProxy.
///         – DEFAULT_ADMIN_ROLE: manage roles, update configuration.
///         – TRIGGER_ROLE:       execute pending trigger requests (backend operator).
contract FlapTriggerService is Initializable, AccessControlUpgradeable, IFlapTriggerService {
    // ═══════════════════════════════════════════════════════════════════════════════════════════════════
    // ROLES
    // ═══════════════════════════════════════════════════════════════════════════════════════════════════

    /// @notice Role granted to the trusted backend operator(s) that may call trigger().
    bytes32 public constant TRIGGER_ROLE = keccak256("TRIGGER_ROLE");

    // ═══════════════════════════════════════════════════════════════════════════════════════════════════
    // IMMUTABLES
    // ═══════════════════════════════════════════════════════════════════════════════════════════════════

    /// @notice Address that receives the fee from successfully triggered or retried requests.
    address public immutable feeReceiver;

    // ═══════════════════════════════════════════════════════════════════════════════════════════════════
    // STORAGE
    // ═══════════════════════════════════════════════════════════════════════════════════════════════════

    /// @dev Auto-incrementing request counter.  The next request will be assigned this ID.
    uint256 private _requestCount;

    /// @dev Native-currency fee (in wei) required per requestTrigger() call.
    uint256 private _requiredGasFee;

    /// @dev Maximum gas forwarded to a requester callback.
    uint256 private _maxCallbackGas;

    /// @dev All trigger requests keyed by their ID.
    mapping(uint256 => TriggerRequest) private _requests;

    /// @dev Ordered list of request IDs per requester address (used for paginated queries).
    mapping(address => uint256[]) private _requesterRequestIds;

    // ═══════════════════════════════════════════════════════════════════════════════════════════════════
    // CONSTRUCTOR
    // ═══════════════════════════════════════════════════════════════════════════════════════════════════

    /// @dev Sets the immutable fee receiver and locks the implementation contract.
    /// @param _feeReceiver Address that receives fees from successfully executed requests.
    constructor(address _feeReceiver) {
        if (_feeReceiver == address(0)) revert InvalidFeeReceiver();
        feeReceiver = _feeReceiver;
        _disableInitializers();
    }

    // ═══════════════════════════════════════════════════════════════════════════════════════════════════
    // INITIALIZER
    // ═══════════════════════════════════════════════════════════════════════════════════════════════════

    /// @notice Initialise the contract (called once by the proxy deployer).
    /// @param initialAdmin         Address granted DEFAULT_ADMIN_ROLE and TRIGGER_ROLE.
    /// @param initialGasFee        Required gas fee in wei for requestTrigger().  Must be > 0.
    /// @param initialMaxCallbackGas  Maximum gas forwarded to requester callbacks.  Must be > 0.
    function initialize(address initialAdmin, uint256 initialGasFee, uint256 initialMaxCallbackGas) external initializer {
        if (initialGasFee == 0) revert InvalidGasFee();
        if (initialMaxCallbackGas == 0) revert InvalidGasLimit();

        __AccessControl_init();

        _requiredGasFee = initialGasFee;
        _maxCallbackGas = initialMaxCallbackGas;

        _grantRole(DEFAULT_ADMIN_ROLE, initialAdmin);
        _grantRole(TRIGGER_ROLE, initialAdmin);
    }

    // ═══════════════════════════════════════════════════════════════════════════════════════════════════
    // WRITE METHODS
    // ═══════════════════════════════════════════════════════════════════════════════════════════════════

    /// @inheritdoc IFlapTriggerService
    function requestTrigger(uint64 executeAfter) external payable override returns (uint256 requestId) {
        if (msg.value < _requiredGasFee) {
            revert InsufficientGasFee(_requiredGasFee, msg.value);
        }
        if (msg.value > type(uint128).max) revert FeePaidOverflow(msg.value);

        requestId = _requestCount++;

        _requests[requestId] = TriggerRequest({
            requester: msg.sender,
            executeAfter: executeAfter,
            status: TriggerStatus.PENDING,
            feePaid: uint128(msg.value)
        });

        _requesterRequestIds[msg.sender].push(requestId);

        emit FlapTriggerRequested(requestId, msg.sender, executeAfter, msg.value);
    }

    /// @inheritdoc IFlapTriggerService
    function trigger(uint256 requestId) external override {
        if (!hasRole(TRIGGER_ROLE, msg.sender)) revert OnlyTriggerRole();
        _executeTrigger(requestId);
    }

    /// @inheritdoc IFlapTriggerService
    function triggerMultiple(uint256[] calldata requestIds) external override {
        if (!hasRole(TRIGGER_ROLE, msg.sender)) revert OnlyTriggerRole();

        uint256 len = requestIds.length;
        for (uint256 i = 0; i < len; ++i) {
            uint256 id = requestIds[i];

            // Skip invalid request IDs silently.
            if (id >= _requestCount) continue;

            TriggerRequest storage req = _requests[id];

            // Skip non-PENDING requests silently.
            if (req.status != TriggerStatus.PENDING) continue;

            // Skip requests that are not yet due silently.
            uint64 exAfter = req.executeAfter;
            if (exAfter != 0 && block.timestamp < exAfter) continue;

            // Execute — all checks already passed above so _executeTrigger will not revert.
            _executeTrigger(id);
        }
    }

    /// @inheritdoc IFlapTriggerService
    function retryTrigger(uint256 requestId) external override {
        if (requestId >= _requestCount) revert InvalidRequestId(requestId);

        TriggerRequest storage req = _requests[requestId];

        if (req.status != TriggerStatus.FAILED) {
            revert InvalidRequestStatus(requestId, req.status);
        }

        address requester = req.requester;

        // Mark as executed BEFORE the callback to prevent reentrancy exploits.
        req.status = TriggerStatus.EXECUTED;

        // Forward all available gas — the caller is responsible for providing enough.
        (bool success, bytes memory data) =
            requester.call{gas: gasleft()}(abi.encodeWithSelector(ITriggerReceiver.trigger.selector, requestId));

        if (success) {
            // Transfer the stored fee to the fee receiver on success.
            uint128 fee = req.feePaid;
            if (fee > 0) {
                (bool ok,) = feeReceiver.call{value: fee}("");
                if (ok) req.feePaid = 0;
            }
            _emitEtherscanTracker(requestId);
        } else {
            // Retry failed — revert so the caller can adjust gas and try again.
            revert RetryFailed(requestId, data);
        }

        emit FlapTriggerExecuted(requestId, success, data);
    }

    // ═══════════════════════════════════════════════════════════════════════════════════════════════════
    // ADMIN METHODS
    // ═══════════════════════════════════════════════════════════════════════════════════════════════════

    /// @notice Update the required gas fee.
    /// @param newFee  New fee in wei.  Must be > 0.
    function setRequiredGasFee(uint256 newFee) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newFee == 0) revert InvalidGasFee();
        uint256 oldFee = _requiredGasFee;
        _requiredGasFee = newFee;
        emit FlapTriggerGasFeeUpdated(oldFee, newFee);
    }

    /// @notice Update the maximum callback gas limit.
    /// @param newLimit  New limit.  Must be > 0.
    function setMaxCallbackGas(uint256 newLimit) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newLimit == 0) revert InvalidGasLimit();
        uint256 oldLimit = _maxCallbackGas;
        _maxCallbackGas = newLimit;
        emit FlapTriggerMaxCallbackGasUpdated(oldLimit, newLimit);
    }

    // ═══════════════════════════════════════════════════════════════════════════════════════════════════
    // VIEW METHODS
    // ═══════════════════════════════════════════════════════════════════════════════════════════════════

    /// @inheritdoc IFlapTriggerService
    function getFee() external view override returns (uint256) {
        return _requiredGasFee;
    }

    /// @inheritdoc IFlapTriggerService
    function getMaxCallbackGas() external view override returns (uint256) {
        return _maxCallbackGas;
    }

    /// @inheritdoc IFlapTriggerService
    function getRequest(uint256 requestId) external view override returns (TriggerRequest memory) {
        if (requestId >= _requestCount) revert InvalidRequestId(requestId);
        return _requests[requestId];
    }

    /// @inheritdoc IFlapTriggerService
    function getRequestCount() external view override returns (uint256) {
        return _requestCount;
    }

    /// @inheritdoc IFlapTriggerService
    function isRequestReady(uint256 requestId) external view override returns (bool) {
        if (requestId >= _requestCount) return false;
        TriggerRequest storage req = _requests[requestId];
        if (req.status != TriggerStatus.PENDING) return false;
        return req.executeAfter == 0 || block.timestamp >= req.executeAfter;
    }

    /// @inheritdoc IFlapTriggerService
    function getRequests(uint256[] calldata requestIds) external view override returns (TriggerRequest[] memory requests) {
        requests = new TriggerRequest[](requestIds.length);
        for (uint256 i = 0; i < requestIds.length; ++i) {
            uint256 id = requestIds[i];
            if (id < _requestCount) {
                requests[i] = _requests[id];
            }
        }
    }

    /// @inheritdoc IFlapTriggerService
    function getRequestsPaginated(uint256 offset, uint256 limit)
        external
        view
        override
        returns (TriggerRequest[] memory requests, uint256 total)
    {
        total = _requestCount;
        if (offset >= total) return (new TriggerRequest[](0), total);

        uint256 available = total - offset;
        uint256 resultLength = limit > available ? available : limit;

        requests = new TriggerRequest[](resultLength);
        for (uint256 i = 0; i < resultLength; ++i) {
            requests[i] = _requests[total - 1 - offset - i];
        }
    }

    /// @inheritdoc IFlapTriggerService
    function getRequestsByRequesterPaginated(address requester, uint256 offset, uint256 limit)
        external
        view
        override
        returns (TriggerRequest[] memory requests, uint256 total)
    {
        uint256[] storage ids = _requesterRequestIds[requester];
        total = ids.length;
        if (offset >= total) return (new TriggerRequest[](0), total);

        uint256 available = total - offset;
        uint256 resultLength = limit > available ? available : limit;

        requests = new TriggerRequest[](resultLength);
        for (uint256 i = 0; i < resultLength; ++i) {
            requests[i] = _requests[ids[total - 1 - offset - i]];
        }
    }

    // ═══════════════════════════════════════════════════════════════════════════════════════════════════
    // INTERNAL
    // ═══════════════════════════════════════════════════════════════════════════════════════════════════

    /// @dev Core execution logic. Validates the request, marks it executed (or failed), and
    ///      invokes the requester callback forwarding up to _maxCallbackGas.
    ///      Assumes TRIGGER_ROLE has already been verified by the public caller.
    function _executeTrigger(uint256 requestId) internal {
        if (requestId >= _requestCount) revert InvalidRequestId(requestId);

        TriggerRequest storage req = _requests[requestId];

        if (req.status != TriggerStatus.PENDING) {
            revert InvalidRequestStatus(requestId, req.status);
        }

        uint64 exAfter = req.executeAfter;
        if (exAfter != 0 && block.timestamp < exAfter) {
            revert TooEarly(requestId, exAfter, block.timestamp);
        }

        address requester = req.requester;

        // Mark as executed BEFORE the callback to prevent reentrancy exploits.
        req.status = TriggerStatus.EXECUTED;

        (bool success, bytes memory data) =
            requester.call{gas: _maxCallbackGas}(abi.encodeWithSelector(ITriggerReceiver.trigger.selector, requestId));

        if (success) {
            // Transfer the stored fee to the fee receiver on success.
            uint128 fee = req.feePaid;
            if (fee > 0) {
                (bool ok,) = feeReceiver.call{value: fee}("");
                if (ok) req.feePaid = 0;
            }
            _emitEtherscanTracker(requestId);
        } else {
            req.status = TriggerStatus.FAILED;
            _emitEtherscanTracker(requestId);
        }

        emit FlapTriggerExecuted(requestId, success, data);
    }

    /// @notice Emits a raw log whose single topic is `bytes32(requestId)`, enabling fast Etherscan
    ///         advanced-filter lookups by request ID.
    /// @dev Etherscan's advanced filter supports the URL:
    ///        `https://bscscan.com/advanced-filter?eladd=<contract>&eltpc=<topic0>`
    ///      By using `requestId` as topic0, any transaction that processed a given request can be
    ///      found instantly without scanning all events — just plug the request ID into the filter URL.
    ///      We emit via `log1` (one topic, zero data bytes) rather than a named Solidity event to
    ///      keep the ABI clean while still producing an indexable log entry.
    /// @param requestId The request ID to use as topic0 for the raw log.
    function _emitEtherscanTracker(uint256 requestId) internal {
        bytes32 topic = bytes32(requestId);
        assembly {
            log1(0, 0, topic)
        }
    }
}

