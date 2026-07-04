// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

import {ERC721Holder} from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import {ERC1155Holder} from "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

import {IAccessManager} from "../interfaces/IAccessManager.sol";
import {ErrorsLib} from "../libraries/ErrorsLib.sol";

/**
 * @title HaTimelockController
 * @notice Timelocked controller that delegates all role checks to the central AccessManager.
 * @dev Forked from OpenZeppelin's TimelockController v5.6.0.
 *      The only structural change is replacing the built-in AccessControl with
 *      calls to an external {IAccessManager}, so every role lives in the same
 *      registry as the rest of the Harmonix ecosystem.
 *
 *      Role setup (done on AccessManager, not here):
 *        - TIMELOCK_PROPOSER_ROLE  → Safe multisig
 *        - SENTINEL_ROLE          → EOA for instant cancellation
 *        - UPGRADE_EXECUTOR_ROLE  → specific executor addresses (Safe or EOA)
 */
contract HaTimelockController is ERC721Holder, ERC1155Holder {
    bytes32 public constant TIMELOCK_PROPOSER_ROLE = keccak256("TIMELOCK_PROPOSER_ROLE");
    bytes32 public constant UPGRADE_EXECUTOR_ROLE = keccak256("UPGRADE_EXECUTOR_ROLE");
    bytes32 public constant SENTINEL_ROLE = keccak256("SENTINEL_ROLE");
    uint256 internal constant DONE_TIMESTAMP = uint256(1);

    mapping(bytes32 id => uint256) private _timestamps;
    uint256 private _minDelay;

    /// @notice The central role registry used for all permission checks.
    IAccessManager public immutable accessManager;

    enum OperationState {
        Unset,
        Waiting,
        Ready,
        Done
    }

    error TimelockInvalidOperationLength(uint256 targets, uint256 payloads, uint256 values);
    error TimelockInsufficientDelay(uint256 delay, uint256 minDelay);
    error TimelockUnexpectedOperationState(bytes32 operationId, bytes32 expectedStates);
    error TimelockUnexecutedPredecessor(bytes32 predecessorId);
    error TimelockUnauthorizedCaller(address caller);

    event CallScheduled(
        bytes32 indexed id,
        uint256 indexed index,
        address target,
        uint256 value,
        bytes data,
        bytes32 predecessor,
        uint256 delay
    );
    event CallExecuted(bytes32 indexed id, uint256 indexed index, address target, uint256 value, bytes data);
    event CallSalt(bytes32 indexed id, bytes32 salt);
    event Cancelled(bytes32 indexed id);
    event MinDelayChange(uint256 oldDuration, uint256 newDuration);

    // ─── Modifiers ───────────────────────────────────────────────────

    modifier onlyRole(bytes32 role) {
        require(accessManager.hasRole(role, msg.sender), ErrorsLib.Unauthorized());
        _;
    }

    // ─── Constructor ─────────────────────────────────────────────────

    /**
     * @param minDelay Initial minimum delay (seconds) before a scheduled operation can execute.
     * @param _accessManager Address of the Harmonix AccessManager contract.
     */
    constructor(uint256 minDelay, IAccessManager _accessManager) {
        require(address(_accessManager) != address(0), ErrorsLib.ZeroAddress());
        accessManager = _accessManager;
        _minDelay = minDelay;
        emit MinDelayChange(0, minDelay);
    }

    receive() external payable virtual {}

    /// @inheritdoc ERC1155Holder
    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC1155Holder) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    // ─── View ────────────────────────────────────────────────────────

    function isOperation(bytes32 id) public view returns (bool) {
        return getOperationState(id) != OperationState.Unset;
    }

    function isOperationPending(bytes32 id) public view returns (bool) {
        OperationState state = getOperationState(id);
        return state == OperationState.Waiting || state == OperationState.Ready;
    }

    function isOperationReady(bytes32 id) public view returns (bool) {
        return getOperationState(id) == OperationState.Ready;
    }

    function isOperationDone(bytes32 id) public view returns (bool) {
        return getOperationState(id) == OperationState.Done;
    }

    function getTimestamp(bytes32 id) public view virtual returns (uint256) {
        return _timestamps[id];
    }

    function getOperationState(bytes32 id) public view virtual returns (OperationState) {
        uint256 timestamp = getTimestamp(id);
        if (timestamp == 0) {
            return OperationState.Unset;
        } else if (timestamp == DONE_TIMESTAMP) {
            return OperationState.Done;
        } else if (timestamp > block.timestamp) {
            return OperationState.Waiting;
        } else {
            return OperationState.Ready;
        }
    }

    function getMinDelay() public view virtual returns (uint256) {
        return _minDelay;
    }

    function hashOperation(address target, uint256 value, bytes calldata data, bytes32 predecessor, bytes32 salt)
        public
        pure
        virtual
        returns (bytes32)
    {
        return keccak256(abi.encode(target, value, data, predecessor, salt));
    }

    function hashOperationBatch(
        address[] calldata targets,
        uint256[] calldata values,
        bytes[] calldata payloads,
        bytes32 predecessor,
        bytes32 salt
    ) public pure virtual returns (bytes32) {
        return keccak256(abi.encode(targets, values, payloads, predecessor, salt));
    }

    // ─── Schedule ────────────────────────────────────────────────────

    function schedule(
        address target,
        uint256 value,
        bytes calldata data,
        bytes32 predecessor,
        bytes32 salt,
        uint256 delay
    ) public virtual onlyRole(TIMELOCK_PROPOSER_ROLE) {
        bytes32 id = hashOperation(target, value, data, predecessor, salt);
        _schedule(id, delay);
        emit CallScheduled(id, 0, target, value, data, predecessor, delay);
        if (salt != bytes32(0)) {
            emit CallSalt(id, salt);
        }
    }

    function scheduleBatch(
        address[] calldata targets,
        uint256[] calldata values,
        bytes[] calldata payloads,
        bytes32 predecessor,
        bytes32 salt,
        uint256 delay
    ) public virtual onlyRole(TIMELOCK_PROPOSER_ROLE) {
        if (targets.length != values.length || targets.length != payloads.length) {
            revert TimelockInvalidOperationLength(targets.length, payloads.length, values.length);
        }

        bytes32 id = hashOperationBatch(targets, values, payloads, predecessor, salt);
        _schedule(id, delay);
        for (uint256 i = 0; i < targets.length; ++i) {
            emit CallScheduled(id, i, targets[i], values[i], payloads[i], predecessor, delay);
        }
        if (salt != bytes32(0)) {
            emit CallSalt(id, salt);
        }
    }

    function _schedule(bytes32 id, uint256 delay) private {
        if (isOperation(id)) {
            revert TimelockUnexpectedOperationState(id, _encodeStateBitmap(OperationState.Unset));
        }
        uint256 minDelay = getMinDelay();
        if (delay < minDelay) {
            revert TimelockInsufficientDelay(delay, minDelay);
        }
        _timestamps[id] = block.timestamp + delay;
    }

    // ─── Cancel ──────────────────────────────────────────────────────

    function cancel(bytes32 id) public virtual onlyRole(SENTINEL_ROLE) {
        if (!isOperationPending(id)) {
            revert TimelockUnexpectedOperationState(
                id, _encodeStateBitmap(OperationState.Waiting) | _encodeStateBitmap(OperationState.Ready)
            );
        }
        delete _timestamps[id];
        emit Cancelled(id);
    }

    // ─── Execute ─────────────────────────────────────────────────────

    // slither-disable-next-line reentrancy-eth
    function execute(address target, uint256 value, bytes calldata payload, bytes32 predecessor, bytes32 salt)
        public
        payable
        virtual
        onlyRole(UPGRADE_EXECUTOR_ROLE)
    {
        bytes32 id = hashOperation(target, value, payload, predecessor, salt);
        _beforeCall(id, predecessor);
        _execute(target, value, payload);
        emit CallExecuted(id, 0, target, value, payload);
        _afterCall(id);
    }

    // slither-disable-next-line reentrancy-eth
    function executeBatch(
        address[] calldata targets,
        uint256[] calldata values,
        bytes[] calldata payloads,
        bytes32 predecessor,
        bytes32 salt
    ) public payable virtual onlyRole(UPGRADE_EXECUTOR_ROLE) {
        if (targets.length != values.length || targets.length != payloads.length) {
            revert TimelockInvalidOperationLength(targets.length, payloads.length, values.length);
        }

        bytes32 id = hashOperationBatch(targets, values, payloads, predecessor, salt);
        _beforeCall(id, predecessor);
        for (uint256 i = 0; i < targets.length; ++i) {
            address target = targets[i];
            uint256 value = values[i];
            bytes calldata payload = payloads[i];
            _execute(target, value, payload);
            emit CallExecuted(id, i, target, value, payload);
        }
        _afterCall(id);
    }

    function _execute(address target, uint256 value, bytes calldata data) internal virtual {
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        Address.verifyCallResult(success, returndata);
    }

    function _beforeCall(bytes32 id, bytes32 predecessor) private view {
        if (!isOperationReady(id)) {
            revert TimelockUnexpectedOperationState(id, _encodeStateBitmap(OperationState.Ready));
        }
        if (predecessor != bytes32(0) && !isOperationDone(predecessor)) {
            revert TimelockUnexecutedPredecessor(predecessor);
        }
    }

    function _afterCall(bytes32 id) private {
        if (!isOperationReady(id)) {
            revert TimelockUnexpectedOperationState(id, _encodeStateBitmap(OperationState.Ready));
        }
        _timestamps[id] = DONE_TIMESTAMP;
    }

    // ─── Self-administration ─────────────────────────────────────────

    function updateDelay(uint256 newDelay) public virtual {
        address sender = msg.sender;
        if (sender != address(this)) {
            revert TimelockUnauthorizedCaller(sender);
        }
        emit MinDelayChange(_minDelay, newDelay);
        _minDelay = newDelay;
    }

    // ─── Internal helpers ────────────────────────────────────────────

    function _encodeStateBitmap(OperationState operationState) internal pure returns (bytes32) {
        return bytes32(1 << uint8(operationState));
    }
}
