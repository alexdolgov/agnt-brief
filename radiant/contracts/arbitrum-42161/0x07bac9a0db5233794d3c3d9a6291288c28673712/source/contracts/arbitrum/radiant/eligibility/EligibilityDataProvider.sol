// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import {ILendingPool} from "../../interfaces/ILendingPool.sol";
import {IMultiFeeDistribution} from "../../interfaces/IMultiFeeDistribution.sol";
import {IPriceProvider} from "../../interfaces/IPriceProvider.sol";
import {IMiddleFeeDistribution} from "../../interfaces/IMiddleFeeDistribution.sol";
import {LockedBalance, Balances} from "../../interfaces/LockedBalance.sol";

/// @title Eligible Deposit Provider
/// @author Radiant Labs
contract EligibilityDataProvider is OwnableUpgradeable {
	/********************** Common Info ***********************/

	/// @notice RATIO BASE equal to 100%
	uint256 public constant RATIO_DIVISOR = 10000;

	/// @notice Initial required ratio of TVL to get reward; in bips
	uint256 public constant INITIAL_REQUIRED_DEPOSIT_RATIO = 500;

	/// @notice Initial ratio of the required price to still allow without disqualification; in bips
	uint256 public constant INITIAL_PRICE_TOLERANCE_RATIO = 9000;

	/// @notice Minimum required ratio of TVL to get reward; in bips
	uint256 public constant MIN_PRICE_TOLERANCE_RATIO = 8000;

	/// @notice Addresses of lending pool to be considered in `requiredUsdValue(user)` calculation
	ILendingPool[] internal _eligibleLendingPools;

	/// @notice Address of Middle fee distribution
	IMiddleFeeDistribution public middleFeeDistribution;

	/// @notice RDNT + LP price provider
	IPriceProvider public priceProvider;

	/// @notice Required ratio of TVL to get reward; in bips
	uint256 public requiredDepositRatio;

	/// @notice Ratio of the required price to still allow without disqualification; in bips
	uint256 public priceToleranceRatio;

	/********************** Events ***********************/
	/// @notice Emitted when required TVL ratio is updated
	event RequiredDepositRatioUpdated(uint256 indexed requiredDepositRatio);

	/// @notice Emitted when price tolerance ratio is updated
	event PriceToleranceRatioUpdated(uint256 indexed priceToleranceRatio);

	/// @notice Emitted when eligible lending pools are updated
	event EligibleLendingPoolsUpdated(ILendingPool[] eligibleLendingPools);

	/********************** Errors ***********************/
	error AddressZero();

	error InvalidRatio();

	error MissingEligibleLendingPools();

	constructor() {
		_disableInitializers();
	}

	/**
	 * @notice Constructor
	 * @param _coreLendingPool Address of lending pool.
	 * @param _middleFeeDistribution MiddleFeeDistribution address.
	 * @param _priceProvider PriceProvider address.
	 */
	function initialize(
		ILendingPool _coreLendingPool,
		IMiddleFeeDistribution _middleFeeDistribution,
		IPriceProvider _priceProvider
	) public initializer {
		if (address(_coreLendingPool) == address(0)) revert AddressZero();
		if (address(_middleFeeDistribution) == address(0)) revert AddressZero();
		if (address(_priceProvider) == address(0)) revert AddressZero();

		_eligibleLendingPools = new ILendingPool[](1);
		_eligibleLendingPools[0] = _coreLendingPool;
		middleFeeDistribution = _middleFeeDistribution;
		priceProvider = _priceProvider;
		requiredDepositRatio = INITIAL_REQUIRED_DEPOSIT_RATIO;
		priceToleranceRatio = INITIAL_PRICE_TOLERANCE_RATIO;
		__Ownable_init();
	}

	/********************** Setters ***********************/

	/**
	 * @notice Sets required tvl ratio. Can only be called by the owner.
	 * @param _requiredDepositRatio Ratio in bips.
	 */
	function setRequiredDepositRatio(uint256 _requiredDepositRatio) external onlyOwner {
		if (_requiredDepositRatio > RATIO_DIVISOR) revert InvalidRatio();
		requiredDepositRatio = _requiredDepositRatio;

		emit RequiredDepositRatioUpdated(_requiredDepositRatio);
	}

	/**
	 * @notice Sets price tolerance ratio. Can only be called by the owner.
	 * @param _priceToleranceRatio Ratio in bips.
	 */
	function setPriceToleranceRatio(uint256 _priceToleranceRatio) external onlyOwner {
		if (_priceToleranceRatio < MIN_PRICE_TOLERANCE_RATIO || _priceToleranceRatio > RATIO_DIVISOR)
			revert InvalidRatio();
		priceToleranceRatio = _priceToleranceRatio;

		emit PriceToleranceRatioUpdated(_priceToleranceRatio);
	}

	/**
	 * @notice Sets eligible lending pools that should be considered in `requiredUsdValue(user)` calculation
	 * @param pools Array of eligible lending pools
	 */
	function setEligibleLendingPools(ILendingPool[] calldata pools) external onlyOwner {
		uint256 len = pools.length;
		if (len == 0) revert MissingEligibleLendingPools();
		for (uint i = 0; i < len; i++) {
			if (address(pools[i]) == address(0)) revert AddressZero();
		}

		delete _eligibleLendingPools;

		_eligibleLendingPools = pools;
		emit EligibleLendingPoolsUpdated(_eligibleLendingPools);
	}

	/********************** View functions ***********************/

	/**
	 * @notice Returns eligible lending pools
	 */
	function getEligibleLendingPools() external view returns (ILendingPool[] memory) {
		return _eligibleLendingPools;
	}

	/**
	 * @notice Returns locked RDNT and LP token value in eth
	 * @param user's address
	 */
	function lockedUsdValue(address user) public view returns (uint256) {
		IMultiFeeDistribution multiFeeDistribution = IMultiFeeDistribution(
			middleFeeDistribution.getMultiFeeDistributionAddress()
		);
		Balances memory _balances = multiFeeDistribution.getBalances(user);
		return _lockedUsdValue(_balances.locked);
	}

	/**
	 * @notice Returns USD value required to be locked considering deposits in
	 * all eligible lending pools.
	 * @param user's address
	 * @return required USD value.
	 */
	function requiredUsdValue(address user) public view returns (uint256 required) {
		uint256 len = _eligibleLendingPools.length;

		if (len == 0) revert MissingEligibleLendingPools();

		uint256 sumTotalCollateralUSD;
		for (uint i = 0; i < len; ) {
			(uint256 collateralUSD, , , , , ) = _eligibleLendingPools[i].getUserAccountData(user);
			sumTotalCollateralUSD += collateralUSD;
			unchecked {
				++i;
			}
		}
		required = (sumTotalCollateralUSD * requiredDepositRatio) / RATIO_DIVISOR;
	}

	/**
	 * @notice Returns if the user is eligible to receive rewards
	 * @param _user's address
	 */
	function isEligibleForRewards(address _user) public view returns (bool) {
		uint256 lockedValue = lockedUsdValue(_user);
		uint256 requiredValue = (requiredUsdValue(_user) * priceToleranceRatio) / RATIO_DIVISOR;
		return requiredValue != 0 && lockedValue >= requiredValue;
	}

	/********************** Internal functions ***********************/

	/**
	 * @notice Returns locked RDNT and LP token value in USD
	 * @param lockedLP is locked lp amount
	 */
	function _lockedUsdValue(uint256 lockedLP) internal view returns (uint256) {
		uint256 lpPrice = priceProvider.getLpTokenPriceUsd();
		return (lockedLP * lpPrice) / 10 ** 18;
	}
}
