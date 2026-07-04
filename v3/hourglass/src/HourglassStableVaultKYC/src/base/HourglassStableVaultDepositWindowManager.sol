// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

/**
 * @title HourglassStableVaultDepositWindowManager
 * @author Hourglass
 * @notice Abstract contract that manages time-windowed deposit periods for pre-deposit vaults
 */
abstract contract HourglassStableVaultDepositWindowManager {
    // ---------------------------------------------
    // Events
    // ---------------------------------------------

    /**
     * @notice Emitted when a deposit window is configured or updated
     * @param start Unix timestamp when deposits open (inclusive)
     * @param end Unix timestamp when deposits close (inclusive)
     */
    event DepositWindowSet(uint64 indexed start, uint64 indexed end);

    // ---------------------------------------------
    // Errors
    // ---------------------------------------------

    /**
     * @notice Thrown when operation requires window to be open, but it is not
     */
    error DepositWindowNotOpen();

    /**
     * @notice Thrown when operation requires window to have ended, but it is not
     */
    error DepositWindowNotEnded();

    /**
     * @notice Thrown when attempting to modify a deposit window that cannot be changed
     */
    error WindowCannotBeSet();

    /**
     * @notice Thrown when window parameters are invalid
     */
    error WindowInvalid();

    // ---------------------------------------------
    // State Variables
    // ---------------------------------------------

    /**
     * @notice Unix timestamp when deposits open (inclusive)
     */
    uint64 internal _depositStart;

    /**
     * @notice Unix timestamp when deposits close (inclusive)
     */
    uint64 internal _depositEnd;

    // ---------------------------------------------
    // Constructor
    // ---------------------------------------------

    /**
     * @notice Initializes the deposit window parameters
     * @param __depositStart Unix timestamp when deposits should open
     * @param __depositEnd Unix timestamp when deposits should close
     */
    constructor(uint64 __depositStart, uint64 __depositEnd) {
        _modifyPendingDepositWindow(__depositStart, __depositEnd);
    }

    // ---------------------------------------------
    // Modifiers
    // ---------------------------------------------

    /**
     * @notice Ensures that the deposit window is currently open
     */
    modifier onlyWhenDepositWindowOpen() {
        if (!_depositWindowOpen()) {
            revert DepositWindowNotOpen();
        }
        _;
    }

    /**
     * @notice Ensures that the deposit window has ended
     */
    modifier onlyAfterDepositWindow() {
        if (!_depositWindowEnded()) {
            revert DepositWindowNotEnded();
        }
        _;
    }

    // ---------------------------------------------
    // Internal Functions - Setters
    // ---------------------------------------------

    /**
     * @notice Modifies the start and end timestamp of a pending deposit window
     * @param newStart Unix timestamp when deposits should open
     * @param newEnd Unix timestamp when deposits should close
     * @dev This function can only be called:
     *      1. When no window has been set
     *      2. When a window is set but hasn't started yet
     *
     *      Validation ensures:
     *      - Neither timestamp is zero
     *      - Start time is before end time
     *      - Start time is in the future
     */
    function _modifyPendingDepositWindow(uint64 newStart, uint64 newEnd) internal {
        bool isInitialSetup = (_depositStart == 0 && _depositEnd == 0);
        bool isBeforeStart = (_depositStart != 0 && block.timestamp < _depositStart);
        if (!isInitialSetup && !isBeforeStart) {
            revert WindowCannotBeSet();
        }

        // Window cannot have zero bounds
        if (newStart == 0 || newEnd == 0) revert WindowInvalid();
        // Window start must precede end
        if (newStart >= newEnd) revert WindowInvalid();
        // Window must be in the future
        if (newStart <= block.timestamp) revert WindowInvalid();

        _depositStart = newStart;
        _depositEnd = newEnd;

        emit DepositWindowSet(newStart, newEnd);
    }

    /**
     * @notice Modifies the end timestamp of a deposit window that has already started
     * @param newEnd New unix timestamp when deposits should close (must be in future)
     * @dev Requirements:
     *      - Window must have already started
     *        - Note: Window can be currently open or already ended
     *      - New end must be in future
     *      - New end time must be after current start time
     */
    function _modifyStartedDepositWindow(uint64 newEnd) internal {
        // Window must be started
        if (_depositStart > block.timestamp) revert WindowCannotBeSet();
        // New end must be in the future
        if (newEnd <= block.timestamp) revert WindowInvalid();

        _depositEnd = newEnd;

        emit DepositWindowSet(_depositStart, newEnd);
    }

    // ---------------------------------------------
    // Internal Functions - Views
    // ---------------------------------------------

    /**
     * @notice Checks if the deposit window is currently open
     * @return True if current time is within the deposit window, false otherwise
     * @dev Window is considered open when:
     *      - Current time >= start time
     *      - Current time <= end time
     */
    function _depositWindowOpen() internal view returns (bool) {
        return block.timestamp >= _depositStart && block.timestamp <= _depositEnd;
    }

    /**
     * @notice Checks if the deposit window has ended
     * @return True if current time is after the deposit window end time
     * @dev Window is considered ended when current time > end time
     */
    function _depositWindowEnded() internal view returns (bool) {
        return block.timestamp > _depositEnd;
    }

    // ---------------------------------------------
    // External Functions - Views
    // ---------------------------------------------

    /**
     * @notice Returns the deposit window start timestamp
     * @return Unix timestamp when deposits open (inclusive)
     */
    function depositStart() external view returns (uint64) {
        return _depositStart;
    }

    /**
     * @notice Returns the deposit window end timestamp
     * @return Unix timestamp when deposits close (inclusive)
     */
    function depositEnd() external view returns (uint64) {
        return _depositEnd;
    }

    /**
     * @notice Returns the complete deposit window parameters
     * @return start Unix timestamp when deposits open (inclusive)
     * @return end Unix timestamp when deposits close (inclusive)
     */
    function depositWindow() external view returns (uint64 start, uint64 end) {
        return (_depositStart, _depositEnd);
    }
}
