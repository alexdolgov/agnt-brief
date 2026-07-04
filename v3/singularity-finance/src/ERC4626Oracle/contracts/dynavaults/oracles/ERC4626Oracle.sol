// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "solady/src/utils/FixedPointMathLib.sol";
import "../interfaces/IReferenceAssetOracle.sol";
import "../interfaces/IERC4626.sol";
import "../utils/Clonable.sol";
import "../utils/Checks.sol";

/**
 * @title ERC4626 Oracle
 * @notice This is an ERC4626 vault oracle, which will use a Reference Asset Oracle for the underlying asset and multiply by the ERC4626 share to assets ratio.
 */
contract ERC4626Oracle is IReferenceAssetOracle, Clonable {
	using Checks for address;

	address public referenceAsset;
	address public referenceAssetOracle;
	mapping(address => bool) public isERC4626;

	event RegisteredERC4626(address indexed erc4626, bool enabled);

	/**
	 * @notice Initializes the contract state variables
	 * @param referenceAssetOracleAddress Address of reference asset oracle
	 */
	function initialize(address referenceAssetOracleAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		referenceAsset.isNotAlreadyInitialized();
		referenceAssetOracleAddress.requireNonZeroAddress();
		referenceAssetOracle = referenceAssetOracleAddress;
		referenceAsset = IReferenceAssetOracle(referenceAssetOracleAddress).referenceAsset();
	}

	/**
	 * @notice register an ERC4626 vault
	 */
	function registerERC4626(address erc4626, bool enabled) external onlyRole(DEFAULT_ADMIN_ROLE) {
		// TODO:  ??? erc4626.requireNonZeroAddress();
		isERC4626[erc4626] = enabled;
		emit RegisteredERC4626(erc4626, enabled);
	}

	/**
	 * @notice Gets a price for an amount from a bpt in reference asset
	 * @param erc4626 ERC4626 Vault address
	 * @param amount The amount of bpt
	 * @return referenceValue The value of the bpt amount in referense asset
	 * @return oldestObservation The oldest observation timestamp
	 */
	function tokenReferenceValue(address erc4626, uint256 amount) public view override returns (uint256 referenceValue, uint256 oldestObservation) {
		if (!isERC4626[erc4626]) return (0, 0);
		address token = IERC4626(erc4626).asset();
		uint256 tokenAmount = IERC4626(erc4626).convertToAssets(amount);
		return IReferenceAssetOracle(referenceAssetOracle).tokenReferenceValue(token, tokenAmount);
	}

	function getPrice(address base, address quote) public view override returns (uint256 value, uint256 oldestObservation) {
		if (isERC4626[base]) {
			return _getPrice(base, quote);
		}
		if (!isERC4626[quote]) return (0, 0);
		// when they request getPrice(referenceAsset, ERC4626), we can calculate it by doing 1/getPrice(ERC4626, referenceAsset)
		(value, oldestObservation) = _getPrice(quote, base);
		uint256 baseDecimals = IERC20Metadata(base).decimals();
		uint256 quoteDecimals = IERC20Metadata(quote).decimals();
		value = FixedPointMathLib.fullMulDiv(10 ** baseDecimals, 10 ** quoteDecimals, value);
	}

	/**
	 * @notice Gets the price of an ERC4626 vault share in quote token
	 * @param erc4626 the address of the erc4626 vault
	 * @param quote The address of the quote token
	 * @return value The value of the erc4626 vault share in quote token
	 * @return oldestObservation The oldest observation timestamp
	 */
	function _getPrice(address erc4626, address quote) private view returns (uint256 value, uint256 oldestObservation) {
		address token = IERC4626(erc4626).asset();
		uint256 tokenDecimals = IERC20Metadata(token).decimals();
		uint256 erc4626Decimals = IERC20Metadata(erc4626).decimals();
		(uint256 priceInQuote, uint256 observationTime) = IReferenceAssetOracle(referenceAssetOracle).getPrice(token, quote);
		uint256 tokenAmount = IERC4626(erc4626).convertToAssets(10 ** erc4626Decimals);
		value = FixedPointMathLib.fullMulDiv(priceInQuote, tokenAmount, 10 ** tokenDecimals);
		oldestObservation = observationTime;
	}
}
