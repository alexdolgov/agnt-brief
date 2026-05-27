// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.24;

import {Protocol} from "./Protocol.sol";

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Types} from "./libraries/Types.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {AccessControl} from "./libraries/AccessControl.sol";

import {ILiquidityPool} from "./interfaces/ILiquidityPool.sol";
import {IOptionRegistry} from "./interfaces/IOptionRegistry.sol";
import {IAuthority} from "./interfaces/IAuthority.sol";

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {EIP712Upgradeable} from "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

/**
 *  @title Contract used for all user facing options interactions
 *  @dev Interacts with liquidityPool to write options and quote their prices.
 *  @notice All amounts in collateral decimals for writes, e8 for buybacks
 */
contract PremiumOptionHandler is UUPSUpgradeable, AccessControl, ReentrancyGuardUpgradeable, EIP712Upgradeable {
	using SafeERC20 for IERC20;

	// Protocol management contracts
	ILiquidityPool public liquidityPool;
	Protocol public protocol;
	// asset that denominates the strike price
	address public strikeAsset;
	// asset that is used as the reference asset
	address public underlyingAsset;
	// asset that is used for collateral asset
	address public collateralAsset;

	// order id counter
	uint256 public orderIdCounter;
	// custom option orders (unified for writes and buybacks)
	mapping(uint256 => Types.Order) public orderStores;
	// nonces for signature replay protection
	mapping(address => uint256) public nonces;

	// custom order maximum time for liveness
	uint256 private constant MAX_ORDER_EXPIRY = 1800;

	// EIP-712 typehash for creating and executing an order with signature
	// isBuyback flag distinguishes between write orders (buyer) and buyback orders (seller)
	bytes32 private constant ORDER_TYPEHASH = 
		keccak256("Order(address counterparty,uint256 amount,uint256 price,uint64 optionExpiry,uint128 strike,bool isPut,address underlying,address strikeAsset,address collateral,bool isBuyback,uint256 nonce,uint256 deadline)");

	event OrderCreated(uint256 indexed orderId, bool isBuyback);
	event OrderExecuted(uint256 indexed orderId, bool isBuyback);
	event OrderDeleted(uint256 indexed orderId);

	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor() {
		_disableInitializers();
	}

	function initialize(
		address _authority,
		address _protocol,
		address _liquidityPool
	) external initializer {
		__UUPSUpgradeable_init();
		__ReentrancyGuard_init();
		__AccessControl_init(IAuthority(_authority));
		__EIP712_init("PremiumOptionHandler", "1");
		
		if (_authority == address(0) || _protocol == address(0) || _liquidityPool == address(0)) {
			revert("PremiumOptionHandler: Invalid address");
		}
		protocol = Protocol(_protocol);
		liquidityPool = ILiquidityPool(_liquidityPool);
		collateralAsset = liquidityPool.collateralAsset();
		underlyingAsset = liquidityPool.underlyingAsset();
		strikeAsset = liquidityPool.strikeAsset();
	}

	/**
	 * @notice creates an order for options - either to write (sell) or buyback
	 * @param _optionSeries the option token series - strike in e8
	 * @param _amount the number of options - collateral decimals for writes, e8 for buybacks
	 * @param _price the price per unit - in collateral decimals
	 * @param _orderExpiry seconds until order expires
	 * @param _counterparty buyer address for writes, seller address for buybacks
	 * @param _isBuyback true for buyback orders, false for write orders
	 * @return orderId the unique id of the order
	 */
	function createOrder(
		Types.OptionSeries memory _optionSeries,
		uint256 _amount,
		uint256 _price,
		uint256 _orderExpiry,
		address _counterparty,
		bool _isBuyback
	) external onlyOptionHandler returns (uint256) {
		if (_price == 0) {
			revert("PremiumOptionHandler: Invalid price");
		}
		if (_orderExpiry > MAX_ORDER_EXPIRY) {
			revert("PremiumOptionHandler: Order expiry too long");
		}
		if (_counterparty == address(0)) {
			revert("PremiumOptionHandler: Invalid counterparty");
		}

		IOptionRegistry optionRegistry = getOptionRegistry();
		address series;

		if (_isBuyback) {
			// For buyback, verify series exists
			series = optionRegistry.getOtoken(
				_optionSeries.underlying,
				_optionSeries.strikeAsset,
				_optionSeries.expiration,
				_optionSeries.isPut,
				_optionSeries.strike,
				_optionSeries.collateral
			);
			if (series == address(0)) {
				revert("PremiumOptionHandler: Series does not exist");
			}
		} else {
			// For write, issue the option type
			series = liquidityPool.handlerIssue(_optionSeries);
		}

		Types.Order memory order = Types.Order(
			_optionSeries, // strike in e8
			_amount, 
			_price,
			block.timestamp + _orderExpiry,
			_counterparty,
			series,
			_isBuyback
		);

		uint256 orderIdCounter__ = orderIdCounter + 1;
		orderStores[orderIdCounter__] = order;
		emit OrderCreated(orderIdCounter__, _isBuyback);
		orderIdCounter = orderIdCounter__;
		return orderIdCounter__;
	}

	/**
	 * @notice executes an order - handles both write and buyback orders
	 * @param _orderId the id of the order to execute
	 */
	function executeOrder(uint256 _orderId) external nonReentrant { 
		Types.Order memory order = orderStores[_orderId];
		
		// Check sender is the designated counterparty
		if (msg.sender != order.counterparty) {
			revert("PremiumOptionHandler: Invalid counterparty");
		}
		// Check order hasn't expired
		if (block.timestamp > order.orderExpiry) {
			revert("PremiumOptionHandler: Order expired");
		}

		bool isBuyback = order.isBuyback;

		// CEI: Delete order and emit event before external calls
		delete orderStores[_orderId];
		emit OrderExecuted(_orderId, isBuyback);

		if (isBuyback) {
			_executeBuyback(order);
		} else {
			_executeWrite(order);
		}
	}

	/**
	 * @notice internal function to execute a write order
	 */
	function _executeWrite(Types.Order memory order) internal {
		uint256 collateralScale = 10**ERC20(collateralAsset).decimals();
		uint256 premium = (order.amount * order.price) / collateralScale;

		// Skip transfer for zero premium (some tokens revert on zero transfers)
		if (premium > 0) {
			IERC20(collateralAsset).safeTransferFrom(
				order.counterparty,
				address(liquidityPool),
				premium
			);
		}

		// Write the option contract
		liquidityPool.handlerWriteOption(
			order.optionSeries,
			order.seriesAddress,
			order.amount,
			getOptionRegistry(),
			premium,
			order.counterparty
		);
	}

	/**
	 * @notice internal function to execute a buyback order
	 */
	function _executeBuyback(Types.Order memory order) internal {
		// For buybacks: amount is in e8 (oToken decimals), price is in collateral decimals
		uint256 premium = (order.amount * order.price) / 1e8;

		// Execute buyback - pool pays premium to seller, seller returns oTokens
		liquidityPool.handlerBuybackOption(
			order.optionSeries,
			order.amount,
			getOptionRegistry(),
			order.seriesAddress,
			premium,
			order.counterparty
		);
	}

	/**
	 * @notice creates and executes an order using an EIP-712 signature,
	 *         allowing the manager to issue/buyback options in a single transaction
	 * @param _counterparty buyer for writes, seller for buybacks
	 * @param _amount the number of options
	 * @param _price the price per unit - in collateral decimals
	 * @param _optionSeries the option token series
	 * @param _isBuyback true for buyback, false for write
	 * @param _deadline the deadline for signature validity
	 * @param _v the v component of the signature
	 * @param _r the r component of the signature
	 * @param _s the s component of the signature
	 */
	function createAndExecuteOrderWithSignature(
		address _counterparty,
		uint256 _amount,
		uint256 _price,
		Types.OptionSeries memory _optionSeries,
		bool _isBuyback,
		uint256 _deadline,
		uint8 _v,
		bytes32 _r,
		bytes32 _s
	) external onlyOptionHandler nonReentrant returns(uint256) {
		if (block.timestamp > _deadline) { 
			revert("PremiumOptionHandler: Signature expired");
		}
		if (_price == 0) {
			revert("PremiumOptionHandler: Invalid price");
		}

		_verifySignature(
			_counterparty,
			_amount,
			_price,
			_optionSeries,
			_isBuyback,
			_deadline,
			_v,
			_r,
			_s
		);

		IOptionRegistry optionRegistry = getOptionRegistry();
		address series;

		if (_isBuyback) {
			// Verify series exists for buyback
			series = optionRegistry.getOtoken(
				_optionSeries.underlying,
				_optionSeries.strikeAsset,
				_optionSeries.expiration,
				_optionSeries.isPut,
				_optionSeries.strike,
				_optionSeries.collateral
			);
			if (series == address(0)) {
				revert("PremiumOptionHandler: Series does not exist");
			}

			uint256 premium = (_amount * _price) / 1e8;

			liquidityPool.handlerBuybackOption(
				_optionSeries,
				_amount,
				optionRegistry,
				series,
				premium,
				_counterparty
			);
		} else {
			// Issue option for write
			series = liquidityPool.handlerIssue(_optionSeries);

			uint256 collateralScale = 10**ERC20(collateralAsset).decimals();
			uint256 premium = (_amount * _price) / collateralScale;

			// Skip transfer for zero premium (some tokens revert on zero transfers)
			if (premium > 0) {
				IERC20(collateralAsset).safeTransferFrom(_counterparty, address(liquidityPool), premium);
			}

			liquidityPool.handlerWriteOption(
				_optionSeries,
				series,
				_amount,
				optionRegistry,
				premium,
				_counterparty
			);
		}

		orderIdCounter++;
		emit OrderCreated(orderIdCounter, _isBuyback);
		emit OrderExecuted(orderIdCounter, _isBuyback);
		
		return orderIdCounter;
	}

	/**
	 * @notice internal function to verify EIP-712 signature for order creation
	 */
	function _verifySignature(
		address _counterparty,
		uint256 _amount,
		uint256 _price,
		Types.OptionSeries memory _optionSeries,
		bool _isBuyback,
		uint256 _deadline,
		uint8 _v,
		bytes32 _r,
		bytes32 _s
	) internal {
		uint256 nonce = nonces[_counterparty];

		bytes32 structHash = keccak256(
			abi.encode(
				ORDER_TYPEHASH,
				_counterparty,
				_amount,
				_price,
				_optionSeries.expiration,
				_optionSeries.strike,
				_optionSeries.isPut,
				_optionSeries.underlying,
				_optionSeries.strikeAsset,
				_optionSeries.collateral,
				_isBuyback,
				nonce,
				_deadline
			)
		);

		bytes32 digest = _hashTypedDataV4(structHash);
		address signer = ECDSA.recover(digest, _v, _r, _s);

		if (signer != _counterparty) {
			revert("PremiumOptionHandler: Invalid signature");
		}

		nonces[_counterparty] = nonce + 1;
	}

	/**
	 * @notice allows the manager to delete an order
	 * @param _orderId the id of the order to delete
	 */
	function deleteOrder(uint256 _orderId) external onlyOptionHandler {
		if (orderStores[_orderId].counterparty == address(0)) {
			revert("PremiumOptionHandler: Order does not exist");
		}
		delete orderStores[_orderId];
		emit OrderDeleted(_orderId);
	}

	/**
	 * @notice get the option registry used for storing and managing the options
	 * @return the option registry contract
	 */
	function getOptionRegistry() internal view returns (IOptionRegistry) {
		return IOptionRegistry(protocol.optionRegistry());
	}

	/**
	 * @notice returns the EIP-712 domain separator
	 * @return the domain separator for this contract
	 */
	function DOMAIN_SEPARATOR() external view returns (bytes32) {
		return _domainSeparatorV4();
	}

	function _authorizeUpgrade(address newImplementation) internal view override onlyUpgrader {
		newImplementation; 
	}
}
