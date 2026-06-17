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

	uint256 private constant _PRECISION = 10 ** 18;
	uint256 private constant _DECIMALS_8_PRECISION = 10 ** 8;

	/// @notice Addresses of the RizLendingPools to be considered in `requiredUsdValue(user)` calculation
	ILendingPool[] internal _eligibleRizLendingPools;

	/// @notice Address of Middle fee distribution
	IMiddleFeeDistribution public middleFeeDistribution;

	/// @notice RDNT + LP price provider
	IPriceProvider public priceProvider;

	/// @notice Required ratio of TVL to get reward; in bips
	uint256 public requiredDepositRatio;

	/// @notice Ratio of the required price to still allow without disqualification; in bips
	uint256 public priceToleranceRatio;

	ILendingPool public coreLendingPool;

	/********************** Events ***********************/
	/// @notice Emitted when required TVL ratio is updated
	event RequiredDepositRatioUpdated(uint256 indexed requiredDepositRatio);

	/// @notice Emitted when price tolerance ratio is updated
	event PriceToleranceRatioUpdated(uint256 indexed priceToleranceRatio);

	/// @notice Emitted when eligible corelending pool is updated
	event CoreLendingPoolUpdated(ILendingPool indexed coreLendingPool);

	/// @notice Emitted when eligible Riz lending pools are updated
	event EligibleRizLendingPoolsUpdated(ILendingPool[] eligibleLendingPools);

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

		coreLendingPool = _coreLendingPool;
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
	 * @notice Sets core lending pool. Can only be called by the owner.
	 * @param _coreLendingPool Address of lending pool.
	 */
	function setCoreLendingPool(ILendingPool _coreLendingPool) external onlyOwner {
		if (address(_coreLendingPool) == address(0)) revert AddressZero();
		coreLendingPool = _coreLendingPool;

		emit CoreLendingPoolUpdated(_coreLendingPool);
	}

	/**
	 * @notice Sets eligible Rizlending pools that should be considered in `requiredUsdValue(user)` calculation
	 * @param pools Array of eligible lending pools
	 */
	function setEligibleRizLendingPools(ILendingPool[] calldata pools) external onlyOwner {
		uint256 len = pools.length;
		if (len == 0) revert MissingEligibleLendingPools();
		for (uint i = 0; i < len; i++) {
			if (address(pools[i]) == address(0)) revert AddressZero();
		}

		delete _eligibleRizLendingPools;

		_eligibleRizLendingPools = pools;
		emit EligibleRizLendingPoolsUpdated(_eligibleRizLendingPools);
	}

	/********************** View functions ***********************/

	/**
	 * @notice Returns eligible lending pools
	 */
	function getEligibleLendingPools() external view returns (ILendingPool[] memory) {
		return _eligibleRizLendingPools;
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
		// Core lending pool associated priceOracle returns USD value in 8 decimals
		uint256 sumTotalCollateralUSD;
		if (address(coreLendingPool) != address(0)) {
			(sumTotalCollateralUSD, , , , , ) = coreLendingPool.getUserAccountData(user);
		}

		uint256 len = _eligibleRizLendingPools.length;
		if (len > 0) {
			for (uint i = 0; i < len; ) {
				// Riz lending pool associated priceOracle returns USD value in 18 decimals
				(uint256 collateralUSD18Decimals, , , , , ) = _eligibleRizLendingPools[i].getUserAccountData(user);
				uint256 collateralUSD = (collateralUSD18Decimals * _DECIMALS_8_PRECISION) / _PRECISION;
				sumTotalCollateralUSD += collateralUSD;
				unchecked {
					++i;
				}
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
