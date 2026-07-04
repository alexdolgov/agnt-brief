// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// ============ Imports ============
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {TransferHelper} from "../libraries/TransferHelper.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "../integrations/gelato/AutomateTaskCreator.sol";

import {IWrappedNative} from "../interfaces/IWrappedNative.sol";
import {SilverStake} from "../SilverStake/SilverStake.sol";
import {GaugeManager, GaugeInfo} from "../Gauge/GaugeManager.sol";
import {SilverVoteLSW} from "./SilverVoteLSW.sol";
import {SilverValidatorAuth} from "../Validator/SilverValidatorAuth.sol";
import "../Security/ContractPermissionManager.sol";

import {GaugeTaskExecutor} from "./GaugeTaskExecutor.sol";

// ============ Interfaces ============
interface IAlgebraSwapRouter {
	function exactInput(ExactInputParams memory data) external payable returns (uint256);
}

interface IAlgebraPool {
	function token0() external view returns (address);
	function token1() external view returns (address);
}

// ============ Structs ============
struct ExactInputParams {
	bytes path;
	address recipient;
	uint256 deadline;
	uint256 amountIn;
	uint256 amountOutMinimum;
}

struct LswSystemTaskIds {
	bytes32 clearLswSystemTaskId;
	bytes32 syncGaugesRewardsCalcTaskId;
	bytes32 breakLiquidityAndCompoundTaskId;
}

struct LswSystemGaugeSaveData {
	uint256 gaugesBrokenLiquidityRewards;
	address gaugeExecutor;
	bytes32 snapshotTaskId;
	bytes32 rewardsReinjectionTaskId;
	bytes32 breakLiquidityAndCompoundCallTaskId;
}

struct LswSystemData {
	bool isLswLocked;
	GaugeData[] gauges;
	mapping(address => LswSystemGaugeSaveData) gaugesSaveData;
	string rewardsReinjectionScriptCID;
	LswSystemTaskIds taskIds;
	uint256 lastExecutionTimestamp;
}

struct UserData {
	address user;
	uint256 votingPower;
	uint256 votingPowerPercentage;
}

struct GaugeData {
	address poolGauge;
	address projectToken;
	UserData[] users;
	uint256 totalVoters;
	uint256 gaugeVotingPower;
	uint256 gaugeVotingPowerPercentage;
	uint256 wrappedNativeAmount;
}

struct SyncLswSystemData {
	uint256 syncTime;
	uint256 lastSyncTimestamp;
	uint256 nextSyncTimestamp;
	bytes32 lswSystemSyncTaskId;
	bytes32 syncGaugesRewardsTaskId;
}

/**
 * @title SilverLswManager
 * @author github.com/SifexPro
 * @notice This contract is used to manage the LSW system for the SilverLsw protocol
 */
