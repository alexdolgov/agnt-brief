// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IStrategy } from "./interfaces/IStrategy.sol";
import { IKeeperJob } from "./interfaces/IKeeperJob.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "./gelato/AutomateTaskCreator.sol";

contract HarvestKeeper is Ownable, AutomateTaskCreator, IKeeperJob {
	using EnumerableSet for EnumerableSet.AddressSet;
	EnumerableSet.AddressSet internal _availableStrategies;
	bytes32 public taskId;

	/// @param _automate address of the Gelato Bot that will automate the execution
	/// BSC Automate: 0x527a819db1eb0e34426297b03bae11F2f8B3A19E
	/// @param _fundsOwner address where the funds of this keeper can be withdrawn
	constructor(address payable _automate, address _fundsOwner)
		AutomateTaskCreator(_automate, _fundsOwner)
	{}

	receive() external payable {}

	// --- EXTERNAL GELATO FUNCTIONS --- //

	/// @inheritdoc IKeeperJob
	function harvestStrategy(address _strategy) external override onlyDedicatedMsgSender {
		IStrategy strategy = IStrategy(_strategy);
		require(strategy.harvestTrigger(0), "Strategy not ready to harvest");

		strategy.harvest();
		emit KeeperHarvested(_strategy);

		_payBot();
	}

	// --- EXTERNAL OWNER FUNCTIONS --- //

	/// @inheritdoc IKeeperJob
	function forceHarvestStrategy(address _strategy) external override onlyOwner {
		IStrategy strategy = IStrategy(_strategy);

		strategy.harvest();
		emit ForceHarvested(_strategy);
	}

	/// @inheritdoc IKeeperJob
	function createTask() external payable onlyOwner {
		require(taskId == bytes32(""), "Already started task");

		// We give empty execData since we use a resolver
		bytes memory execData = abi.encode(this.harvestStrategy.selector);

		// We set the resolver data
		ModuleData memory moduleData =
			ModuleData({ modules: new Module[](2), args: new bytes[](2) });
		moduleData.modules[0] = Module.RESOLVER;
		moduleData.modules[1] = Module.PROXY;

		moduleData.args[0] = _resolverModuleArg(address(this), abi.encodeCall(this.checker, ()));
		moduleData.args[1] = _proxyModuleArg();

		// We create the task with the data and we choose to pay in native token
		taskId = _createTask(address(this), execData, moduleData, ETH);

		emit KeeperTaskCreated(taskId);
	}

	/// @inheritdoc IKeeperJob
	function cancelTask() external onlyOwner {
		require(taskId != bytes32(""), "Task does not exist");
		_cancelTask(taskId);

		emit KeeperTaskCancelled(taskId);

		taskId = bytes32("");
	}

	/// @inheritdoc IKeeperJob
	function addStrategy(address _strategy) external override onlyOwner {
		_addStrategy(_strategy);
	}

	/// @inheritdoc IKeeperJob
	function addStrategies(address[] calldata _strategies) external override onlyOwner {
		for (uint256 _i; _i < _strategies.length; _i++) {
			_addStrategy(_strategies[_i]);
		}
	}

	/// @inheritdoc IKeeperJob
	function removeStrategy(address _strategy) external override onlyOwner {
		_removeStrategy(_strategy);
	}

	/// @inheritdoc IKeeperJob
	function withdraw(uint256 _amount) external override onlyOwner {
		uint256 amount = _amount > address(this).balance ? address(this).balance : _amount;

		(bool sent, ) = fundsOwner.call{ value: amount }("");
		require(sent, "Failed to send Ether");
	}

	// --- EXTERNAL VIEW FUNCTIONS --- //

	/// @inheritdoc IKeeperJob
	function checker() external view override returns (bool canExec, bytes memory execPayload) {
		for (uint256 i = 0; i < _availableStrategies.length(); i++) {
			IStrategy strategy = IStrategy(_availableStrategies.at(i));

			canExec = strategy.harvestTrigger(0);
			execPayload = abi.encodeCall(this.harvestStrategy, (address(strategy)));

			if (canExec) break;
		}
	}

	/// @inheritdoc IKeeperJob
	function strategies() public view returns (address[] memory _strategies) {
		_strategies = new address[](_availableStrategies.length());
		for (uint256 _i; _i < _availableStrategies.length(); _i++) {
			_strategies[_i] = _availableStrategies.at(_i);
		}
	}

	// --- INTERNAL FUNCTIONS --- //

	function _addStrategy(address _strategy) internal {
		require(!_availableStrategies.contains(_strategy), "Strategy already added");
		emit StrategyAdded(_strategy);
		_availableStrategies.add(_strategy);
	}

	function _removeStrategy(address _strategy) internal {
		require(_availableStrategies.contains(_strategy), "Strategy not added");
		_availableStrategies.remove(_strategy);
		emit StrategyRemoved(_strategy);
	}

	/// @notice Pays the bot for executing
	function _payBot() internal {
		(uint256 fee, address feeToken) = _getFeeDetails();
		_transfer(fee, feeToken);
	}
}
