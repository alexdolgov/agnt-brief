// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import {IAccounting} from "./interfaces/IAccounting.sol";
import {ILiquidityPool} from "./interfaces/ILiquidityPool.sol";
import {IAuthority} from "./interfaces/IAuthority.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {AccessControl} from "./libraries/AccessControl.sol";

/**
 *  @title Modular contract used by the liquidity pool to conducting accounting logic
 */
contract Accounting is IAccounting, UUPSUpgradeable, AccessControl {
	// the liquidity pool address
	ILiquidityPool public liquidityPool;
	// asset that denominates the strike price
	address public strikeAsset;
	// asset that is used as the reference asset
	address public underlyingAsset;
	// asset that is used for collateral asset
	address public collateralAsset;
	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor() {
		_disableInitializers();
	}

	function initialize(address _liquidityPool, address _authority) external initializer {
		__UUPSUpgradeable_init();
		__AccessControl_init(IAuthority(_authority));
		
		if (_liquidityPool == address(0) || _authority == address(0)) {
			revert("Accounting: Invalid address");
		}
		
		liquidityPool = ILiquidityPool(_liquidityPool);
		strikeAsset = ILiquidityPool(_liquidityPool).strikeAsset();
		underlyingAsset = ILiquidityPool(_liquidityPool).underlyingAsset();
		collateralAsset = ILiquidityPool(_liquidityPool).collateralAsset();
	}
	
	/**
	 * @notice logic for adding liquidity to the options liquidity pool
	 * @param  depositor the address making the deposit
	 * @param  _amount amount of the collateral asset to deposit
	 * @return depositAmount the amount to deposit from the round
	 */
	function deposit(address depositor, uint256 _amount)
		external
		view
		override
		returns (uint256 depositAmount)
	{
		uint256 collateralCap = liquidityPool.collateralCap();
		uint256 currentEpoch = liquidityPool.epoch();
		// TVL and amounts are all in collateral decimals now
		uint256 totalAmountWithDeposit = liquidityPool.getTVL() + _amount;
		if (totalAmountWithDeposit > collateralCap) {
			revert("Accounting: Total supply reached");
		}
		(uint128 receiptEpoch, uint256 receiptAmount) = liquidityPool.depositReceipts(depositor);
		depositAmount = _amount;
		// if there is a second deposit in the same round then increment this amount
		if (currentEpoch == receiptEpoch) {
			depositAmount += receiptAmount;
		}
	}

	/**
	 * @notice Get the number of shares that can be redeemed from unredeemed deposits
	 * @param  user the address to check
	 * @return redeemableShares the amount of shares available to redeem
	 */
	function getRedeemableShares(address user)
		public
		view
		override
		returns (uint256 redeemableShares)
	{
		(uint128 receiptEpoch, uint256 receiptAmount) = liquidityPool.depositReceipts(user);
		uint256 currentEpoch = liquidityPool.epoch();
		
		// if there is already a receipt from a previous round then calculate shares from amount
		if (receiptEpoch != 0 && receiptEpoch < currentEpoch) {
			redeemableShares = sharesForAmount(
				receiptAmount,
				liquidityPool.epochDepositPrice(receiptEpoch)
			);
		}
	}

	/**
	 * @notice logic for allowing a user to redeem their shares from a previous epoch
	 * @param  redeemer the address making the deposit
	 * @return toRedeem the amount to actually redeem
	 * @return depositReceipt the updated deposit receipt after the redeem has completed
	 */
	function redeem(address redeemer)
		external
		view
		override
		returns (uint256 toRedeem, IAccounting.DepositReceipt memory depositReceipt)
	{
		(uint128 receiptEpoch, uint256 receiptAmount) = liquidityPool.depositReceipts(redeemer);
		depositReceipt = IAccounting.DepositReceipt({
			epoch: receiptEpoch,
			amount: receiptAmount
		});

		uint256 currentEpoch = liquidityPool.epoch();
		// if there is already a receipt from a previous round then calculate shares from amount
		if (depositReceipt.epoch != 0 && depositReceipt.epoch < currentEpoch) {
			toRedeem = sharesForAmount(
				depositReceipt.amount,
				liquidityPool.epochDepositPrice(depositReceipt.epoch)
			);
			// Zero out the amount since we're redeeming everything
			depositReceipt.amount = 0;
		}
	}

	/**
	 * @notice logic for accounting a user to initiate a withdraw request from the pool
	 * @param  withdrawer the address carrying out the withdrawal
	 * @param  shares the amount of shares to withdraw for
	 * @return withdrawalReceipt the new withdrawal receipt to pass to the liquidityPool
	 */
	function initiateWithdraw(address withdrawer, uint256 shares)
		external
		view
		override
		returns (IAccounting.WithdrawalReceipt memory withdrawalReceipt)
	{
		if (liquidityPool.balanceOf(withdrawer) < shares) {
			revert("Accounting: Insufficient share balance");
		}
		uint256 currentEpoch = liquidityPool.epoch();
		(uint128 receiptEpoch, uint256 receiptShares) = liquidityPool.withdrawalReceipts(withdrawer);
		withdrawalReceipt = IAccounting.WithdrawalReceipt({
			epoch: receiptEpoch,
			shares: receiptShares
		});

		uint256 existingShares = withdrawalReceipt.shares;
		uint256 withdrawalShares;
		// if they already have an initiated withdrawal from this round just increment
		if (withdrawalReceipt.epoch == currentEpoch) {
			withdrawalShares = existingShares + shares;
		} else {
			// do 100 wei just in case of any rounding issues
			if (existingShares > 100) {
				revert("Accounting: Existing withdrawal");
			}
			withdrawalShares = shares;
			withdrawalReceipt.epoch = uint128(currentEpoch);
		}

		withdrawalReceipt.shares = withdrawalShares;
	}

	/**
	 * @notice logic for accounting a user to complete a withdrawal
	 * @param  withdrawer the address carrying out the withdrawal
	 * @return withdrawalAmount  the amount of collateral to withdraw
	 * @return withdrawalShares  the number of shares to withdraw
	 * @return withdrawalReceipt the new withdrawal receipt to pass to the liquidityPool
	 * @dev IMPORTANT: This function contains a loop that iterates through epochs from withdrawal
	 *      initiation to current epoch. If a withdrawal remains unprocessed for many epochs,
	 *      gas costs could become prohibitive. Governance must ensure withdrawals are batch-processed
	 *      via executeEpochCalculation() within a reasonable number of epochs.
	 */
	function completeWithdraw(address withdrawer)
		external
		view
		override
		returns (
			uint256 withdrawalAmount,
			uint256 withdrawalShares,
			IAccounting.WithdrawalReceipt memory withdrawalReceipt
		)
	{
		(uint128 receiptEpoch, uint256 receiptShares) = liquidityPool.withdrawalReceipts(withdrawer);
		withdrawalReceipt = IAccounting.WithdrawalReceipt({
			epoch: receiptEpoch,
			shares: receiptShares
		});
		// cache the storage variables
		withdrawalShares = withdrawalReceipt.shares;
		uint256 withdrawalEpoch = withdrawalReceipt.epoch;
		// make sure there is something to withdraw
		if (withdrawalShares == 0) {
			revert("Accounting: No existing withdrawal");
		}
		
		// Find the first epoch where batch withdrawals were successfully processed after initiation
		// User gets the price from the epoch when their withdrawal was first processed
		uint256 currentEpoch = liquidityPool.epoch();
		uint256 processedEpoch = 0;
		bool foundProcessedEpoch = false;
		
		// Search forwards from withdrawal epoch to find the first successful batch processing
		for (uint256 i = withdrawalEpoch; i < currentEpoch; i++) {
			if (liquidityPool.epochWithdrawalsProcessed(i)) {
				processedEpoch = i;
				foundProcessedEpoch = true;
				break;
			}
		}
		
		if (!foundProcessedEpoch) {
			revert("Accounting: Withdrawal not processed");
		}
		
		withdrawalAmount = amountForShares(
			withdrawalShares,
			liquidityPool.epochWithdrawalPrice(processedEpoch)
		);
		// Note: withdrawalAmount can be 0 in extreme loss scenarios (e.g., 99%+ loss with dust shares)
		// We allow this to complete so user can exit the pending withdrawal state
	}

	/**
	 * @notice check if a user can complete their withdrawal and return the amount that can be withdrawn
	 * @param withdrawer the address of the user
	 * @return withdrawableAmount the amount of collateral that can be withdrawn (0 if withdrawal is not possible)
	 * @dev This helps frontend determine if completeWithdraw() will succeed and how much can be withdrawn
	 */
	function canCompleteWithdraw(address withdrawer)
		external
		view
		override
		returns (uint256 withdrawableAmount)
	{
		(uint128 receiptEpoch, uint256 receiptShares) = liquidityPool.withdrawalReceipts(withdrawer);
		
		// Check if there's a withdrawal receipt
		if (receiptShares == 0) {
			return 0;
		}
		
		// Find the first epoch where batch withdrawals were successfully processed after initiation
		uint256 currentEpoch = liquidityPool.epoch();
		uint256 processedEpoch = 0;
		bool foundProcessedEpoch = false;
		
		// Search forwards from receipt epoch to find the first successful batch processing
		for (uint256 i = receiptEpoch; i < currentEpoch; i++) {
			if (liquidityPool.epochWithdrawalsProcessed(i)) {
				processedEpoch = i;
				foundProcessedEpoch = true;
				break;
			}
		}
		
		if (!foundProcessedEpoch) {
			return 0;
		}
		
		// Calculate the withdrawal amount using the same logic as completeWithdraw
		withdrawableAmount = amountForShares(
			receiptShares,
			liquidityPool.epochWithdrawalPrice(processedEpoch)
		);
		
		// Return 0 if amount is invalid (shouldn't happen but for safety)
		if (withdrawableAmount == 0) {
			return 0;
		}
		
		return withdrawableAmount;
	}

	/**
	 * @notice execute the next epoch using the pre-set deposit and withdrawal prices
	 * @param  depositPrice the price per share for converting deposits to shares
	 * @param  withdrawalPrice the price per share for converting shares to collateral
	 * @return sharesToMint the number of shares to mint this epoch
	 * @return totalWithdrawAmount the amount of collateral to set aside for partitioning
	 * @return amountNeeded the amount needed to reach the total withdraw amount if collateral balance of lp is insufficient
	 * @dev The governor must calculate and set both epoch prices via setEpochPrice() before calling executeEpochCalculation
	 */
	function executeEpochCalculation(
		uint256 depositPrice,
		uint256 withdrawalPrice
	)
		external
		view
		override
		returns (
			uint256 sharesToMint,
			uint256 totalWithdrawAmount,
			uint256 amountNeeded
		)
	{
		// Get the actual available balance (excludes partitioned funds and fees)
		uint256 availableBalance = liquidityPool.getBalance(liquidityPool.collateralAsset());

		sharesToMint = sharesForAmount(liquidityPool.pendingDeposits(), depositPrice);
		totalWithdrawAmount = amountForShares(liquidityPool.pendingWithdrawals(), withdrawalPrice);
		
		// Check if we have enough actual balance to cover withdrawals
		if (availableBalance >= totalWithdrawAmount) { 
			amountNeeded = 0;
		} else {
			amountNeeded = totalWithdrawAmount - availableBalance;
		}
	}

	/**
	 * @notice get the number of shares for a given amount
	 * @param _amount  the amount to convert to shares (collateral decimals)
	 * @param assetPerShare the price per share (collateral decimals)
	 * @return shares the number of shares (collateral decimals)
	 */
	function sharesForAmount(uint256 _amount, uint256 assetPerShare)
		public
		view
		override
		returns (uint256 shares)
	{
		uint256 scale = 10**ERC20(collateralAsset).decimals();
		shares = (_amount * scale) / assetPerShare;
	}

	/**
	 * @notice get the amount for a given number of shares
	 * @param _shares  the shares to convert (collateral decimals)
	 * @param _assetPerShare the price per share (collateral decimals)
	 * @return amount the collateral amount (collateral decimals)
	 */
	function amountForShares(uint256 _shares, uint256 _assetPerShare)
		public
		view
		override
		returns (uint256 amount)
	{
		uint256 scale = 10**ERC20(collateralAsset).decimals();
		amount = (_shares * _assetPerShare) / scale;
	}

	function _authorizeUpgrade(address newImplementation) internal view override onlyUpgrader {
		newImplementation; 
	}
}
