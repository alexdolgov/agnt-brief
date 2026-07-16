//SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { LibUnstructuredStorage } from "src/libraries/LibUnstructuredStorage.sol";

/// @title DepositContract Address Storage
/// @notice Utility to manage the DepositContract Address in storage
library DepositContractAddress {
    /// @notice Error thrown when the DepositContract Address is set to the zero address
    error InvalidZeroAddress();

    /// @notice Storage slot of the DepositContract Address
    bytes32 internal constant DEPOSIT_CONTRACT_ADDRESS_SLOT =
        bytes32(uint256(keccak256("orchestrator.state.depositContractAddress")) - 1);

    /// @notice Retrieve the DepositContract Address
    /// @return The DepositContract Address
    function get() internal view returns (address) {
        return LibUnstructuredStorage.getStorageAddress(DEPOSIT_CONTRACT_ADDRESS_SLOT);
    }

    /// @notice Sets the DepositContract Address
    /// @param _newValue New DepositContract Address
    function set(address _newValue) internal {
        if (_newValue == address(0)) {
            revert InvalidZeroAddress();
        }
        LibUnstructuredStorage.setStorageAddress(DEPOSIT_CONTRACT_ADDRESS_SLOT, _newValue);
    }
}
