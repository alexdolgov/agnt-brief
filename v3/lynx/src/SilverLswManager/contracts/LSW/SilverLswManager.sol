// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// ============ Imports ============
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {TransferHelper} from "../libraries/TransferHelper.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

import {IWrappedNative} from "../interfaces/IWrappedNative.sol";
import {SilverStake} from "../SilverStake/SilverStake.sol";
import {GaugeManager, GaugeInfo} from "../Gauge/GaugeManager.sol";
import {SilverVoteLSW} from "./SilverVoteLSW.sol";
import {SilverValidatorAuth} from "../Validator/SilverValidatorAuth.sol";
import {ContractPermissionManager} from "../Security/ContractPermissionManager.sol";
import {TimelockProtection} from "../Security/TimelockProtection.sol";
import {SilverLswTaskManager} from "./SilverLswTaskManager.sol";
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
 * @notice This contract is used to manage the LSW system
 */
contract SilverLswManager is Ownable2Step, TimelockProtection {
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
	SilverLswTaskManager public taskManager;

	LswSystemData public lswSystemData;
	SyncLswSystemData public syncLswSystemData;
	mapping(address => address) public gaugeExecutors;
	uint256 public totalRewardsAmount;
	
	// ============ Events for rewards ============
	event RewardsClaimed(uint256 nativeAmount);
	event RewardsReinjected(address poolGauge, uint256 wrappedNativeAmount, uint256 projectTokenAmountClaimed);
	
	// ============ Events for gauges ============
	event GaugeDataCalculated(uint32 gaugeIndex, address poolGauge);
	event GaugeRewardsCalculated(uint32 gaugeIndex, uint256 wrappedNativeAmount);
	event GaugesRewardsExecuted(uint256 timestamp);
	event GaugeSynced(address poolGauge, address executor);
	event SyncGaugesRewardsStarted(uint256 timestamp);
	event GaugesRewardsSynced(uint256 timestamp);
	
	// ============ Events for system sync ============
	event SyncLswSystemStarted(uint256 syncTime, uint256 startTimestamp);
	event SyncLswSystemStopped(uint256 stopTimestamp);
	event LswSystemSynced(uint256 timestamp);
	event LswSystemCleared();
	event StartBreakLiquidityAndCompound(uint256 timestamp);
	event BreakLiquidityAndCompound(address poolGauge, uint256 wrappedNativeAmount, uint256 projectTokenAmount);
	event BrokenLiquidityRewardsDistributed(address poolGauge, address user, uint256 amount);
	event BrokenLiquidityRewardsSaved(address poolGauge, uint256 amount);
	event Compounding(uint256 wrappedNativeAmount);

	// ============ Events for withdrawals ============
	event WithdrawnNative(address indexed to, uint256 amount);
	event WithdrawnToken(address indexed token, address to, uint256 amount);
	
	// ============ Events for setters ============
	event LswTaskManagerSet(address indexed newLswTaskManager);
	event GaugeManagerSet(address indexed newGaugeManager);
	event GaugeExecutorFactorySet(address indexed newGaugeExecutorFactory);
	event SilverVoteLSWSet(address indexed newSilverVoteLSW);
	event SilverStakeSet(address indexed newSilverStake);
	event SilverValidatorAuthSet(address indexed newSilverValidatorAuth);
	event SwapRouterSet(address indexed newSwapRouter);

	// ============ Events for system ============
	event LswSystemManuallyLocked(uint256 timestamp);
	event LswSystemManuallyUnlocked(uint256 timestamp);

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
		address _timelockMain,
		address _timelockAdmin
	) Ownable(msg.sender) TimelockProtection(_timelockMain, _timelockAdmin) {
		securityManager = ContractPermissionManager(_securityManager);
		gaugeManager = GaugeManager(payable(_gaugeManager));
		silverStake = SilverStake(payable(_silverStake));
		if (_validatorAuth != address(0))
			validatorAuth = SilverValidatorAuth(payable(_validatorAuth));
		else
			validatorAuth = SilverValidatorAuth(payable(address(0)));
		silverVoteLSW = SilverVoteLSW(_silverVoteLSW);
		lswSystemData.rewardsReinjectionScriptCID = _rewardsReinjectionScriptCID;
		wrappedNativeToken = _wrappedNativeToken;
		swapRouter = IAlgebraSwapRouter(_swapRouter);
	}

	// ============ Sync System Functions ============

	function syncLswSystem() public onlyLswTaskManagerGelato {
		////testing
		////require(block.timestamp >= syncLswSystemData.nextSyncTimestamp - 10 minutes, "Too early to sync");
		
		syncLswSystemData.lastSyncTimestamp = block.timestamp;
		syncLswSystemData.nextSyncTimestamp = block.timestamp + syncLswSystemData.syncTime;

		lswSystemData.isLswLocked = true;

		lswSystemData.taskIds.syncGaugesRewardsCalcTaskId = taskManager.createTaskSyncGaugeRewardsCalc(syncLswSystemData.lastSyncTimestamp);
		lswSystemData.taskIds.breakLiquidityAndCompoundTaskId = taskManager.createTaskStartBreakLiquidityAndCompound(syncLswSystemData.lastSyncTimestamp);
		lswSystemData.taskIds.clearLswSystemTaskId = taskManager.createTaskClearLswSystem(syncLswSystemData.lastSyncTimestamp);

		emit LswSystemSynced(block.timestamp);
	}

	function startSyncSystem(uint256 _syncTime) public requireTimelockAdmin {
		////testing
		////require(_syncTime == 0 || _syncTime > 10 minutes, "Invalid sync time");

		if (lswSystemData.isLswLocked) {
			delete lswSystemData.gauges;
			totalRewardsAmount = 0;
			lswSystemData.isLswLocked = false;
		}

		syncLswSystemData.syncTime = _syncTime;
		syncLswSystemData.lastSyncTimestamp = block.timestamp;
		syncLswSystemData.nextSyncTimestamp = block.timestamp + _syncTime;
		
		// Cancel all existing tasks
		bytes32[] memory tasksToCancel = new bytes32[](5);
		tasksToCancel[0] = syncLswSystemData.lswSystemSyncTaskId;
		tasksToCancel[1] = syncLswSystemData.syncGaugesRewardsTaskId;
		tasksToCancel[2] = lswSystemData.taskIds.clearLswSystemTaskId;
		tasksToCancel[3] = lswSystemData.taskIds.syncGaugesRewardsCalcTaskId;
		tasksToCancel[4] = lswSystemData.taskIds.breakLiquidityAndCompoundTaskId;
		taskManager.cancelMultipleTasks(tasksToCancel);

		if (_syncTime != 0) {
			syncLswSystemData.lswSystemSyncTaskId = taskManager.createTaskSyncSystem(
				syncLswSystemData.nextSyncTimestamp,
				syncLswSystemData.syncTime
			);
			syncLswSystemData.syncGaugesRewardsTaskId = taskManager.createTaskGaugesRewards();
			emit SyncLswSystemStarted(_syncTime, block.timestamp);
		} else {
			emit SyncLswSystemStopped(block.timestamp);
		}
	}

	function syncGaugeRewardsCalc() public onlyLswTaskManagerGelato {
		lswSystemData.taskIds.syncGaugesRewardsCalcTaskId = bytes32(0);
		emit SyncGaugesRewardsStarted(block.timestamp);
	}

	function clearLswSystem() public onlyLswTaskManagerGelato {
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

		lswSystemData.lastExecutionTimestamp = block.timestamp;

		emit LswSystemCleared();
	}


	// ============ Gauge Management Functions ============

	function syncNewGauge(address _poolGauge) public onlyGaugeManager {
		address executor = taskManager.getOrCreateExecutor(_poolGauge);
		lswSystemData.gaugesSaveData[_poolGauge].snapshotTaskId = taskManager.createTaskGaugeSnapshot(executor);
		lswSystemData.gaugesSaveData[_poolGauge].rewardsReinjectionTaskId = taskManager.createTaskGaugeRewardsReinjection(
			_poolGauge,
			getGaugeProjectToken(_poolGauge),
			lswSystemData.rewardsReinjectionScriptCID,
			wrappedNativeToken
		);
		lswSystemData.gaugesSaveData[_poolGauge].breakLiquidityAndCompoundCallTaskId = taskManager.createTaskBreakLiquidityAndCompoundCall(executor);
		lswSystemData.gaugesSaveData[_poolGauge].gaugeExecutor = executor;
		
		emit GaugeSynced(_poolGauge, executor);
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

	function executeSyncGaugesRewards() public onlyLswTaskManagerGelato {
		require(lswSystemData.isLswLocked, "LSW is not locked");

		claimRewards();
		calcGaugesPercentages();
		calcGaugesRewards();

		emit GaugesRewardsSynced(block.timestamp);
	}

	function claimRewards() private {
		uint256 nativeAmountBefore = address(this).balance;
		uint256 wrappedNativeAmountBefore = IERC20(wrappedNativeToken).balanceOf(address(this));

		silverStake._claimRewards();
		if (address(validatorAuth) != address(0))
			validatorAuth._claimRewards();
		
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
	) public onlyLswTaskManagerGelato {
		require(_gaugePool != address(0), "Zero address");
		require(_projectToken != address(0), "Zero address");
		require(wrappedNativeAmount > 0, "Zero amount");
		require(isGaugeVoted(_gaugePool), "Gauge not voted");
		require(wrappedNativeAmount == getGaugeRewards(_gaugePool), "Wrong wrappedNativeAmount");
		require(_projectToken == getGaugeProjectToken(_gaugePool), "Wrong projectToken");

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
		
		gaugeManager.addLiquidityInWrappedPool(_gaugePool, amount0Desired, amount1Desired, 10);

		emit RewardsReinjected(_gaugePool, wrappedNativeAmount, projectTokenAmountClaimed);
	}


	// ============ Liquidity Management Functions ============

	function startBreakLiquidityAndCompound() public onlyLswTaskManagerGelato {
		lswSystemData.taskIds.breakLiquidityAndCompoundTaskId = bytes32(0);
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
					emit BrokenLiquidityRewardsDistributed(_poolGauge, gauge.users[i].user, userReward);
				}
			}
		} else {
			lswSystemData.gaugesSaveData[_poolGauge].gaugesBrokenLiquidityRewards += _projectTokenAmount;
			emit BrokenLiquidityRewardsSaved(_poolGauge, _projectTokenAmount);
		}
	}

	function _handleCompounding(uint256 wrappedNativeAmount) private {
		TransferHelper.safeTransfer(wrappedNativeToken, address(silverStake), wrappedNativeAmount);
		silverStake.compounding(wrappedNativeAmount);
		emit Compounding(wrappedNativeAmount);
	}


	// ============ Setters ============

	function setLswTaskManager(address _lswTaskManager) public requireTimelockMain {
		taskManager = SilverLswTaskManager(payable(_lswTaskManager));
		emit LswTaskManagerSet(_lswTaskManager);
	}

	function setGaugeManager(address _gaugeManager) public requireTimelockMain {
		gaugeManager = GaugeManager(payable(_gaugeManager));
		emit GaugeManagerSet(_gaugeManager);
	}

	function setSilverVoteLSW(address _silverVoteLSW) public requireTimelockMain {
		silverVoteLSW = SilverVoteLSW(payable(_silverVoteLSW));
		emit SilverVoteLSWSet(_silverVoteLSW);
	}

	function setSilverStake(address _silverStake) public requireTimelockMain {
		silverStake = SilverStake(payable(_silverStake));
		emit SilverStakeSet(_silverStake);
	}

	function setSilverValidatorAuth(address _silverValidatorAuth) public requireTimelockMain {
		validatorAuth = SilverValidatorAuth(payable(_silverValidatorAuth));
		emit SilverValidatorAuthSet(_silverValidatorAuth);
	}

	function setSwapRouter(address _swapRouter) public requireTimelockAdmin {
		swapRouter = IAlgebraSwapRouter(_swapRouter);
		emit SwapRouterSet(_swapRouter);
	}

	function cancelTaskGauge(address _poolGauge) public onlyGaugeManager {
		if (gaugeExecutors[_poolGauge] == address(0)) return;

		bytes32[] memory tasksToCancel = new bytes32[](3);
		tasksToCancel[0] = lswSystemData.gaugesSaveData[_poolGauge].snapshotTaskId;
		tasksToCancel[1] = lswSystemData.gaugesSaveData[_poolGauge].rewardsReinjectionTaskId;
		tasksToCancel[2] = lswSystemData.gaugesSaveData[_poolGauge].breakLiquidityAndCompoundCallTaskId;
		taskManager.cancelMultipleTasks(tasksToCancel);

		lswSystemData.gaugesSaveData[_poolGauge].snapshotTaskId = bytes32(0);
		lswSystemData.gaugesSaveData[_poolGauge].rewardsReinjectionTaskId = bytes32(0);
		lswSystemData.gaugesSaveData[_poolGauge].breakLiquidityAndCompoundCallTaskId = bytes32(0);
	}

	function setGaugeExecutor(address _poolGauge, address _executor) external onlyLswTaskManager {
		gaugeExecutors[_poolGauge] = _executor;
	}

	function resetTaskId(bytes32 taskId) external onlyLswTaskManager {
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

	function cancelTask(bytes32 taskId) external onlyOwner {
		taskManager.cancelTask(taskId);
	}

	// ============ Getters ============
	
	function getGaugeProjectToken(address _poolGauge) public view returns (address projectToken) {
		projectToken = gaugeManager.getProjectToken(_poolGauge);
	}

	function getGaugeData(address _poolGauge) public view returns (address poolGauge, address projectToken, uint256 totalVoters, uint256 gaugeVotingPower, uint256 gaugeVotingPowerPercentage, uint256 wrappedNativeAmount) {
		(bool voted, uint32 index) = _getGaugeIndex(_poolGauge);
		require(voted, "Gauge not voted");

		return (lswSystemData.gauges[index].poolGauge, lswSystemData.gauges[index].projectToken, lswSystemData.gauges[index].totalVoters, lswSystemData.gauges[index].gaugeVotingPower, lswSystemData.gauges[index].gaugeVotingPowerPercentage, lswSystemData.gauges[index].wrappedNativeAmount);
	}

	function getGaugeUserData(address _poolGauge) public view returns (UserData[] memory userData) {
		(bool voted, uint32 index) = _getGaugeIndex(_poolGauge);
		require(voted, "Gauge not voted");

		return lswSystemData.gauges[index].users;
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

	function getLswSystemTaskIds() public view returns (bytes32 clearLswSystemTaskId, bytes32 syncGaugesRewardsCalcTaskId, bytes32 breakLiquidityAndCompoundTaskId) {
		return (lswSystemData.taskIds.clearLswSystemTaskId, lswSystemData.taskIds.syncGaugesRewardsCalcTaskId, lswSystemData.taskIds.breakLiquidityAndCompoundTaskId);
	}

	function getLswSystemGaugesSaveData(address _poolGauge) public view returns (uint256 gaugesBrokenLiquidityRewards, address gaugeExecutor, bytes32 snapshotTaskId, bytes32 rewardsReinjectionTaskId, bytes32 breakLiquidityAndCompoundCallTaskId) {
		return (lswSystemData.gaugesSaveData[_poolGauge].gaugesBrokenLiquidityRewards, lswSystemData.gaugesSaveData[_poolGauge].gaugeExecutor, lswSystemData.gaugesSaveData[_poolGauge].snapshotTaskId, lswSystemData.gaugesSaveData[_poolGauge].rewardsReinjectionTaskId, lswSystemData.gaugesSaveData[_poolGauge].breakLiquidityAndCompoundCallTaskId);
	}

	function getLastExecutionTimestamp() public view returns (uint256) {
		return lswSystemData.lastExecutionTimestamp;
	}

	function isLswLocked() public view returns (bool) {
		return lswSystemData.isLswLocked;
	}

	/**
	 * @notice Lock the LSW system manually
	 * @dev Only callable by SilverStake during critical operations like validator transfer
	 */
	function lockLswSystem() external onlySilverStake {
		lswSystemData.isLswLocked = true;
		emit LswSystemManuallyLocked(block.timestamp);
	}

	/**
	 * @notice Unlock the LSW system manually
	 * @dev Only callable by SilverStake after critical operations are completed
	 */
	function unlockLswSystem() external onlySilverStake {
		lswSystemData.isLswLocked = false;
		emit LswSystemManuallyUnlocked(block.timestamp);
	}

	/**
	 * @notice Stop all LSW system tasks for maintenance operations
	 * @dev Only callable by SilverStake during critical operations like validator transfer
	 */
	function stopLswSystemForMaintenance() external onlySilverStake {
		bytes32[] memory tasksToCancel = new bytes32[](5);
		tasksToCancel[0] = syncLswSystemData.lswSystemSyncTaskId;
		tasksToCancel[1] = syncLswSystemData.syncGaugesRewardsTaskId;
		tasksToCancel[2] = lswSystemData.taskIds.clearLswSystemTaskId;
		tasksToCancel[3] = lswSystemData.taskIds.syncGaugesRewardsCalcTaskId;
		tasksToCancel[4] = lswSystemData.taskIds.breakLiquidityAndCompoundTaskId;
		taskManager.cancelMultipleTasks(tasksToCancel);

		syncLswSystemData.syncTime = 0;
		syncLswSystemData.lastSyncTimestamp = block.timestamp;
		syncLswSystemData.nextSyncTimestamp = 0;

		emit SyncLswSystemStopped(block.timestamp);
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

	function withdrawNative(address _to) public requireTimelockAdmin {
		uint256 balance = address(this).balance;
		require(balance > 0, "No Native to withdraw");

		address payable _tresory = payable(_to);
		(bool success, ) = _tresory.call{value:balance}("");
		require(success, "Transaction failed");

		emit WithdrawnNative(_tresory, balance);
	}

	function withdrawToken(address _token, address _to) public requireTimelockAdmin {
		IERC20 token = IERC20(_token);
		uint256 balance = token.balanceOf(address(this));

		SafeERC20.safeTransfer(token, _to, balance);

		emit WithdrawnToken(_token, _to, balance);
	}

	function editRewardsReinjectionScriptCID(string memory _rewardsReinjectionScriptCID) public requireTimelockAdmin {
		lswSystemData.rewardsReinjectionScriptCID = _rewardsReinjectionScriptCID;
	}


	// ============ Modifiers ============

	modifier gaugeTaskExecutorOnly(address _poolGauge) {
		require(msg.sender == gaugeExecutors[_poolGauge], "Not authorized");
		_;
	}

	modifier onlyGaugeManager() {
		require(securityManager.hasContractRole(securityManager.GAUGE_MANAGER_ROLE(), msg.sender), "Not authorized");
		_;
	}

	modifier onlySilverStake() {
		require(securityManager.hasContractRole(securityManager.SILVER_STAKE_ROLE(), msg.sender), "Not authorized");
		_;
	}

	modifier onlyLswTaskManagerGelato() {
		require(msg.sender == taskManager.dedicatedMsgSender(), "Not authorized");
		_;
	}

	modifier onlyLswTaskManager() {
		require(securityManager.hasContractRole(securityManager.SILVER_LSW_TASK_MANAGER_ROLE(), msg.sender), "Not authorized");
		_;
	}

	// ============ Receive Function ============

	receive() external payable {}
}