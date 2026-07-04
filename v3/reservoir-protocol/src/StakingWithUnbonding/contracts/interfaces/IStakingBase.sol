// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

import { ITypes } from "contracts/interfaces/ITypes.sol";

interface IStakingBase {
	/// @dev Emitted when a new staking contract is created.
	struct BaseParams {
		address stakingToken;
		bytes32 merkleRoot;
		ITypes.WhitelistStatus whitelistStatus;
		uint256 tierLowerBound;
		uint256 tierUpperBound;
		uint80 startStakingDate;
		uint80 endStakingDate;
		uint256 poolMaxCap;
		ITypes.FeeType feeType;
		uint256 fee;
		address feeCollector;
		uint8 feeFunctions;
		address owner;
	}

	/// @dev Emitted when contract is funded with rewards.
	event ContractFunded(address indexed funder, uint256 amount);

	/// @dev Emitted when excess rewards are withdrawn.
	event ExcessRewardsWithdrawn(
		address indexed admin,
		uint256 amount,
		bool fromExcessTokens
	);

	/// @dev Emitted when a trusted distributor is added or removed
	event TrustedDistributorUpdated(address distributor, bool status);

	/// @dev Emitted when contract admin updates the pool maximum capacity.
	event PoolMaxCapUpdated(uint256 oldPoolMaxCap, uint256 newPoolMaxCap);

	/// @dev Other token withdrawn event.
	event OtherTokenWithdrawn(
		address indexed admin,
		address indexed token,
		uint256 amount
	);

	/// @dev Emitted when a fee collector withdraws token fees.
	event TokenFeeWithdrawn(
		address indexed recipient,
		address indexed token,
		uint256 amount
	);

	/// @dev Emitted when a fee collector withdraws gas fees.
	event GasFeeWithdrawn(address indexed recipient, uint256 amount);

	/// @dev Emitted when fee collector is updated
	event FeeCollectorUpdated(
		address indexed oldFeeCollector,
		address indexed newFeeCollector
	);

	/// @dev Emitted when the whitelist status is updated
	event WhitelistStatusUpdated(
		ITypes.WhitelistStatus oldStatus,
		ITypes.WhitelistStatus newStatus,
		bytes32 merkleRoot
	);

	/// @dev Emitted when tokens are staked.
	event TokensStaked(
		address indexed staker,
		uint256 amount,
		uint256 feeAmount
	);

	/// @dev Emitted when tokens are withdrawn.
	event TokensWithdrawn(
		address indexed staker,
		uint256 amount,
		uint256 feeAmount
	);

	/// @dev Emitted when a staker claims staking rewards.
	event RewardsClaimed(
		address indexed staker,
		uint256 rewardAmount,
		uint256 feeAmount
	);

	/// @notice Claim accumulated rewards.
	function claimRewards() external payable;

	/// @notice Claim a specific amount of accumulated rewards.
	/// @param _amount: Amount of rewards to claim.
	function claimRewards(uint256 _amount) external payable;
}
