// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

/**
 * @title StakingErrors
 * @dev Library of custom error types used across the staking contracts
 */
library StakingErrors {
	// General errors
	error InvalidAddress();
	error ZeroAmount();
	error ZeroBalance();
	error TransferFailed();
	error ArrayLengthMismatch();
	error EmptyArray();

	// Fee-related errors
	error InsufficientFee();
	error FeeTooLow();
	error FeeTooHigh();
	error InvalidFeeType();
	error CustomFeeNotSet();
	error CustomFeeAlreadySet();

	// Authorization errors
	error OnlyFeeCollector();
	error OnlyTrustedDistributor();
	error OnlyOwner();

	// Staking-specific errors
	error StakingNotStarted();
	error StakingEnded();
	error StakingZeroTokens();
	error StakingAmountExceedsUpperBound();
	error StakingAmountBelowLowerBound();
	error ExitingTierLowerBound();

	// Withdraw-specific errors
	error WithdrawingZeroTokens();
	error WithdrawingMoreThanStaked();
	error NoTokensUnbonding();
	error UnbondingPeriodNotCompleted();
	error RemainingAmountBelowLowerBound();

	// Administrative errors
	error ConditionArraySizeLimitReached();
	error InsufficientRewardsAvailable();
	error InsufficientExcessTokens();
	error TimeUnitUnchanged();
	error RewardRatioUnchanged();
	error TimeUnitCannotBeZero();
	error DenominatorCannotBeZero();
	error NewCapBelowCurrentStake();
	error NewMaxConditionsBelowCurrentCount();
	error ExceedsMaxConditionsLimit();

	// Rewards-specific errors
	error NoRewards();
	error InsufficientRewards();
	error RewardCapExceeded();

	// Merkle proof errors
	error InvalidMerkleProof();
	error InvalidMerkleRoot();

	error PoolMaxCapExceeded();
	error WhitelistEnabled();

	// Validation errors
	error InvalidTierBounds();
	error InvalidStakingDates();
	error StartDateInPast();
	error InvalidFeePercentage();
	error InvalidFeeFunctionsMask();
	error InvalidTimeUnit();
	error InvalidRewardRatio();
	error InvalidUnbondingPeriod();
	error InvalidApyPercentage();

	error InvalidMaxStakeDuration();
}
