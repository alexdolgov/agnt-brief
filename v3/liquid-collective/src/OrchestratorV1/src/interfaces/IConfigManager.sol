// SPDX-License-Identifier: Proprietary

pragma solidity 0.8.29;

interface IConfigManager {
    /// @notice Structure used to store the per node operator allocation percentage.
    struct NodeOperatorWeighting {
        uint32 operatorIndex; // Node operator ID
        uint16 allocationPercent; // Percentage allocation to the node operator
    }

    /// @notice Structure used to define a bin with custom validator set size and node operator distribution
    struct Bin {
        uint32 validatorSetSize; // Validator set size
        NodeOperatorWeighting[] nodeOperatorWeightings; // Percentage allocation for each bin.
    }

    /// @notice Structure used to store the per bin allocation configuration
    struct StoredAllocationConfig {
        Bin[] bins; // Bins
        uint16[] binWeightings; // % allocated to each bin
    }

    /// @notice Emitted when a new minimum sweep amount is set
    /// @param amount The new minimum sweep amount
    event MinSweepAmountSet(uint256 amount);

    /// @notice Emitted when a new allocation configuration is set
    /// @param allocationConfig The new allocation configuration
    event AllocationConfigSet(StoredAllocationConfig allocationConfig);

    /// @notice Emitted when a new bin is added
    /// @param bin The new bin
    /// @param binWeightings The new bin weightings
    event BinAdded(Bin bin, uint16[] binWeightings);

    /// @notice Emitted when the bin weightings are updated
    /// @param binWeightings allocation percentages for each bin in the SMS
    event BinWeightingsUpdated(uint16[] binWeightings);

    /// @notice Emitted when the validator set sizes are updated
    /// @param validatorSetSizes The new validator set sizes
    event ValidatorSetSizesUpdated(uint32[] validatorSetSizes);

    /// @notice Emitted when the node operator weightings are updated
    /// @param bin The bin index
    /// @param nodeOperatorWeightings The new node operator weightings
    event NodeOperatorWeightingsUpdated(uint256 bin, uint16[] nodeOperatorWeightings);

    /// @notice Error when the user input configuration is not valid
    error InvalidInputConfig();

    /// @notice Error when the validator set size is zero
    error InvalidValidatorSetSize();

    /// @notice Error when the validator set size of a given bin is lowered
    /// @dev Can only be adjusted up
    error InvalidDecreaseInValidatorSetSize();

    /// @notice Error when the total allocation percentages of all bins do not add up to 100%
    error InvalidTotalAllocation();

    /// @notice Error when the node operators in a bin are not sorted by operator index
    error InvalidNodeOperatorOrder();

    /// @notice Error when the total allocation percentages of all node operators in a bin do not add up to 100%
    error InvalidPerBinAllocation();

    /// @notice Error when the total number of allocation bins is lowered
    /// @dev Can only be adjusted up
    error InvalidDecreaseInNumberOfBins();

    /// @notice Error when the total number of node operators per bin is lowered
    /// @dev Can only be adjusted up
    error InvalidDecreaseInNumberOfNodeOperators();

    /// @notice Error when trying to update values but the size of the object does not match the existing configuration
    error InvalidSizeUpdate();

    /// @notice Sets the minimum sweep amount for sweep operation of the SMS
    /// @param amount The new minimum sweep amount - a multiple of 32 ETH
    function setMinSweepAmount(uint256 amount) external;

    /// @notice Sets the target allocation configuration for the SMS
    /// @notice If config already exists, new config object must include replacements for existing config such that
    /// total allocation (across bins and within bins), number of bins, validator size per bin, and node operators per
    /// bin do not reduce
    /// @param allocationConfig The new target allocation configuration
    function setAllocationConfig(StoredAllocationConfig calldata allocationConfig) external;

    /// @notice Adds a new bin to an allocation configuration
    /// @param bin The new bin to add
    /// @param binWeightings The new bin weightings
    function addBin(Bin calldata bin, uint16[] calldata binWeightings) external;

    /// @notice Update the bin allocation percentages
    /// @param binWeightings The new bin weightings
    /// @dev This function can only be called after setting the allocation configuration
    /// @dev Does not allow changes to the total number of bins. Only their relative weightings
    /// @dev Does not allow any bin acllocation percentage to be less than 1%
    function updateBinWeightings(uint16[] calldata binWeightings) external;

    /// @notice Increment the validator set sizes in each bin by zero or more
    /// @param validatorSetSizes The new validator set sizes
    /// @dev This function can only be called after setting the allocation configuration
    /// @dev Does not allow changes to the total number of validator set sizes nor number of bins
    /// @dev Does only allow `validatorSetSize` per bin to increase, never decrease
    function updateValidatorSetSizes(uint32[] calldata validatorSetSizes) external;

    /// @notice Update the bin allocation percentages
    /// @param bin Index of the bin to update
    /// @param nodeOperatorWeightings The new node operator weightings
    /// @dev This function can only be called after setting the allocation configuration
    /// @dev Does not allow changes in the total number of node operators per bin
    /// @dev Does not allow any node operator allocation percentage to be less than 1%
    function updateNodeOperatorWeightings(uint256 bin, uint16[] calldata nodeOperatorWeightings) external;
}
