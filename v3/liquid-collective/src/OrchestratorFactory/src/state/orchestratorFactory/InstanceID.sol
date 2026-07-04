//SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { LibUnstructuredStorage } from "../../libraries/LibUnstructuredStorage.sol";

/// @title Orchestrator Instance ID Storage
/// @notice Utility to manage the InstanceID in storage
library InstanceID {
    /// @notice Storage slot of the InstanceID
    bytes32 internal constant INSTANCE_ID_SLOT = bytes32(uint256(keccak256("orchestratorFactory.state.instanceID")) - 1);

    /// @notice Retrieve the InstanceID
    /// @return The InstanceID
    function get() internal view returns (uint256) {
        return LibUnstructuredStorage.getStorageUint256(INSTANCE_ID_SLOT);
    }

    /// @notice Sets the InstanceID
    /// @param newInstanceId New InstanceID
    function set(uint256 newInstanceId) internal {
        LibUnstructuredStorage.setStorageUint256(INSTANCE_ID_SLOT, newInstanceId);
    }
}
