// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "../interfaces/IDepository.sol";
import "../interfaces/IRouter.sol";

/// @title TimedUnlocker
/// @notice Enforces a minimum time delay before allowing unlock to proceed
/// @dev This is a wrapper unlocker that adds a time-lock requirement before delegating
/// to another unlocker. Useful for creating refund windows or delayed execution scenarios.
///
/// Example: User wants a refund option that only activates after 24 hours
/// - Wrap a WithdrawUnlocker with TimedUnlocker(delay=24h)
/// - Before 24h: unlock() reverts with TooEarly
/// - After 24h: unlock() succeeds and delegates to WithdrawUnlocker
contract TimedUnlocker is IDepositUnlocker {
    /// @notice Condition parameters for time-delayed unlock
    /// @param delay Minimum seconds that must pass since deposit lock before unlock is allowed
    /// @param next The unlocker to delegate to after the time requirement is met
    struct Condition {
        uint delay;
        DepositoryTypes.UnlockCondition next;
    }

    /// @notice Thrown when unlock is attempted before the delay has elapsed
    /// @param currentTimestamp The current block timestamp
    /// @param lockTimestamp The timestamp when the deposit was locked
    /// @param delay The required delay in seconds
    error TooEarly(uint currentTimestamp, uint lockTimestamp, uint delay);

    /// @notice Emitted when the time check passes and delegation proceeds
    /// @param currentTimestamp The current block timestamp
    /// @param lockTimestamp The timestamp when the deposit was locked
    /// @param delay The delay that was required
    event Unlocked(uint currentTimestamp, uint lockTimestamp, uint delay);

    /// @inheritdoc IDepositUnlocker
    /// @dev Reverts if current time < lockTime + delay, otherwise delegates to next unlocker
    function unlock(
        IRouter router,
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.BlockchainState calldata lockState,
        bytes calldata condition,
        bytes calldata solution
    ) external {
        Condition memory c = decodeCondition(condition);
        require(block.timestamp >= lockState.timestamp + c.delay, TooEarly(block.timestamp, lockState.timestamp, c.delay));
        emit Unlocked(block.timestamp, lockState.timestamp, c.delay);
        c.next.unlocker.unlock(router, deposit, lockState, c.next.condition, solution);
    }

    // ============ Encoding Helpers ============

    /// @notice ABI-encode a Condition struct for use in lock()
    /// @param c The condition to encode
    /// @return The ABI-encoded condition bytes
    function encodeCondition(Condition calldata c) pure external returns (bytes memory) {
        return abi.encode(c);
    }

    /// @notice Decode condition bytes into a Condition struct
    /// @param condition The ABI-encoded condition
    /// @return The decoded Condition struct
    function decodeCondition(bytes calldata condition) pure public returns (Condition memory) {
        return abi.decode(condition, (Condition));
    }
}