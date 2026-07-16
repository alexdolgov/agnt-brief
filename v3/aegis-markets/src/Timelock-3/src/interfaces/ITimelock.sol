// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.10;

/// @title Compound-Style Timelock Interface
/// @notice Governance timelock for delayed administrative execution.
/// @dev Mirrors the external/public surface of `Timelock`.
interface ITimelock {
    // -------- Events --------

    /// @notice Emitted when admin role is accepted.
    /// @param newAdmin New active admin.
    event NewAdmin(address indexed newAdmin);

    /// @notice Emitted when pending admin is updated.
    /// @param newPendingAdmin New pending admin.
    event NewPendingAdmin(address indexed newPendingAdmin);

    /// @notice Emitted when execution delay is updated.
    /// @param newDelay New delay in seconds.
    event NewDelay(uint256 indexed newDelay);

    /// @notice Emitted when a queued transaction is canceled.
    event CancelTransaction(
        bytes32 indexed txHash, address indexed target, uint256 value, string signature, bytes data, uint256 eta
    );

    /// @notice Emitted when a queued transaction is executed.
    event ExecuteTransaction(
        bytes32 indexed txHash, address indexed target, uint256 value, string signature, bytes data, uint256 eta
    );

    /// @notice Emitted when a transaction is queued.
    event QueueTransaction(
        bytes32 indexed txHash, address indexed target, uint256 value, string signature, bytes data, uint256 eta
    );

    // -------- Read: Constants / State --------

    /// @notice Grace period after ETA during which execution remains valid.
    function GRACE_PERIOD() external view returns (uint256);

    /// @notice Minimum allowed delay.
    function MINIMUM_DELAY() external view returns (uint256);

    /// @notice Maximum allowed delay.
    function MAXIMUM_DELAY() external view returns (uint256);

    /// @notice Current admin address.
    function admin() external view returns (address);

    /// @notice Pending admin address.
    function pendingAdmin() external view returns (address);

    /// @notice Current timelock delay in seconds.
    function delay() external view returns (uint256);

    /// @notice Whether a tx hash is currently queued.
    /// @param txHash Transaction hash.
    /// @return queued True if transaction is queued.
    function queuedTransactions(bytes32 txHash) external view returns (bool);

    // -------- Write: Admin --------

    /// @notice Update the timelock delay.
    /// @dev Must be called by the timelock contract itself.
    /// @param delay_ New delay in seconds.
    function setDelay(uint256 delay_) external;

    /// @notice Accept admin role from pending admin.
    function acceptAdmin() external;

    /// @notice Set a new pending admin.
    /// @dev Must be called by the timelock contract itself.
    /// @param pendingAdmin_ New pending admin.
    function setPendingAdmin(address pendingAdmin_) external;

    // -------- Write: Queue / Execute --------

    /// @notice Queue a transaction for delayed execution.
    /// @param target Target contract.
    /// @param value ETH value forwarded on execution.
    /// @param signature Function signature (empty to use raw calldata).
    /// @param data Encoded function arguments.
    /// @param eta Earliest execution timestamp.
    /// @return txHash Deterministic queued transaction hash.
    function queueTransaction(address target, uint256 value, string memory signature, bytes memory data, uint256 eta)
        external
        returns (bytes32 txHash);

    /// @notice Cancel a queued transaction.
    /// @param target Target contract.
    /// @param value ETH value forwarded on execution.
    /// @param signature Function signature (empty to use raw calldata).
    /// @param data Encoded function arguments.
    /// @param eta Queued ETA timestamp.
    function cancelTransaction(address target, uint256 value, string memory signature, bytes memory data, uint256 eta)
        external;

    /// @notice Execute a queued transaction once delay has elapsed.
    /// @param target Target contract.
    /// @param value ETH value forwarded on execution.
    /// @param signature Function signature (empty to use raw calldata).
    /// @param data Encoded function arguments.
    /// @param eta Queued ETA timestamp.
    /// @return returnData Raw returndata from target call.
    function executeTransaction(address target, uint256 value, string memory signature, bytes memory data, uint256 eta)
        external
        payable
        returns (bytes memory returnData);
}
