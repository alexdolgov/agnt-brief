// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { LibUnstructuredStorage } from "src/libraries/LibUnstructuredStorage.sol";
/// @title TVS Implementation Address Storage
/// @notice Utility to manage the Implementation in storage

library TVSImplementationAddress {
    /// @notice Error thrown when the Implementation Address is set to the zero address
    error InvalidZeroAddress();

    /// @notice Storage slot of the Implementation
    bytes32 internal constant TVS_IMPLEMENTATION_ADDRESS_STORAGE_SLOT =
        bytes32(uint256(keccak256("orchestratorFactory.state.tvsImplementationAddress")) - 1);

    /// @notice Retrieve the Implementation from storage
    /// @return The Implementation
    function get() internal view returns (address) {
        return LibUnstructuredStorage.getStorageAddress(TVS_IMPLEMENTATION_ADDRESS_STORAGE_SLOT);
    }

    /// @notice Set the Implementation value in storage
    /// @param _newImplementation The new value to set in storage
    function set(address _newImplementation) internal {
        if (_newImplementation == address(0)) {
            revert InvalidZeroAddress();
        }
        LibUnstructuredStorage.setStorageAddress(TVS_IMPLEMENTATION_ADDRESS_STORAGE_SLOT, _newImplementation);
    }
}
