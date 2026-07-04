//SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { LibUnstructuredStorage } from "src/libraries/LibUnstructuredStorage.sol";

/// @title Config Manager Address Storage
/// @notice Utility to manage the Config Manager Address in storage
library ConfigManagerAddress {
    /// @notice Error thrown when the Config Manager Address is set to the zero address
    error InvalidZeroAddress();

    /// @notice Storage slot of the Config Manager Address
    bytes32 internal constant CONFIG_MANAGER_ADDRESS_SLOT =
        bytes32(uint256(keccak256("orchestrator.state.configManagerAddress")) - 1);

    /// @notice Retrieve the Config Manager Address
    /// @return The Config Manager Address
    function get() internal view returns (address) {
        return LibUnstructuredStorage.getStorageAddress(CONFIG_MANAGER_ADDRESS_SLOT);
    }

    /// @notice Sets the Config Manager Address
    /// @param _newValue New Config Manager Address
    function set(address _newValue) internal {
        if (_newValue == address(0)) {
            revert InvalidZeroAddress();
        }
        LibUnstructuredStorage.setStorageAddress(CONFIG_MANAGER_ADDRESS_SLOT, _newValue);
    }
}
