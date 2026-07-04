// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;
pragma experimental ABIEncoderV2;

/**
 *  @title Controls the transition and execution of liquidity deployment cycles.
 *  Accepts instructions that can move assets from the Pools to the Exchanges
 *  and back. Can also move assets to the treasury when appropriate.
 */
interface IManager {
	// bytes can take on the form of deploying or recovering liquidity
	struct ControllerTransferData {
		bytes32 controllerId; // controller to target
		bytes data; // data the controller will pass
	}

	struct PoolTransferData {
		address pool; // pool to target
		uint256 amount; // amount to transfer
	}

	struct MaintenanceExecution {
		ControllerTransferData[] cycleSteps;
	}

	struct RolloverExecution {
		PoolTransferData[] poolData;
		ControllerTransferData[] cycleSteps;
		address[] poolsForWithdraw; //Pools to target for manager -> pool transfer
		bool complete; // DEPRECATED - Whether to mark the rollover complete
		string rewardsIpfsHash; // DEPRECATED
	}

	event ControllerRegistered(bytes32 id, address controller);
	event ControllerUnregistered(bytes32 id, address controller);
	event PoolRegistered(address pool);
	event PoolUnregistered(address pool);
	event LiquidityMovedToManager(address pool, uint256 amount);
	event DeploymentStepExecuted(bytes32 controller, address adapaterAddress, bytes data);
	event LiquidityMovedToPool(address pool, uint256 amount);
	event ManagerSwept(address[] addresses, uint256[] amounts);

	/// @notice Registers controller
	/// @param id Bytes32 id of controller
	/// @param controller Address of controller
	function registerController(bytes32 id, address controller) external;

	/// @notice Registers pool
	/// @param pool Address of pool
	function registerPool(address pool) external;

	/// @notice Unregisters controller
	/// @param id Bytes32 controller id
	function unRegisterController(bytes32 id) external;

	/// @notice Unregisters pool
	/// @param pool Address of pool
	function unRegisterPool(address pool) external;

	///@notice Gets addresses of all pools registered
	///@return Memory array of pool addresses
	function getPools() external view returns (address[] memory);

	///@notice Gets ids of all controllers registered
	///@return Memory array of Bytes32 controller ids
	function getControllers() external view returns (bytes32[] memory);

	///@notice Allows for controller commands to be executed
	///@param params Contains data for controllers and params
	function executeMaintenance(MaintenanceExecution calldata params) external;

	///@notice Allows for withdrawals and deposits for pools along with liq deployment
	///@param params Contains various data for executing against pools and controllers
	function executeRollover(RolloverExecution calldata params) external;

	///@notice Gets reward hash by cycle index
	///@param index Cycle index to retrieve rewards hash
	///@return String memory hash
	function cycleRewardsHashes(uint256 index) external view returns (string memory);

	///@notice Gets current cycle starting timestamp
	///@return uint256 starting timestamp of current cycle
	function getCurrentCycle() external view returns (uint256);

  ///@notice Gets current cycle index using a pinned cycle index, cycle duration and cycle timestamp
	///@return uint256 current cycle number
	function getCurrentCycleIndex() external view returns (uint256);

	///@notice Gets current cycle duration
	///@return uint256 in block of cycle duration
	function getCycleDuration() external view returns (uint256);

	///@notice Gets cycle rollover status, true for rolling false for not
  ///@dev This will now always return false
	///@return Bool representing whether cycle is rolling over or not
	function getRolloverStatus() external view returns (bool);

	/// @notice Sweeps amanager contract for any leftover funds
	/// @param addresses array of addresses of pools to sweep funds into
	function sweep(address[] calldata addresses) external;

	/// @notice Setup a role using internal function _setupRole
	/// @param role keccak256 of the role keccak256("MY_ROLE");
	function setupRole(bytes32 role) external;
}
