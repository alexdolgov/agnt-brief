// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./VaultGovernance.sol";
import "./VaultFeesLib.sol";

/**
 * @title VaultFees
 * @dev Contract for managing fees related to the vault
 */
contract VaultFees is VaultGovernance {
	/**
	 * @dev Retrieves the current fee structure
	 * @return VaultFeesLib.FeesStorage struct containing all fee-related information
	 */
	function getFees() public pure returns (VaultFeesLib.FeesStorage memory) {
		return VaultFeesLib.getFees();
	}

	/**
	 * @dev Retrieves the current deposit fee
	 * @return uint256 Current deposit fee
	 */
	function depositFee() external pure returns (uint256) {
		return VaultFeesLib.getFees().depositFee;
	}

	/**
	 * @dev Retrieves the current deposit fee wallet address
	 * @return address Current deposit fee wallet
	 */
	function depositFeeWallet() external pure returns (address) {
		return VaultFeesLib.getFees().depositFeeWallet;
	}

	/**
	 * @dev Retrieves the current redemption fee
	 * @return uint256 Current redemption fee
	 */
	function redemptionFee() external pure returns (uint256) {
		return VaultFeesLib.getFees().redemptionFee;
	}

	/**
	 * @dev Retrieves the current redemption fee wallet address
	 * @return address Current redemption fee wallet
	 */
	function redemptionFeeWallet() external pure returns (address) {
		return VaultFeesLib.getFees().redemptionFeeWallet;
	}

	/**
	 * @dev Updates the fee structure
	 * @param newManagementFee New management fee
	 * @param newPerformanceFee New performance fee
	 * @param newDepositFee New deposit fee
	 * @param newRedemptionFee New redemption fee
	 */
	function updateFees(uint256 newManagementFee, uint256 newPerformanceFee, uint256 newDepositFee, uint256 newRedemptionFee) external virtual {
		VaultFeesLib.updateFees(newManagementFee, newPerformanceFee, newDepositFee, newRedemptionFee);
	}

	/**
	 * @dev Updates the fee wallet addresses
	 * @param newManagementFeeWallet New management fee wallet
	 * @param newPerformanceFeeWallet New performance fee wallet
	 * @param newDepositFeeWallet New deposit fee wallet
	 * @param newRedemptionFeeWallet New redemption fee wallet
	 */
	function updateFeeWallets(
		address newManagementFeeWallet,
		address newPerformanceFeeWallet,
		address newDepositFeeWallet,
		address newRedemptionFeeWallet
	) external {
		VaultFeesLib.updateFeeWallets(newManagementFeeWallet, newPerformanceFeeWallet, newDepositFeeWallet, newRedemptionFeeWallet);
	}
}
