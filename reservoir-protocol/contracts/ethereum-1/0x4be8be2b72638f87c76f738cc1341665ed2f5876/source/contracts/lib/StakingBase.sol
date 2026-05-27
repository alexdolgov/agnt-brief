// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ReentrancyGuardTransient } from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import { ITypes } from "contracts/interfaces/ITypes.sol";
import { IStakingBase } from "contracts/interfaces/IStakingBase.sol";
import { StakingErrors } from "contracts/lib/StakingErrors.sol";

abstract contract StakingBase is
	IStakingBase,
	Ownable,
	ReentrancyGuardTransient
{
	using SafeERC20 for IERC20;

	/// @dev Basis points for fee calculation.
	uint256 public constant BASIS_POINTS = 10_000;

	/// @dev fee functions bitmask.
	/// @dev 1 = FEE_ON_STAKE
	/// @dev 2 = FEE_ON_WITHDRAW
	/// @dev 4 = FEE_ON_CLAIM
	/// @dev 7 = FEE_ON_ALL
	/// @dev 0 = FEE_ON_NONE
	uint8 public immutable FEES_FUNCTIONS;

	/// @dev Address of the ERC20 staking token.
	address public immutable STAKING_TOKEN;

	/// @dev Fee percentage (100% = 10 000)
	uint256 public immutable FEE;

	/// @dev Fee type (Gas or Token).
	ITypes.FeeType public immutable FEE_TYPE;

	/// @dev Maximum number of tokens that can be staked by a user.
	uint256 public immutable TIER_UPPER_BOUND;

	/// @dev Minimum number of tokens that can be staked by a user.
	uint256 public immutable TIER_LOWER_BOUND;

	/// @dev Start date of staking.
	uint80 public immutable START_STAKING_DATE;

	/// @dev End date of staking.
	uint80 public immutable END_STAKING_DATE;

	/// @dev Total amount of tokens staked in the contract.
	uint256 public stakingTokenBalance;

	/// @dev Max amount of tokens that can be staked in the pool.
	uint256 public poolMaxCap;

	/// @dev List of accounts that have staked the staking token.
	address[] public stakersArray;

	/// @dev Address of the fee collector.
	address public feeCollector;

	/// @dev Merkle root for whitelisting stakers.
	bytes32 public merkleRoot;

	/// @dev Controls whether whitelist is active for staking operations
	ITypes.WhitelistStatus public whitelistStatus;

	/// @dev Total amount of rewards available for distribution.
	uint256 public rewardsAvailable;

	/// @dev Allowed distributor contracts that can bypass whitelist
	mapping(address => bool) public trustedDistributors;

	/// @dev Total accumulated fees.
	uint256 public numTokenReservedForFee;

	// This checks if the msg.sender is the fee collector
	modifier onlyFeeCollector() {
		if (msg.sender != feeCollector) revert StakingErrors.OnlyFeeCollector();
		_;
	}

	constructor(BaseParams memory params) Ownable(params.owner) {
		if (params.stakingToken == address(0))
			revert StakingErrors.InvalidAddress();
		if (params.feeCollector == address(0))
			revert StakingErrors.InvalidAddress();

		// Validate tier bounds
		if (params.tierLowerBound > params.tierUpperBound)
			revert StakingErrors.InvalidTierBounds();

		// Validate staking dates
		if (params.startStakingDate >= params.endStakingDate)
			revert StakingErrors.InvalidStakingDates();
		if (params.startStakingDate < block.timestamp)
			revert StakingErrors.StartDateInPast();

		// Validate fee percentage, only if fee type is not Gas
		if (params.feeType != ITypes.FeeType.Gas) {
			if (params.fee > BASIS_POINTS)
				revert StakingErrors.InvalidFeePercentage();
		}

		// Validate fee functions bitmask
		if (params.feeFunctions > 7)
			revert StakingErrors.InvalidFeeFunctionsMask();

		// If merkle root is set, whitelist has to be  Merkle or MerkleAndTrustedDistributors
		if (
			(params.whitelistStatus == ITypes.WhitelistStatus.Merkle ||
				params.whitelistStatus ==
				ITypes.WhitelistStatus.MerkleAndTrustedDistributors) &&
			params.merkleRoot == bytes32(0)
		) revert StakingErrors.InvalidMerkleRoot();

		// If whitelist is Disabled or TrustedDistributors, merkle root has to be empty
		if (
			(params.whitelistStatus == ITypes.WhitelistStatus.Disabled ||
				params.whitelistStatus ==
				ITypes.WhitelistStatus.TrustedDistributors) &&
			params.merkleRoot != bytes32(0)
		) revert StakingErrors.InvalidMerkleRoot();

		STAKING_TOKEN = params.stakingToken;
		TIER_LOWER_BOUND = params.tierLowerBound;
		TIER_UPPER_BOUND = params.tierUpperBound;
		START_STAKING_DATE = params.startStakingDate;
		END_STAKING_DATE = params.endStakingDate;
		FEE_TYPE = params.feeType;
		FEE = params.fee;
		FEES_FUNCTIONS = params.feeFunctions;

		poolMaxCap = params.poolMaxCap;
		feeCollector = params.feeCollector;

		_setWhitelistStatus(params.whitelistStatus, params.merkleRoot);
	}

	// ==============================
	// 1. External Functions - Write
	// ==============================

	/// @notice Funds the staking contract with tokens to be distributed as staking rewards.
	/// @param _amount: Amount of tokens.
	function fundStakingContract(uint256 _amount) external onlyOwner {
		if (_amount == 0) revert StakingErrors.ZeroAmount();

		rewardsAvailable += _amount;

		emit ContractFunded(msg.sender, _amount);
		IERC20(STAKING_TOKEN).safeTransferFrom(
			msg.sender,
			address(this),
			_amount
		);
	}

	/// @notice Allows an admin to withdraw excess rewards or accidentally sent tokens from the contract.
	/// @param _amount: Amount of tokens to withdraw.
	/// @param _recipient: Address to send the withdrawn tokens to.
	/// @param _fromExcessTokens: If true, withdraws from tokens sent to contract by mistake rather than from rewards.
	function withdrawExcessRewards(
		uint256 _amount,
		address _recipient,
		bool _fromExcessTokens
	) external nonReentrant onlyOwner {
		if (_amount == 0) revert StakingErrors.ZeroAmount();
		if (_recipient == address(0)) revert StakingErrors.InvalidAddress();

		if (_fromExcessTokens) {
			uint256 contractBalance = IERC20(STAKING_TOKEN).balanceOf(
				address(this)
			);
			uint256 tokensInUse = stakingTokenBalance +
				rewardsAvailable +
				numTokenReservedForFee;
			uint256 excessTokens = contractBalance > tokensInUse
				? contractBalance - tokensInUse
				: 0;

			if (_amount > excessTokens)
				revert StakingErrors.InsufficientExcessTokens();
		} else {
			if (_amount > rewardsAvailable)
				revert StakingErrors.InsufficientRewardsAvailable();
			rewardsAvailable -= _amount;
		}

		IERC20(STAKING_TOKEN).safeTransfer(_recipient, _amount);
		emit ExcessRewardsWithdrawn(msg.sender, _amount, _fromExcessTokens);
	}

	/// @notice Set whitelist status and merkle root
	/// @param _status Whether whitelist should be enabled or disabled
	/// @param _merkleRoot The Merkle root of the whitelist
	function setWhitelistStatus(
		ITypes.WhitelistStatus _status,
		bytes32 _merkleRoot
	) external onlyOwner {
		_setWhitelistStatus(_status, _merkleRoot);
	}

	/// @notice Updates the fee collector address
	/// @param newFeeCollector Address of the new fee collector
	function transferFeeCollectorRole(
		address newFeeCollector
	) external onlyFeeCollector {
		if (newFeeCollector == address(0))
			revert StakingErrors.InvalidAddress();

		address oldFeeCollector = feeCollector;
		feeCollector = newFeeCollector;

		emit FeeCollectorUpdated(oldFeeCollector, newFeeCollector);
	}

	/// @notice Withdraw accidentally sent tokens to this contract
	/// @param _tokenAddress - the token which we want to withdraw
	function withdrawOtherToken(address _tokenAddress) external onlyOwner {
		if (_tokenAddress == address(0)) revert StakingErrors.InvalidAddress();
		if (_tokenAddress == STAKING_TOKEN)
			revert StakingErrors.InvalidAddress();

		uint256 amount = IERC20(_tokenAddress).balanceOf(address(this));
		if (amount == 0) revert StakingErrors.ZeroAmount();

		emit OtherTokenWithdrawn(msg.sender, _tokenAddress, amount);
		IERC20(_tokenAddress).safeTransfer(msg.sender, amount);
	}

	/// @notice Allows only fee collector to withdraw collected token fees
	/// @param recipient Address to receive the fee
	/// @param amount Amount to withdraw, if 0 withdraws all available fees
	function withdrawTokenFee(
		address recipient,
		uint256 amount
	) external onlyFeeCollector {
		if (recipient == address(0)) revert StakingErrors.InvalidAddress();
		if (FEE_TYPE != ITypes.FeeType.DistributionToken)
			revert StakingErrors.InvalidFeeType();

		uint256 amountToWithdraw = amount == 0
			? numTokenReservedForFee
			: amount;
		if (amountToWithdraw == 0) revert StakingErrors.ZeroAmount();
		if (amountToWithdraw > numTokenReservedForFee)
			revert StakingErrors.ZeroAmount();

		numTokenReservedForFee -= amountToWithdraw;
		IERC20(STAKING_TOKEN).safeTransfer(recipient, amountToWithdraw);

		emit TokenFeeWithdrawn(recipient, STAKING_TOKEN, amountToWithdraw);
	}

	/// @notice Allows only fee collector to withdraw collected gas fees
	/// @param recipient Address to receive the fee
	/// @param amount Amount to withdraw, if 0 withdraws all available fees
	function withdrawGasFee(
		address recipient,
		uint256 amount
	) external onlyFeeCollector {
		if (recipient == address(0)) revert StakingErrors.InvalidAddress();
		if (FEE_TYPE != ITypes.FeeType.Gas)
			revert StakingErrors.InvalidFeeType();

		uint256 amountToWithdraw = amount == 0 ? address(this).balance : amount;
		if (amountToWithdraw == 0) revert StakingErrors.ZeroAmount();
		if (amountToWithdraw > address(this).balance)
			revert StakingErrors.ZeroAmount();

		emit GasFeeWithdrawn(recipient, amountToWithdraw);
		(bool success, ) = recipient.call{ value: amountToWithdraw }("");
		if (!success) revert StakingErrors.TransferFailed();
	}

	/**
	 * @notice Sets or revokes multiple address status as trusted distributors
	 * @param distributors Array of distributor contract addresses
	 */
	function setBatchTrustedDistributors(
		address[] calldata distributors
	) external onlyOwner {
		if (distributors.length == 0) revert StakingErrors.EmptyArray();

		for (uint256 i; i < distributors.length; ++i) {
			address distributor = distributors[i];
			if (distributor == address(0))
				revert StakingErrors.InvalidAddress();

			trustedDistributors[distributor] = true;
			emit TrustedDistributorUpdated(distributor, true);
		}
	}

	/**
	 * @notice Removes a contract from the trusted distributors list
	 * @param distributor Address of the distributor contract to remove
	 * @dev This function completely deletes the entry from the mapping
	 */
	function removeTrustedDistributor(address distributor) external onlyOwner {
		if (distributor == address(0)) revert StakingErrors.InvalidAddress();
		if (!trustedDistributors[distributor]) return;

		delete trustedDistributors[distributor];
		emit TrustedDistributorUpdated(distributor, false);
	}

	/// @notice Update the pool maximum capacity
	/// @param _newPoolMaxCap New maximum capacity
	function updatePoolMaxCap(uint256 _newPoolMaxCap) external onlyOwner {
		if (_newPoolMaxCap < stakingTokenBalance)
			revert StakingErrors.NewCapBelowCurrentStake();

		uint256 oldPoolMaxCap = poolMaxCap;
		poolMaxCap = _newPoolMaxCap;

		emit PoolMaxCapUpdated(oldPoolMaxCap, _newPoolMaxCap);
	}

	/**
	 * @notice Updates the maximum capacity of the staking pool
	 * @param _newPoolMaxCap The new maximum capacity value
	 * @dev Can only be called by the owner
	 */
	function setPoolMaxCap(uint256 _newPoolMaxCap) external onlyOwner {
		if (_newPoolMaxCap < stakingTokenBalance)
			revert StakingErrors.NewCapBelowCurrentStake();

		uint256 oldPoolMaxCap = poolMaxCap;
		poolMaxCap = _newPoolMaxCap;

		emit PoolMaxCapUpdated(oldPoolMaxCap, _newPoolMaxCap);
	}

	// ==============================
	// 1. External Functions - View
	// ==============================

	/// @notice Returns the total amount of tokens staked in the contract.
	function getStakingTokenBalance() external view returns (uint256) {
		return stakingTokenBalance;
	}

	/// @notice Returns the total amount of tokens available for rewards.
	function getTotalAvailableReward() external view returns (uint256) {
		return rewardsAvailable;
	}

	// ==============================
	// 3. Internal Functions - Write
	// ==============================

	/// @notice Internal implementation of whitelist status update
	/// @param _status Whether whitelist should be enabled or disabled
	/// @param _merkleRoot The Merkle root of the whitelist
	function _setWhitelistStatus(
		ITypes.WhitelistStatus _status,
		bytes32 _merkleRoot
	) internal {
		if (
			(_status == ITypes.WhitelistStatus.Merkle ||
				_status ==
				ITypes.WhitelistStatus.MerkleAndTrustedDistributors) &&
			_merkleRoot == bytes32(0)
		) revert StakingErrors.InvalidMerkleRoot();
		if (
			(_status == ITypes.WhitelistStatus.Disabled ||
				_status == ITypes.WhitelistStatus.TrustedDistributors) &&
			_merkleRoot != bytes32(0)
		) revert StakingErrors.InvalidMerkleRoot();

		ITypes.WhitelistStatus oldStatus = whitelistStatus;
		whitelistStatus = _status;

		merkleRoot = _merkleRoot;
		emit WhitelistStatusUpdated(oldStatus, _status, _merkleRoot);
	}

	// ==============================
	// 3. Internal Functions - View
	// ==============================

	// Helper function to check if fees are enabled for a specific function
	function _hasFeeEnabled(uint8 functionFlag) internal view returns (bool) {
		return (FEES_FUNCTIONS & functionFlag) != 0;
	}
}
