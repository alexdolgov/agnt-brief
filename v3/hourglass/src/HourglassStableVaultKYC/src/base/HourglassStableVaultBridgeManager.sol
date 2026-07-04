// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

/**
 * @title HourglassStableVaultBridgeManager
 * @author Hourglass
 * @notice Abstract contract that manages bridge for Stable pre-deposit vaults
 */
abstract contract HourglassStableVaultBridgeManager {
    // ---------------------------------------------
    // Events
    // ---------------------------------------------

    /**
     * @notice Emitted when the bridge contract address is updated
     * @param bridge Address of the new bridge contract
     */
    event BridgeContractSet(address indexed bridge);

    // ---------------------------------------------
    // Errors
    // ---------------------------------------------

    /**
     * @notice Thrown when a non-bridge caller attempts to execute a bridge-only function
     */
    error CallerIsNotBridge();

    /**
     * @notice Thrown when attempting to set a bridge address to the zero address
     */
    error InvalidBridgeAddress();

    /**
     * @notice Thrown when bridge-only function is called but bridge is not set
     */
    error BridgeNotSet();

    // ---------------------------------------------
    // State Variables
    // ---------------------------------------------

    /**
     * @notice The address of the bridge contract
     */
    address internal _bridgeContract;

    // ---------------------------------------------
    // Modifiers
    // ---------------------------------------------

    /**
     * @notice Restricts function access to only the bridge contract
     */
    modifier onlyCallerIsBridge() {
        if (_bridgeContract == address(0)) {
            revert BridgeNotSet();
        }
        if (msg.sender != _bridgeContract) {
            revert CallerIsNotBridge();
        }
        _;
    }

    // ---------------------------------------------
    // Internal Functions - Setters
    // ---------------------------------------------

    /**
     * @notice Sets the bridge contract address
     * @param newBridge Address of the bridge contract to authorize
     */
    function _setBridgeContract(address newBridge) internal {
        if (newBridge == address(0)) revert InvalidBridgeAddress();
        _bridgeContract = newBridge;
        emit BridgeContractSet(newBridge);
    }

    // ---------------------------------------------
    // External Functions - Views
    // ---------------------------------------------

    /**
     * @notice Returns the current bridge contract address
     * @return The address of the bridge contract
     */
    function bridgeContract() external view returns (address) {
        return _bridgeContract;
    }
}
