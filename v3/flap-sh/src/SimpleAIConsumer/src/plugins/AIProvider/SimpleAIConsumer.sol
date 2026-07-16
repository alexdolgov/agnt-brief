// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {IFlapAIProvider, FlapAIConsumerBase} from "./IFlapAIProvider.sol";

/// @title SimpleAIConsumer
/// @notice Minimal FlapAIConsumerBase implementation that submits a prompt to the
///         FlapAIProvider oracle and stores the oracle's answer on-chain.
contract SimpleAIConsumer is FlapAIConsumerBase {
    // ----------------------------------------------------------------
    //  Events
    // ----------------------------------------------------------------

    /// @notice Emitted when the oracle delivers its choice.
    /// @param requestId The fulfilled request ID.
    /// @param choice    The choice index returned by the oracle.
    event ChoiceReceived(uint256 indexed requestId, uint8 choice);

    /// @notice Emitted when the oracle refunds a pending request.
    /// @param requestId The refunded request ID.
    event RequestRefunded(uint256 indexed requestId);

    // ----------------------------------------------------------------
    //  State
    // ----------------------------------------------------------------

    /// @notice The most recent request ID submitted by this consumer (0 if none).
    uint256 private _lastRequestId;

    /// @notice The last choice returned by the oracle.
    uint8 public lastChoice;

    /// @notice Maps request ID to whether it has been fulfilled.
    mapping(uint256 => bool) public fulfilled;

    /// @notice All request IDs submitted by this consumer, in submission order.
    uint256[] public requestIds;

    // ----------------------------------------------------------------
    //  FlapAIConsumerBase overrides
    // ----------------------------------------------------------------

    function lastRequestId() public view override returns (uint256) {
        return _lastRequestId;
    }

    /// @dev Called by the FlapAIProvider when the oracle delivers a choice.
    function _fulfillReasoning(uint256 requestId, uint8 choice) internal override {
        lastChoice = choice;
        fulfilled[requestId] = true;
        emit ChoiceReceived(requestId, choice);
    }

    /// @dev Called by the FlapAIProvider when the oracle refunds a request.
    function _onFlapAIRequestRefunded(uint256 requestId) internal override {
        emit RequestRefunded(requestId);
    }

    // ----------------------------------------------------------------
    //  Public request functions
    // ----------------------------------------------------------------

    /// @notice Submit a reasoning request to the FlapAIProvider oracle.
    /// @param modelId      The model ID to use (must be registered in FlapAIProvider).
    /// @param prompt       The prompt string to send to the oracle.
    /// @param numChoices   The number of choices the oracle should pick from.
    /// @return requestId   The newly created request ID.
    function requestReasoning(uint256 modelId, string calldata prompt, uint8 numChoices)
        external
        payable
        returns (uint256 requestId)
    {
        IFlapAIProvider provider = IFlapAIProvider(_getFlapAIProvider());
        requestId = provider.reason{value: msg.value}(modelId, prompt, numChoices);
        _lastRequestId = requestId;
        requestIds.push(requestId);
    }

    // ----------------------------------------------------------------
    //  Accept BNB refunds from FlapAIProvider
    // ----------------------------------------------------------------

    receive() external payable {}
}
