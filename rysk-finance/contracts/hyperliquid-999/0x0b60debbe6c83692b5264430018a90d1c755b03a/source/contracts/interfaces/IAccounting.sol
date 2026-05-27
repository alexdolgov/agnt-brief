// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.24;

/// @title Accounting contract to calculate the pool share value and handle deposit/withdraw mechanics

interface IAccounting {
	struct DepositReceipt {
		uint128 epoch;
		uint256 amount; // collateral decimals
	}

	struct WithdrawalReceipt {
		uint128 epoch;
		uint256 shares; // collateral decimals (matches LP token decimals)
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
		returns (uint256 depositAmount);

	/**
	 * @notice logic for allowing a user to redeem their shares from a previous epoch
	 * @param  redeemer the address making the deposit
	 * @return toRedeem the amount to actually redeem
	 * @return depositReceipt the updated deposit receipt after the redeem has completed
	 */
	function redeem(address redeemer)
		external
		view
		returns (uint256 toRedeem, DepositReceipt memory depositReceipt);

	/**
	 * @notice logic for accounting a user to initiate a withdraw request from the pool
	 * @param  withdrawer the address carrying out the withdrawal
	 * @param  shares the amount of shares to withdraw for
	 * @return withdrawalReceipt the new withdrawal receipt to pass to the liquidityPool
	 */
	function initiateWithdraw(address withdrawer, uint256 shares)
		external
		returns (WithdrawalReceipt memory withdrawalReceipt);

	/**
	 * @notice logic for accounting a user to complete a withdrawal
	 * @param  withdrawer the address carrying out the withdrawal
	 * @return withdrawalAmount  the amount of collateral to withdraw
	 * @return withdrawalShares  the number of shares to withdraw
	 * @return withdrawalReceipt the new withdrawal receipt to pass to the liquidityPool
	 */
	function completeWithdraw(address withdrawer)
		external
		returns (
			uint256 withdrawalAmount,
			uint256 withdrawalShares,
			WithdrawalReceipt memory withdrawalReceipt
		);

	/**
	 * @notice Get the number of shares that can be redeemed from unredeemed deposits
	 * @param user the address to check
	 * @return redeemableShares the amount of shares available to redeem
	 */
	function getRedeemableShares(address user) external view returns (uint256 redeemableShares);

	/**
	 * @notice check if a user can complete their withdrawal and return the amount that can be withdrawn
	 * @param withdrawer the address of the user
	 * @return withdrawableAmount the amount of collateral that can be withdrawn (0 if withdrawal is not possible)
	 * @dev This checks if user has initiated withdrawal and if batch processing is complete for their epoch
	 */
	function canCompleteWithdraw(address withdrawer)
		external
		view
		returns (uint256 withdrawableAmount);

	/**
	 * @param depositPrice the price per share for converting deposits to shares
	 * @param withdrawalPrice the price per share for converting shares to collateral
	 * @return sharesToMint the number of shares to mint this epoch
	 * @return totalWithdrawAmount the amount of collateral to set aside for partitioning
	 * @return amountNeeded the amount needed to reach the total withdraw amount if collateral balance of lp is insufficient
	 */
	function executeEpochCalculation(
		uint256 depositPrice,
		uint256 withdrawalPrice
	)
		external
		view
		returns (
			uint256 sharesToMint,
			uint256 totalWithdrawAmount,
			uint256 amountNeeded
		);

	/**
	 * @notice get the number of shares for a given amount
	 * @param _amount  the amount to convert to shares in collateral decimals
	 * @param assetPerShare the amount of assets received per share in collateral decimals
	 * @return shares the number of shares in collateral decimals
	 */
	function sharesForAmount(uint256 _amount, uint256 assetPerShare)
		external
		view
		returns (uint256 shares);

	/**
	 * @notice get the amount for a given number of shares
	 * @param _shares  the shares to convert in collateral decimals
	 * @param _assetPerShare the amount of assets received per share in collateral decimals
	 * @return amount the collateral amount in collateral decimals
	 */
	function amountForShares(uint256 _shares, uint256 _assetPerShare)
		external
		view
		returns (uint256 amount);
}
