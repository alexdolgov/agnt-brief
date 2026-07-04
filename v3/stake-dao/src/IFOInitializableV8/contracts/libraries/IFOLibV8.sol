// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "../interfaces/IIFOV8.sol";
import "../interfaces/IPancakeProfile.sol";
import "../ICakeV3.sol";

library IFOLibV8 {

    error PoolIdNotValid();
    error EndTimeTooFar();
    error StartTimeMustInferiorToEndTime();
    error StartTimeMustGreaterThanCurrentBlockTime();
    error AlreadyInitialized();
    error NotFactory();
    error AddressesLengthNotCorrect();
    error StartAndEndTimestampsLengthNotCorrect();
    error ShouldNotLargerThanTheNumberOfPools();
    error MustHaveAnActiveProfile();
    error PoolNotSet();
    error TooEarly();
    error TooLate();
    error AmountMustExceedZero();
    error DidNotParticipate();
    error AlreadyHarvested();
    error NotEnoughLPTokens();
    error NotEnoughOfferingTokens();
    error IFOHasStarted();
    error IFOHasEnded();
    error FlatTaxRateMustBeLessThan1e12();
    error FlatTaxRateMustBe0WhenHasTaxIsFalse();
    error VestingPercentageShouldRangeIn0And100();
    error VestingDurationMustExceeds0();
    error VestingSlicePerSecondsMustBeExceeds1();
    error VestingSlicePerSecondsMustBeInteriorDuration();
    error VestingNotExist();

    function InitializePreCheck(
        bool isInitialized,
        address IFO_FACTORY,
        uint256 addresses_length,
        uint256 startAndEndTimestamps_length,
        uint8 maxPoolId
    ) internal view {
        if (isInitialized) {
            revert AlreadyInitialized();
        }

        if (msg.sender != IFO_FACTORY) {
            revert NotFactory();
        }

        if (addresses_length != 6) {
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
        address pancakeProfileAddress,
        IIFOV8.SaleType saleType,
        uint256 offeringAmountPool,
        uint256 raisingAmountPool,
        uint256 startTimestamp,
        uint256 endTimestamp
    ) internal view {
        if (pancakeProfileAddress != address(0) && saleType != IIFOV8.SaleType.BASIC) {
            // Checks whether the user has an active profile when provided profile SC and not basic sale
            if (!IPancakeProfile(pancakeProfileAddress).getUserStatus(msg.sender)) {
                revert MustHaveAnActiveProfile();
            }
        }

        // Checks that pool was set
        if (offeringAmountPool == 0 || raisingAmountPool == 0) {
            revert PoolNotSet();
        }

        // Checks whether the timestamp is not too early
        if (block.timestamp <= startTimestamp) {
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

    function HarvestPoolPreCheck(
        uint256 endTimestamp,
        uint256 amountPool,
        bool claimedPool
    ) internal view {
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

    function FinalWithdrawPreCheck(
        uint256 lpAmount,
        uint256 lpTokenBalanceOf,
        uint256 offerAmount,
        uint256 offeringTokenBalanceOf
    ) internal view {
        if (lpAmount > lpTokenBalanceOf) {
            revert NotEnoughLPTokens();
        }

        if (offerAmount > offeringTokenBalanceOf) {
            revert NotEnoughOfferingTokens();
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

        if (!hasTax) {
            if (flatTaxRate != 0) {
                revert FlatTaxRateMustBe0WhenHasTaxIsFalse();
            }
        }
    }

    function UpdatePointParametersPreCheck(
        uint256 endTimestamp
    ) internal view {
        if (block.timestamp >= endTimestamp) {
            revert IFOHasEnded();
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

    function IsVestingInitializedPreCheck(bool isVestingInitialized) internal view {
        if (!isVestingInitialized) {
            revert VestingNotExist();
        }
    }
}