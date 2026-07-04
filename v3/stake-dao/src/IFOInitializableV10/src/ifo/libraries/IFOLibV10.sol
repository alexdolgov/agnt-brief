// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

library IFOLibV10 {
    error EndTimeTooFar();
    error StartTimeMustInferiorToEndTime();
    error StartTimeMustGreaterThanCurrentBlockTime();
    error AlreadyInitialized();
    error AddressesLengthNotCorrect();
    error StartAndEndTimestampsLengthNotCorrect();
    error ShouldNotLargerThanTheNumberOfPools();
    error PoolNotSet();
    error TooEarly();
    error TooLate();
    error AmountMustExceedZero();
    error DidNotParticipate();
    error AlreadyHarvested();
    error IFOHasStarted();
    error IFOHasEnded();
    error FlatTaxRateMustBeLessThan1e12();
    error FlatTaxRateMustBe0WhenHasTaxIsFalse();
    error VestingPercentageShouldRangeIn0And100();
    error VestingDurationMustExceeds0();
    error VestingSlicePerSecondsMustBeExceeds1();
    error VestingSlicePerSecondsMustBeInteriorDuration();
    error InvalidVestingConfig();
    error VestingNotExist();

    function InitializePreCheck(
        bool isInitialized,
        uint256 addresses_length,
        uint256 startAndEndTimestamps_length,
        uint8 maxPoolId
    ) internal pure {
        if (isInitialized) {
            revert AlreadyInitialized();
        }

        if (addresses_length != 4) {
            revert AddressesLengthNotCorrect();
        }

        if (startAndEndTimestamps_length != 2) {
            revert StartAndEndTimestampsLengthNotCorrect();
        }

        if (maxPoolId >= 2) {
            revert ShouldNotLargerThanTheNumberOfPools();
        }
    }

    function DepositPoolPreCheck(
        uint256 amount,
        uint256 offeringAmountPool,
        uint256 raisingAmountPool,
        uint256 startTimestamp,
        uint256 endTimestamp
    ) internal view {
        // Checks that pool was set
        if (offeringAmountPool == 0 || raisingAmountPool == 0) {
            revert PoolNotSet();
        }

        // Checks whether the timestamp is not too early
        if (block.timestamp < startTimestamp) {
            revert TooEarly();
        }

        // Checks whether the timestamp is not too late
        if (block.timestamp > endTimestamp) {
            revert TooLate();
        }

        // Checks that the amount deposited is not inferior to 0
        if (amount == 0) {
            revert AmountMustExceedZero();
        }
    }

    function HarvestPoolPreCheck(uint256 endTimestamp, uint256 amountPool, bool claimedPool) internal view {
        // Checks whether pool id is valid
        if (block.timestamp <= endTimestamp) {
            revert TooEarly();
        }

        // Checks whether the user has participated
        if (amountPool == 0) {
            revert DidNotParticipate();
        }

        // Checks whether the user has already harvested
        if (claimedPool) {
            revert AlreadyHarvested();
        }
    }

    function SetPoolPreCheck(
        uint256 startTimestamp,
        bool hasTax,
        uint256 flatTaxRate,
        uint256 vestingPercentage,
        uint256 vestingDuration,
        uint256 vestingSlicePeriodSeconds
    ) internal view {
        if (block.timestamp >= startTimestamp) {
            revert IFOHasStarted();
        }

        if (flatTaxRate >= 1e12) {
            revert FlatTaxRateMustBeLessThan1e12();
        }

        if (vestingPercentage > 0) {
            if (vestingPercentage > 100) {
                revert VestingPercentageShouldRangeIn0And100();
            }

            if (vestingDuration == 0) {
                revert VestingDurationMustExceeds0();
            }

            if (vestingSlicePeriodSeconds < 1) {
                revert VestingSlicePerSecondsMustBeExceeds1();
            }

            if (vestingSlicePeriodSeconds > vestingDuration) {
                revert VestingSlicePerSecondsMustBeInteriorDuration();
            }
        } else {
            if (vestingDuration != 0 || vestingSlicePeriodSeconds != 0) {
                revert InvalidVestingConfig();
            }
        }

        if (!hasTax) {
            if (flatTaxRate != 0) {
                revert FlatTaxRateMustBe0WhenHasTaxIsFalse();
            }
        }
    }

    function UpdateStartAndEndTimestampsPreCheck(
        uint256 MAX_BUFFER_SECONDS,
        uint256 startAndEndTimestamps_length,
        uint256 currentStartTimestamp,
        uint256 startTimestamp,
        uint256 endTimestamp
    ) internal view {
        if (startAndEndTimestamps_length != 2) {
            revert StartAndEndTimestampsLengthNotCorrect();
        }
        if (endTimestamp >= (block.timestamp + MAX_BUFFER_SECONDS)) revert EndTimeTooFar();
        if (block.timestamp >= currentStartTimestamp) revert IFOHasStarted();
        if (startTimestamp >= endTimestamp) revert StartTimeMustInferiorToEndTime();
        if (block.timestamp >= startTimestamp) revert StartTimeMustGreaterThanCurrentBlockTime();
    }

    function IsVestingInitializedPreCheck(bool isVestingInitialized) internal pure {
        if (!isVestingInitialized) {
            revert VestingNotExist();
        }
    }
}
