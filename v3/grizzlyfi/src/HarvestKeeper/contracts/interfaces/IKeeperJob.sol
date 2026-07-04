// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

interface IKeeperJob {
	// Events

	/// @notice Emitted when a new Gelato task is created
	/// @param _id Id for the created task
	event KeeperTaskCreated(bytes32 _id);

	/// @notice Emitted when the Gelato task is cancelled
	/// @param _id Id for the cancelled task
	event KeeperTaskCancelled(bytes32 _id);

	/// @notice Emitted when a new strategy is added
	/// @param _strategy Address of the strategy being added
	event StrategyAdded(address _strategy);

	/// @notice Emitted when a strategy is removed
	/// @param _strategy Address of the strategy being removed
	event StrategyRemoved(address _strategy);

	/// @notice Emitted when a strategy is harvested
	/// @param _strategy Address of the strategy being harvested
	event KeeperHarvested(address _strategy);

	/// @notice Emitted when a strategy is force-harvested by governor or mechanic
	/// @param _strategy Address of the strategy being force-harvested
	event ForceHarvested(address _strategy);

	// views

	/// @notice checker used by Gelato bots to determine which pool too harvest and when
	function checker() external view returns (bool canExec, bytes memory execPayload);

	/// @return _strategies List of added strategies
	function strategies() external view returns (address[] memory _strategies);

	// Methods

	/// @notice create a Gelato task for this contract
	/// @dev we only need to call it once. You can send some native token when calling.
	function createTask() external payable;

	/// @notice cancels the Gelato task for this contract
	function cancelTask() external;

	/// @param _strategy Address of the strategy to add
	function addStrategy(address _strategy) external;

	/// @param _strategies Array of addresses of strategies to add
	function addStrategies(address[] calldata _strategies) external;

	/// @param _strategy Address of the strategy to remove
	function removeStrategy(address _strategy) external;

	/// @notice Function to be called by the keeper that triggers the execution of the given strategy
	/// @param _strategy Address of the strategy to be harvested
	function harvestStrategy(address _strategy) external;

	/// @notice Function to be called by owner that triggers the execution of the given strategy
	/// @notice This function bypasses the workable checks
	/// @param _strategy Address of the strategy to be harvested
	function forceHarvestStrategy(address _strategy) external;

	/// @notice allows to withdraw native tokens from this keeper to fundsOwner
	function withdraw(uint256 _amount) external;
}
