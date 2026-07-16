// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {ICircuitBreakerV2} from "../interfaces/ICircuitBreakerV2.sol";
import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";

/// @title CircuitBreakerOperator
/// @notice Delegates ICircuitBreakerV2.speedUp calls to whitelisted keepers
/// @dev Intended to be set as the `operator` on one or more CircuitBreakerV2 instances
contract CircuitBreakerOperator is Ownable2Step, Pausable {
    // ============ State Variables ============

    /// @notice Addresses authorized to call speedUp
    mapping(address => bool) public keepers;

    /// @notice Registered CircuitBreakerV2 instances this operator may interact with
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

    /// @param initialOwner Address that will own the operator contract
    constructor(address initialOwner) Ownable(initialOwner) {}

    // ============ Core Functions ============

    /// @notice Forward a speedUp call to a registered CircuitBreakerV2
    /// @param circuitBreaker The CB instance to call
    /// @param queueId The queued outflow to speed up
    /// @param newSettleDelay New delay from now (0 = instant)
    function speedUp(
        address circuitBreaker,
        uint256 queueId,
        uint256 newSettleDelay
    )
        external
        onlyKeeper
        whenNotPaused
    {
        if (!circuitBreakers[circuitBreaker]) revert NotRegisteredCircuitBreaker();
        ICircuitBreakerV2(circuitBreaker).speedUp(queueId, newSettleDelay);
    }

    /// @notice Speed up multiple queued outflows with the same delay
    /// @param circuitBreaker The CB instance to call
    /// @param queueIds The queued outflows to speed up
    /// @param newSettleDelay New delay from now (0 = instant)
    function speedUpBatch(
        address circuitBreaker,
        uint256[] calldata queueIds,
        uint256 newSettleDelay
    )
        external
        onlyKeeper
        whenNotPaused
    {
        if (!circuitBreakers[circuitBreaker]) revert NotRegisteredCircuitBreaker();
        ICircuitBreakerV2 cb = ICircuitBreakerV2(circuitBreaker);
        for (uint256 i; i < queueIds.length; ++i) {
            cb.speedUp(queueIds[i], newSettleDelay);
        }
    }

    /// @notice Speed up a queued outflow to instant and execute it atomically
    /// @param circuitBreaker The CB instance to call
    /// @param queueId The queued outflow to force-settle
    function forceSettle(address circuitBreaker, uint256 queueId)
        external
        onlyKeeper
        whenNotPaused
    {
        if (!circuitBreakers[circuitBreaker]) revert NotRegisteredCircuitBreaker();
        ICircuitBreakerV2 cb = ICircuitBreakerV2(circuitBreaker);
        cb.speedUp(queueId, 0);
        cb.executeQueued(queueId);
    }

    /// @notice Speed up multiple queued outflows to instant and execute them atomically
    /// @param circuitBreaker The CB instance to call
    /// @param queueIds The queued outflows to force-settle
    function forceSettleBatch(
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
            cb.speedUp(queueIds[i], 0);
        }
        cb.executeQueuedBatch(queueIds);
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
