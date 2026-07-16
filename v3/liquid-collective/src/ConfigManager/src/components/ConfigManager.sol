// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { IConfigManager } from "src/interfaces/IConfigManager.sol";

import { MinSweepAmount } from "./state/configManager/MinSweepAmount.sol";
import { AllocationConfig } from "./state/configManager/AllocationConfig.sol";

/// @title SMS Configuration Manager
/// @author Alluvial Finance Inc.
/// @notice This contract sets the target allocation configuration and sweep frequency of the SMS
/// @notice The configuration includes the global node operator weightings and the allocation bins
contract ConfigManager is IConfigManager {
    uint16 internal constant ONE_HUNDRED_PERCENT = 10_000;

    /// @inheritdoc IConfigManager
    function setMinSweepAmount(uint256 newMinSweepAmount) external {
        MinSweepAmount.set(newMinSweepAmount);
        emit MinSweepAmountSet(newMinSweepAmount);
    }

    /// @inheritdoc IConfigManager
    function setAllocationConfig(IConfigManager.StoredAllocationConfig calldata allocationConfig) external {
        uint256 binWeightingsLength = allocationConfig.binWeightings.length;
        uint256 binsLength = allocationConfig.bins.length;
        if (binsLength != binWeightingsLength || binWeightingsLength == 0) {
            revert InvalidInputConfig();
        }

        uint16[] storage currentBinWeightings = AllocationConfig.getBinWeightings();
        if (binWeightingsLength < currentBinWeightings.length) {
            revert InvalidDecreaseInNumberOfBins();
        }

        // sanity check the global node operator allocation
        _checkTotalBinAllocation(allocationConfig.binWeightings);

        // sanity check each individual bin allocation
        for (uint256 i = 0; i < binsLength; i++) {
            Bin memory bin = allocationConfig.bins[i];

            if (bin.validatorSetSize == 0) {
                revert InvalidValidatorSetSize();
            }

            IConfigManager.Bin[] storage storedBins = AllocationConfig.getBins();
            if (i < storedBins.length) {
                if (bin.validatorSetSize < storedBins[i].validatorSetSize) {
                    revert InvalidDecreaseInValidatorSetSize();
                }

                if (bin.nodeOperatorWeightings.length < storedBins[i].nodeOperatorWeightings.length) {
                    revert InvalidDecreaseInNumberOfNodeOperators();
                }
            }

            _checkPerBinAllocation(bin);
        }
        AllocationConfig.setBins(allocationConfig.bins);
        AllocationConfig.setBinWeightings(allocationConfig.binWeightings);
        emit AllocationConfigSet(allocationConfig);
    }

    /// @inheritdoc IConfigManager
    function addBin(Bin calldata bin, uint16[] calldata binWeightings) external {
        IConfigManager.Bin[] storage storedBins = AllocationConfig.getBins();
        if (storedBins.length + 1 != binWeightings.length) {
            revert InvalidSizeUpdate();
        }

        if (bin.validatorSetSize == 0) {
            revert InvalidValidatorSetSize();
        }
        _checkPerBinAllocation(bin);

        _checkTotalBinAllocation(binWeightings);

        storedBins.push(bin);
        AllocationConfig.setBinWeightings(binWeightings);
        emit BinAdded(bin, binWeightings);
    }

    /// @inheritdoc IConfigManager
    function updateBinWeightings(uint16[] calldata binWeightings) external {
        uint16[] storage storedBinWeightings = AllocationConfig.getBinWeightings();
        if (storedBinWeightings.length != binWeightings.length) {
            revert InvalidSizeUpdate();
        }
        _checkTotalBinAllocation(binWeightings);
        AllocationConfig.setBinWeightings(binWeightings);
        emit BinWeightingsUpdated(binWeightings);
    }

    /// @inheritdoc IConfigManager
    function updateValidatorSetSizes(uint32[] calldata validatorSetSizes) external {
        IConfigManager.Bin[] storage storedBins = AllocationConfig.getBins();
        if (storedBins.length != validatorSetSizes.length) {
            revert InvalidSizeUpdate();
        }
        for (uint256 i = 0; i < validatorSetSizes.length; i++) {
            if (validatorSetSizes[i] == 0) {
                revert InvalidValidatorSetSize();
            }
            if (storedBins[i].validatorSetSize > validatorSetSizes[i]) {
                revert InvalidDecreaseInValidatorSetSize();
            }
            storedBins[i].validatorSetSize = validatorSetSizes[i];
        }
        emit ValidatorSetSizesUpdated(validatorSetSizes);
    }

    /// @inheritdoc IConfigManager
    function updateNodeOperatorWeightings(uint256 bin, uint16[] calldata nodeOperatorWeightings) external {
        IConfigManager.Bin[] storage storedBins = AllocationConfig.getBins();
        uint256 nodeOperatorsLength = nodeOperatorWeightings.length;
        if (storedBins[bin].nodeOperatorWeightings.length != nodeOperatorsLength) {
            revert InvalidSizeUpdate();
        }

        uint256 _totalPerBinAllocation = 0;
        for (uint256 i = 0; i < nodeOperatorsLength; i++) {
            storedBins[bin].nodeOperatorWeightings[i].allocationPercent = nodeOperatorWeightings[i];
            _totalPerBinAllocation += nodeOperatorWeightings[i];
        }

        if (_totalPerBinAllocation != ONE_HUNDRED_PERCENT) {
            revert InvalidPerBinAllocation();
        }
        emit NodeOperatorWeightingsUpdated(bin, nodeOperatorWeightings);
    }

    /// @notice Check the total bin allocation
    /// @param _binWeightings The bin weightings to check
    /// @dev This function checks that the total bin allocation is valid in terms of adding up to 100%
    function _checkTotalBinAllocation(uint16[] calldata _binWeightings) private pure {
        uint256 _totalBinAllocation = 0;
        for (uint256 i = 0; i < _binWeightings.length; i++) {
            _totalBinAllocation += _binWeightings[i];
        }
        if (_totalBinAllocation != ONE_HUNDRED_PERCENT) {
            revert InvalidTotalAllocation();
        }
    }

    /// @notice Check the per bin allocation
    /// @param _bin The bin to check
    /// @dev This function checks that the per bin allocation is valid in terms of NO order and total allocation adding
    /// up to 100%
    function _checkPerBinAllocation(Bin memory _bin) private pure {
        uint256 _totalPerBinAllocation = 0;
        for (uint256 i = 0; i < _bin.nodeOperatorWeightings.length; i++) {
            _totalPerBinAllocation += _bin.nodeOperatorWeightings[i].allocationPercent;

            if (
                i > 0
                    && _bin.nodeOperatorWeightings[i].operatorIndex <= _bin.nodeOperatorWeightings[i - 1].operatorIndex
            ) {
                revert InvalidNodeOperatorOrder();
            }
        }
        if (_totalPerBinAllocation != ONE_HUNDRED_PERCENT) {
            revert InvalidPerBinAllocation();
        }
    }
}
