//SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { LibUnstructuredStorage } from "src/libraries/LibUnstructuredStorage.sol";

/// @title Transfer To List Enabled Storage
/// @notice Utility to manage the Transfer To List Enabled state in storage
library TransferToListEnabled {
    /// @notice Storage slot of the Transfer To List Enabled
    bytes32 internal constant TRANSFER_TO_LIST_ENABLED_SLOT =
        bytes32(uint256(keccak256("orchestrator.state.transferToListEnabled")) - 1);

    /// @notice Retrieve the Transfer To List Enabled status
    /// @return The Transfer To List Enabled status
    function get() internal view returns (bool) {
        return LibUnstructuredStorage.getStorageBool(TRANSFER_TO_LIST_ENABLED_SLOT);
    }

    /// @notice Sets the Transfer To List Enabled status
    /// @param _newValue New Transfer To List Enabled status
    function set(bool _newValue) internal {
        LibUnstructuredStorage.setStorageBool(TRANSFER_TO_LIST_ENABLED_SLOT, _newValue);
    }
}