contract SilverLswManager is AutomateTaskCreator, Ownable2Step {
	// ============ Constants ============
	uint256 private constant PRECISION = 1e18;
	uint256 private constant MAX_PERCENTAGE = 10000;

	// ============ State Variables ============
	ContractPermissionManager public immutable securityManager;
	GaugeManager public gaugeManager;
	SilverStake public silverStake;
	SilverVoteLSW public silverVoteLSW;
	SilverValidatorAuth public validatorAuth;
	IAlgebraSwapRouter public swapRouter;
	address public immutable wrappedNativeToken;

	LswSystemData public lswSystemData;
	SyncLswSystemData public syncLswSystemData;
	mapping(address => address) private gaugeExecutors;
	uint256 public totalRewardsAmount;
	
	// ============ Events for rewards ============
	event RewardsClaimed(uint256 nativeAmount);
	event RewardsReinjected(address poolGauge, uint256 wrappedNativeAmount, uint256 projectTokenAmountClaimed);
	
	// ============ Events for gauges ============
	event GaugeDataCalculated(uint32 gaugeIndex, address poolGauge);
	event GaugeRewardsCalculated(uint32 gaugeIndex, uint256 wrappedNativeAmount);
	event GaugesRewardsExecuted(uint256 timestamp);
	event GaugeSynced(address poolGauge);
	event SyncGaugesRewardsStarted(address poolGauge);
	event GaugesRewardsSynced(uint256 timestamp);
	
	// ============ Events for system sync ============
	event SyncLswSystemStarted(uint256 syncTime, uint256 startTimestamp);
	event SyncLswSystemStopped(uint256 stopTimestamp);
	event LswSystemSynced(uint256 timestamp);
	event LswSystemCleared();
	event StartBreakLiquidityAndCompound(uint256 timestamp);
	event BreakLiquidityAndCompound(address poolGauge, uint256 wrappedNativeAmount, uint256 projectTokenAmount);

	// ============ Events for Gelato ============
	event GelatoTaskCreated(bytes32 id);
	event GelatoTaskCanceled(bytes32 id);
	event GelatoTaskCancelFailed(bytes32 id);
	event GelatoFeesCheck(uint256 fees, address token);
	
	// ============ Events for withdrawals ============
	event WithdrawnNative(address indexed to, uint256 amount);
	event WithdrawnToken(address indexed token, address to, uint256 amount);
	
	// ============ Events for setters ============
	event GaugeManagerSet(address indexed newGaugeManager);
	event GaugeExecutorFactorySet(address indexed newGaugeExecutorFactory);
	event SilverVoteLSWSet(address indexed newSilverVoteLSW);
	event SilverStakeSet(address indexed newSilverStake);
	event SilverValidatorAuthSet(address indexed newSilverValidatorAuth);
	event SwapRouterSet(address indexed newSwapRouter);

	// ============ Constructor ============
	constructor(
		address _securityManager,
		address _gaugeManager, 
		address _silverStake, 
		address _validatorAuth, 
		address _silverVoteLSW, 
		string memory _rewardsReinjectionScriptCID, 
		address _wrappedNativeToken, 
		address _swapRouter, 
		address _automate
	) AutomateTaskCreator(_automate) Ownable(msg.sender) {
		securityManager = ContractPermissionManager(_securityManager);
		gaugeManager = GaugeManager(payable(_gaugeManager));
		silverStake = SilverStake(payable(_silverStake));
		validatorAuth = SilverValidatorAuth(payable(_validatorAuth));
		silverVoteLSW = SilverVoteLSW(_silverVoteLSW);
		lswSystemData.rewardsReinjectionScriptCID = _rewardsReinjectionScriptCID;
		wrappedNativeToken = _wrappedNativeToken;
		swapRouter = IAlgebraSwapRouter(_swapRouter);
	}

	// ============ Sync System Functions ============

	function syncLswSystem() public gelatoTaskOnly {
		////testing
		////require(block.timestamp >= syncLswSystemData.nextSyncTimestamp - 10 minutes, "Too early to sync");
		
		syncLswSystemData.lastSyncTimestamp = block.timestamp;
		syncLswSystemData.nextSyncTimestamp = block.timestamp + syncLswSystemData.syncTime;

		lswSystemData.isLswLocked = true;

		createTaskSyncGaugeRewardsCalc();
		createTaskStartBreakLiquidityAndCompound();
		createTaskClearLswSystem();

		emit LswSystemSynced(block.timestamp);
	}

	function startSyncSystem(uint256 _syncTime) public onlyOwner {
		////testing
		////require(_syncTime == 0 || _syncTime > 10 minutes, "");

		if (lswSystemData.isLswLocked) {
			delete lswSystemData.gauges;
			totalRewardsAmount = 0;
			lswSystemData.isLswLocked = false;
		}

		syncLswSystemData.syncTime = _syncTime;
		syncLswSystemData.lastSyncTimestamp = block.timestamp;
		syncLswSystemData.nextSyncTimestamp = block.timestamp + _syncTime;
		
		// Cancel all existing tasks
		cancelTask(syncLswSystemData.lswSystemSyncTaskId);
		cancelTask(syncLswSystemData.syncGaugesRewardsTaskId);
		cancelTask(lswSystemData.taskIds.clearLswSystemTaskId);
		cancelTask(lswSystemData.taskIds.syncGaugesRewardsCalcTaskId);
		cancelTask(lswSystemData.taskIds.breakLiquidityAndCompoundTaskId);

		if (_syncTime != 0) {
			createTaskSyncSystem();
			createTaskGaugesRewards();
			emit SyncLswSystemStarted(_syncTime, block.timestamp);
		} else {
			emit SyncLswSystemStopped(block.timestamp);
		}
	}

	function syncGaugeRewardsCalc() public gelatoTaskOnly {
		syncLswSystemData.syncGaugesRewardsTaskId = bytes32(0);
		emit SyncGaugesRewardsStarted(address(this));
	}

	function clearLswSystem() public gelatoTaskOnly {
		require(lswSystemData.isLswLocked, "LSW is not locked");

		// Clear vote info and update rates and unlock all positions
		silverVoteLSW.clearVoteInfo();
		silverStake.updateRateForOneToken();
		gaugeManager.unlockAllPositions();

		// Clear system data
		delete lswSystemData.gauges;
		totalRewardsAmount = 0;
		lswSystemData.isLswLocked = false;
		lswSystemData.taskIds.clearLswSystemTaskId = bytes32(0);
		lswSystemData.taskIds.syncGaugesRewardsCalcTaskId = bytes32(0);
		lswSystemData.taskIds.breakLiquidityAndCompoundTaskId = bytes32(0);

		emit LswSystemCleared();
	}


	// ============ Gauge Management Functions ============

	function syncNewGauge(address _poolGauge) public onlyGaugeManager {
		createTaskGaugeSnapshot(_poolGauge);
		createTaskGaugeRewardsReinjection(_poolGauge);
		createTaskBreakLiquidityAndCompoundCall(_poolGauge);
		
		emit GaugeSynced(_poolGauge);
	}

	function calcVotedGaugeData(address _poolGauge) public gaugeTaskExecutorOnly(_poolGauge) {
		require(isGaugeVoted(_poolGauge), "Gauge not voted");

		address projectToken = getGaugeProjectToken(_poolGauge);

		lswSystemData.gauges.push(GaugeData({
			poolGauge: _poolGauge,
			projectToken: projectToken,
			users: new UserData[](0),
			gaugeVotingPower: 0,
			gaugeVotingPowerPercentage: 0,
			totalVoters: 0,
			wrappedNativeAmount: 0
		}));

		uint32 gaugeIndex = uint32(lswSystemData.gauges.length - 1);
		uint256 gaugeVotingPower = 0;
		address[] memory gaugeVoters = silverVoteLSW.getGaugeVoters(_poolGauge);

		unchecked {
			for (uint32 i = 0; i < gaugeVoters.length; i++) {
				address user = gaugeVoters[i];
				uint256 userVotingPower = gaugeManager.getUserVotingPower(user);
				
				gaugeVotingPower += userVotingPower;

				lswSystemData.gauges[gaugeIndex].users.push(UserData({
					user: user,
					votingPower: userVotingPower,
					votingPowerPercentage: 0
				}));

				lswSystemData.gauges[gaugeIndex].totalVoters++;
			}
		}

		lswSystemData.gauges[gaugeIndex].gaugeVotingPower = gaugeVotingPower;
		calcGaugeUserPercentages(gaugeIndex);

		emit GaugeDataCalculated(gaugeIndex, _poolGauge);
	}

	function calcGaugeUserPercentages(uint32 gaugeIndex) private {
		GaugeData storage gauge = lswSystemData.gauges[gaugeIndex];
		require(gauge.gaugeVotingPower > 0, "No voting power in gauge");

		unchecked {
			for (uint32 i = 0; i < gauge.users.length; i++) {
				gauge.users[i].votingPowerPercentage = 
					(gauge.users[i].votingPower * PRECISION) / gauge.gaugeVotingPower;
			}
		}
	}


	// ============ Rewards Management Functions ============

	function executeSyncGaugesRewards() public gelatoTaskOnly {
		require(lswSystemData.isLswLocked, "LSW is not locked");

		claimRewards();
		calcGaugesPercentages();
		calcGaugesRewards();

		emit GaugesRewardsSynced(block.timestamp);
	}

	function claimRewards() public {
		uint256 nativeAmountBefore = address(this).balance;
		uint256 wrappedNativeAmountBefore = IERC20(wrappedNativeToken).balanceOf(address(this));

		silverStake._claimRewards();
		////validatorAuth._claimRewards(); testing
		
		uint256 nativeAmountClaimed = address(this).balance - nativeAmountBefore;
		IWrappedNative(wrappedNativeToken).deposit{value: nativeAmountClaimed}();
		uint256 wrappedNativeAmountClaimed = IERC20(wrappedNativeToken).balanceOf(address(this)) - wrappedNativeAmountBefore;

		totalRewardsAmount = wrappedNativeAmountClaimed / 2;

		emit RewardsClaimed(wrappedNativeAmountClaimed);
	}

	function calcGaugesRewards() private {
		unchecked {
			for (uint32 i = 0; i < lswSystemData.gauges.length; i++) {
				uint256 gaugePercentage = lswSystemData.gauges[i].gaugeVotingPowerPercentage;
				
				lswSystemData.gauges[i].wrappedNativeAmount = 
					(totalRewardsAmount * gaugePercentage) / PRECISION;

				emit GaugeRewardsCalculated(i, lswSystemData.gauges[i].wrappedNativeAmount);
			}
		}
	}

	function calcGaugesPercentages() private {
		uint256 totalVotingPower = 0;

		unchecked {
			for (uint32 i = 0; i < lswSystemData.gauges.length; i++) {
				totalVotingPower += lswSystemData.gauges[i].gaugeVotingPower;
			}
		}

		unchecked {
			for (uint32 i = 0; i < lswSystemData.gauges.length; i++) {
				lswSystemData.gauges[i].gaugeVotingPowerPercentage = 
					(lswSystemData.gauges[i].gaugeVotingPower * PRECISION) / totalVotingPower;
			}
		}
	}

	function reinjectRewards(
		address _gaugePool, 
		address _projectToken, 
		uint256 wrappedNativeAmount, 
		ExactInputParams memory swapToProjectTokenArgs
	) public gelatoTaskOnly {
		require(_gaugePool != address(0), "Zero address");
		require(_projectToken != address(0), "Zero address");
		require(wrappedNativeAmount > 0, "Zero amount");
		require(isGaugeVoted(_gaugePool), "Gauge not voted");
		require(wrappedNativeAmount == getGaugeRewards(_gaugePool), "Wrong wrappedNativeAmount");
		require(_projectToken == getGaugeData(_gaugePool).projectToken, "Wrong projectToken");

		swapToProjectTokenArgs.recipient = address(this);
		swapToProjectTokenArgs.amountIn = wrappedNativeAmount;
		
		TransferHelper.safeApprove(address(wrappedNativeToken), address(swapRouter), wrappedNativeAmount);
		
		uint256 projectTokenAmountBefore = IERC20(address(_projectToken)).balanceOf(address(this));
		swapRouter.exactInput(swapToProjectTokenArgs);
		uint256 projectTokenAmountClaimed = IERC20(address(_projectToken)).balanceOf(address(this)) - projectTokenAmountBefore;

		TransferHelper.safeApprove(_projectToken, address(gaugeManager), projectTokenAmountClaimed);
		TransferHelper.safeApprove(wrappedNativeToken, address(gaugeManager), wrappedNativeAmount);

		uint256 amount0Desired;
		uint256 amount1Desired;
		
		if (IAlgebraPool(gaugeManager.getGaugeInfo(_gaugePool).wrappedNativePool).token0() == wrappedNativeToken) {
			amount0Desired = wrappedNativeAmount;
			amount1Desired = projectTokenAmountClaimed;
		} else {
			amount0Desired = projectTokenAmountClaimed;
			amount1Desired = wrappedNativeAmount;
		}
		
		gaugeManager.addLiquidityInWrappedPool(_gaugePool, amount0Desired, amount1Desired);

		emit RewardsReinjected(_gaugePool, wrappedNativeAmount, projectTokenAmountClaimed);
	}


	// ============ Liquidity Management Functions ============

	function startBreakLiquidityAndCompound() public gelatoTaskOnly {
		syncLswSystemData.syncGaugesRewardsTaskId = bytes32(0);
		emit StartBreakLiquidityAndCompound(block.timestamp);
	}

	function breakLiquidityAndCompound(address _poolGauge) public gaugeTaskExecutorOnly(_poolGauge) {
		require(_poolGauge != address(0), "Zero address");
		require(gaugeManager.getGaugeInfo(_poolGauge).active, "Gauge not active");
		
		address projectToken = getGaugeProjectToken(_poolGauge);
		
		uint256 balanceWrappedNativeBefore = IERC20(wrappedNativeToken).balanceOf(address(this));
		uint256 balanceProjectTokenBefore = IERC20(projectToken).balanceOf(address(this));
		
		gaugeManager.removeLiquidityFromWrappedPool(_poolGauge);
		
		uint256 wrappedNativeAmount = IERC20(wrappedNativeToken).balanceOf(address(this)) - balanceWrappedNativeBefore;
		uint256 projectTokenAmount = IERC20(projectToken).balanceOf(address(this)) - balanceProjectTokenBefore;

		if (wrappedNativeAmount > 0) {
			_handleCompounding(wrappedNativeAmount);
		}

		if (projectTokenAmount > 0) {
			_handleBrokenLiquidityRewards(_poolGauge, projectToken, projectTokenAmount + getGaugesBrokenLiquidityRewards(_poolGauge));
		}

		emit BreakLiquidityAndCompound(_poolGauge, wrappedNativeAmount, projectTokenAmount);
	}

	function _handleBrokenLiquidityRewards(
		address _poolGauge, 
		address _projectToken, 
		uint256 _projectTokenAmount
	) private {
		(bool exists, uint32 gaugeIndex) = _getGaugeIndex(_poolGauge);
		
		if (exists) {
			GaugeData storage gauge = lswSystemData.gauges[gaugeIndex];
			require(gauge.gaugeVotingPower > 0, "No voting power in gauge");

			unchecked {
				for (uint32 i = 0; i < gauge.users.length; i++) {
					uint256 userReward = (_projectTokenAmount * gauge.users[i].votingPowerPercentage) / PRECISION;
					if (userReward > 0) {
						TransferHelper.safeTransfer(_projectToken, gauge.users[i].user, userReward);
					}
				}
			}
		} else {
			lswSystemData.gaugesSaveData[_poolGauge].gaugesBrokenLiquidityRewards += _projectTokenAmount;
		}
	}

	function _handleCompounding(uint256 wrappedNativeAmount) private {
		TransferHelper.safeTransfer(wrappedNativeToken, address(silverStake), wrappedNativeAmount);
		silverStake.compounding(wrappedNativeAmount);
	}


	// ============ Gelato Task Functions ============

	function createTaskGaugeSnapshot(address _poolGauge) private {
		address executor = getOrCreateExecutor(_poolGauge);
		
		bytes memory execData = abi.encodeCall(
			GaugeTaskExecutor(executor).execute, 
			(GaugeTaskExecutor.TaskType.SNAPSHOT)
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
			address(this),
			topics,
			7
		);

		bytes32 taskId = _createTask(executor, execData, moduleData, ETH);
		lswSystemData.gaugesSaveData[_poolGauge].snapshotTaskId = taskId;
		lswSystemData.gaugesSaveData[_poolGauge].gaugeExecutor = executor;

		emit GelatoTaskCreated(taskId);
	}

	function createTaskGaugeRewardsReinjection(address _poolGauge) private {
		address projectToken = getGaugeProjectToken(_poolGauge);

		bytes memory execData = abi.encode( 
			Strings.toHexString(uint256(uint160(address(this))), 20),					// Contract address
			Strings.toHexString(uint256(uint160(_poolGauge)), 20),						// Pool gauge address
			Strings.toHexString(uint256(uint160(projectToken)), 20),					// Project token address
			Strings.toString(ERC20(projectToken).decimals()),							// Project token decimals
			Strings.toHexString(uint256(uint160(address(wrappedNativeToken))), 20),		// Wrapped native token address
			Strings.toString(block.chainid)												// Chain ID
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
			lswSystemData.rewardsReinjectionScriptCID,
			execData
		);
		moduleData.args[2] = _eventTriggerModuleArg(
			address(this),
			topics,
			7
		);

		bytes32 taskId = _createTask(address(this), execData, moduleData, ETH);
		lswSystemData.gaugesSaveData[_poolGauge].rewardsReinjectionTaskId = taskId;

		emit GelatoTaskCreated(taskId);
	}

	function createTaskBreakLiquidityAndCompoundCall(address _poolGauge) private {
		address executor = getOrCreateExecutor(_poolGauge);
		
		bytes memory execData = abi.encodeCall(
			GaugeTaskExecutor(executor).execute,
			(GaugeTaskExecutor.TaskType.BREAK_LIQUIDITY)
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
			address(this),
			topics,
			7
		);

		bytes32 taskId = _createTask(executor, execData, moduleData, ETH);
		lswSystemData.gaugesSaveData[_poolGauge].breakLiquidityAndCompoundCallTaskId = taskId;
		lswSystemData.gaugesSaveData[_poolGauge].gaugeExecutor = executor;

		emit GelatoTaskCreated(taskId);
	}

	function createTaskSyncGaugeRewardsCalc() private {
		uint256 execTime = 10 minutes;

		bytes memory execData = abi.encodeCall(this.syncGaugeRewardsCalc, ());

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
			uint128(syncLswSystemData.lastSyncTimestamp + execTime) * 1000, 
			uint128(execTime / 2) * 1000
		);

		bytes32 taskId = _createTask(address(this), execData, moduleData, ETH);
		lswSystemData.taskIds.syncGaugesRewardsCalcTaskId = taskId;

		emit GelatoTaskCreated(taskId);
	}

	function createTaskGaugesRewards() private {
		bytes memory execData = abi.encodeCall(this.executeSyncGaugesRewards, ());

		bytes32[][] memory topics = new bytes32[][](1);
		topics[0] = new bytes32[](1);
		topics[0][0] = keccak256("SyncGaugesRewardsStarted(address)");

		ModuleData memory moduleData = ModuleData({
			modules: new Module[](2),
			args: new bytes[](2)
		});

		moduleData.modules[0] = Module.PROXY;
		moduleData.modules[1] = Module.TRIGGER;
		
		moduleData.args[0] = _proxyModuleArg();
		moduleData.args[1] = _eventTriggerModuleArg(
			address(this),
			topics,
			7
		);

		bytes32 taskId = _createTask(address(this), execData, moduleData, ETH);
		syncLswSystemData.syncGaugesRewardsTaskId = taskId;

		emit GelatoTaskCreated(taskId);
	}

	function createTaskStartBreakLiquidityAndCompound() private {
		uint256 execTime = 40 minutes;

		bytes memory execData = abi.encodeCall(this.startBreakLiquidityAndCompound, ());

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
			uint128(syncLswSystemData.lastSyncTimestamp + execTime) * 1000, 
			uint128(execTime) * 1000
		);

		bytes32 taskId = _createTask(address(this), execData, moduleData, ETH);
		lswSystemData.taskIds.breakLiquidityAndCompoundTaskId = taskId;

		emit GelatoTaskCreated(taskId);
	}

	function createTaskSyncSystem() private {
		bytes memory execData = abi.encodeCall(this.syncLswSystem, ());

		ModuleData memory moduleData = ModuleData({
			modules: new Module[](2),
			args: new bytes[](2)
		});

		moduleData.modules[0] = Module.PROXY;
		moduleData.modules[1] = Module.TRIGGER;
		
		moduleData.args[0] = _proxyModuleArg();
		moduleData.args[1] = _timeTriggerModuleArg(
			uint128(syncLswSystemData.nextSyncTimestamp) * 1000,
			uint128(syncLswSystemData.syncTime) * 1000
		);

		bytes32 taskId = _createTask(address(this), execData, moduleData, ETH);
		syncLswSystemData.lswSystemSyncTaskId = taskId;

		emit GelatoTaskCreated(taskId);
	}

	function createTaskClearLswSystem() private {
		uint256 execTime = 1 hours;
		require(syncLswSystemData.lastSyncTimestamp + execTime > block.timestamp, "Invalid execution time");

		bytes memory execData = abi.encodeCall(this.clearLswSystem, ());

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
			uint128(syncLswSystemData.lastSyncTimestamp + execTime) * 1000, 
			uint128(2 minutes) * 1000
		);

		bytes32 taskId = _createTask(address(this), execData, moduleData, ETH);
		lswSystemData.taskIds.clearLswSystemTaskId = taskId;

		emit GelatoTaskCreated(taskId);
	}

	function cancelTaskCall(bytes32 taskId) public {
		require(msg.sender == address(this), "Not authorized");
		_cancelTask(taskId);
	}

	function cancelTask(bytes32 taskId) public onlyOwner {
		if (taskId == bytes32(0)) return;

		(bool success, ) = address(this).call(
			abi.encodeWithSignature("cancelTaskCall(bytes32)", taskId)
		);

		if (success) {
			emit GelatoTaskCanceled(taskId);
			_resetTaskId(taskId);
		} else {
			emit GelatoTaskCancelFailed(taskId);
		}
	}

	function cancelTaskGauge(address _poolGauge) public onlyGaugeManager {
		if (gaugeExecutors[_poolGauge] == address(0)) return;

		_cancelTask(lswSystemData.gaugesSaveData[_poolGauge].snapshotTaskId);
		_cancelTask(lswSystemData.gaugesSaveData[_poolGauge].rewardsReinjectionTaskId);
		_cancelTask(lswSystemData.gaugesSaveData[_poolGauge].breakLiquidityAndCompoundCallTaskId);

		lswSystemData.gaugesSaveData[_poolGauge].snapshotTaskId = bytes32(0);
		lswSystemData.gaugesSaveData[_poolGauge].rewardsReinjectionTaskId = bytes32(0);
		lswSystemData.gaugesSaveData[_poolGauge].breakLiquidityAndCompoundCallTaskId = bytes32(0);
	}

	function _resetTaskId(bytes32 taskId) private {
		if (taskId == syncLswSystemData.lswSystemSyncTaskId)
			syncLswSystemData.lswSystemSyncTaskId = bytes32(0);
		if (taskId == syncLswSystemData.syncGaugesRewardsTaskId)
			syncLswSystemData.syncGaugesRewardsTaskId = bytes32(0);
		if (taskId == lswSystemData.taskIds.clearLswSystemTaskId)
			lswSystemData.taskIds.clearLswSystemTaskId = bytes32(0);
		if (taskId == lswSystemData.taskIds.syncGaugesRewardsCalcTaskId)
			lswSystemData.taskIds.syncGaugesRewardsCalcTaskId = bytes32(0);
		if (taskId == lswSystemData.taskIds.breakLiquidityAndCompoundTaskId)
			lswSystemData.taskIds.breakLiquidityAndCompoundTaskId = bytes32(0);
	}

	/**
	 * @notice Get or create a GaugeTaskExecutor for a given pool gauge
	 * @param _poolGauge The address of the pool gauge
	 * @return executor The address of the GaugeTaskExecutor
	 */
	function getOrCreateExecutor(address _poolGauge) private returns (address) {
		address executor = gaugeExecutors[_poolGauge];
		if (executor == address(0)) {
			executor = address(new GaugeTaskExecutor(_poolGauge));
			gaugeExecutors[_poolGauge] = executor;
		}
		return executor;
	}

	function _handleGelatoFees() private {
		(uint256 fee, address feeToken) = _getFeeDetails();
		_transfer(fee, feeToken);
		emit GelatoFeesCheck(fee, feeToken);
	}


	// ============ Setters ============

	function setGaugeManager(address _gaugeManager) public onlyOwner {
		gaugeManager = GaugeManager(payable(_gaugeManager));
		emit GaugeManagerSet(_gaugeManager);
	}

	function setSilverVoteLSW(address _silverVoteLSW) public onlyOwner {
		silverVoteLSW = SilverVoteLSW(payable(_silverVoteLSW));
		emit SilverVoteLSWSet(_silverVoteLSW);
	}

	function setSilverStake(address _silverStake) public onlyOwner {
		silverStake = SilverStake(payable(_silverStake));
		emit SilverStakeSet(_silverStake);
	}

	function setSilverValidatorAuth(address _silverValidatorAuth) public onlyOwner {
		validatorAuth = SilverValidatorAuth(payable(_silverValidatorAuth));
		emit SilverValidatorAuthSet(_silverValidatorAuth);
	}

	function setSwapRouter(address _swapRouter) public onlyOwner {
		swapRouter = IAlgebraSwapRouter(_swapRouter);
		emit SwapRouterSet(_swapRouter);
	}


	// ============ Getters ============
	
	function getGaugeProjectToken(address _poolGauge) public view returns (address projectToken) {
		projectToken = gaugeManager.getProjectToken(_poolGauge);
	}

	function getGaugeData(address _poolGauge) public view returns (GaugeData memory gaugeData) {
		(bool voted, uint32 index) = _getGaugeIndex(_poolGauge);
		require(voted, "Gauge not voted");

		gaugeData = lswSystemData.gauges[index];
	}

	function _getGaugeIndex(address _poolGauge) private view returns (bool voted, uint32 index) {
		if (_poolGauge == address(0)) {
			return (false, 0);
		}
		
		unchecked {
			for (uint32 i = 0; i < lswSystemData.gauges.length; i++) {
				if (lswSystemData.gauges[i].poolGauge == _poolGauge) {
					return (true, i);
				}
			}
		}
		return (false, 0);
	}

	function getGaugeRewards(address _poolGauge) public view returns (uint256 wrappedNativeAmount) {
		(bool voted, uint32 index) = _getGaugeIndex(_poolGauge);
		require(voted, "Gauge not voted");

		return lswSystemData.gauges[index].wrappedNativeAmount;
	}

	function isGaugeVoted(address _poolGauge) public view returns (bool) {
		return silverVoteLSW._isGaugeVoted(_poolGauge);
	}

	function getLswSystemData() public view returns (
		bool _isLswLocked,
		GaugeData[] memory _gauges,
		string memory _rewardsReinjectionScriptCID,
		uint256 _lastExecutionTimestamp
	) {
		return (
			lswSystemData.isLswLocked,
			lswSystemData.gauges,
			lswSystemData.rewardsReinjectionScriptCID,
			lswSystemData.lastExecutionTimestamp
		);
	}

	function getLswSystemTaskIds() public view returns (LswSystemTaskIds memory _taskIds) {
		return lswSystemData.taskIds;
	}

	function getLswSystemGaugesSaveData(address _poolGauge) public view returns (LswSystemGaugeSaveData memory _gaugesSaveData) {
		return lswSystemData.gaugesSaveData[_poolGauge];
	}

	function getLastExecutionTimestamp() public view returns (uint256) {
		return lswSystemData.lastExecutionTimestamp;
	}

	function isLswLocked() public view returns (bool) {
		return lswSystemData.isLswLocked;
	}

	function getGaugesBrokenLiquidityRewards(address _poolGauge) public view returns (uint256) {
		return lswSystemData.gaugesSaveData[_poolGauge].gaugesBrokenLiquidityRewards;
	}

	function getUserVotingPower(address user) public view returns (uint256) {
		return gaugeManager.getUserVotingPower(user);
	}

	function getNextSyncTimestamp() public view returns (uint256) {
		return syncLswSystemData.nextSyncTimestamp;
	}


	// ============ Owner Functions ============

	function withdrawNative(address _to) public onlyOwner {
		uint256 balance = address(this).balance;
		require(balance > 0, "No Native to withdraw");

		address payable _tresory = payable(_to);
		(bool success, ) = _tresory.call{value:balance}("");
		require(success, "Transaction failed");

		emit WithdrawnNative(_tresory, balance);
	}

	function withdrawToken(address _token, address _to) public onlyOwner {
		IERC20 token = IERC20(_token);
		uint256 balance = token.balanceOf(address(this));

		SafeERC20.safeTransfer(token, _to, balance);

		emit WithdrawnToken(_token, _to, balance);
	}

	function editRewardsReinjectionScriptCID(string memory _rewardsReinjectionScriptCID) public onlyOwner {
		lswSystemData.rewardsReinjectionScriptCID = _rewardsReinjectionScriptCID;
	}


	// ============ Modifiers ============

	modifier gelatoTaskOnly() {
		////require(msg.sender == dedicatedMsgSender, "Not authorized");
		require(msg.sender == dedicatedMsgSender || msg.sender == address(owner()), "Not authorized");////testing
		_;
		if (msg.sender == dedicatedMsgSender) {////testing
			_handleGelatoFees();
		}
	}

	modifier gaugeTaskExecutorOnly(address _poolGauge) {
		////require(msg.sender == gaugeExecutors[_poolGauge], "Not authorized");
		require(msg.sender == gaugeExecutors[_poolGauge] || msg.sender == address(owner()), "Not authorized");////testing
		_;
		if (msg.sender == gaugeExecutors[_poolGauge]) {////testing
			_handleGelatoFees();
		}
	}

	modifier onlyGaugeManager() {
		////testing
		////require(securityManager.hasContractRole(securityManager.GAUGE_MANAGER_ROLE(), msg.sender), "Not authorized");
		require(msg.sender == owner() || securityManager.hasContractRole(securityManager.GAUGE_MANAGER_ROLE(), msg.sender), "Not authorized");////testing
		_;
	}


	// ============ Receive Function ============

	receive() external payable {}
}