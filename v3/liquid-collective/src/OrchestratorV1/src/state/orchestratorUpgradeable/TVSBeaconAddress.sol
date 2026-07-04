//SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { LibUnstructuredStorage } from "src/libraries/LibUnstructuredStorage.sol";

/// @title TVS Beacon Address Storage
/// @author Alluvial Finance Inc.
/// @dev This beacon address is used for storing the upgradeable beacon address
/// @notice Utility to manage the Beacon Address in storage
library TVSBeaconAddress {
    /// @notice Error thrown when the TVS Beacon Address is set to the zero address
    error InvalidZeroAddress();

    /// @notice Storage slot of the Beacon Address
    bytes32 internal constant TVS_BEACON_ADDRESS_SLOT =
        bytes32(uint256(keccak256("orchestrator.state.tvsBeaconAddress")) - 1);

    /// @notice Retrieve the TVS Beacon Address
    /// @return The TVS Beacon Address
    function get() internal view returns (address) {
        return LibUnstructuredStorage.getStorageAddress(TVS_BEACON_ADDRESS_SLOT);
    }

    /// @notice Sets the TVS Beacon Address
    /// @param _newValue New TVS Beacon Address
    function set(address _newValue) internal {
        if (_newValue == address(0)) {
            revert InvalidZeroAddress();
        }
        LibUnstructuredStorage.setStorageAddress(TVS_BEACON_ADDRESS_SLOT, _newValue);
    }
}
