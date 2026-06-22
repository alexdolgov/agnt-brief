// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

/**
 * @title HourglassStableVaultDepositCapManager
 * @author Hourglass
 * @notice Abstract contract that manages deposit caps for Stable pre-deposit vaults
 * @dev It is the responsibility of child contracts to enforce the deposit cap during deposit operations.
 *      This contract merely provides a standard way of setting the cap and checking against it.
 */
abstract contract HourglassStableVaultDepositCapManager {
    // ---------------------------------------------
    // Events
    // ---------------------------------------------

    /**
     * @notice Emitted when the deposit cap is updated
     * @param cap New maximum total deposits allowed in the vault
     */
    event DepositCapSet(uint256 indexed cap);

    // ---------------------------------------------
    // Errors
    // ---------------------------------------------

    /**
     * @notice Thrown when attempting to set an invalid deposit cap
     */
    error InvalidDepositCap();

    /**
     * @notice Thrown when a deposit would exceed the configured deposit cap
     * @dev This error is not used within this contract and is intended for use in
     *      child contracts when validating deposits.
     */
    error DepositExceedsCap();

    // ---------------------------------------------
    // State Variables
    // ---------------------------------------------

    /**
     * @notice Maximum total deposits allowed in the vault
     */
    uint256 internal _depositCap;

    // ---------------------------------------------
    // Constructor
    // ---------------------------------------------

    /**
     * @notice Initializes the deposit cap
     * @param __depositCap Maximum total deposits allowed in the vault
     * @dev Assumes current deposits is 0 upon initialization
     */
    constructor(uint256 __depositCap) {
        _setDepositCap(0, __depositCap);
    }

    // ---------------------------------------------
    // Internal Functions - Setters
    // ---------------------------------------------

    /**
     * @notice Set the deposit cap for the vault
     * @param currentDeposits Current total deposits in the vault
     * @param newCap New maximum deposit limit to set
     * @dev This function validates that:
     *      - The new cap is not zero
     *      - The new cap is not below current deposits
     */
    function _setDepositCap(uint256 currentDeposits, uint256 newCap) internal {
        if (newCap == 0 || newCap < currentDeposits) revert InvalidDepositCap();
        _depositCap = newCap;
        emit DepositCapSet(newCap);
    }

    // ---------------------------------------------
    // Internal Functions - Views
    // ---------------------------------------------

    /**
     * @notice Calculates the maximum amount that can be deposited given the current cap
     * @param currentDeposits Current total deposits in the vault
     * @return Maximum additional deposits that can be accepted
     */
    function _getMaxDepositAgainstCap(uint256 currentDeposits) internal view returns (uint256) {
        return _depositCap > currentDeposits ? _depositCap - currentDeposits : 0;
    }

    // ---------------------------------------------
    // External Functions - Views
    // ---------------------------------------------

    /**
     * @notice Returns the current deposit cap
     * @return Current maximum total deposits allowed in the vault
     */
    function depositCap() external view returns (uint256) {
        return _depositCap;
    }
}
