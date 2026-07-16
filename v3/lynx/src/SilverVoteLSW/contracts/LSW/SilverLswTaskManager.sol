// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {AutomateTaskCreator} from "../integrations/gelato/AutomateTaskCreator.sol";
import {Module, ModuleData} from "../integrations/gelato/Types.sol";
import {GaugeTaskExecutor} from "./GaugeTaskExecutor.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "../Security/ContractPermissionManager.sol";

interface ISilverLswManager {
    function syncLswSystem() external;
    function syncGaugeRewardsCalc() external;
    function executeSyncGaugesRewards() external;
    function startBreakLiquidityAndCompound() external;
    function clearLswSystem() external;
    function setGaugeExecutor(address poolGauge, address executor) external;
    function resetTaskId(bytes32 taskId) external;
}

interface IGaugeTaskExecutor {
    enum TaskType { SNAPSHOT, BREAK_LIQUIDITY }
    function execute(TaskType taskType) external;
}

/**
 * @title SilverLswTaskManager
 * @author github.com/SifexPro
 * @notice This contract is used to manage the Gelato tasks for the LSW system
 */
contract SilverLswTaskManager is AutomateTaskCreator, Ownable2Step {
    // ============ Constants ============
    uint256 private constant SYNC_GAUGE_REWARDS_EXEC_TIME = 10 minutes;
    uint256 private constant BREAK_LIQUIDITY_EXEC_TIME = 40 minutes;
    uint256 private constant CLEAR_SYSTEM_EXEC_TIME = 1 hours;
    uint256 private constant RETRY_WINDOW = 2 minutes;

    // ============ Events ============
    event GelatoTaskCreated(bytes32 id);
    event GelatoTaskCanceled(bytes32 id);
    event GelatoTaskCancelFailed(bytes32 id);
    event GelatoFeesCheck(uint256 fees, address token);
    event ExecutorCreated(address poolGauge, address executor);

    // ============ State Variables ============
    ISilverLswManager public immutable lswManager;
    ContractPermissionManager public immutable securityManager;

    // ============ Constructor ============
    constructor(
        address _lswManager,
        address _securityManager,
        address _automate
    ) AutomateTaskCreator(_automate) Ownable(msg.sender) {
        lswManager = ISilverLswManager(_lswManager);
        securityManager = ContractPermissionManager(_securityManager);
    }

    // ============ Executor Management ============
    function getOrCreateExecutor(address _poolGauge) public returns (address executor) {
        require(securityManager.hasContractRole(securityManager.SILVER_LSW_MANAGER_ROLE(), msg.sender), "Not authorized");
        
        executor = address(new GaugeTaskExecutor(_poolGauge));
        lswManager.setGaugeExecutor(_poolGauge, executor);
        emit ExecutorCreated(_poolGauge, executor);
    }

    // ============ Task Creation Functions ============

    function createTaskGaugeSnapshot(
        address executor
    ) external onlyLswManager returns (bytes32) {
        bytes memory execData = abi.encodeCall(
            IGaugeTaskExecutor(executor).execute,
            (IGaugeTaskExecutor.TaskType.SNAPSHOT)
        );

        bytes32[][] memory topics = new bytes32[][](1);
        topics[0] = new bytes32[](1);
        topics[0][0] = keccak256("LswSystemSynced(uint256)");

        ModuleData memory moduleData = ModuleData({
            modules: new Module[](2),
            args: new bytes[](2)
        });

        moduleData.modules[0] = Module.PROXY;
        moduleData.modules[1] = Module.TRIGGER;

        moduleData.args[0] = _proxyModuleArg();
        moduleData.args[1] = _eventTriggerModuleArg(
            address(lswManager),
            topics,
            7
        );

        bytes32 taskId = _createTask(executor, execData, moduleData, ETH);
        emit GelatoTaskCreated(taskId);
        return taskId;
    }

    function createTaskGaugeRewardsReinjection(
        address poolGauge,
        address projectToken,
        string memory rewardsReinjectionScriptCID,
        address wrappedNativeToken
    ) external onlyLswManager returns (bytes32) {
        bytes memory execData = abi.encode(
            Strings.toHexString(uint256(uint160(address(lswManager))), 20),
            Strings.toHexString(uint256(uint160(poolGauge)), 20),
            Strings.toHexString(uint256(uint160(projectToken)), 20),
            Strings.toString(ERC20(projectToken).decimals()),
            Strings.toHexString(uint256(uint160(wrappedNativeToken)), 20),
            Strings.toString(block.chainid)
        );

        bytes32[][] memory topics = new bytes32[][](1);
        topics[0] = new bytes32[](1);
        topics[0][0] = keccak256("GaugesRewardsSynced(uint256)");

        ModuleData memory moduleData = ModuleData({
            modules: new Module[](3),
            args: new bytes[](3)
        });

        moduleData.modules[0] = Module.PROXY;
        moduleData.modules[1] = Module.WEB3_FUNCTION;
        moduleData.modules[2] = Module.TRIGGER;

        moduleData.args[0] = _proxyModuleArg();
        moduleData.args[1] = _web3FunctionModuleArg(
            rewardsReinjectionScriptCID,
            execData
        );
        moduleData.args[2] = _eventTriggerModuleArg(
            address(lswManager),
            topics,
            7
        );

        bytes32 taskId = _createTask(address(lswManager), execData, moduleData, ETH);
        emit GelatoTaskCreated(taskId);
        return taskId;
    }

    function createTaskBreakLiquidityAndCompoundCall(
        address executor
    ) external onlyLswManager returns (bytes32) {
        bytes memory execData = abi.encodeCall(
            IGaugeTaskExecutor(executor).execute,
            (IGaugeTaskExecutor.TaskType.BREAK_LIQUIDITY)
        );

        bytes32[][] memory topics = new bytes32[][](1);
        topics[0] = new bytes32[](1);
        topics[0][0] = keccak256("StartBreakLiquidityAndCompound(uint256)");

        ModuleData memory moduleData = ModuleData({
            modules: new Module[](2),
            args: new bytes[](2)
        });

        moduleData.modules[0] = Module.PROXY;
        moduleData.modules[1] = Module.TRIGGER;

        moduleData.args[0] = _proxyModuleArg();
        moduleData.args[1] = _eventTriggerModuleArg(
            address(lswManager),
            topics,
            7
        );

        bytes32 taskId = _createTask(executor, execData, moduleData, ETH);
        emit GelatoTaskCreated(taskId);
        return taskId;
    }

    function createTaskSyncGaugeRewardsCalc(
        uint256 lastSyncTimestamp
    ) external onlyLswManager returns (bytes32) {
        bytes memory execData = abi.encodeCall(lswManager.syncGaugeRewardsCalc, ());

        ModuleData memory moduleData = ModuleData({
            modules: new Module[](3),
            args: new bytes[](3)
        });

        moduleData.modules[0] = Module.PROXY;
        moduleData.modules[1] = Module.SINGLE_EXEC;
        moduleData.modules[2] = Module.TRIGGER;
        
        moduleData.args[0] = _proxyModuleArg();
        moduleData.args[1] = _singleExecModuleArg();
        moduleData.args[2] = _timeTriggerModuleArg(
            uint128(lastSyncTimestamp + SYNC_GAUGE_REWARDS_EXEC_TIME) * 1000,
            uint128(SYNC_GAUGE_REWARDS_EXEC_TIME / 2) * 1000
        );

        bytes32 taskId = _createTask(address(lswManager), execData, moduleData, ETH);
        emit GelatoTaskCreated(taskId);
        return taskId;
    }

    function createTaskGaugesRewards() external onlyLswManager returns (bytes32) {
        bytes memory execData = abi.encodeCall(lswManager.executeSyncGaugesRewards, ());

        bytes32[][] memory topics = new bytes32[][](1);
        topics[0] = new bytes32[](1);
        topics[0][0] = keccak256("SyncGaugesRewardsStarted(uint256)");

        ModuleData memory moduleData = ModuleData({
            modules: new Module[](2),
            args: new bytes[](2)
        });

        moduleData.modules[0] = Module.PROXY;
        moduleData.modules[1] = Module.TRIGGER;
        
        moduleData.args[0] = _proxyModuleArg();
        moduleData.args[1] = _eventTriggerModuleArg(
            address(lswManager),
            topics,
            7
        );

        bytes32 taskId = _createTask(address(lswManager), execData, moduleData, ETH);
        emit GelatoTaskCreated(taskId);
        return taskId;
    }

    function createTaskStartBreakLiquidityAndCompound(
        uint256 lastSyncTimestamp
    ) external onlyLswManager returns (bytes32) {
        bytes memory execData = abi.encodeCall(lswManager.startBreakLiquidityAndCompound, ());

        ModuleData memory moduleData = ModuleData({
            modules: new Module[](3),
            args: new bytes[](3)
        });

        moduleData.modules[0] = Module.PROXY;
        moduleData.modules[1] = Module.SINGLE_EXEC;
        moduleData.modules[2] = Module.TRIGGER;
        
        moduleData.args[0] = _proxyModuleArg();
        moduleData.args[1] = _singleExecModuleArg();
        moduleData.args[2] = _timeTriggerModuleArg(
            uint128(lastSyncTimestamp + BREAK_LIQUIDITY_EXEC_TIME) * 1000,
            uint128(BREAK_LIQUIDITY_EXEC_TIME) * 1000
        );

        bytes32 taskId = _createTask(address(lswManager), execData, moduleData, ETH);
        emit GelatoTaskCreated(taskId);
        return taskId;
    }

    function createTaskSyncSystem(
        uint256 nextSyncTimestamp,
        uint256 syncTime
    ) external onlyLswManager returns (bytes32) {
        bytes memory execData = abi.encodeCall(lswManager.syncLswSystem, ());

        ModuleData memory moduleData = ModuleData({
            modules: new Module[](2),
            args: new bytes[](2)
        });

        moduleData.modules[0] = Module.PROXY;
        moduleData.modules[1] = Module.TRIGGER;
        
        moduleData.args[0] = _proxyModuleArg();
        moduleData.args[1] = _timeTriggerModuleArg(
            uint128(nextSyncTimestamp) * 1000,
            uint128(syncTime) * 1000
        );

        bytes32 taskId = _createTask(address(lswManager), execData, moduleData, ETH);
        emit GelatoTaskCreated(taskId);
        return taskId;
    }

    function createTaskClearLswSystem(
        uint256 lastSyncTimestamp
    ) external onlyLswManager returns (bytes32) {
        require(lastSyncTimestamp + CLEAR_SYSTEM_EXEC_TIME > block.timestamp, "Invalid execution time");

        bytes memory execData = abi.encodeCall(lswManager.clearLswSystem, ());

        ModuleData memory moduleData = ModuleData({
            modules: new Module[](3),
            args: new bytes[](3)
        });

        moduleData.modules[0] = Module.PROXY;
        moduleData.modules[1] = Module.SINGLE_EXEC;
        moduleData.modules[2] = Module.TRIGGER;

        moduleData.args[0] = _proxyModuleArg();
        moduleData.args[1] = _singleExecModuleArg();
        moduleData.args[2] = _timeTriggerModuleArg(
            uint128(lastSyncTimestamp + CLEAR_SYSTEM_EXEC_TIME) * 1000,
            uint128(RETRY_WINDOW) * 1000
        );

        bytes32 taskId = _createTask(address(lswManager), execData, moduleData, ETH);
        emit GelatoTaskCreated(taskId);
        return taskId;
    }

    // ============ Task Cancellation Functions ============

	function cancelTaskCall(bytes32 taskId) public {
		require(msg.sender == address(this), "Not authorized");
		_cancelTask(taskId);
	}

    function cancelTask(bytes32 taskId) public onlyLswManager {
        if (taskId == bytes32(0)) return;

		(bool success, ) = address(this).call(
			abi.encodeWithSignature("cancelTaskCall(bytes32)", taskId)
		);
        
		if (success) {
			emit GelatoTaskCanceled(taskId);
			lswManager.resetTaskId(taskId);
		} else {
			emit GelatoTaskCancelFailed(taskId);
		}
    }

    function cancelMultipleTasks(bytes32[] calldata taskIds) external onlyLswManager {
        for (uint256 i = 0; i < taskIds.length; i++) {
            if (taskIds[i] != bytes32(0)) {
                cancelTask(taskIds[i]);
            }
        }
    }

    // ============ Gelato Fees Management ============

    function _handleGelatoFees() private {
        (uint256 fee, address feeToken) = _getFeeDetails();
        _transfer(fee, feeToken);
        emit GelatoFeesCheck(fee, feeToken);
    }

	// ============ Modifiers ============
    modifier onlyLswManager() {
        require(securityManager.hasContractRole(securityManager.SILVER_LSW_MANAGER_ROLE(), msg.sender), "Not authorized");
        _;
    }

    // ============ Receive Function ============
    receive() external payable {}
} 