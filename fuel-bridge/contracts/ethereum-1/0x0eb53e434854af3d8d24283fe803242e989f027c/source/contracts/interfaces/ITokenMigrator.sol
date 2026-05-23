// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

interface ITokenMigrator {
	/// @notice vesting period during migration should be below VESTING_PERIOD_MIN
	error VestingPeriodBelowMin();
	/// @notice vesting period during migration should be below VESTING_PERIOD_MAX
	error VestingPeriodAboveMax();
	/// @notice when migration amount post conversion is zero we should revert
	error InvalidAmountToMigrate();
	/// @dev Pulls a specified amount of tokens from the caller's wallet.
	/// The new V2 tokens will be transferred to the lockup contract and
	/// the `handleMigration` function will be called.
	/// @param amount The amount of tokens to migrate.
	/// @param vestingPeriod Vesting duration
	function migrate(uint256 amount, uint256 vestingPeriod) external;
}
