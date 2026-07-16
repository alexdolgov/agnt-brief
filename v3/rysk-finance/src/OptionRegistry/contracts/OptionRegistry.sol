// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.24;


import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {AccessControl} from "./libraries/AccessControl.sol";
import { Types } from "./libraries/Types.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { OpynInteractions } from "./libraries/OpynInteractions.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {AddressBookInterface} from "./interfaces/AddressBookInterface.sol";
import {IAuthority} from "./interfaces/IAuthority.sol";
import {IOptionRegistry} from "./interfaces/IOptionRegistry.sol";
import { IController, IOtoken, IOtokenFactory } from "./interfaces/GammaInterface.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/**
 *  @title Contract used for conducting options issuance and settlement as well as collateral management
 *  @dev Interacts with the opyn-rysk gamma protocol via OpynInteractions for options activity. Interacts with
 *       the liquidity pool for collateral and instructions.
 */
contract OptionRegistry is IOptionRegistry, UUPSUpgradeable, AccessControl {
	using SafeERC20 for IERC20;
	using EnumerableSet for EnumerableSet.UintSet;

	// address of the opyn oTokenFactory for oToken minting
	address internal oTokenFactory;
	// address of the gammaController for oToken operations
	address public override gammaController;
	// address of the collateralAsset
	address public collateralAsset;
	// address of the opyn addressBook for accessing important opyn modules
	AddressBookInterface public addressBook;
	// address of the marginPool, contract for storing options collateral
	address internal marginPool;

	// information of a series
	mapping(address => Types.OptionSeries) public seriesInfo;
	// vaultId that is responsible for a specific series address
	mapping(address => uint256) public override vaultIds;
	// issuance hash mapped against the series address
	mapping(bytes32 => address) seriesAddress;
	// mapping from expiry to array of series addresses
	mapping(uint256 => address[]) internal seriesByExpiry; 
	// set of active expiries (expiries that have non-settled options)
	EnumerableSet.UintSet private activeExpiries;
	// vault counter
	uint64 public vaultCount;

	// address of the rysk liquidity pools
	address public liquidityPool;

	event OptionTokenCreated(address indexed token);
	event SeriesRedeemed(address indexed series, uint256 underlyingAmount, uint256 strikeAmount);
	event OptionsContractOpened(address indexed series, uint256 vaultId, uint256 optionsAmount);
	event OTokensRedeemed(address indexed series, address indexed redeemer, uint256 amount, uint256 collateralReceived);
	event OptionsContractClosed(address indexed series, uint256 vaultId, uint256 closedAmount);
	event OptionsContractSettled(
		address indexed series,
		uint256 collateralReturned,
		uint256 collateralLost,
		uint256 amountLost
	);
	event VaultLiquidationRegistered(
		address indexed series,
		uint256 vaultId,
		uint256 amountLiquidated,
		uint256 collateralLiquidated
	);

	modifier isLiquidityPool() {
		if (msg.sender != liquidityPool) {
			revert("OptionRegistry: Not liquidity pool");
		}
		_;
	}

	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor() {
		_disableInitializers();
	}

	function initialize(
		address _collateralAsset,
		address _oTokenFactory,
		address _gammaController,
		address _marginPool,
		address _liquidityPool,
		address _addressBook,
		address _authority
	) external initializer {
		__UUPSUpgradeable_init();
		__AccessControl_init(IAuthority(_authority));
		
		if (_collateralAsset == address(0) || 
		_oTokenFactory == address(0) || 
		_gammaController == address(0) || 
		_marginPool == address(0) || 
		_liquidityPool == address(0) || 
		_addressBook == address(0) ||
		_authority == address(0)) {
			revert("OptionRegistry: Invalid address");
		}
		collateralAsset = _collateralAsset;
		oTokenFactory = _oTokenFactory;
		gammaController = _gammaController;
		marginPool = _marginPool;
		liquidityPool = _liquidityPool;
		addressBook = AddressBookInterface(_addressBook);
	}

	/**
	 * @notice Set the liquidity pool address
	 * @param  _newLiquidityPool set the liquidityPool address
	 */
	function setLiquidityPool(address _newLiquidityPool) external onlyGovernor {
		liquidityPool = _newLiquidityPool;
	}

	/**
	 * @notice Either retrieves the option token if it already exists, or deploy it
	 * @param  optionSeries the series used for the mint - strike in e8 format (Opyn format)
	 * @return the address of the option
	 */
	function issue(Types.OptionSeries memory optionSeries) external override isLiquidityPool returns (address) {
		// deploy an oToken contract address
		if (optionSeries.expiration <= block.timestamp) {
			revert("OptionRegistry: Already expired");
		}
		// Strike passed in e8 (Opyn format)
		// create option storage hash
		bytes32 issuanceHash = getIssuanceHash(
			optionSeries.underlying,
			optionSeries.strikeAsset,
			optionSeries.collateral,
			optionSeries.expiration,
			optionSeries.isPut,
			optionSeries.strike
		);
		// check for an opyn oToken if it doesn't exist deploy it
		address series = OpynInteractions.getOrDeployOtoken(
			oTokenFactory,
			optionSeries.collateral,
			optionSeries.underlying,
			optionSeries.strikeAsset,
			optionSeries.strike,
			optionSeries.expiration,
			optionSeries.isPut
		);
		// only store if series doesn't already exist (prevents duplicates in seriesByExpiry)
		if (seriesInfo[series].expiration == 0) {
			seriesInfo[series] = Types.OptionSeries(
				optionSeries.expiration,
				optionSeries.strike,
				optionSeries.isPut,
				optionSeries.underlying,
				optionSeries.strikeAsset,
				optionSeries.collateral
			);
			seriesAddress[issuanceHash] = series;
			seriesByExpiry[optionSeries.expiration].push(series);
			emit OptionTokenCreated(series);
		}
		return series;
	}

	/**
	 * @notice Open an options contract using collateral from the liquidity pool
	 * @param  _series the address of the option token to be created
	 * @param  amount the amount of options to deploy - in e8 (oToken standard)
	 * @param  collateralAmount the collateral required for the option - assumes in collateral decimals
	 * @dev only callable by the liquidityPool
	 * @return if the transaction succeeded
	 * @return the amount of collateral taken from the liquidityPool
	 */
	function open(
		address _series, // assumes strike in e8
		uint256 amount,
		uint256 collateralAmount
	) external override isLiquidityPool returns (bool, uint256) {
		// make sure the options are ok to open
		Types.OptionSeries memory series = seriesInfo[_series];
		if (series.expiration <= block.timestamp) {
			revert("OptionRegistry: Already expired");
		}
		// transfer collateral to this contract, collateral will depend on the option type
		IERC20(series.collateral).safeTransferFrom(msg.sender, address(this), collateralAmount);
		// mint the option token following the opyn interface
		IController controller = IController(gammaController);
		// check if a vault for this option already exists
		uint256 vaultId_ = vaultIds[_series];
		if (vaultId_ == 0) {
			vaultId_ = (controller.getAccountVaultCounter(address(this))) + 1;
			vaultCount++;
		}
		uint256 mintAmount = OpynInteractions.createShort(
			gammaController,
			marginPool,
			_series,
			collateralAmount,
			vaultId_,
			amount,
			0 // Opyn Vault Type 0 = fully collateralized vault
		);
		emit OptionsContractOpened(_series, vaultId_, mintAmount);
		// transfer the option to the liquidity pool
		IERC20(_series).safeTransfer(msg.sender, mintAmount);
		vaultIds[_series] = vaultId_;
		// add expiry to active expiries if this is the first option for this expiry
		if (!activeExpiries.contains(series.expiration)) {
			activeExpiries.add(series.expiration);
		}
		// returns in collateral decimals
		return (true, collateralAmount);
	}

	/**
	 * @notice Close/reduce an options position by burning oTokens and withdrawing collateral
	 * @param  _series the address of the option token to burn
	 * @param  amount the amount of oTokens to burn - in e8 (oToken standard)
	 * @param  from the address holding the oTokens (must have approved this contract)
	 * @dev only callable by the liquidityPool
	 * @return if the transaction succeeded
	 * @return the amount of collateral returned to the liquidityPool
	 */
	function close(
		address _series,
		uint256 amount,
		address from
	) external override isLiquidityPool returns (bool, uint256) {
		Types.OptionSeries memory series = seriesInfo[_series];
		if (series.expiration == 0) {
			revert("OptionRegistry: Non-existent series");
		}
		if (series.expiration <= block.timestamp) {
			revert("OptionRegistry: Already expired");
		}
		
		uint256 vaultId = vaultIds[_series];
		if (vaultId == 0) {
			revert("OptionRegistry: No vault for series");
		}
		
		// Transfer oTokens from seller to this contract
		IERC20(_series).safeTransferFrom(from, address(this), amount);
		
		// Burn the oTokens and withdraw collateral
		uint256 collateralReturned = OpynInteractions.burnShort(
			gammaController,
			marginPool,
			_series,
			amount,
			vaultId
		);
		
		// Transfer collateral back to liquidity pool (skip if zero to avoid revert on some tokens)
		if (collateralReturned > 0) {
			IERC20(series.collateral).safeTransfer(msg.sender, collateralReturned);
		}
		
		emit OptionsContractClosed(_series, vaultId, amount);
		return (true, collateralReturned);
	}

	/**
	 * @notice Settle an options vault
	 * @param  _series the address of the option token to be burnt
	 * @return  if the transaction succeeded
	 * @return  the amount of collateral returned from the vault
	 * @return  the amount of collateral used to pay ITM options on vault settle
	 * @return  number of oTokens that the vault was short
	 * @return  the Opyn vault ID
	 * @dev callable by the liquidityPool so that local variables can also be updated
	 */
	function settle(address _series) 
		external override isLiquidityPool
		returns (
			bool,
			uint256,
			uint256,
			uint256,
			uint256
		)
	{
		Types.OptionSeries memory series = seriesInfo[_series];
		// strike will be in e8
		if (series.expiration == 0) {
			revert("OptionRegistry: Non-existent series");
		}
		// check that the option has expired (allow at exact expiration per Gamma protocol)
		if (series.expiration > block.timestamp) {
			revert("OptionRegistry: Not expired");
		}
		// get the vault
		uint256 vaultId = vaultIds[_series];
		// settle the vault
		(uint256 collatReturned, uint256 collatLost, uint256 amountShort) = OpynInteractions.settle( 
			gammaController,
			vaultId
		);
		// remove expiry from active expiries if it's tracked (once any option settles, expiry is no longer active)
		if (activeExpiries.contains(series.expiration)) {
			activeExpiries.remove(series.expiration);
		}
		// transfer the collateral back to the liquidity pool (skip if zero to avoid revert on some tokens)
		if (collatReturned > 0) {
			IERC20(series.collateral).safeTransfer(liquidityPool, collatReturned);
		}
		emit OptionsContractSettled(_series, collatReturned, collatLost, amountShort);
		// assumes in collateral decimals, collateral decimals, e8
		return (true, collatReturned, collatLost, amountShort, vaultId);
	}

	/**
	 * @notice Redeem oTokens for collateral payout
	 * @param  _series the address of the option token to redeem
	 * @param  _amount the amount of oTokens to redeem (prevents frontrunning griefing)
	 * @return collateralRedeemed the amount of collateral received
	 * @dev validates oToken exists in Opyn factory, redeemable through any registry
	 */
	function redeem(address _series, uint256 _amount) external override returns (uint256 collateralRedeemed) {
		if (_amount == 0) {
			revert("OptionRegistry: Zero amount");
		}
		
		// Read oToken params and verify it exists in Opyn's factory
		IOtoken otoken = IOtoken(_series);
		address underlying = otoken.underlyingAsset();
		address strikeAsset = otoken.strikeAsset();
		address collateral = otoken.collateralAsset();
		uint256 strike = otoken.strikePrice();
		uint256 expiration = otoken.expiryTimestamp();
		bool isPut = otoken.isPut();
		
		address factoryOtoken = IOtokenFactory(oTokenFactory).getOtoken(
			underlying,
			strikeAsset,
			collateral,
			strike,
			expiration,
			isPut
		);
		if (factoryOtoken != _series) {
			revert("OptionRegistry: Invalid oToken");
		}
		// Allow redemption at exact expiration per Gamma protocol
		if (expiration > block.timestamp) {
			revert("OptionRegistry: Not expired");
		}
		
		IERC20(_series).safeTransferFrom(msg.sender, address(this), _amount);
		collateralRedeemed = OpynInteractions.redeem(
			gammaController,
			marginPool,
			_series,
			_amount
		);
		
		// Transfer redeemed collateral to caller
		if (collateralRedeemed > 0) {
			IERC20(collateral).safeTransfer(msg.sender, collateralRedeemed);
		}
		
		emit OTokensRedeemed(_series, msg.sender, _amount, collateralRedeemed);
	}

	/**
	 * @notice Retrieves the option token if it exists
	 * @param  underlying is the address of the underlying asset of the option
	 * @param  strikeAsset is the address of the collateral asset of the option
	 * @param  expiration is the expiry timestamp of the option
	 * @param  isPut the type of option
	 * @param  strike is the strike price of the option - 1e8 format
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
	) external view override returns (address) {
		// check for an opyn oToken
		address series = OpynInteractions.getOtoken(
			oTokenFactory,
			collateral,
			underlying,
			strikeAsset,
			strike,
			expiration,
			isPut
		);
		return series;
	}

	function getSeriesAddress(bytes32 issuanceHash) external view returns (address) {
		return seriesAddress[issuanceHash];
	}

	function getSeries(Types.OptionSeries memory _series) external view returns (address) {
		return
			seriesAddress[
				getIssuanceHash(
					_series.underlying,
					_series.strikeAsset,
					_series.collateral,
					_series.expiration,
					_series.isPut,
					_series.strike
				)
			];
	}

	function getSeriesInfo(address series) external view override returns (Types.OptionSeries memory) {
		return seriesInfo[series];
	}

	/**
	 * @notice Get all option series for a specific expiry
	 * @param  expiration the expiry timestamp
	 * @return an array of all series addresses for the given expiry
	 */
	function getSeriesByExpiry(uint256 expiration) external view returns (address[] memory) {
		return seriesByExpiry[expiration];
	}

	/**
	 * @notice Get a slice of option series for a specific expiry
	 * @param  expiration the expiry timestamp
	 * @param  start the starting index (inclusive)
	 * @param  end the ending index (exclusive)
	 * @return an array of series addresses for the given expiry within the specified range
	 * @dev reverts if start >= end or if end > array length
	 */
	function getSeriesByExpirySlice(
		uint256 expiration, 
		uint256 start, 
		uint256 end
	) external view returns (address[] memory) {
		address[] storage allSeries = seriesByExpiry[expiration];
		if (start >= end) {
			revert("OptionRegistry: Invalid range");
		}
		if (end > allSeries.length) {
			revert("OptionRegistry: End index out of bounds");
		}
		
		uint256 length = end - start;
		address[] memory slicedSeries = new address[](length);
		
		for (uint256 i = 0; i < length; i++) {
			slicedSeries[i] = allSeries[start + i];
		}
		
		return slicedSeries;
	}

	/**
	 * @notice Get the count of option series for a specific expiry
	 * @param  expiration the expiry timestamp
	 * @return the number of series for the given expiry
	 */
	function getSeriesCountByExpiry(uint256 expiration) external view returns (uint256) { 
		return seriesByExpiry[expiration].length;
	}

	/**
	 * @notice Get all active expiries (expiries that have non-settled options)
	 * @return array of expiry timestamps that have active options
	 * NOTE: if any option gets settled for an expiry we assume that the expiry is no longer active
	 */
	function getActiveExpiries() external view returns (uint256[] memory) {
		uint256 length = activeExpiries.length();
		uint256[] memory expiries = new uint256[](length);
		for (uint256 i = 0; i < length; i++) {
			expiries[i] = activeExpiries.at(i);
		}
		return expiries;
	}

	function getIssuanceHash(Types.OptionSeries memory _series) public pure returns (bytes32) {
		return
			getIssuanceHash(
				_series.underlying,
				_series.strikeAsset,
				_series.collateral,
				_series.expiration,
				_series.isPut,
				_series.strike
			);
	}

	/**
	 * Helper function for computing the hash of a given issuance.
	 */
	function getIssuanceHash(
		address underlying,
		address strikeAsset,
		address collateral,
		uint256 expiration,
		bool isPut, //TODO - since this was presented as a cc vault there are no tests for puts, need to add them
		uint256 strike
	) internal pure returns (bytes32) {
		return
			keccak256(abi.encodePacked(underlying, strikeAsset, collateral, expiration, isPut, strike));
	}

	function _authorizeUpgrade(address newImplementation) internal view override onlyUpgrader {
		newImplementation;
	}
}
