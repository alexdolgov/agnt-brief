// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { ITimelocked } from "../interfaces/ITimelocked.sol";
import { Events } from "../Events.sol";
import { Errors } from "../Errors.sol";

/// @notice Provides timelock functionality based on function selectors. Any function decorated with the `timelocked()`
/// modifier must first be queued via `_queueTimelockedAction()`; the delay imposed before the action can be executed is
/// equal to `timelockDelay[functionSelector]`, except in the special case of calling `decreaseTimelockDelay()`, in
/// which case the function selector of the function that is having its delay reduced is used instead.
/// @dev Timelocked actions do not expire, and can be executed in any order as long as their delay has elapsed.
/// @dev Uniqueness of timelocked actions is identified by their calldata, meaning that multiple calls to the same
/// function can be queued simultaneously, but two identical calls cannot be queued simultaneously.
/// @dev Prior to being executed, a timelocked action can be cancelled via `_cancelTimelockedAction()`.
/// @dev Timelocked actions can be cancelled even after their delay has elapsed. The only requirement for cancellation
/// is that an action has not yet been executed.
abstract contract Timelocked is ITimelocked {
    /// @dev Selector for decreaseTimelockDelay(bytes4,uint256), hardcoded so this contract
    // doesn't need an abstract function declaration (which would force all inheritors to implement it)
    bytes4 internal constant DECREASE_TIMELOCK_DELAY_SELECTOR =
        bytes4(keccak256("decreaseTimelockDelay(bytes4,uint256)"));

    struct TimelockedStorage {
        mapping(bytes4 => uint256) timelockDelay;
        mapping(bytes => uint256) actionExecutableAt;
    }

    TimelockedStorage private timelockedStorage;

    /// @dev modifier applied to timelocked actions to ensure that they are queued ahead of time
    modifier timelocked() {
        _executeTimelockedAction(msg.data);
        _;
    }

    /// @dev Queues an `action` to be executed after the timelock delay.
    /// @dev This function is *not* access-controlled. Access controls should be implemented in any external-facing
    /// function which invokes this function.
    function _queueTimelockedAction(
        bytes calldata action
    ) internal {
        // slither-disable-next-line incorrect-equality
        require(timelockedStorage.actionExecutableAt[action] == 0, Errors.ActionAlreadyQueued());
        // forge-lint: disable-next-line(unsafe-typecast)
        bytes4 functionSelector = bytes4(action);
        // if calling `decreaseTimelockDelay`, use the delay of the function selector that will have its timelock
        // decreased
        uint256 existingDelay = (functionSelector == DECREASE_TIMELOCK_DELAY_SELECTOR)
            ? timelockedStorage.timelockDelay[bytes4(action[4:8])]
            : timelockedStorage.timelockDelay[functionSelector];
        uint256 executableAt = block.timestamp + existingDelay;
        emit Events.ActionQueued(functionSelector, action, executableAt);
        timelockedStorage.actionExecutableAt[action] = executableAt;
    }

    /// @dev Executes an `action` that was previously queued via `_queueTimelockedAction()`.
    /// @dev The timelock delay for the `action` *MUST* have already elapsed.
    /// @dev This function is *not* access-controlled. If access control is desired on timelock execution, then access
    /// controls should be implemented in any external-facing function which invokes this function.
    function _executeTimelockedAction(
        bytes calldata action
    ) internal {
        uint256 executableAt = timelockedStorage.actionExecutableAt[action];
        require(executableAt != 0, Errors.ActionNotQueued());
        require(executableAt <= block.timestamp, Errors.ActionNotExecutable());
        // forge-lint: disable-next-line(unsafe-typecast)
        emit Events.ActionExecuted(bytes4(action), action);
        timelockedStorage.actionExecutableAt[action] = 0;
    }

    /// @dev Cancels an `action` that was previously queued via `_queueTimelockedAction()`.
    /// @dev An `action` can be canceled whether or not its timelock delay has elapsed.
    /// @dev This function is *not* access-controlled. Access controls should be implemented in any external-facing
    /// function which invokes this function.
    function _cancelTimelockedAction(
        bytes calldata action
    ) internal {
        require(timelockedStorage.actionExecutableAt[action] != 0, Errors.ActionNotQueued());
        // forge-lint: disable-next-line(unsafe-typecast)
        emit Events.ActionCancelled(bytes4(action), action);
        timelockedStorage.actionExecutableAt[action] = 0;
    }

    function _decreaseTimelockDelay(
        bytes4 functionSelector,
        uint256 newDelay
    ) internal {
        require(newDelay < timelockedStorage.timelockDelay[functionSelector], Errors.MustDecreaseDelay());
        emit Events.TimelockDelayModified(functionSelector, newDelay);
        timelockedStorage.timelockDelay[functionSelector] = newDelay;
    }

    function _increaseTimelockDelay(
        bytes4 functionSelector,
        uint256 newDelay
    ) internal {
        require(newDelay > timelockedStorage.timelockDelay[functionSelector], Errors.MustIncreaseDelay());
        emit Events.TimelockDelayModified(functionSelector, newDelay);
        timelockedStorage.timelockDelay[functionSelector] = newDelay;
    }

    /// @inheritdoc ITimelocked
    function timelockDelay(
        bytes4 functionSelector
    ) public view returns (uint256) {
        return timelockedStorage.timelockDelay[functionSelector];
    }

    /// @inheritdoc ITimelocked
    function actionExecutableAt(
        bytes calldata action
    ) public view returns (uint256) {
        return timelockedStorage.actionExecutableAt[action];
    }
}
