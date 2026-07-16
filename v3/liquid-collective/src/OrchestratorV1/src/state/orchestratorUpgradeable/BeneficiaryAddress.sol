//SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { LibUnstructuredStorage } from "src/libraries/LibUnstructuredStorage.sol";

/// @title Beneficiary Address Storage
/// @notice Utility to manage the Beneficiary Address in storage
library BeneficiaryAddress {
    /// @notice Error thrown when the Beneficiary Address is set to the zero address
    error InvalidZeroAddress();

    /// @notice Storage slot of the Beneficiary Address
    bytes32 internal constant BENEFICIARY_ADDRESS_SLOT =
        bytes32(uint256(keccak256("orchestrator.state.beneficiaryAddress")) - 1);

    /// @notice Retrieve the Beneficiary Address
    /// @return The Beneficiary Address
    function get() internal view returns (address) {
        return LibUnstructuredStorage.getStorageAddress(BENEFICIARY_ADDRESS_SLOT);
    }

    /// @notice Sets the Beneficiary Address
    /// @param _newValue New Beneficiary Address
    function set(address _newValue) internal {
        if (_newValue == address(0)) {
            revert InvalidZeroAddress();
        }
        LibUnstructuredStorage.setStorageAddress(BENEFICIARY_ADDRESS_SLOT, _newValue);
    }
}
