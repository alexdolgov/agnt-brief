// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.18;

import { OwnableUninitialized } from "./OwnableUninitialized.sol";
import { IPancakeV3Pool } from "@pancakeswap/v3-core/contracts/interfaces/IPancakeV3Pool.sol";
import { IUniswapV3TickSpacing } from "../interfaces/IUniswapV3TickSpacing.sol";
import { TickMath } from "../pancakeswap/TickMath.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
// solhint-disable max-line-length
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
// solhint-enable max-line-length
import { IGrizzlyVaultStorage } from "../interfaces/IGrizzlyVaultStorage.sol";

/// @dev Single Global upgradeable state var storage base
/// @dev Add all inherited contracts with state vars here
/// @dev ERC20Upgradable Includes Initialize
// solhint-disable-next-line max-states-count
abstract contract GrizzlyVaultStorage is
	IGrizzlyVaultStorage,
	ERC20Upgradeable,
	ReentrancyGuardUpgradeable,
	OwnableUninitialized
{
	Ticks public baseTicks;

	uint24 public oracleSlippage;
	uint32 public oracleSlippageInterval;

	uint24 public managerFee;
	address public managerTreasury;

	uint256 public managerBalance0;
	uint256 public managerBalance1;

	IPancakeV3Pool public pool;
	IERC20 public token0;
	IERC20 public token1;
	uint24 public uniPoolFee;

	/* solhint-disable */
	uint32 internal constant MIN_INITIAL_SHARES = 1e9;
	uint24 internal constant basisOne = 1000000;
	uint16 internal constant basisOneSqrt = 1000;
	/* solhint-enable */

	// How much slippage we allow between swaps -> 5000 = 0.5% slippage
	uint24 public slippageUserMax;
	uint24 public slippageRebalanceMax;

	address public immutable factory = 0x0BFbCF9fa4f9C56B0F40a671Ad40E0805A091865;

	address public keeperAddress;
	address public pancakeV3HelperAddress;

	event UpdateGrizzlyParams(uint24 oracleSlippage, uint32 oracleSlippageInterval);
	event SetKeeperAddress(address keeperAddress);
	event SetPancakeV3HelperAddress(address helperAddress);
	event SetManagerParams(
		uint24 managerFee,
		uint24 slippageUserMax,
		uint24 slippageRebalanceMax
	);

	modifier onlyAuthorized() {
		require(msg.sender == manager() || msg.sender == keeperAddress, "NA"); //not authorized
		_;
	}

	/// @notice Initialize storage variables on a new Grizzly vault pool, only called once
	/// @param _name Name of Grizzly vault token
	/// @param _symbol Symbol of Grizzly vault token
	/// @param _pool Address of Pancakeswap V3 pool
	/// Note that the 3 above params are NOT UPDATABLE AFTER INITIALIZATION
	/// @param _managerFee Proportion of fees earned that go to manager treasury
	/// @param _lowerTick Initial lowerTick (only changeable with executiveRebalance)
	/// @param _lowerTick Initial upperTick (only changeable with executiveRebalance)
	/// @param _manager_ Address of manager (ownership can be transferred)
	function initialize(
		string memory _name,
		string memory _symbol,
		address _pool,
		uint24 _managerFee,
		int24 _lowerTick,
		int24 _upperTick,
		address _manager_
	) external override initializer {
		require(_managerFee <= basisOne, "FH"); //fee too high

		require(_validateTickSpacing(_pool, _lowerTick, _upperTick), "TM"); //tickSpacing mismatch

		// These variables are immutable after initialization
		pool = IPancakeV3Pool(_pool);
		token0 = IERC20(pool.token0());
		token1 = IERC20(pool.token1());
		uniPoolFee = pool.fee();
		managerFee = _managerFee; // if set to 0 here manager can still initialize later

		// These variables can be updated by the manager
		slippageUserMax = 5000; // default: 0.5% slippage
		slippageRebalanceMax = 5000; // default: 0.5% slippage
		oracleSlippageInterval = 5 minutes; // default: last five minutes;
		oracleSlippage = 5000; // default: 0.5% slippage

		managerTreasury = _manager_; // default: treasury is admin

		baseTicks.lowerTick = _lowerTick;
		baseTicks.upperTick = _upperTick;

		_manager = _manager_;

		// e.g. "Grizzly Uniswap USDC/DAI LP" and "hsUSDC-DAI"
		__ERC20_init(_name, _symbol);
		__ReentrancyGuard_init();
	}

	/// @notice Change configurable parameters, only manager can call
	/// @param newOracleSlippage Maximum slippage on swaps during Grizzly rebalance.
	/// Accepts values from 0 to 1000000, e.g. 5000 <-> 0.5%
	/// @param newOracleSlippageInterval Length of time for TWAP used in computing slippage on swaps
	/// @param newTreasury Address where managerFee withdrawals are sent
	function updateConfigParams(
		uint24 newOracleSlippage,
		uint32 newOracleSlippageInterval,
		address newTreasury
	) external onlyManager {
		require(newOracleSlippage <= basisOne, "SH"); //slippage too high

		if (newOracleSlippage != 0) oracleSlippage = newOracleSlippage;
		if (newOracleSlippageInterval != 0) oracleSlippageInterval = newOracleSlippageInterval;
		emit UpdateGrizzlyParams(newOracleSlippage, newOracleSlippageInterval);

		if (newTreasury != address(0)) managerTreasury = newTreasury;
	}

	/// @notice setPancakeV3HelperAddress sets the contract helper address for view methods
	function setPancakeV3HelperAddress(address _pancakeV3HelperAddress) external onlyManager {
		require(_pancakeV3HelperAddress != address(0), "ZA"); //zeroAddress
		pancakeV3HelperAddress = _pancakeV3HelperAddress;
		emit SetPancakeV3HelperAddress(pancakeV3HelperAddress);
	}

	/// @notice setKeeperAddress sets the address for the automation keeper that will
	/// manage some function in the vault
	function setKeeperAddress(address _keeperAddress) external onlyManager {
		require(_keeperAddress != address(0), "ZA"); //zeroAddress
		keeperAddress = _keeperAddress;
		emit SetKeeperAddress(keeperAddress);
	}

	/// @notice setManagerParams sets slippages, only manager can call
	/// @param _managerFee Proportion of fees earned that are credited to manager.
	// /// Accepts values from 1 to 1000000, e.g. 5000 <-> 0.5%
	/// @param _slippageUserMax new maximum user slippage. Accepts values
	/// from 0 to 1000000, e.g. 5000 <-> 0.5%
	/// @param _slippageRebalanceMax new maximum rebalance slippage. Accepts values
	/// from 0 to 1000000, e.g. 5000 <-> 0.5%
	function setManagerParams(
		uint24 _managerFee,
		uint24 _slippageUserMax,
		uint24 _slippageRebalanceMax
	) external onlyManager {
		require(
			_slippageUserMax <= basisOne &&
				_slippageRebalanceMax <= basisOne &&
				_managerFee > 0 &&
				_managerFee <= basisOne,
			"WI"
		); // wrong inputs
		managerFee = _managerFee;
		slippageUserMax = _slippageUserMax;
		slippageRebalanceMax = _slippageRebalanceMax;

		emit SetManagerParams(managerFee, slippageUserMax, slippageRebalanceMax);
	}

	function _validateTickSpacing(
		address uniPool,
		int24 lowerTick,
		int24 upperTick
	) internal view returns (bool) {
		int24 spacing = IUniswapV3TickSpacing(uniPool).tickSpacing();
		return
			lowerTick < upperTick &&
			lowerTick % spacing == 0 &&
			upperTick % spacing == 0 &&
			lowerTick >= TickMath.MIN_TICK &&
			upperTick <= TickMath.MAX_TICK;
	}
}
