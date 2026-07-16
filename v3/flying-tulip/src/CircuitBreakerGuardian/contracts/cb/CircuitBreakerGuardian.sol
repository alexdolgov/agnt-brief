// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {ICircuitBreakerV2} from "../interfaces/ICircuitBreakerV2.sol";
import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";

/// @title CircuitBreakerGuardian
/// @notice Delegates ICircuitBreakerV2 guardian actions (pause, pauseAsset, pauseQueued)
///         to whitelisted keepers
/// @dev Intended to be set as the `guardian` on one or more CircuitBreaker instances
contract CircuitBreakerGuardian is Ownable2Step, Pausable {
    // ============ State Variables ============

    /// @notice Addresses authorized to trigger guardian actions
    mapping(address => bool) public keepers;

    /// @notice Registered CircuitBreakerV2 instances this guardian may interact with
    mapping(address => bool) public circuitBreakers;

    // ============ Errors ============

    error NotKeeper();
    error NotRegisteredCircuitBreaker();
    error ZeroAddress();
    error NoChange();

    // ============ Events ============

    event KeeperUpdated(address indexed keeper, bool enabled);
    event CircuitBreakerUpdated(address indexed circuitBreaker, bool enabled);

    // ============ Modifiers ============

    modifier onlyKeeper() {
        if (!keepers[msg.sender]) revert NotKeeper();
        _;
    }

    // ============ Constructor ============

    /// @param initialOwner Address that will own the guardian contract
    constructor(address initialOwner) Ownable(initialOwner) {}

    // ============ Core Functions ============

    /// @notice Globally pause a registered CircuitBreakerV2
    /// @param circuitBreaker The CB instance to pause
    function pause(address circuitBreaker) external onlyKeeper whenNotPaused {
        if (!circuitBreakers[circuitBreaker]) revert NotRegisteredCircuitBreaker();
        ICircuitBreakerV2(circuitBreaker).pause();
    }

    /// @notice Pause a specific asset on a registered CircuitBreakerV2
    /// @param circuitBreaker The CB instance to call
    /// @param asset The asset to pause
    /// @dev This function reverts on V1 instanced of CircuitBreaker because it is not implemented
    function pauseAsset(address circuitBreaker, address asset) external onlyKeeper whenNotPaused {
        if (!circuitBreakers[circuitBreaker]) revert NotRegisteredCircuitBreaker();
        ICircuitBreakerV2(circuitBreaker).pauseAsset(asset);
    }

    /// @notice Pause a specific queued outflow on a registered CircuitBreakerV2
    /// @param circuitBreaker The CB instance to call
    /// @param queueId The queued outflow to pause
    /// @dev This function reverts on V1 instanced of CircuitBreaker because it is not implemented
    function pauseQueued(address circuitBreaker, uint256 queueId)
        external
        onlyKeeper
        whenNotPaused
    {
        if (!circuitBreakers[circuitBreaker]) revert NotRegisteredCircuitBreaker();
        ICircuitBreakerV2(circuitBreaker).pauseQueued(queueId);
    }

    /// @notice Pause multiple queued outflows on a registered CircuitBreakerV2
    /// @param circuitBreaker The CB instance to call
    /// @param queueIds The queued outflows to pause
    /// @dev This function reverts on V1 instanced of CircuitBreaker because it is not implemented
    function pauseQueuedBatch(
        address circuitBreaker,
        uint256[] calldata queueIds
    )
        external
        onlyKeeper
        whenNotPaused
    {
        if (!circuitBreakers[circuitBreaker]) revert NotRegisteredCircuitBreaker();
        ICircuitBreakerV2 cb = ICircuitBreakerV2(circuitBreaker);
        for (uint256 i; i < queueIds.length; ++i) {
            cb.pauseQueued(queueIds[i]);
        }
    }

    // ============ Admin Functions ============

    /// @notice Pause all keeper operations
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpause keeper operations
    function unpause() external onlyOwner {
        _unpause();
    }

    /// @notice Add or remove a keeper
    /// @param keeper The address to update
    /// @param enabled Whether the address should be a keeper
    function setKeeper(address keeper, bool enabled) external onlyOwner {
        if (keeper == address(0)) revert ZeroAddress();
        if (keepers[keeper] == enabled) revert NoChange();
        keepers[keeper] = enabled;
        emit KeeperUpdated(keeper, enabled);
    }

    /// @notice Register or unregister a CircuitBreakerV2 instance
    /// @param circuitBreaker The CB address to update
    /// @param enabled Whether the CB should be registered
    function setCircuitBreaker(address circuitBreaker, bool enabled) external onlyOwner {
        if (circuitBreaker == address(0)) revert ZeroAddress();
        if (circuitBreakers[circuitBreaker] == enabled) revert NoChange();
        circuitBreakers[circuitBreaker] = enabled;
        emit CircuitBreakerUpdated(circuitBreaker, enabled);
    }
}
