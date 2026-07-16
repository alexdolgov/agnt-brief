// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Initializable} from "@openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {AccessControlUpgradeable} from "@openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IFlapAIProvider, FlapAIConsumerBase} from "./IFlapAIProvider.sol";

/// @title FlapAIProvider
/// @notice Concrete upgradeable implementation of the FlapAIProvider oracle service for on-chain AI reasoning.
/// @dev Deployed behind OpenZeppelin's `TransparentUpgradeableProxy` with a separate `ProxyAdmin` contract
///      holding upgrade authority. The implementation contains no `_authorizeUpgrade` logic — upgrades are
///      managed entirely by the `ProxyAdmin`.
///
///      Role-based access:
///        - `DEFAULT_ADMIN_ROLE`: configuration functions (`setMaxPromptLength`, `setCallbackGasLimit`,
///          `registerModel`, `replaceModel`, `withdrawStuckFee`). Granted to the deployer in `initialize()`.
///        - `FULFILLER_ROLE`: oracle operations (`fulfillReasoning`, `refundRequest`). Initially
///          also granted to the deployer so the deployer can act as the oracle backend during setup.
///
///      Request lifecycle:
///        NONE → PENDING (via `reason()`)  → FULFILLED    (oracle success + consumer callback success)
///                                         → UNDELIVERED  (oracle success + consumer callback reverted) → FULFILLED (via `retryUndelivered()`)
///                                         → REFUNDED     (oracle refunded, fee returned to consumer)
///      FULFILLED and REFUNDED are terminal states. UNDELIVERED can transition to FULFILLED via `retryUndelivered()`.
///
///      Fee economics: `reason()` does NOT refund excess `msg.value`. Overpayment is intentional protocol
///      revenue to avoid reentrancy via `receive()`/`fallback()`. The only BNB-return path is the
///      explicit `refundRequest()` flow, which has a configurable gas cap (default 1M) on the consumer
///      callback and follows checks-effects-interactions ordering.
contract FlapAIProvider is IFlapAIProvider, Initializable, AccessControlUpgradeable {
    // ----------------------------------------------------------------
    //  Roles
    // ----------------------------------------------------------------

    /// @notice Role for the oracle backend; can call `fulfillReasoning` and `refundRequest`.
    bytes32 public constant FULFILLER_ROLE = keccak256("FULFILLER_ROLE");

    // ----------------------------------------------------------------
    //  Immutables
    // ----------------------------------------------------------------

    /// @notice Address that receives the fee on successful request fulfillment.
    address public immutable feeReceiver;

    // ----------------------------------------------------------------
    //  State Variables
    // ----------------------------------------------------------------

    /// @dev Maximum allowed prompt length in bytes. Default: 6000.
    uint256 private _maxPromptLength;

    /// @dev Auto-incrementing request ID counter. Starts at 1; ID 0 is reserved as a sentinel.
    uint256 private _nextRequestId;

    /// @dev Maps modelId to its Model struct.
    mapping(uint256 => Model) private _models;

    /// @dev Tracks whether a modelId has ever been registered (to prevent ID reuse after disabling).
    mapping(uint256 => bool) private _modelRegistered;

    /// @dev Maps requestId to its Request struct.
    mapping(uint256 => Request) private _requests;

    /// @dev Maps requestId to the IPFS CID of the reasoning details (populated on fulfillment).
    mapping(uint256 => string) private _reasoningCids;

    /// @dev Gas limit forwarded to consumer callbacks. Default: 1_000_000.
    uint256 private _maxCallbackGas;

    /// @dev Per-consumer append-only list of request IDs, used for consumer-scoped pagination.
    mapping(address => uint256[]) private _consumerRequestIds;

    /// @dev Maps consumer address to their rate limit configuration
    mapping(address => RateLimit) private _rateLimits;

    /// @dev Storage gap for future upgrades. Reduced from 49 → 48 to account for _consumerRequestIds.
    uint256[47] private __gap;

    // ----------------------------------------------------------------
    //  Constructor & Initializer
    // ----------------------------------------------------------------

    /// @custom:oz-upgrades-unsafe-allow constructor
    /// @param feeReceiver_ Address that will receive fees on successful fulfillment (must be non-zero).
    constructor(address feeReceiver_) {
        if (feeReceiver_ == address(0)) revert FlapAIProviderZeroAddress();
        feeReceiver = feeReceiver_;
        _disableInitializers();
    }

    /// @notice Initializes the FlapAIProvider proxy.
    /// @dev Called once by the `TransparentUpgradeableProxy` constructor (encoded in the init data).
    ///      Sets up:
    ///        - `DEFAULT_ADMIN_ROLE` granted to `msg.sender` (the deployer / ProxyAdmin caller).
    ///        - `FULFILLER_ROLE` granted to `msg.sender` so the deployer can act as the oracle backend.
    ///        - `_maxPromptLength` defaulted to 6000 bytes.
    ///        - `_nextRequestId` started at 1 (request ID 0 is never issued).
    ///        - `_maxCallbackGas` defaulted to 1_000_000 gas.
    function initialize() external initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(FULFILLER_ROLE, msg.sender);
        _maxPromptLength = 6000;
        _nextRequestId = 1;
        _maxCallbackGas = 1_000_000;
    }

    // ----------------------------------------------------------------
    //  Receive
    // ----------------------------------------------------------------

    /// @notice Accepts plain BNB transfers (e.g., from `reason()` msg.value).
    receive() external payable {}

    // ----------------------------------------------------------------
    //  Consumer-Facing: read-only
    // ----------------------------------------------------------------

    /// @notice Returns the current maximum allowed prompt length in bytes.
    /// @return The current `_maxPromptLength` (default: 6000).
    function maxPromptLength() external view returns (uint256) {
        return _maxPromptLength;
    }

    /// @notice Returns the gas limit forwarded to consumer callbacks.
    /// @return The current `_maxCallbackGas` (default: 1_000_000).
    function callbackGasLimit() external view returns (uint256) {
        return _maxCallbackGas;
    }

    /// @notice Returns the full Model struct for a registered model.
    /// @dev Reverts with `FlapAIProviderModelNotRegistered` if the `modelId` was never registered.
    /// @param modelId ID of the model to query.
    /// @return model The full Model struct (name, price, enabled).
    function getModel(uint256 modelId) external view returns (Model memory model) {
        if (!_modelRegistered[modelId]) revert FlapAIProviderModelNotRegistered(modelId);
        return _models[modelId];
    }

    /// @notice Returns the total number of reasoning requests ever submitted.
    function getTotalRequests() external view returns (uint256 total) {
        return _nextRequestId - 1;
    }

    /// @notice Returns the total number of reasoning requests submitted by a specific consumer.
    function getTotalRequestsByConsumer(address consumer) external view returns (uint256 total) {
        return _consumerRequestIds[consumer].length;
    }

    /// @notice Returns a single RequestView for the given request ID.
    /// @dev Returns a zero-valued struct if the requestId was never created.
    function getRequest(uint256 requestId) external view returns (RequestView memory view_) {
        return _buildRequestView(requestId);
    }

    /// @notice Returns up to `limit` requests in newest-first order starting at `offset` from the end.
    function getRecentRequests(uint256 offset, uint256 limit) external view returns (RequestView[] memory views) {
        uint256 total = _nextRequestId - 1;
        if (offset >= total || limit == 0) return new RequestView[](0);

        // Newest request ID at this offset.
        uint256 startId = total - offset;
        uint256 count = startId < limit ? startId : limit;

        views = new RequestView[](count);
        for (uint256 i = 0; i < count; i++) {
            views[i] = _buildRequestView(startId - i);
        }
    }

    /// @notice Returns up to `limit` requests by a specific consumer in newest-first order.
    function getRequestsByConsumer(address consumer, uint256 offset, uint256 limit)
        external
        view
        returns (RequestView[] memory views)
    {
        uint256[] storage ids = _consumerRequestIds[consumer];
        uint256 total = ids.length;
        if (offset >= total || limit == 0) return new RequestView[](0);

        // Index of the most-recent entry at this offset (array is append-only, so newest is at the end).
        uint256 startIndex = total - 1 - offset;
        uint256 count = startIndex + 1 < limit ? startIndex + 1 : limit;

        views = new RequestView[](count);
        for (uint256 i = 0; i < count; i++) {
            views[i] = _buildRequestView(ids[startIndex - i]);
        }
    }

    /// @notice Returns the rate limit configuration for a consumer
    /// @param consumer The consumer address to query
    /// @return enabled Whether rate limiting is active
    /// @return lastRequestTime Timestamp of last request
    /// @return cooldown Minimum seconds between requests
    function getConsumerRateLimit(address consumer)
        external
        view
        returns (bool enabled, uint64 lastRequestTime, uint32 cooldown)
    {
        RateLimit storage rl = _rateLimits[consumer];
        return (rl.enabled, rl.lastRequestTime, rl.cooldown);
    }

    // ----------------------------------------------------------------
    //  Consumer-Facing: state-changing
    // ----------------------------------------------------------------

    /// @notice Submit an AI reasoning request to the oracle.
    /// @dev Validates model registration, model enabled status, numOfChoices > 0, prompt byte length,
    ///      and sufficient BNB fee. Does NOT refund excess msg.value — overpayment is protocol revenue.
    ///      Emits {FlapAIProviderRequestMade}.
    /// @param modelId      ID of the registered and enabled LLM model.
    /// @param prompt       Combined system + user prompt (must be <= maxPromptLength bytes).
    /// @param numOfChoices Number of choices the LLM may return (1..255).
    /// @return requestId   Unique ID for this request; use it to correlate with the fulfillment callback.
    function reason(uint256 modelId, string calldata prompt, uint8 numOfChoices)
        external
        payable
        returns (uint256 requestId)
    {
        // 1. modelId must fit in uint16 (max 65535). The Request struct stores modelId as uint16;
        //    a value above this would be silently truncated on storage, causing the stored request
        //    to disagree with the emitted event.
        if (modelId > type(uint16).max) revert FlapAIProviderModelIdTooLarge(modelId);

        // 2. Model must be registered.
        if (!_modelRegistered[modelId]) revert FlapAIProviderModelNotRegistered(modelId);

        // 3. Must have at least one choice.
        if (numOfChoices == 0) revert FlapAIProviderInvalidNumOfChoices(numOfChoices);

        // 4. Prompt length must not exceed the cap.
        uint256 promptLen = bytes(prompt).length;
        if (promptLen > _maxPromptLength) {
            revert FlapAIProviderPromptExceedsMaxLength(promptLen, _maxPromptLength);
        }

        // 5. BNB fee must meet the model price.
        Model storage model = _models[modelId];
        if (msg.value < model.price) revert FlapAIProviderInsufficientFee(msg.value, model.price);

        // 6. Check rate limit if enabled for this consumer
        RateLimit storage rateLimit = _rateLimits[msg.sender];
        if (rateLimit.enabled) {
            uint64 lastTime = rateLimit.lastRequestTime;
            if (lastTime > 0) {
                uint256 timeSinceLastRequest = block.timestamp - lastTime;
                if (timeSinceLastRequest < rateLimit.cooldown) {
                    // Safe: timeSinceLastRequest < rateLimit.cooldown (uint32), so it fits in uint32.
                    revert FlapAIProviderRateLimitExceeded(
                        msg.sender, rateLimit.cooldown - uint32(timeSinceLastRequest)
                    );
                }
            }
            rateLimit.lastRequestTime = uint64(block.timestamp);
        }

        // Store the request.
        requestId = _nextRequestId++;
        _requests[requestId] = Request({
            consumer: msg.sender,
            modelId: uint16(modelId),
            numOfChoices: numOfChoices,
            timestamp: uint64(block.timestamp),
            feePaid: uint128(msg.value),
            status: RequestStatus.PENDING,
            choice: 0,
            reserved: 0
        });

        _consumerRequestIds[msg.sender].push(requestId);

        emit FlapAIProviderRequestMade(requestId, msg.sender, modelId, prompt, numOfChoices, msg.value);
    }

    // ----------------------------------------------------------------
    //  Oracle Backend (FULFILLER_ROLE)
    // ----------------------------------------------------------------

    /// @notice Fulfill a pending AI reasoning request with the LLM's chosen action.
    /// @dev Only callable by addresses with `FULFILLER_ROLE`. Validates the request is PENDING and
    ///      that `choice < numOfChoices`. Stores the IPFS CID, updates status BEFORE calling the
    ///      consumer callback (checks-effects-interactions). Uses a low-level call (not try/catch)
    ///      combined with an extcodesize check so a buggy, malicious, or EOA consumer cannot
    ///      silently appear to succeed. On the real EVM a CALL to an EOA always returns
    ///      success=true with empty returndata, making try/catch unable to detect the failure;
    ///      the extcodesize guard closes this gap.
    ///        - Consumer has code AND call succeeds → FULFILLED, emits {FlapAIProviderRequestFulfilled}.
    ///        - Consumer has no code OR call reverts → UNDELIVERED, emits {FlapAIProviderRequestUndelivered}.
    ///      The callback is invoked with a configurable gas cap (see `callbackGasLimit`) to prevent a
    ///      consumer from consuming unbounded gas and to make fulfillment costs predictable for the oracle backend.
    /// @param requestId              The ID of the pending request.
    /// @param choice                 The LLM's chosen action (must be < request.numOfChoices).
    /// @param reasoningDetailsIpfsCid IPFS CID of the full reasoning proof document.
    function fulfillReasoning(uint256 requestId, uint8 choice, string calldata reasoningDetailsIpfsCid)
        external
        onlyRole(FULFILLER_ROLE)
    {
        Request storage request = _requests[requestId];

        // 1. Request must be pending.
        if (request.status != RequestStatus.PENDING) revert FlapAIProviderRequestNotPending(requestId);

        // 2. Choice must be within the valid range.
        if (choice >= request.numOfChoices) {
            revert FlapAIProviderChoiceOutOfRange(choice, request.numOfChoices);
        }

        address consumer = request.consumer;

        // 3. Store the IPFS CID unconditionally.
        _reasoningCids[requestId] = reasoningDetailsIpfsCid;

        // 4. Record the choice (written before the callback to ensure slot 1 is fully set).
        request.choice = choice;

        // Optimistically mark as fulfilled
        request.status = RequestStatus.FULFILLED;

        // 5. Attempt the consumer callback with the configured gas cap to prevent unbounded gas consumption.
        //    We use a low-level call instead of try/catch because on the real EVM a CALL to an EOA
        //    (extcodesize == 0) always returns success=true with empty returndata — try/catch cannot
        //    distinguish that from a real successful callback. The extcodesize guard + low-level call
        //    combination correctly treats no-code consumers as failures.
        uint256 callbackGas = _maxCallbackGas;
        uint256 feePaid = request.feePaid;

        bool callbackSucceeded;
        bytes memory revertReason;
        if (consumer.code.length > 0) {
            (callbackSucceeded, revertReason) = consumer.call{gas: callbackGas}(
                abi.encodeWithSelector(FlapAIConsumerBase.fulfillReasoning.selector, requestId, choice)
            );
        }
        // If consumer has no code, callbackSucceeded stays false → UNDELIVERED path.

        if (callbackSucceeded) {
            // Callback succeeded — forward the fee to the designated receiver.
            emit FlapAIProviderRequestFulfilled(requestId, consumer, choice, reasoningDetailsIpfsCid);
            (bool sent,) = feeReceiver.call{value: feePaid}("");
            if (!sent) revert FlapAIProviderWithdrawFailed();
        } else {
            // Callback failed (revert or EOA) — record as undelivered; fee stays in the contract.
            request.status = RequestStatus.UNDELIVERED;
            emit FlapAIProviderRequestUndelivered(requestId, consumer, choice, reasoningDetailsIpfsCid, revertReason);
        }

        _emitEtherscanTracker(requestId);
    }

    /// @notice Refund a pending request when the oracle cannot process it.
    /// @dev Only callable by addresses with `FULFILLER_ROLE`. Sets status to REFUNDED (before
    ///      external calls — checks-effects-interactions), then calls
    ///      `onFlapAIRequestRefunded{gas: callbackGas, value: feePaid}` on the consumer so the BNB
    ///      refund is delivered through the callback rather than a bare ETH transfer. This avoids
    ///      triggering the consumer's `receive()`/`fallback()`, which could otherwise cause an
    ///      unintended re-entry loop (e.g., a fallback that calls `reason()`).
    ///      If the callback fails (revert or OOG) the try/catch swallows the error and the refund
    ///      amount remains in the provider, and {FlapAIProviderRefundUndelivered} is emitted.
    ///      On success, emits {FlapAIProviderRequestRefunded}.
    /// @param requestId The ID of the pending request to refund.
    function refundRequest(uint256 requestId) external onlyRole(FULFILLER_ROLE) {
        Request storage request = _requests[requestId];

        // 1. Validate request is pending.
        if (request.status != RequestStatus.PENDING) revert FlapAIProviderRequestNotPending(requestId);

        address consumer = request.consumer;
        uint256 refundAmount = request.feePaid;

        // 2. Update state BEFORE external calls (checks-effects-interactions).
        request.status = RequestStatus.REFUNDED;

        // 3. Deliver BNB refund through the callback to avoid triggering receive()/fallback().
        //    We use a low-level call instead of try/catch for the same reason as fulfillReasoning:
        //    a CALL to an EOA always returns success=true, so try/catch cannot detect that case.
        //    The extcodesize guard ensures no-code consumers are correctly treated as failures.
        uint256 callbackGas = _maxCallbackGas;

        bool callbackSucceeded;
        bytes memory revertReason;
        if (consumer.code.length > 0) {
            (callbackSucceeded, revertReason) = consumer.call{gas: callbackGas, value: refundAmount}(
                abi.encodeWithSelector(FlapAIConsumerBase.onFlapAIRequestRefunded.selector, requestId)
            );
        }

        if (callbackSucceeded) {
            emit FlapAIProviderRequestRefunded(requestId, consumer, refundAmount);
        } else {
            // Callback failed (revert, OOG, or EOA) — BNB stays in the provider.
            emit FlapAIProviderRefundUndelivered(requestId, consumer, refundAmount, revertReason);
        }
    }

    /// @notice Manually retry the consumer callback for an UNDELIVERED request.
    /// @dev Callable by anyone. Re-invokes `fulfillReasoning(requestId, choice)` on the consumer
    ///      with no gas cap — unlike the initial fulfillment which applies `_maxCallbackGas`.
    ///      State is updated to FULFILLED BEFORE the external call to prevent reentrancy.
    ///      If the callback reverts, the entire transaction reverts (no try/catch), leaving the
    ///      request UNDELIVERED so the caller can attempt again later.
    ///      On success: fee is forwarded to `feeReceiver`, emits {FlapAIProviderRequestFulfilled}.
    /// @param requestId The ID of the UNDELIVERED request to retry.
    function retryUndelivered(uint256 requestId) external {
        Request storage request = _requests[requestId];

        // 1. Request must be undelivered.
        if (request.status != RequestStatus.UNDELIVERED) revert FlapAIProviderRequestNotUndelivered(requestId);

        address consumer = request.consumer;
        uint8 choice = request.choice;
        uint256 feePaid = request.feePaid;

        // 2. Guard: consumer must have code. On the real EVM a low-level CALL to an EOA returns
        //    success=true with empty returndata, which would silently mark the request FULFILLED
        //    without delivering the result. Revert early so the request stays UNDELIVERED.
        if (consumer.code.length == 0) revert FlapAIProviderConsumerHasNoCode(consumer);

        // 3. Update state BEFORE external call (prevents reentrancy).
        //    If the callback reverts, the full transaction reverts and this write is undone.
        request.status = RequestStatus.FULFILLED;

        // 4. Low-level call with no gas cap — caller is responsible for supplying sufficient gas.
        //    We use a low-level call so that the revert reason is bubbled up precisely.
        (bool success, bytes memory revertData) = consumer.call(
            abi.encodeWithSelector(FlapAIConsumerBase.fulfillReasoning.selector, requestId, choice)
        );
        if (!success) {
            // Bubble up the revert reason so the caller knows exactly why it failed,
            // and leave the request UNDELIVERED (state write above is rolled back by the revert).
            assembly {
                revert(add(revertData, 32), mload(revertData))
            }
        }

        // 5. Callback succeeded — forward the fee and emit.
        emit FlapAIProviderRequestFulfilled(requestId, consumer, choice, _reasoningCids[requestId]);
        (bool sent,) = feeReceiver.call{value: feePaid}("");
        if (!sent) revert FlapAIProviderWithdrawFailed();
        _emitEtherscanTracker(requestId);
    }

    // ----------------------------------------------------------------
    //  Admin (DEFAULT_ADMIN_ROLE)
    // ----------------------------------------------------------------

    /// @notice Update the maximum allowed prompt length in bytes.
    /// @dev Only callable by `DEFAULT_ADMIN_ROLE`. Emits {FlapAIProviderMaxPromptLengthUpdated}.
    /// @param newMaxPromptLength The new maximum prompt length in bytes.
    function setMaxPromptLength(uint256 newMaxPromptLength) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 old = _maxPromptLength;
        _maxPromptLength = newMaxPromptLength;
        emit FlapAIProviderMaxPromptLengthUpdated(old, newMaxPromptLength);
    }

    /// @notice Update the gas limit forwarded to consumer callbacks.
    /// @dev Only callable by `DEFAULT_ADMIN_ROLE`. Reverts with `FlapAIProviderCallbackGasLimitTooLow`
    ///      if `newCallbackGasLimit` is less than 1_000_000. Emits {FlapAIProviderCallbackGasLimitUpdated}.
    /// @param newCallbackGasLimit The new gas limit for consumer callbacks (must be >= 1_000_000).
    function setCallbackGasLimit(uint256 newCallbackGasLimit) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newCallbackGasLimit < 1_000_000) {
            revert FlapAIProviderCallbackGasLimitTooLow(newCallbackGasLimit, 1_000_000);
        }
        uint256 old = _maxCallbackGas;
        _maxCallbackGas = newCallbackGasLimit;
        emit FlapAIProviderCallbackGasLimitUpdated(old, newCallbackGasLimit);
    }

    /// @notice Register a new LLM model in the provider registry.
    /// @dev Only callable by `DEFAULT_ADMIN_ROLE`. A `modelId` that has already been registered
    ///      (even if disabled) can never be re-registered. Emits {FlapAIProviderModelRegistered}.
    /// @param modelId ID to assign to the new model (must be unused).
    /// @param name    Human-readable name (e.g., "gpt-4").
    /// @param price   Per-request fee in BNB (wei). May be 0 for free models.
    function registerModel(uint256 modelId, string calldata name, uint256 price)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        if (_modelRegistered[modelId]) revert FlapAIProviderModelAlreadyRegistered(modelId);

        _modelRegistered[modelId] = true;
        _models[modelId] = Model({name: name, price: price, enabled: true});

        emit FlapAIProviderModelRegistered(modelId, name, price);
    }

    /// @notice Replace an existing model's parameters in-place.
    /// @dev Only callable by `DEFAULT_ADMIN_ROLE`. Updates the model's name and price while preserving
    ///      its ID, so integrators who have hardcoded a model ID continue to work seamlessly when the
    ///      underlying LLM is upgraded (e.g., swapping gpt-4 for gpt-5 under the same ID).
    ///      Existing PENDING requests for this model are unaffected and can still be fulfilled or refunded.
    ///      Emits {FlapAIProviderModelReplaced}.
    /// @param modelId ID of the model to replace (must be registered).
    /// @param name    New human-readable name for the model (e.g., "gpt-5").
    /// @param price   New per-request fee in BNB (wei). May be 0 for free models.
    function replaceModel(uint256 modelId, string calldata name, uint256 price) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (!_modelRegistered[modelId]) revert FlapAIProviderModelNotRegistered(modelId);

        _models[modelId] = Model({name: name, price: price, enabled: true});

        emit FlapAIProviderModelReplaced(modelId, name, price);
    }

    /// @notice Withdraw stuck BNB (undelivered fees or refunds) to a specified recipient.
    /// @dev Only callable by `DEFAULT_ADMIN_ROLE`. Emits {FlapAIProviderFeesWithdrawn}.
    /// @param recipient Address to receive the withdrawn BNB (must be non-zero).
    /// @param amount    Amount of BNB to withdraw (in wei).
    function withdrawStuckFee(address payable recipient, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (recipient == address(0)) revert FlapAIProviderZeroAddress();

        (bool success,) = recipient.call{value: amount}("");
        if (!success) revert FlapAIProviderWithdrawFailed();

        emit FlapAIProviderFeesWithdrawn(recipient, amount);
    }

    /// @notice Configure rate limiting for a specific consumer
    /// @dev Only callable by `DEFAULT_ADMIN_ROLE`. Emits {FlapAIProviderRateLimitConfigured}.
    /// @param consumer The consumer address to configure
    /// @param enabled Whether to enable rate limiting
    /// @param cooldown Minimum seconds between requests (ignored if enabled=false)
    function setConsumerRateLimit(address consumer, bool enabled, uint32 cooldown)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        if (consumer == address(0)) revert FlapAIProviderZeroAddress();

        _rateLimits[consumer] = RateLimit({enabled: enabled, lastRequestTime: 0, cooldown: cooldown, reserved: 0});

        emit FlapAIProviderRateLimitConfigured(consumer, enabled, cooldown);
    }

    // ----------------------------------------------------------------
    //  Internal Helpers
    // ----------------------------------------------------------------

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

    /// @dev Builds a RequestView from storage for the given requestId.
    function _buildRequestView(uint256 requestId) internal view returns (RequestView memory view_) {
        Request storage r = _requests[requestId];
        view_.requestId = requestId;
        view_.consumer = r.consumer;
        view_.modelId = r.modelId;
        view_.numOfChoices = r.numOfChoices;
        view_.timestamp = r.timestamp;
        view_.feePaid = r.feePaid;
        view_.status = r.status;
        view_.choice = r.choice;
        view_.reasoningCid = _reasoningCids[requestId];
    }
}
