//SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { LibUnstructuredStorage } from "src/libraries/LibUnstructuredStorage.sol";

/// @title Min Sweep Amount
/// @author Alluvial Finance
/// @notice This library manages the min sweep amount for for sweep operations
/// @dev The min sweep amount is used to decide when funds should be swept from the individual validator sets into
/// the global withdrawal credential.
library MinSweepAmount {
    /// @notice Slot for min sweep amount storage
    bytes32 internal constant MIN_SWEEP_AMOUNT_SLOT =
        bytes32(uint256(keccak256("configManager.state.minSweepAmount")) - 1);

    /// @notice Get the min sweep amount
    /// @return The min sweep amount denoted in ETH
    function get() internal view returns (uint256) {
        return LibUnstructuredStorage.getStorageUint256(MIN_SWEEP_AMOUNT_SLOT);
    }

    /// @notice Set the min sweep amount
    /// @param _newValue The new min sweep amount
    /// @dev Reverts if the min sweep amount is invalid
    /// @dev The min sweep amount must be a multiple of 32 ETH
    function set(uint256 _newValue) internal {
        LibUnstructuredStorage.setStorageUint256(MIN_SWEEP_AMOUNT_SLOT, _newValue);
    }
}
