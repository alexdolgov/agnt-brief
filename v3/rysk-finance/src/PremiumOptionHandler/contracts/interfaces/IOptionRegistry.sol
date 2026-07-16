// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.24;

import { Types } from "../libraries/Types.sol";

interface IOptionRegistry {
	//////////////////////////////////////////////////////
	/// access-controlled state changing functionality ///
	//////////////////////////////////////////////////////

	/**
	 * @notice Either retrieves the option token if it already exists, or deploy it
	 * @param  optionSeries option series to issue
	 * @return the address of the option
	 */
	function issue(Types.OptionSeries memory optionSeries) external returns (address);

	/**
	 * @notice Open an options contract using collateral from the liquidity pool
	 * @param  _series the address of the option token to be created
	 * @param  amount the amount of options to deploy
	 * @param  collateralAmount the collateral required for the option
	 * @dev only callable by the liquidityPool
	 * @return if the transaction succeeded
	 * @return the amount of collateral taken from the liquidityPool
	 */
	function open(
		address _series,
		uint256 amount,
		uint256 collateralAmount
	) external returns (bool, uint256);

	/**
	 * @notice Close/reduce an options position by burning oTokens and withdrawing collateral
	 * @param  _series the address of the option token to burn
	 * @param  amount the amount of oTokens to burn in e8 (oToken standard)
	 * @param  from the address holding the oTokens (must have approved OptionRegistry)
	 * @dev only callable by the liquidityPool
	 * @return if the transaction succeeded
	 * @return the amount of collateral returned to the liquidityPool
	 */
	function close(
		address _series,
		uint256 amount,
		address from
	) external returns (bool, uint256);

	/////////////////////////////////////////////
	/// external state changing functionality ///
	/////////////////////////////////////////////

	/**
	 * @notice Settle an options vault
	 * @param  _series the address of the option token to be burnt
	 * @return success if the transaction succeeded
	 * @return collatReturned the amount of collateral returned from the vault
	 * @return collatLost the amount of collateral used to pay ITM options on vault settle
	 * @return amountShort number of oTokens that the vault was short
	 * @return vaultId the Opyn vault ID
	 * @dev callable by anyone but returns funds to the liquidityPool
	 */
	function settle(address _series)
		external
		returns (
			bool success,
			uint256 collatReturned,
			uint256 collatLost,
			uint256 amountShort,
			uint256 vaultId
		);

	/**
	 * @notice Redeem oTokens for collateral payout (for ITM options after expiry)
	 * @param  _series the address of the option token to redeem
	 * @return collateralRedeemed the amount of collateral received
	 * @dev redeems caller's full oToken balance
	 */
	function redeem(address _series, uint256 _amount) external returns (uint256 collateralRedeemed);

	/**
	 * @notice Retrieves the option token if it exists
	 * @param  underlying is the address of the underlying asset of the option
	 * @param  strikeAsset is the address of the collateral asset of the option
	 * @param  expiration is the expiry timestamp of the option
	 * @param  isPut the type of option
	 * @param  strike is the strike price of the option - e8 format (Opyn format)
	 * @param  collateral is the address of the asset to collateralize the option with
	 * @return the address of the option
	 */
	function getOtoken(
		address underlying,
		address strikeAsset,
		uint256 expiration,
		bool isPut,
		uint256 strike,
		address collateral
	) external view returns (address);

	///////////////////////////
	/// non-complex getters ///
	///////////////////////////

	function getSeriesInfo(address series) external view returns (Types.OptionSeries memory);
	function vaultIds(address series) external view returns (uint256);
	function gammaController() external view returns (address);
}
