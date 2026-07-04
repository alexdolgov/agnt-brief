// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;
pragma experimental ABIEncoderV2;

// solhint-disable no-global-import,custom-errors

import "../interfaces/IManager.sol";
import "../interfaces/ILiquidityPool.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import { IERC20Upgradeable as IERC20 } from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import { SafeERC20Upgradeable as SafeERC20 } from "@openzeppelin/contracts-upgradeable/token/ERC20/SafeERC20Upgradeable.sol";
import { EnumerableSetUpgradeable as EnumerableSet } from "@openzeppelin/contracts-upgradeable/utils/EnumerableSetUpgradeable.sol";
import { SafeMathUpgradeable as SafeMath } from "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import { AccessControlUpgradeable as AccessControl } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "../interfaces/events/Destinations.sol";
import "../interfaces/events/CycleRolloverEvent.sol";
import "../interfaces/events/IEventSender.sol";

//solhint-disable not-rely-on-time
//solhint-disable var-name-mixedcase
contract Manager is IManager, Initializable, AccessControl, IEventSender {
	using SafeMath for uint256;
	using SafeERC20 for IERC20;
	using Address for address;
	using EnumerableSet for EnumerableSet.AddressSet;
	using EnumerableSet for EnumerableSet.Bytes32Set;

	bytes32 public immutable ADMIN_ROLE = keccak256("ADMIN_ROLE");
	bytes32 public immutable ROLLOVER_ROLE = keccak256("ROLLOVER_ROLE");
	bytes32 public immutable MID_CYCLE_ROLE = keccak256("MID_CYCLE_ROLE");
	bytes32 public immutable START_ROLLOVER_ROLE = keccak256("START_ROLLOVER_ROLE");
	bytes32 public immutable ADD_LIQUIDITY_ROLE = keccak256("ADD_LIQUIDITY_ROLE");
	bytes32 public immutable REMOVE_LIQUIDITY_ROLE = keccak256("REMOVE_LIQUIDITY_ROLE");
	bytes32 public immutable MISC_OPERATION_ROLE = keccak256("MISC_OPERATION_ROLE");

	uint256 private _currentCycle; // Start timestamp of current cycle - Not updated, but still used to track cycles
	uint256 private _currentCycleIndex; // Uint representing current cycle - Not updated, used for cycle tracking
	uint256 public cycleDuration; // Cycle duration in seconds

	bool public rolloverStarted; // DEPRECATED - No longer a gap during rollover

	// Bytes32 controller id => controller address
	mapping(bytes32 => address) public registeredControllers;
	// Cycle index => ipfs rewards hash
	mapping(uint256 => string) public override cycleRewardsHashes; // DEPRECATED
	EnumerableSet.AddressSet private pools;
	EnumerableSet.Bytes32Set private controllerIds;

	// Reentrancy Guard
	bool private _entered;

	bool public _eventSend; // DEPRECATED - No L2 functionality
	Destinations public destinations; // DEPRECATED - No L2 functionality

	uint256 private _nextCycleStartTime; // DEPRECATED

	bool private isLogicContract;

	modifier onlyAdmin() {
		require(hasRole(ADMIN_ROLE, _msgSender()), "NOT_ADMIN_ROLE");
		_;
	}

	modifier onlyRollover() {
		require(hasRole(ROLLOVER_ROLE, _msgSender()), "NOT_ROLLOVER_ROLE");
		_;
	}

	modifier onlyMidCycle() {
		require(hasRole(MID_CYCLE_ROLE, _msgSender()), "NOT_MID_CYCLE_ROLE");
		_;
	}

	modifier nonReentrant() {
		require(!_entered, "ReentrancyGuard: reentrant call");
		_entered = true;
		_;
		_entered = false;
	}

	constructor() public {
		isLogicContract = true;
	}

	function initialize(uint256 _cycleDuration) public initializer {
		__Context_init_unchained();
		__AccessControl_init_unchained();

		cycleDuration = _cycleDuration;
		_currentCycle = block.timestamp;

		_setupRole(DEFAULT_ADMIN_ROLE, _msgSender());

		_setupRole(ADMIN_ROLE, _msgSender());
		_setupRole(ROLLOVER_ROLE, _msgSender());
		_setupRole(MID_CYCLE_ROLE, _msgSender());
		_setupRole(START_ROLLOVER_ROLE, _msgSender());
		_setupRole(ADD_LIQUIDITY_ROLE, _msgSender());
		_setupRole(REMOVE_LIQUIDITY_ROLE, _msgSender());
		_setupRole(MISC_OPERATION_ROLE, _msgSender());

		emit CycleDurationSet(_cycleDuration);
	}

	function registerController(bytes32 id, address controller) external override onlyAdmin {
		registeredControllers[id] = controller;
		require(controllerIds.add(id), "ADD_FAIL");
		emit ControllerRegistered(id, controller);
	}

	function unRegisterController(bytes32 id) external override onlyAdmin {
		emit ControllerUnregistered(id, registeredControllers[id]);
		delete registeredControllers[id];
		require(controllerIds.remove(id), "REMOVE_FAIL");
	}

	function registerPool(address pool) external override onlyAdmin {
		require(pools.add(pool), "ADD_FAIL");
		emit PoolRegistered(pool);
	}

	function unRegisterPool(address pool) external override onlyAdmin {
		require(pools.remove(pool), "REMOVE_FAIL");
		emit PoolUnregistered(pool);
	}

	function getPools() external view override returns (address[] memory) {
		uint256 poolsLength = pools.length();
		address[] memory returnData = new address[](poolsLength);
		for (uint256 i = 0; i < poolsLength; ++i) {
			returnData[i] = pools.at(i);
		}
		return returnData;
	}

	function getControllers() external view override returns (bytes32[] memory) {
		uint256 controllerIdsLength = controllerIds.length();
		bytes32[] memory returnData = new bytes32[](controllerIdsLength);
		for (uint256 i = 0; i < controllerIdsLength; ++i) {
			returnData[i] = controllerIds.at(i);
		}
		return returnData;
	}

	/// @notice Used for mid-cycle adjustments
	function executeMaintenance(MaintenanceExecution calldata params) external override onlyMidCycle nonReentrant {
		for (uint256 x = 0; x < params.cycleSteps.length; ++x) {
			_executeControllerCommand(params.cycleSteps[x]);
		}
	}

	function executeRollover(RolloverExecution calldata params) external override onlyRollover nonReentrant {
		// Transfer deployable liquidity out of the pools and into the manager
		for (uint256 i = 0; i < params.poolData.length; ++i) {
			require(pools.contains(params.poolData[i].pool), "INVALID_POOL");
			ILiquidityPool pool = ILiquidityPool(params.poolData[i].pool);
			IERC20 underlyingToken = pool.underlyer();
			underlyingToken.safeTransferFrom(address(pool), address(this), params.poolData[i].amount);
			emit LiquidityMovedToManager(params.poolData[i].pool, params.poolData[i].amount);
		}

		// Deploy or withdraw liquidity
		for (uint256 x = 0; x < params.cycleSteps.length; ++x) {
			_executeControllerCommand(params.cycleSteps[x]);
		}

		// Transfer recovered liquidity back into the pools; leave no funds in the manager
		for (uint256 y = 0; y < params.poolsForWithdraw.length; ++y) {
			require(pools.contains(params.poolsForWithdraw[y]), "INVALID_POOL");
			ILiquidityPool pool = ILiquidityPool(params.poolsForWithdraw[y]);
			IERC20 underlyingToken = pool.underlyer();

			uint256 managerBalance = underlyingToken.balanceOf(address(this));

			// transfer funds back to the pool if there are funds
			if (managerBalance > 0) {
				underlyingToken.safeTransfer(address(pool), managerBalance);
			}
			emit LiquidityMovedToPool(params.poolsForWithdraw[y], managerBalance);
		}
	}

	function sweep(address[] calldata poolAddresses) external override onlyRollover {
		uint256 length = poolAddresses.length;
		uint256[] memory amounts = new uint256[](length);

		for (uint256 i = 0; i < length; ++i) {
			address currentPoolAddress = poolAddresses[i];
			require(pools.contains(currentPoolAddress), "INVALID_ADDRESS");
			IERC20 underlyer = IERC20(ILiquidityPool(currentPoolAddress).underlyer());
			uint256 amount = underlyer.balanceOf(address(this));
			amounts[i] = amount;

			if (amount > 0) {
				underlyer.safeTransfer(currentPoolAddress, amount);
			}
		}
		emit ManagerSwept(poolAddresses, amounts);
	}

	function _executeControllerCommand(ControllerTransferData calldata transfer) private {
		require(!isLogicContract, "FORBIDDEN_CALL");

		address controllerAddress = registeredControllers[transfer.controllerId];
		require(controllerAddress != address(0), "INVALID_CONTROLLER");
		controllerAddress.functionDelegateCall(transfer.data, "CYCLE_STEP_EXECUTE_FAILED");
		emit DeploymentStepExecuted(transfer.controllerId, controllerAddress, transfer.data);
	}

	function getCurrentCycle() public view override returns (uint256) {
		return _currentCycle.add(((getCurrentCycleIndex().sub(_currentCycleIndex)).mul(cycleDuration)));
	}

	function getCycleDuration() external view override returns (uint256) {
		return cycleDuration;
	}

	function getCurrentCycleIndex() public view override returns (uint256) {
		return block.timestamp.sub(_currentCycle).div(cycleDuration).add(_currentCycleIndex);
	}

	/// @notice Returns calculated cycle start time
	/// @dev Mimics old `currentCycle` state variable, which is now private
	/// @return Cycle start time
	function currentCycle() external view returns (uint256) {
		return getCurrentCycle();
	}

	/// @notice Returns calculated cycle index
	/// @dev Mimics old `currentCycleIndex` state variable, which is now private
	/// @return Cycle index
	function currentCycleIndex() external view returns (uint256) {
		return getCurrentCycleIndex();
	}

	/// @notice Returns calculated next cycle start time
	/// @dev Mimics old `nextCycleStartTime`, which is now deprecated.
	/// @return Next cycle start timestamp
	function nextCycleStartTime() external view returns (uint256) {
		return getCurrentCycle().add(cycleDuration);
	}

	/// @notice This will always return false now, as there is no concept of being "in rollover"
	function getRolloverStatus() external view override returns (bool) {
		return false;
	}

	/// @dev DEPRECATED, function not removed due to inheritance chain, reverts on call
	function setDestinations(address, address) external override onlyAdmin {
		revert("DEPRECATED");
	}

	/// @dev DEPRECATED, function not removed due to inheritance chain, reverts on call
	function setEventSend(bool) external override onlyAdmin {
		revert("DEPRECATED");
	}

	function setupRole(bytes32 role) external override onlyAdmin {
		_setupRole(role, _msgSender());
	}

	function setCycleDuration(uint256 newDuration) external onlyAdmin {
		uint256 tmpCurrentCycle = getCurrentCycle();
		uint256 tmpCurrentCycleIndex = getCurrentCycleIndex();

		_currentCycle = tmpCurrentCycle;
		_currentCycleIndex = tmpCurrentCycleIndex;

		cycleDuration = newDuration;

		emit CycleDurationSet(newDuration);
	}

	// solhint-disable-next-line no-empty-blocks
	receive() external payable {}
}
