// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { IConfigManager } from "src/interfaces/IConfigManager.sol";

/// @title Allocation Configuration Library
/// @notice This library manages the allocation configuration for node operators and bins
/// @dev The allocation configuration is used to decide how funds should be allocated among node operators and bins
library AllocationConfig {
    /// @notice Slot for bins storage
    bytes32 internal constant BINS_SLOT = bytes32(uint256(keccak256("configManager.state.bins")) - 1);

    /// @notice Slot for bin weightings storage
    bytes32 internal constant BIN_WEIGHTINGS_SLOT = bytes32(uint256(keccak256("configManager.state.binWeightings")) - 1);

    struct Slot {
        IConfigManager.StoredAllocationConfig value;
    }

    /// @notice Get the bin weightings for the SMS
    /// @return The bin weightings for the SMS
    function getBinWeightings() internal view returns (uint16[] storage) {
        bytes32 slot = BIN_WEIGHTINGS_SLOT;

        Slot storage r;

        // solhint-disable-next-line no-inline-assembly
        assembly {
            r.slot := slot
        }

        return r.value.binWeightings;
    }

    /// @notice Get the bins for the SMS
    /// @return The bins for the SMS
    function getBins() internal view returns (IConfigManager.Bin[] storage) {
        bytes32 slot = BINS_SLOT;

        Slot storage r;

        // solhint-disable-next-line no-inline-assembly
        assembly {
            r.slot := slot
        }
        return r.value.bins;
    }

    /// @notice Set the bin weightings for the SMS
    /// @param _binWeightings The new bin weightings
    function setBinWeightings(uint16[] memory _binWeightings) internal {
        bytes32 slot = BIN_WEIGHTINGS_SLOT;

        Slot storage r;

        // solhint-disable-next-line no-inline-assembly
        assembly {
            r.slot := slot
        }

        r.value.binWeightings = _binWeightings;
    }

    /// @notice Set the global node operator weightings for the SMS
    function setBins(IConfigManager.Bin[] memory _bins) internal {
        bytes32 slot = BINS_SLOT;

        Slot storage r;

        // solhint-disable-next-line no-inline-assembly
        assembly {
            r.slot := slot
        }

        uint256 existingLength = r.value.bins.length;
        uint256 newLength = _bins.length;

        // Adjust the length of the bins dynamic array if needed
        if (newLength < existingLength) {
            while (r.value.bins.length > newLength) {
                r.value.bins.pop();
            }
        } else if (newLength > existingLength) {
            // Extend the bins array
            for (uint256 i = existingLength; i < newLength; i++) {
                r.value.bins.push();
            }
        }

        // Update each bin
        for (uint256 i = 0; i < newLength; i++) {
            IConfigManager.Bin storage bin = r.value.bins[i];
            bin.validatorSetSize = _bins[i].validatorSetSize;

            // Adjust the length of the per bin NO weightings dynamic array
            uint256 nestedLength = _bins[i].nodeOperatorWeightings.length;
            uint256 existingNestedLength = bin.nodeOperatorWeightings.length;
            if (bin.nodeOperatorWeightings.length > nestedLength) {
                // Shrink the node operator weightings array
                for (uint256 j = nestedLength; j < existingNestedLength; j++) {
                    bin.nodeOperatorWeightings.pop();
                }
            } else if (existingNestedLength < nestedLength) {
                // Extend the node operator weightings array
                for (uint256 j = existingNestedLength; j < nestedLength; j++) {
                    bin.nodeOperatorWeightings.push();
                }
            }

            // Update node operator weightings
            for (uint256 j = 0; j < nestedLength; j++) {
                bin.nodeOperatorWeightings[j] = _bins[i].nodeOperatorWeightings[j];
            }
        }
    }
}
