// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

import { ReentrancyGuardTransient } from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import { MerkleProof } from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import { ITypes } from "contracts/interfaces/ITypes.sol";
import { IStakingWithUnbonding, UnbondingStaker, UnbondingStakingInitParams, StakingSettings } from "contracts/interfaces/IStakingWithUnbonding.sol";
import { FeeFunctions } from "contracts/lib/FeeFunctions.sol";
import { StakingErrors } from "contracts/lib/StakingErrors.sol";
import { StakingBase } from "contracts/lib/StakingBase.sol";

contract StakingWithUnbonding is IStakingWithUnbonding, StakingBase {
	using SafeERC20 for IERC20;

	/// @dev APY represented as basis points (10000 = 100%).
	uint64 public immutable APY_PERCENTAGE;

	/// @dev Maximum stake duration.
	uint64 public immutable MAX_STAKE_DURATION;

	/// @dev Max unbonding period for the staker.
	uint64 public immutable MAX_UNBONDING_PERIOD = 365 days * 5; // ±5 years

	/// @dev Maps staker address to `UnbondingStaker` struct.
	mapping(address => UnbondingStaker) public stakers;

	/// @dev Unbonding period for the staker.
	uint64 public unbondingPeriod;

	constructor(
		UnbondingStakingInitParams memory params,
		address owner_
	)
		StakingBase(
			BaseParams({
				merkleRoot: params.merkleRoot,
				whitelistStatus: params.whitelistStatus,
				stakingToken: params.stakingToken,
				poolMaxCap: params.poolMaxCap,
				tierUpperBound: params.tierUpperBound,
				tierLowerBound: params.tierLowerBound,
				startStakingDate: params.startStakingDate,
				endStakingDate: params.endStakingDate,
				feeType: params.feeType,
				fee: params.fee,
				feeCollector: params.feeCollector,
				feeFunctions: params.feeFunctions,
				owner: owner_
			})
		)
	{
		if (params.maxStakeDuration == 0)
			revert StakingErrors.InvalidMaxStakeDuration();

		if (params.unbondingPeriod > MAX_UNBONDING_PERIOD)
			revert StakingErrors.InvalidUnbondingPeriod();

		unbondingPeriod = params.unbondingPeriod;
		MAX_STAKE_DURATION = params.maxStakeDuration;
		APY_PERCENTAGE = params.apyPercentage;
	}

	/// @notice Stake ERC20 Tokens.
	/// @param _amount: Amount to stake.
	function stake(uint256 _amount) external payable nonReentrant {
		if (whitelistStatus != ITypes.WhitelistStatus.Disabled)
			revert StakingErrors.WhitelistEnabled();
		_stake(_amount, msg.sender);
	}

	/// @notice Stake ERC20 Tokens to a specific receiver.
	/// @param _amount: Amount to stake.
	/// @param _receiver: Address to receive the staked tokens.
	function stake(
		uint256 _amount,
		address _receiver
	) external payable nonReentrant {
		if (_receiver == address(0)) revert StakingErrors.InvalidAddress();
		// Revert if Merkle whitelist is enabled (should use merkle proof function)
		if (whitelistStatus == ITypes.WhitelistStatus.Merkle)
			revert StakingErrors.WhitelistEnabled();

		// Check trusted distributor requirements
		if (
			(whitelistStatus == ITypes.WhitelistStatus.TrustedDistributors ||
				whitelistStatus ==
				ITypes.WhitelistStatus.MerkleAndTrustedDistributors) &&
			!trustedDistributors[msg.sender]
		) revert StakingErrors.OnlyTrustedDistributor();

		_stake(_amount, _receiver);
	}

	/// @notice Stake ERC20 Tokens to a whitelisted receiver with Merkle proof.
	/// @param _amount: Amount to stake.
	/// @param _receiver: Address to receive the staked tokens.
	/// @param merkleProof: Merkle proof for the receiver.
	function stake(
		uint256 _amount,
		address _receiver,
		bytes32[] calldata merkleProof
	) external payable nonReentrant {
		bytes32 node = keccak256(abi.encodePacked(_receiver));

		if (!MerkleProof.verifyCalldata(merkleProof, merkleRoot, node))
			revert StakingErrors.InvalidMerkleProof();

		_stake(_amount, _receiver);
	}

	/// @notice Initiate unbonding process for staked tokens.
	/// @param _amount: Amount to unbond.
	function initiateUnbonding(uint256 _amount) external nonReentrant {
		UnbondingStaker storage stakerData = stakers[msg.sender];

		if (_amount == 0) {
			revert StakingErrors.ZeroAmount();
		}

		if (stakerData.amountStaked < _amount) {
			revert StakingErrors.WithdrawingMoreThanStaked();
		}

		// Check if remaining amount meets the tier lower bound
		if (
			stakerData.amountStaked - _amount > 0 &&
			stakerData.amountStaked - _amount < TIER_LOWER_BOUND
		) {
			revert StakingErrors.RemainingAmountBelowLowerBound();
		}

		// Update rewards before unbonding
		_updateUnclaimedRewardsForStaker(msg.sender);

		// Initialize or add to unbonding
		stakerData.unbondingAmount += _amount;
		stakerData.unbondingTimestamp = uint128(block.timestamp);

		// Update staked amount
		stakerData.amountStaked -= _amount;

		emit UnbondingInitiated(msg.sender, _amount);
	}

	/// @notice Complete unbonding process and withdraw tokens after unbonding period.
	function completeUnbonding() external payable nonReentrant {
		UnbondingStaker storage stakerData = stakers[msg.sender];

		if (stakerData.unbondingAmount == 0) {
			revert StakingErrors.NoTokensUnbonding();
		}
		uint256 feeAmount;

		// appy gas fee if enabled for Withdraw function
		if (
			_hasFeeEnabled(FeeFunctions.FEE_ON_WITHDRAW) &&
			FEE_TYPE == ITypes.FeeType.Gas
		) {
			if (msg.value != FEE) revert StakingErrors.InsufficientFee();
			feeAmount = FEE; // Track gas fee amount
		}

		// Only check unbonding period if it's not set to zero (immediate withdrawals)
		if (
			unbondingPeriod > 0 &&
			block.timestamp < stakerData.unbondingTimestamp + unbondingPeriod
		) {
			revert StakingErrors.UnbondingPeriodNotCompleted();
		}

		uint256 amountToWithdraw = stakerData.unbondingAmount;
		stakerData.unbondingAmount = 0;
		stakerData.unbondingTimestamp = 0;

		stakingTokenBalance -= amountToWithdraw;

		// If no more tokens staked and no unclaimed rewards, remove from stakers array
		if (stakerData.amountStaked == 0 && stakerData.unclaimedRewards == 0) {
			_removeStaker(msg.sender);
		}

		// Apply token fee if enabled for Stake function
		if (
			_hasFeeEnabled(FeeFunctions.FEE_ON_WITHDRAW) &&
			FEE_TYPE == ITypes.FeeType.DistributionToken &&
			FEE > 0
		) {
			feeAmount = (amountToWithdraw * FEE) / BASIS_POINTS;
			amountToWithdraw -= feeAmount;
			numTokenReservedForFee += feeAmount;
		}

		IERC20(STAKING_TOKEN).safeTransfer(msg.sender, amountToWithdraw);

		emit TokensWithdrawn(msg.sender, amountToWithdraw, feeAmount);
	}

	/// @notice Claim accumulated rewards.
	function claimRewards() external payable nonReentrant {
		_claimRewards();
	}

	/// @notice Claim a specific amount of accumulated rewards.
	/// @param _amount Amount of rewards to claim.
	function claimRewards(uint256 _amount) external payable nonReentrant {
		_claimRewards(_amount);
	}

	/// @notice Returns the information about a staker's stake.
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
		)
	{
		UnbondingStaker memory stakerData = stakers[_staker];

		_tokensStaked = stakerData.amountStaked;
		_rewards = _availableRewards(_staker);
		_unbondingAmount = stakerData.unbondingAmount;
		_firstStakeTime = stakerData.timeOfFirstStake;

		if (
			stakerData.unbondingTimestamp > 0 &&
			unbondingPeriod > 0 &&
			block.timestamp < stakerData.unbondingTimestamp + unbondingPeriod
		) {
			_timeUntilUnbondingComplete =
				(stakerData.unbondingTimestamp + unbondingPeriod) -
				block.timestamp;
		} else {
			_timeUntilUnbondingComplete = 0;
		}
	}

	/**
	 * @notice Updates the unbonding period
	 * @param _newUnbondingPeriod The new unbonding period in seconds
	 * @dev Can only be called by the owner
	 * @dev Setting to 0 will allow immediate withdrawals with no unbonding period
	 */
	function setUnbondingPeriod(
		uint64 _newUnbondingPeriod
	) external override onlyOwner {
		// Validate unbonding period
		if (_newUnbondingPeriod > MAX_UNBONDING_PERIOD) {
			revert StakingErrors.InvalidUnbondingPeriod();
		}

		uint64 oldUnbondingPeriod = unbondingPeriod;
		unbondingPeriod = _newUnbondingPeriod;

		emit UnbondingPeriodUpdated(oldUnbondingPeriod, _newUnbondingPeriod);
	}

	/// @notice Returns the APY in basis points.
	function getAPY() external view returns (uint64) {
		return APY_PERCENTAGE;
	}

	/// @notice Staking contract configuration helper for UI calls
	/// @return StakingSettings: Staking contract settings
	function stakingSettings() external view returns (StakingSettings memory) {
		return
			StakingSettings({
				merkleRoot: merkleRoot,
				whitelistStatus: whitelistStatus,
				stakingToken: STAKING_TOKEN,
				poolMaxCap: poolMaxCap,
				maxStakeDuration: MAX_STAKE_DURATION,
				apyPercentage: APY_PERCENTAGE,
				tierUpperBound: TIER_UPPER_BOUND,
				tierLowerBound: TIER_LOWER_BOUND,
				startStakingDate: START_STAKING_DATE,
				endStakingDate: END_STAKING_DATE,
				unbondingPeriod: unbondingPeriod,
				feeType: FEE_TYPE,
				fee: FEE,
				feeCollector: feeCollector,
				owner: owner(),
				feeFunctions: FEES_FUNCTIONS,
				basisPoints: BASIS_POINTS
			});
	}

	/// @dev Check if an address is in the stakers list.
	function isInStakerList(address _staker) external view returns (bool) {
		return stakers[_staker].stakersArrayIndex != 0;
	}

	/// @dev Get the index of a staker in the stakersArray.
	function getAddressIndex(address _staker) external view returns (uint64) {
		return stakers[_staker].stakersArrayIndex;
	}

	/// @notice Stake ERC20 Tokens.
	/// @param _amount: Amount to stake.
	function _stake(uint256 _amount, address _receiver) internal {
		if (_amount == 0) revert StakingErrors.StakingZeroTokens();
		if (block.timestamp < START_STAKING_DATE)
			revert StakingErrors.StakingNotStarted();
		if (block.timestamp > END_STAKING_DATE)
			revert StakingErrors.StakingEnded();

		UnbondingStaker storage stakerData = stakers[_receiver];
		if (_amount + stakerData.amountStaked > TIER_UPPER_BOUND)
			revert StakingErrors.StakingAmountExceedsUpperBound();
		if (_amount + stakerData.amountStaked < TIER_LOWER_BOUND)
			revert StakingErrors.StakingAmountBelowLowerBound();

		uint256 feeAmount;
		if (
			_hasFeeEnabled(FeeFunctions.FEE_ON_STAKE) &&
			FEE_TYPE == ITypes.FeeType.Gas
		) {
			if (msg.value != FEE) revert StakingErrors.InsufficientFee();
			feeAmount = FEE; // Track gas fee amount
		}

		uint128 currentTime = uint128(block.timestamp);

		// Update unclaimed rewards if already staking
		if (stakerData.amountStaked > 0) {
			_updateUnclaimedRewardsForStaker(_receiver);
		} else {
			// First time staking
			_addStaker(_receiver);
			stakerData.timeOfFirstStake = currentTime;
			stakerData.timeOfLastUpdate = currentTime;
			stakerData.unclaimedRewards = 0;
		}

		// Transfer tokens
		IERC20(STAKING_TOKEN).safeTransferFrom(
			msg.sender,
			address(this),
			_amount
		);

		// Apply token fee if enabled for Stake function
		if (
			_hasFeeEnabled(FeeFunctions.FEE_ON_STAKE) &&
			FEE_TYPE == ITypes.FeeType.DistributionToken &&
			FEE > 0
		) {
			feeAmount = (_amount * FEE) / BASIS_POINTS;
			_amount -= feeAmount;
			numTokenReservedForFee += feeAmount;
		}

		uint256 expectedPoolAmount = stakingTokenBalance + _amount;
		if (expectedPoolAmount > poolMaxCap)
			revert StakingErrors.PoolMaxCapExceeded();

		stakerData.amountStaked += _amount;
		stakingTokenBalance += _amount;

		emit TokensStaked(_receiver, _amount, feeAmount);
	}

	/// @dev Logic for claiming rewards.
	function _claimRewards() internal {
		_claimRewards(0); // 0 means claim all available rewards
	}

	/// @dev Logic for claiming rewards with a specific amount.
	/// @param _amount Amount to claim. If 0, claims all available rewards.
	function _claimRewards(uint256 _amount) internal {
		uint256 totalAvailableRewards = _availableRewards(msg.sender);

		if (totalAvailableRewards == 0) {
			revert StakingErrors.NoRewards();
		}

		uint256 rewards;
		if (_amount == 0) {
			// Claim all available rewards
			rewards = totalAvailableRewards;
		} else {
			// Claim specific amount
			if (_amount > totalAvailableRewards) {
				revert StakingErrors.InsufficientRewards();
			}
			rewards = _amount;
		}

		if (rewards > rewardsAvailable) {
			revert StakingErrors.InsufficientRewardsAvailable();
		}

		uint256 feeAmount;
		uint256 transferAmount = rewards;

		// Apply fee if enabled for Claim function
		if (_hasFeeEnabled(FeeFunctions.FEE_ON_CLAIM)) {
			// Fee validation
			if (FEE_TYPE == ITypes.FeeType.Gas) {
				if (msg.value != FEE) revert StakingErrors.InsufficientFee();
				feeAmount = FEE; // Track gas fee amount
			}

			if (FEE_TYPE == ITypes.FeeType.DistributionToken && FEE > 0) {
				feeAmount = (rewards * FEE) / BASIS_POINTS;
				transferAmount = rewards - feeAmount;
				numTokenReservedForFee += feeAmount;
			}
		}

		UnbondingStaker storage stakerData = stakers[msg.sender];
		stakerData.timeOfLastUpdate = uint128(block.timestamp);

		// Update unclaimed rewards
		stakerData.unclaimedRewards = totalAvailableRewards - rewards;

		// Transfer rewards
		rewardsAvailable -= rewards;
		IERC20(STAKING_TOKEN).safeTransfer(msg.sender, transferAmount);

		emit RewardsClaimed(msg.sender, transferAmount, feeAmount);
	}

	/// @dev Update unclaimed rewards for a user. Called for every state change for a user.
	function _updateUnclaimedRewardsForStaker(address _staker) internal {
		uint256 rewards = _calculateRewards(_staker);
		stakers[_staker].unclaimedRewards += rewards;
		stakers[_staker].timeOfLastUpdate = uint128(block.timestamp);
	}

	/// @dev Remove staker from stakersArray.
	function _removeStaker(address _staker) internal {
		uint64 index = stakers[_staker].stakersArrayIndex - 1; // - 1 because 0 means out of the array
		address lastStaker = stakersArray[stakersArray.length - 1];
		stakersArray[index] = lastStaker;
		stakersArray.pop();
		stakers[lastStaker].stakersArrayIndex = index + 1;
		stakers[_staker].stakersArrayIndex = 0;
	}

	/// @dev Add a staker to the stakersArray.
	function _addStaker(address _staker) internal {
		stakersArray.push(_staker);
		stakers[_staker].stakersArrayIndex = uint64(stakersArray.length); // we do not use 0 as index, so we can use it to check if the user is in the array
	}

	/// @dev Calculate rewards for a staker.
	function _calculateRewards(
		address _staker
	) internal view returns (uint256) {
		UnbondingStaker memory stakerData = stakers[_staker];

		if (stakerData.amountStaked == 0) {
			return 0;
		}

		uint256 startTime = stakerData.timeOfLastUpdate;
		uint256 endTime = block.timestamp;

		// Cap endTime to MAX_STAKE_DURATION from first stake
		uint256 maxEndTime = stakerData.timeOfFirstStake + MAX_STAKE_DURATION;
		if (endTime > maxEndTime) {
			endTime = maxEndTime;
		}

		// No rewards if past the max duration
		if (startTime >= endTime) {
			return 0;
		}

		// Calculate pro-rata rewards
		uint256 timeStaked = endTime - startTime;
		uint256 rewardAmount = (stakerData.amountStaked *
			timeStaked *
			APY_PERCENTAGE) / (365 days * BASIS_POINTS);

		return rewardAmount;
	}

	/// @dev View available rewards for a user.
	function _availableRewards(
		address _staker
	) internal view returns (uint256) {
		UnbondingStaker memory stakerData = stakers[_staker];

		if (stakerData.amountStaked == 0 && stakerData.timeOfLastUpdate == 0) {
			return 0;
		}

		return stakerData.unclaimedRewards + _calculateRewards(_staker);
	}
}
