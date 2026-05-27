// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

import { ITypes } from "./ITypes.sol";
import { IStakingBase } from "./IStakingBase.sol";

/// @notice Staker Info for StakingWithUnbonding contract.
/// @param amountStaked: Total amount of tokens staked by the staker.
/// @param unclaimedRewards: Rewards accumulated but not yet claimed by user.
/// @param timeOfFirstStake: Timestamp of user's first stake.
/// @param timeOfLastUpdate: Last reward-update timestamp.
/// @param unbondingTimestamp: Timestamp when user initiated unbonding.
/// @param unbondingAmount: Amount of tokens in the unbonding period.
/// @param stakersArrayIndex: Index of the staker in the stakers array, 0 if not in the array, index + 1 if in the array.
struct UnbondingStaker {
	uint256 amountStaked;
	uint256 unclaimedRewards;
	uint128 timeOfFirstStake;
	uint128 timeOfLastUpdate;
	uint128 unbondingTimestamp;
	uint256 unbondingAmount;
	uint64 stakersArrayIndex;
}

/// @notice Staking with unbonding contract configuration parameters
struct UnbondingStakingInitParams {
	bytes32 merkleRoot;
	ITypes.WhitelistStatus whitelistStatus;
	// Token params
	address stakingToken;
	uint256 poolMaxCap;
	uint64 unbondingPeriod;
	uint64 maxStakeDuration;
	uint64 apyPercentage;
	// Tier params
	uint256 tierUpperBound;
	uint256 tierLowerBound;
	// Staking period params
	uint80 startStakingDate;
	uint80 endStakingDate;
	// Fee params
	ITypes.FeeType feeType;
	uint256 fee;
	address feeCollector;
	uint8 feeFunctions;
}

/// @notice Staking contract configuration parameters
struct StakingSettings {
	bytes32 merkleRoot;
	ITypes.WhitelistStatus whitelistStatus;
	address stakingToken;
	uint256 poolMaxCap;
	uint64 maxStakeDuration;
	uint64 apyPercentage;
	uint256 tierUpperBound;
	uint256 tierLowerBound;
	uint80 startStakingDate;
	uint80 endStakingDate;
	uint64 unbondingPeriod;
	ITypes.FeeType feeType;
	uint256 fee;
	address feeCollector;
	address owner;
	uint8 feeFunctions;
	uint256 basisPoints;
}

/// @notice Interface for the StakingWithUnbonding contract
interface IStakingWithUnbonding is IStakingBase {
	/// @dev Emitted when unbonding is initiated.
	event UnbondingInitiated(address indexed staker, uint256 amount);

	/// @dev Emitted when contract admin updates the unbonding period.
	event UnbondingPeriodUpdated(
		uint64 oldUnbondingPeriod,
		uint64 newUnbondingPeriod
	);

	/// @notice Initiate unbonding process for staked tokens.
	/// @param _amount: Amount to unbond.
	function initiateUnbonding(uint256 _amount) external;

	/// @notice Complete unbonding process and withdraw tokens after unbonding period.
	function completeUnbonding() external payable;

	/// @notice Returns the total amount of tokens staked by a user, the total rewards, the unbonding amount, the time until unbonding is complete, and the first stake time.
	/// @param _staker: Address of the staker.
	function getStakeInfo(
		address _staker
	)
		external
		view
		returns (
			uint256 _tokensStaked,
			uint256 _rewards,
			uint256 _unbondingAmount,
			uint256 _timeUntilUnbondingComplete,
			uint128 _firstStakeTime
		);

	/// @notice Returns the APY in basis points.
	function getAPY() external view returns (uint64);

	/// @notice Updates the unbonding period
	/// @param _newUnbondingPeriod The new unbonding period in seconds
	function setUnbondingPeriod(uint64 _newUnbondingPeriod) external;
}
