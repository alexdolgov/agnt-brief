// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IRewardsDistributor {
	
	// Errors
	error InvalidInputs();
	error InsufficientBalance();
	error NotAuthorized();
	error ExceedsLimit();
	error NoRewardsToDistribute();
	error InvalidAmount();
	error InvalidCaller();

	error UserDepositsHigherThanCollateral();
	error CollateralLessThanUserDeposits();

	// Events
	event CollateralUpdated(uint256 indexed amount);
	event UserDepositsUpdated(uint256 indexed amount);
	event RewardsClaimed(address[] validators, uint256 indexed withdrawAmount);
	event RewardsDistributed(
		uint256 indexed totalRewards,
		uint256 indexed userShare,
		uint256 indexed foundationShare
	);
	event FoundationAddressUpdated(address indexed _foundationAddress);

	// Methods

	/// @notice forwards `claimRewards` calls followed by a withdraw call.
	/// @dev only callable by authorized addresses
	/// @dev can have an empty array of validators, thus skipping the claim call
	function claim(
		address[] calldata validators,
		uint256 withdrawAmount
	) external;

	/// @notice reads current balance of this contract and forwards it to the `L2Staking` contract
	function distribute() external;

	/// @notice updates `userTokens`
	/// @dev callable by authorized oracle
	function updateUserDeposits(uint256 userDeposits) external;

	/// @notice updates `collateral`
	/// @dev callable by operator role
	function updateCollateral(uint256 collateral) external;

	/// @notice updates `foundationAddress` to receive rewards
	/// @dev callable by operator role
	function setFoundationAddress(address foundationAddress) external;
}
