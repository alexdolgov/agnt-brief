// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.24;

import { Types } from "../libraries/Types.sol";
import {IOptionRegistry} from "../interfaces/IOptionRegistry.sol";
import {IAccounting} from "../interfaces/IAccounting.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title Interface for the Rysk Premium Liquidity Pool
interface ILiquidityPool is IERC20 {

	struct EpochData {
		uint256 epochNumber;
		uint256 depositPrice;
		uint256 withdrawalPrice;
		uint256 timestamp;
	}
	
	/// @notice Get the strike asset address
	function strikeAsset() external view returns (address);

	/// @notice Get the underlying asset address
	function underlyingAsset() external view returns (address);

	/// @notice Get the collateral asset address
	function collateralAsset() external view returns (address);

	/// @notice Get the total collateral allocated to active options
	function collateralAllocated() external view returns (uint256);

	/// @notice Get the current epoch number
	function epoch() external view returns (uint256);

	/// @notice Get the deposit price per share for a specific epoch
	function epochDepositPrice(uint256 epoch) external view returns (uint256 price);

	/// @notice Get the withdrawal price per share for a specific epoch
	function epochWithdrawalPrice(uint256 epoch) external view returns (uint256 price);

	/// @notice Check if withdrawals were successfully processed for a specific epoch
	function epochWithdrawalsProcessed(uint256 epoch) external view returns (bool);

	/// @notice Get complete epoch data including number, prices, and timestamp
	function getEpochData(uint256 _epoch) external view returns (EpochData memory);

	/// @notice Get a user's deposit receipt
	function depositReceipts(address) external view returns (uint128 epoch, uint256 amount);

	/// @notice Get a user's withdrawal receipt
	function withdrawalReceipts(address) external view returns (uint128 epoch, uint256 shares);

	/// @notice Get the total pending deposits for the current epoch
	function pendingDeposits() external view returns (uint256);

	/// @notice Get the total pending withdrawals for the current epoch
	function pendingWithdrawals() external view returns (uint256);

	/// @notice Get the total funds partitioned for processed withdrawals
	function partitionedFunds() external view returns (uint256);

	/// @notice Get the maximum collateral cap for the pool
	function collateralCap() external view returns (uint256);

	/// @notice Get the dispute period in seconds
	function disputePeriod() external view returns (uint256);

	/// @notice Get the timestamp when epoch prices were set
	function epochPriceSetTimestamp(uint256 epoch) external view returns (uint256);

	/// @notice Set the dispute period
	function setDisputePeriod(uint256 _disputePeriod) external;

	/// @notice Dispute/update the epoch prices during dispute period
	function disputeEpochPrice(uint256 _depositPrice, uint256 _withdrawalPrice) external;

	/// @notice Issue an option series
	function handlerIssue(Types.OptionSeries memory optionSeries) external returns (address);

	/// @notice Get the total value locked in the pool
	function getTVL() external view returns (uint256);

	/// @notice Get the number of shares a user can redeem from previous epochs
	function getRedeemableShares(address user) external view returns (uint256 redeemableShares);

	/// @notice Check if a user can complete their withdrawal and return the amount that can be withdrawn
	function canCompleteWithdraw(address user) external view returns (uint256 withdrawableAmount);

	/// @notice Check if a user can initiate a new withdrawal
	/// @return canInitiate true if user can initiate, false if blocked by pending withdrawal from previous epoch
	/// @return blockedShares the shares blocking initiation (0 if can initiate)
	/// @return blockedEpoch the epoch of the blocking withdrawal (0 if can initiate)
	function canInitiateWithdraw(address user) external view returns (bool canInitiate, uint256 blockedShares, uint128 blockedEpoch);

	/// @notice Redeem shares from previous epochs
	function redeem() external returns (uint256);

	/// @notice Write a number of options (amount in e8) that have already been issued
	function handlerWriteOption(
		Types.OptionSeries memory optionSeries,
		address seriesAddress,
		uint256 amount,
		IOptionRegistry optionRegistry,
		uint256 premium,
		address recipient
	) external returns (uint256);

	/// @notice Buy back options from a seller, burning oTokens and returning collateral
	function handlerBuybackOption(
		Types.OptionSeries memory optionSeries,
		uint256 amount,
		IOptionRegistry optionRegistry,
		address seriesAddress,
		uint256 premium,
		address seller
	) external returns (uint256);

	/// @notice Get the available balance of an asset (excluding partitioned funds and fees)
	function getBalance(address asset) external view returns (uint256);

	/// @notice Check if whitelist is enabled for deposits
	function isWhitelistEnabled() external view returns (bool);

	/// @notice Check if an address is whitelisted
	function whitelistedAddresses(address account) external view returns (bool);

	/// @notice Enable or disable the whitelist
	function setWhitelistEnabled(bool _enabled) external;

	/// @notice Add or remove an address from the whitelist
	function setWhitelistedAddress(address _address, bool _whitelisted) external;

	/// @notice Batch add or remove addresses from the whitelist
	function setWhitelistedAddresses(address[] calldata _addresses, bool _whitelisted) external;
}
