// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./utils/Checks.sol";
import "./VaultGovernanceLib.sol";

/**
 * @notice This contract is responsible for initializing and updating vault fees and vault fee recipient wallets.
 * We charge management fees on the assets under management and performance fees on the realized profits.
 * The strategy performance and strategy management fees are implemented elsewhere in the BaseStrategy.
 * Performance and management fees are not transferring underlying tokens, but are taken by diluting
 * extra vault shares representing the fees to be taken.
 * We also charge vault deposit and redemption fees on an ERC4626 vault as described by openzeppelin.
 * https://docs.openzeppelin.com/contracts/4.x/erc4626#fees
 * Vault deposit and redemption fees are taken by transferring deposit tokens from/towards fee recipient wallets.
 * The vault itself can be recipient of deposit and redemption fees to be processed as profits for all shareholders.
 */
library VaultFeesLib {
	using Checks for address;
	using Checks for uint256;

	address private constant ZERO_ADDRESS = address(0);
	/// @dev The storage slot follows EIP1967 to avoid storage collision
	bytes32 private constant FEES_STORAGE_POSITION = bytes32(uint256(keccak256("VaultFees.FeesStorage")) - 1);
	uint256 private constant DEFAULT_MANAGEMENT_FEE = 200; /* 2.00% per year */
	uint256 private constant DEFAULT_PERFORMANCE_FEE = 1000; /* 10.00% of yield (per Strategy)*/
	uint256 private constant MAX_MANAGEMENT_FEE = 1000; // 10.00%
	uint256 private constant MAX_PERFORMANCE_FEE = 5000; // 50.00%
	uint256 private constant MAX_DEPOSIT_FEE = 200; // 2.00%
	uint256 private constant MAX_REDEMPTION_FEE = 200; // 2.00%

	/**
	 * @dev Struct to store fee-related information
	 * @param managementFee Governance Fee for management of Vault
	 * @param performanceFee Governance Fee for performance of Vault
	 * @param depositFee Fee charged on deposits
	 * @param redemptionFee Fee charged on redemptions
	 * @param managementFeeWallet The address that receives the management fees
	 * @param performanceFeeWallet The address that receives the performance fees
	 * @param depositFeeWallet The address that receives the deposit fees
	 * @param redemptionFeeWallet The address that receives the redemption fees
	 */
	struct FeesStorage {
		uint256 managementFee;
		uint256 performanceFee;
		uint256 depositFee;
		uint256 redemptionFee;
		address managementFeeWallet;
		address performanceFeeWallet;
		address depositFeeWallet;
		address redemptionFeeWallet;
	}

	/**
	 * @dev Emitted when fees are updated
	 * @param caller Address of the account that called the function
	 * @param performanceFee New performance fee
	 * @param managementFee New management fee
	 * @param depositFee New deposit fee
	 * @param redemptionFee New redemption fee
	 */
	event UpdatedFees(address indexed caller, uint256 performanceFee, uint256 managementFee, uint256 depositFee, uint256 redemptionFee);

	/**
	 * @dev Emitted when fee wallets are updated
	 * @param caller Address of the account that called the function
	 * @param managementFeeWallet New management fee wallet
	 * @param performanceFeeWallet New performance fee wallet
	 * @param depositFeeWallet New deposit fee wallet
	 * @param redemptionFeeWallet New redemption fee wallet
	 */
	event UpdatedFeeWallets(
		address indexed caller,
		address managementFeeWallet,
		address performanceFeeWallet,
		address depositFeeWallet,
		address redemptionFeeWallet
	);

	/**
	 * @dev Returns a storage pointer to the FeesStorage struct
	 * @return fs Storage pointer to FeesStorage
	 */
	function feesStorage() private pure returns (FeesStorage storage fs) {
		bytes32 position = FEES_STORAGE_POSITION;
		assembly {
			fs.slot := position
		}
	}

	/**
	 * @dev Retrieves the current fee structure
	 * @return Current FeesStorage struct
	 */
	function getFees() external pure returns (FeesStorage memory) {
		return feesStorage();
	}

	/**
	 * @dev Initializes the fee structure with default values and provided wallets
	 * @param managementFeeWallet Address to receive management fees
	 * @param performanceFeeWallet Address to receive performance fees
	 */
	function initializeFees(address managementFeeWallet, address performanceFeeWallet) external {
		FeesStorage storage _storage = feesStorage();
		_storage.managementFeeWallet.isNotAlreadyInitialized();
		performanceFeeWallet.requireNonZeroAddress();
		managementFeeWallet.requireNonZeroAddress();
		_storage.managementFee = DEFAULT_MANAGEMENT_FEE;
		_storage.performanceFee = DEFAULT_PERFORMANCE_FEE;
		_storage.managementFeeWallet = managementFeeWallet;
		_storage.performanceFeeWallet = performanceFeeWallet;
		_storage.depositFeeWallet = managementFeeWallet;
		_storage.redemptionFeeWallet = managementFeeWallet;
	}

	/**
	 * @dev Updates the fee structure
	 * @param managementFee New management fee
	 * @param performanceFee New performance fee
	 * @param depositFee New deposit fee
	 * @param redemptionFee New redemption fee
	 */
	function updateFees(uint256 managementFee, uint256 performanceFee, uint256 depositFee, uint256 redemptionFee) external {
		VaultGovernanceLib.onlyManagementOrGovernance();
		managementFee.requireMaxFee(MAX_MANAGEMENT_FEE);
		performanceFee.requireMaxFee(MAX_PERFORMANCE_FEE);
		depositFee.requireMaxFee(MAX_DEPOSIT_FEE);
		redemptionFee.requireMaxFee(MAX_REDEMPTION_FEE);
		FeesStorage storage _storage = feesStorage();
		_storage.managementFee = managementFee;
		_storage.performanceFee = performanceFee;
		_storage.depositFee = depositFee;
		_storage.redemptionFee = redemptionFee;
		emit UpdatedFees(msg.sender, performanceFee, managementFee, depositFee, redemptionFee);
	}

	/**
	 * @dev Updates the fee wallet addresses
	 * @param managementFeeWallet New management fee wallet
	 * @param performanceFeeWallet New performance fee wallet
	 * @param depositFeeWallet New deposit fee wallet
	 * @param redemptionFeeWallet New redemption fee wallet
	 */
	function updateFeeWallets(address managementFeeWallet, address performanceFeeWallet, address depositFeeWallet, address redemptionFeeWallet) external {
		VaultGovernanceLib.onlyManagementOrGovernance();
		managementFeeWallet.requireNonZeroAddress();
		performanceFeeWallet.requireNonZeroAddress();
		depositFeeWallet.requireNonZeroAddress();
		redemptionFeeWallet.requireNonZeroAddress();
		FeesStorage storage _storage = feesStorage();
		_storage.managementFeeWallet = managementFeeWallet;
		_storage.performanceFeeWallet = performanceFeeWallet;
		_storage.depositFeeWallet = depositFeeWallet;
		_storage.redemptionFeeWallet = redemptionFeeWallet;
		emit UpdatedFeeWallets(msg.sender, managementFeeWallet, performanceFeeWallet, depositFeeWallet, redemptionFeeWallet);
	}
}
