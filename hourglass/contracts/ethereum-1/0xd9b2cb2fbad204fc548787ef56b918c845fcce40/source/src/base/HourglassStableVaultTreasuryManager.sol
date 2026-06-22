// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

/**
 * @title HourglassStableVaultTreasuryManager
 * @author Hourglass
 * @notice Abstract contract that manages treasury authorization for Stable pre-deposit vaults
 */
abstract contract HourglassStableVaultTreasuryManager {
    // ---------------------------------------------
    // Events
    // ---------------------------------------------

    /**
     * @notice Emitted when the treasury address is set or updated
     * @param treasury Address of the newly authorized treasury
     */
    event TreasuryAddressSet(address indexed treasury);

    // ---------------------------------------------
    // Errors
    // ---------------------------------------------

    /**
     * @notice Thrown when attempting to set a treasury address to the zero address
     */
    error InvalidTreasuryAddress();

    /**
     * @notice Thrown when an operation requires treasury to be set but it is not
     */
    error TreasuryNotSet();

    // ---------------------------------------------
    // State Variables
    // ---------------------------------------------

    /**
     * @notice The address of the authorized treasury
     */
    address internal _treasuryAddress;

    // ---------------------------------------------
    // Constructor
    // ---------------------------------------------

    /**
     * @notice Initializes the treasury address
     * @param __treasuryAddress Initial treasury address
     */
    constructor(address __treasuryAddress) {
        _setTreasuryAddress(__treasuryAddress);
    }

    // ---------------------------------------------
    // Modifiers
    // ---------------------------------------------

    /**
     * @notice Ensures that the treasury address has been set
     */
    modifier onlyWhenTreasurySet() {
        if (_treasuryAddress == address(0)) {
            revert TreasuryNotSet();
        }
        _;
    }

    // ---------------------------------------------
    // Internal Functions - Setters
    // ---------------------------------------------

    /**
     * @notice Sets the authorized treasury address
     * @param newTreasury Address of the treasury to authorize
     * @dev This function validates that:
     *      - The new treasury address is not zero
     */
    function _setTreasuryAddress(address newTreasury) internal {
        if (newTreasury == address(0)) revert InvalidTreasuryAddress();
        _treasuryAddress = newTreasury;
        emit TreasuryAddressSet(newTreasury);
    }

    // ---------------------------------------------
    // External Functions - Views
    // ---------------------------------------------

    /**
     * @notice Returns the currently authorized treasury address
     * @return The address of the authorized treasury
     */
    function treasuryAddress() external view returns (address) {
        return _treasuryAddress;
    }
}
