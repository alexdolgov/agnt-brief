// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// ============ Imports ============
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import "../integrations/gelato/AutomateTaskCreator.sol";
import "../Security/ContractPermissionManager.sol";
import "../Security/TimelockProtection.sol";

import {ISFC} from "../interfaces/ISFC.sol";
import {IWrappedNative} from "../interfaces/IWrappedNative.sol";

// ============ Interfaces ============
interface ISilverStakeToken {
	function mint(uint256 _amount) external;
	function burn(uint256 _amount) external;
}

interface ISilverLswManager {
	function isLswLocked() external view returns (bool);
	function lockLswSystem() external;
	function unlockLswSystem() external;
	function stopLswSystemForMaintenance() external;
}

// ============ Structs ============
struct StakeSettings {
	uint256 validatorID;
	uint256 withdrawDelay;
	uint256 rateForOneNative;
	uint256 minStakeAmount;
}

struct StakeInfo {
	uint96 startTime;
	uint96 lastStakeTime;
	uint96 lastUnstakeTime;
	uint256 weightedStakeTimestamp;
	uint256 weightedEntryRate;
	uint256 totalStaked;
}

struct UnstakeRequest {
	address user;
	uint256 wrID;
    uint256 nativeAmount;
    uint256 stakedTokenAmount;
    uint96 timestamp;
	uint96 withdrawableTimestamp;
    bool withdrawn;
	bytes32 taskID;
}

struct ValidatorTransfer {
	uint256 validatorID;
	uint256 amount;
	uint256 wrID;
	uint256 timestamp;
	bool transferInitiated;
}

/**
 * @title SilverStake
 * @author github.com/SifexPro
 * @notice A contract for staking Native
 */
contract SilverStake is AutomateTaskCreator, Ownable2Step, ReentrancyGuard, TimelockProtection {
	// ============ Interfaces ============
	ISilverStakeToken public immutable silverStakeToken;
	IERC20 public immutable silverStakeTokenERC20;
	ContractPermissionManager public immutable securityManager;
	ISFC public immutable sfc;
	IWrappedNative public immutable wrappedNativeToken;
	ISilverLswManager public silverLswManager;

	// ============ Utils variables ============
	uint256 public totalStakedNative;
	uint256 public withdrawIndex = 0;

	// ============ Stake settings ============
	StakeSettings public stakeSettings;
	ValidatorTransfer public validatorTransfer;

	// ============ Anti-frontrunning  ============
	uint256 public vestingDuration = 30 days;
	uint256 public baseReward = 10;
	uint256 public maxBonusReward = 90;

	// ============ Stake/Unstake info ============
	mapping(address => StakeInfo) public userStakeInfo;
	mapping(uint256 => UnstakeRequest) public unstakeRequests;

	// ============ Events for staking ============
	event Staked(address indexed user, uint256 nativeAmount, uint256 stakedTokenAmount, uint96 timestamp);
	event Unstaked(address indexed user, uint256 wrID, uint256 nativeAmount, uint256 stakedTokenAmount);
	event Withdrawn(address indexed user, uint256 wrID, uint256 nativeAmount);
	event Compounded(uint256 nativeAmount);
	event RateUpdated(uint256 rate);
	event StakeRewardsClaimed(uint256 amount, uint256 timestamp);
	event StakeRewardsClaimFailed(uint256 amount, uint256 timestamp);
	event VestingInfoTransferred(address indexed from, address indexed to, uint256 amount);

	// ============ Events for setters ============
	event ValidatorIDUpdated(uint256 newValidatorID);
	event ValidatorTransferConfirmed(uint256 validatorID, uint256 wrID, uint256 amount, uint256 timestamp);
	event SlashingLossDetected(uint256 expectedAmount, uint256 actualAmount, uint256 lossAmount);
	event LswSystemStoppedForValidatorTransfer(uint256 timestamp);
	event MinStakeAmountUpdated(uint256 newMinStakeAmount);
	event VestingParametersUpdated(uint256 vestingDuration, uint256 baseReward, uint256 maxBonusReward);
	event SilverLswManagerSet(address indexed newSilverLswManager);

	// ============ Events for Gelato ============
	event GelatoTaskCreated(bytes32 id);
	event GelatoTaskCanceled(bytes32 id);
	event GelatoTaskCancelFailed(bytes32 id);
	event GelatoFeesCheck(uint256 fees, address token);

	// ============ Events for owner ============
	event WithdrawnNative(address indexed to, uint256 amount);
	event WithdrawnToken(address indexed token, address to, uint256 amount);

	// ============ Constructor ============
	constructor(
		address _silverStakeToken, 
		address _securityManager, 
		address _sfc, 
		uint256 _validatorID, 
		address _wrappedNativeToken, 
		address _automate,
		address _timelockMain,
		address _timelockAdmin
	) AutomateTaskCreator(_automate) Ownable(msg.sender) TimelockProtection(_timelockMain, _timelockAdmin) {
		silverStakeToken = ISilverStakeToken(_silverStakeToken);
		silverStakeTokenERC20 = IERC20(_silverStakeToken);
		securityManager = ContractPermissionManager(_securityManager);
		wrappedNativeToken = IWrappedNative(_wrappedNativeToken);
		sfc = ISFC(_sfc);

		stakeSettings = StakeSettings({
			validatorID: _validatorID,
			withdrawDelay: 14 days + 5 minutes,
			rateForOneNative: 1 ether, // 1:1 default
			minStakeAmount: 1 ether
		});
	}

	// ============ Stake/Unstake/Withdraw ============
	
	/**
	 * @notice Stake Native tokens
	 * @dev Mints AGS tokens in exchange for Native tokens and delegates to validator
	 */
	function stake() public payable nonReentrant {
		require(!validatorTransfer.transferInitiated, "Validator transfer in progress");
		require(!silverLswManager.isLswLocked(), "Lsw system is locked");
		uint256 nativeAmount = msg.value;
		require(nativeAmount >= stakeSettings.minStakeAmount, "Amount below minimum");

		uint256 stakedTokenAmount = nativeToAGS(nativeAmount);
		
		unchecked {
			totalStakedNative += nativeAmount;
		}

		sfc.delegate{value: nativeAmount}(stakeSettings.validatorID);

		silverStakeToken.mint(stakedTokenAmount);
		SafeERC20.safeTransfer(silverStakeTokenERC20, msg.sender, stakedTokenAmount);
		
		_updateUserStakeInfo(msg.sender, stakedTokenAmount);

		emit Staked(msg.sender, nativeAmount, stakedTokenAmount, uint96(block.timestamp));
	}

	/**
	 * @notice Updates user staking information with new stake
	 * @dev Handles weighted averages for anti-frontrunning mechanism
	 * @param user Address of the user
	 * @param stakedAmount Amount of AGS tokens staked
	 */
	function _updateUserStakeInfo(address user, uint256 stakedAmount) private {
		StakeInfo storage userInfo = userStakeInfo[user];
		
		if (userInfo.startTime == 0) {
			userInfo.startTime = uint96(block.timestamp);
			userInfo.weightedStakeTimestamp = block.timestamp;
			userInfo.weightedEntryRate = stakeSettings.rateForOneNative;
			userInfo.totalStaked = stakedAmount;
		} else {
			uint256 newTotalStaked = userInfo.totalStaked + stakedAmount;
			
			userInfo.weightedStakeTimestamp = (
				userInfo.totalStaked * userInfo.weightedStakeTimestamp + 
				stakedAmount * block.timestamp
			) / newTotalStaked;
			
			userInfo.weightedEntryRate = (
				userInfo.totalStaked * userInfo.weightedEntryRate + 
				stakedAmount * stakeSettings.rateForOneNative
			) / newTotalStaked;
			
			userInfo.totalStaked = newTotalStaked;
		}
		
		userInfo.lastStakeTime = uint96(block.timestamp);
	}

	/**
	 * @notice Unstake native by burning $AGS
	 * @param stakedTokenAmount The amount of $AGS to burn
	 */
	function unstake(uint256 stakedTokenAmount) public nonReentrant {
		require(!validatorTransfer.transferInitiated, "Validator transfer in progress");
		require(!silverLswManager.isLswLocked(), "Lsw system is locked");
		require(stakedTokenAmount > 0, "Amount must be greater than 0");
		require(silverStakeTokenERC20.balanceOf(msg.sender) >= stakedTokenAmount, "$AGS: insufficient balance");
		require(silverStakeTokenERC20.allowance(msg.sender, address(this)) >= stakedTokenAmount, "$AGS: insufficient allowance");

		(uint256 nativeAmount, ) = _calculateUnstakeAmount(msg.sender, stakedTokenAmount);
		
		uint256 wrID = _incrementWithdrawIndex();

		unchecked {
			totalStakedNative -= nativeAmount;
		}
		
		sfc.undelegate(stakeSettings.validatorID, wrID, nativeAmount);
		
		SafeERC20.safeTransferFrom(silverStakeTokenERC20, msg.sender, address(this), stakedTokenAmount);
		silverStakeToken.burn(stakedTokenAmount);
		
		_createUnstakeRequest(msg.sender, wrID, nativeAmount, stakedTokenAmount);
		userStakeInfo[msg.sender].lastUnstakeTime = uint96(block.timestamp);

		emit Unstaked(msg.sender, wrID, nativeAmount, stakedTokenAmount);
	}

	/**
	 * @notice Calculate the native amount to return when unstaking, applying vesting
	 * @dev Handles both tracked stakes and external tokens with different vesting rules
	 * @param user Address of the user unstaking
	 * @param stakedTokenAmount Amount of $AGS tokens to unstake
	 * @return nativeAmount The amount of native tokens to be returned
	 * @return trackedAmount The amount of tokens from tracked stakes
	 */
	function _calculateUnstakeAmount(address user, uint256 stakedTokenAmount) private returns (uint256 nativeAmount, uint256 trackedAmount) {
		StakeInfo storage userInfo = userStakeInfo[user];
		
		trackedAmount = stakedTokenAmount;
		uint256 externalAmount = 0;
		
		if (userInfo.totalStaked < stakedTokenAmount) {
			trackedAmount = userInfo.totalStaked;
			externalAmount = stakedTokenAmount - trackedAmount;
		}
		
		nativeAmount = 0;
		
		if (trackedAmount > 0) {
			uint256 timeStaked = block.timestamp > userInfo.weightedStakeTimestamp ? block.timestamp - userInfo.weightedStakeTimestamp : 0;
			uint256 vestedPortion = timeStaked >= vestingDuration ? 100 : (timeStaked * 100) / vestingDuration;
			
			uint256 rewardShare = baseReward + ((maxBonusReward * vestedPortion) / 100);
			
			uint256 baseAmount = (trackedAmount * userInfo.weightedEntryRate) / 1e18;
			uint256 potentialGain = 0;
			
			if (stakeSettings.rateForOneNative > userInfo.weightedEntryRate) {
				potentialGain = (trackedAmount * (stakeSettings.rateForOneNative - userInfo.weightedEntryRate)) / 1e18;
				potentialGain = (potentialGain * rewardShare) / 100;
			}

			nativeAmount += baseAmount + potentialGain;
			userInfo.totalStaked -= trackedAmount;
		}
		
		if (externalAmount > 0) {
			uint256 baseAmount = (externalAmount * stakeSettings.rateForOneNative) / 1e18;
			nativeAmount += (baseAmount * baseReward) / 100;
		}
		
		return (nativeAmount, trackedAmount);
	}
	
	/**
	 * @notice Create an unstake request and schedule automatic withdrawal
	 * @param user Address of the user unstaking
	 * @param wrID Withdrawal request ID
	 * @param nativeAmount Amount of native tokens to be returned
	 * @param stakedTokenAmount Amount of $AGS tokens unstaked
	 */
	function _createUnstakeRequest(address user, uint256 wrID, uint256 nativeAmount, uint256 stakedTokenAmount) private {
		unstakeRequests[wrID] = UnstakeRequest({
			user: user,
			wrID: wrID,
			nativeAmount: nativeAmount,
			stakedTokenAmount: stakedTokenAmount,
			timestamp: uint96(block.timestamp),
			withdrawableTimestamp: uint96(block.timestamp + stakeSettings.withdrawDelay),
			withdrawn: false,
			taskID: bytes32(0)
		});
		
		createTaskWithdraw(wrID);
	}

	/**
	 * @notice Withdraw native that is ready to be withdrawn
	 * @param wrID The withdrawal request ID
	 * @dev Can be called by the user or automatically by Gelato
	 */
	function withdraw(uint256 wrID) public onlyUserOrGelatoTask(wrID) nonReentrant {
		UnstakeRequest storage request = unstakeRequests[wrID];
		
		require(request.user != address(0), "Invalid wrID");
		require(!request.withdrawn, "Already withdrawn");
		require(block.timestamp >= request.withdrawableTimestamp, "Withdrawal delay not passed");
		
		request.withdrawn = true;
		
		sfc.withdraw(stakeSettings.validatorID, request.wrID);
		
		(bool success,) = payable(request.user).call{value: request.nativeAmount}("");
		require(success, "Transfer failed");

		if (msg.sender != dedicatedMsgSender && request.taskID != bytes32(0)) {
			cancelTask(request.taskID);
		}

		request.taskID = bytes32(0);

		emit Withdrawn(request.user, wrID, request.nativeAmount);
	}

	// ============ SilverLswManager functions ============

	function compounding(uint256 wrappedNativeAmount) public onlySilverLswManager {
		uint256 balanceBefore = address(this).balance;
		wrappedNativeToken.withdraw(wrappedNativeAmount);
		uint256 nativeAmount = address(this).balance - balanceBefore;
		
		sfc.delegate{value: nativeAmount}(stakeSettings.validatorID);

		totalStakedNative += nativeAmount;

		emit Compounded(nativeAmount);
	}

	/**
	 * @notice Claim validator rewards
	 * @dev Only callable by SilverLswManager
	 */
	function _claimRewards() public onlySilverLswManager {
		uint256 rewards = sfc.pendingRewards(address(this), stakeSettings.validatorID);
		if (rewards == 0) return;
		
		sfc.claimRewards(stakeSettings.validatorID);
		(bool success,) = payable(msg.sender).call{value: rewards}("");

		if (!success)
			emit StakeRewardsClaimFailed(rewards, block.timestamp);
		else
			emit StakeRewardsClaimed(rewards, block.timestamp);
	}

	function updateRateForOneToken() public onlySilverLswManager {
		uint256 totalMintedAGS = silverStakeTokenERC20.totalSupply();
		if (totalMintedAGS == 0) return;

		uint256 newRate = (totalStakedNative * 1e18) / totalMintedAGS;
		
		if (newRate != stakeSettings.rateForOneNative) {
			if (newRate < stakeSettings.rateForOneNative) {
				uint256 minAllowedRate = (stakeSettings.rateForOneNative * 90) / 100;
				if (newRate < minAllowedRate) {
					newRate = minAllowedRate;
				}
			}
			
			stakeSettings.rateForOneNative = newRate;
			emit RateUpdated(stakeSettings.rateForOneNative);
		}
	}

	// ============ Gelato functions ============

	/**
	 * @notice Create a task to withdraw automatically after the delay
	 * @param wrID The withdrawal request ID
	 */
	function createTaskWithdraw(uint256 wrID) private {
		uint256 execTime = 30 minutes;

		bytes memory execData = abi.encodeCall(this.withdraw, (wrID));

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
			uint128(unstakeRequests[wrID].withdrawableTimestamp) * 1000, 
			uint128(execTime) * 1000
		);

		bytes32 taskId = _createTask(address(this), execData, moduleData, ETH);
		unstakeRequests[wrID].taskID = taskId;

		emit GelatoTaskCreated(taskId);
	}

	function cancelTaskCall(bytes32 taskId) public {
		require(msg.sender == address(this));
		_cancelTask(taskId);
	}

	/**
	 * @notice Cancel a gelato task
	 * @param taskId The task ID
	 */
	function cancelTask(bytes32 taskId) public onlyOwner {
		if (taskId == bytes32(0))
			return;

		(bool success, ) = address(this).call(
            abi.encodeWithSignature("cancelTaskCall(bytes32)", taskId)
        );

		if (success)
			emit GelatoTaskCanceled(taskId);
		else
			emit GelatoTaskCancelFailed(taskId);
	}

	function _handleGelatoFees() private {
		(uint256 fee, address feeToken) = _getFeeDetails();
		_transfer(fee, feeToken);
		emit GelatoFeesCheck(fee, feeToken);
	}
		
	
	// ============ Internal functions ============

	function _incrementWithdrawIndex() private returns (uint256) {
		withdrawIndex++;
	
		uint256 timestampComponent = uint256(block.timestamp & 0xFFFFFFFF) << 16;
		uint256 indexComponent = withdrawIndex & 0xFFFF;
		uint256 prefixComponent = 0x000 << 48;
		
		return prefixComponent | timestampComponent | indexComponent;
	}


	// ============ Setters ============

	/**
	 * @notice Update the validator ID
	 * @dev Protected by main timelock due to critical nature
	 * @param newValidatorID The new validator ID
	 */
	function updateValidatorID(uint256 newValidatorID) external requireTimelockMain {
		require(newValidatorID != stakeSettings.validatorID, "Validator ID is already set");
		require(newValidatorID != 0, "Validator ID cannot be 0");

		silverLswManager.stopLswSystemForMaintenance();
		silverLswManager.lockLswSystem();

		uint256 wrId = _incrementWithdrawIndex();
		uint256 currentStake = sfc.getStake(address(this), stakeSettings.validatorID);
		
		sfc.undelegate(stakeSettings.validatorID, wrId, currentStake);

		validatorTransfer.validatorID = newValidatorID;
		validatorTransfer.wrID = wrId;
		validatorTransfer.amount = currentStake;
		validatorTransfer.timestamp = uint96(block.timestamp) + stakeSettings.withdrawDelay;
		validatorTransfer.transferInitiated = true;

		emit ValidatorIDUpdated(stakeSettings.validatorID);
		emit LswSystemStoppedForValidatorTransfer(block.timestamp);
	}

	/**
	 * @notice Confirm validator transfer
	 * @dev Protected by main timelock due to critical nature
	 */
	function confirmValidatorTransfer() external requireTimelockMain {
		require(validatorTransfer.validatorID != 0, "No validator transfer");
		require(block.timestamp >= validatorTransfer.timestamp, "Not yet");

		uint256 expectedAmount = validatorTransfer.amount;
		uint256 balanceBefore = address(this).balance;
		sfc.withdraw(stakeSettings.validatorID, validatorTransfer.wrID);
		uint256 actualAmount = address(this).balance - balanceBefore;

		if (actualAmount < expectedAmount) {
			uint256 slashingLoss = expectedAmount - actualAmount;

			if (totalStakedNative >= slashingLoss) {
				totalStakedNative -= slashingLoss;
			} else {
				totalStakedNative = 0;
			}
			
			emit SlashingLossDetected(expectedAmount, actualAmount, slashingLoss);
		}

		stakeSettings.validatorID = validatorTransfer.validatorID;

		sfc.delegate{value: actualAmount}(stakeSettings.validatorID);

		uint256 oldValidatorID = validatorTransfer.validatorID;
		uint256 oldWrID = validatorTransfer.wrID;
		uint256 oldTimestamp = validatorTransfer.timestamp;
		
		validatorTransfer.validatorID = 0;
		validatorTransfer.wrID = 0;
		validatorTransfer.amount = 0;
		validatorTransfer.timestamp = 0;
		validatorTransfer.transferInitiated = false;

		silverLswManager.unlockLswSystem();

		emit ValidatorTransferConfirmed(oldValidatorID, oldWrID, actualAmount, oldTimestamp);
	}

	/**
	 * @notice Update the minimum stake amount
	 * @dev Protected by admin timelock
	 * @param newMinStakeAmount The new minimum stake amount
	 */
	function updateMinStakeAmount(uint256 newMinStakeAmount) external requireTimelockAdmin {
		stakeSettings.minStakeAmount = newMinStakeAmount;
		emit MinStakeAmountUpdated(newMinStakeAmount);
	}

	/**
	 * @notice Set vesting parameters
	 * @dev Protected by main timelock due to economic impact
	 * @param _vestingDuration The vesting duration in seconds
	 * @param _baseReward The base reward percentage
	 * @param _maxBonusReward The maximum bonus reward percentage
	 */
	function setVestingParameters(uint256 _vestingDuration, uint256 _baseReward, uint256 _maxBonusReward) public requireTimelockMain {
		require(_baseReward + _maxBonusReward == 100, "Rewards must sum to 100%");
		vestingDuration = _vestingDuration;
		baseReward = _baseReward;
		maxBonusReward = _maxBonusReward;
		
		emit VestingParametersUpdated(_vestingDuration, _baseReward, _maxBonusReward);
	}

	/**
	 * @notice Set the SilverLswManager address
	 * @dev Protected by main timelock due to critical integration
	 * @param _silverLswManager The new SilverLswManager address
	 */
	function setSilverLswManager(address _silverLswManager) public requireTimelockMain {
		silverLswManager = ISilverLswManager(payable(_silverLswManager));
		emit SilverLswManagerSet(_silverLswManager);
	}

	// ============ Owner Functions ============

	/**
	 * @notice Withdraw native tokens to a specified address
	 * @dev Protected by admin timelock
	 * @param _to The address to withdraw to
	 */
	function withdrawNative(address _to) public requireTimelockAdmin {
		uint256 balance = address(this).balance;
		require(balance > 0, "No Native to withdraw");

		address payable _treasury = payable(_to);
		(bool success, ) = _treasury.call{value:balance}("");
		require(success, "Transaction failed");

		emit WithdrawnNative(_treasury, balance);
	}

	/**
	 * @notice Withdraw ERC20 tokens to a specified address
	 * @dev Protected by admin timelock
	 * @param _token The token address
	 * @param _to The address to withdraw to
	 */
	function withdrawToken(address _token, address _to) public requireTimelockAdmin {
		IERC20 token = IERC20(_token);
		uint256 balance = token.balanceOf(address(this));

		SafeERC20.safeTransfer(token, _to, balance);

		emit WithdrawnToken(_token, _to, balance);
	}


	// ============ Getters ============

	function getStakeInfo(address user) public view returns (StakeInfo memory) {
		return userStakeInfo[user];
	}

	function getUnstakeRequest(uint256 wrID) public view returns (UnstakeRequest memory) {
		return unstakeRequests[wrID];
	}

	/**
	 * @notice Get the current vesting percentage for a user
	 * @param user Address of the user
	 * @return vestingPercentage Vesting percentage (0-100)
	 */
	function getUserVestingPercentage(address user) public view returns (uint256 vestingPercentage) {
		StakeInfo storage userInfo = userStakeInfo[user];
		
		if (userInfo.startTime == 0 || userInfo.totalStaked == 0) return 0;
		
		uint256 timeStaked = block.timestamp > userInfo.weightedStakeTimestamp ? 
			block.timestamp - userInfo.weightedStakeTimestamp : 0;
		
		vestingPercentage = timeStaked >= vestingDuration ? 
			100 : (timeStaked * 100) / vestingDuration;
			
		return vestingPercentage;
	}

	/**
	 * @notice Convert Native amount to AGS amount using current rate
	 * @param nativeAmount Amount in Native (1e18)
	 * @return Amount in AGS (1e18)
	 */
	function nativeToAGS(uint256 nativeAmount) public view returns (uint256) {
		return (nativeAmount * 1 ether) / stakeSettings.rateForOneNative;
	}

	/**
	 * @notice Convert AGS amount to Native amount using current rate
	 * @param agsAmount Amount in AGS (1e18)
	 * @return Amount in Native (1e18)
	 */
	function agsToNative(uint256 agsAmount) public view returns (uint256) {
		return (agsAmount * stakeSettings.rateForOneNative) / 1 ether;
	}

	/**
	 * @notice Receive token transfer notifications from SilverStakeToken
	 * @dev Only callable by SilverStakeToken contract
	 * @param from The sender address
	 * @param to The recipient address
	 * @param amount The amount of tokens transferred
	 */
	function notifyTokenTransfer(address from, address to, uint256 amount) external {
		require(msg.sender == address(silverStakeToken), "Only $AGS");
		
		if (userStakeInfo[from].totalStaked > 0)
			_transferVestingInfo(from, to, amount);
	}

	/**
	 * @notice Transfer vesting information proportionally between users
	 * @dev Internal function called during token transfers
	 * @param from The sender address
	 * @param to The recipient address
	 * @param amount The amount of tokens transferred
	 */
	function _transferVestingInfo(address from, address to, uint256 amount) private {
		StakeInfo storage fromInfo = userStakeInfo[from];
		StakeInfo storage toInfo = userStakeInfo[to];
		
		if (toInfo.totalStaked == 0) {
			toInfo.startTime = uint96(block.timestamp);
			toInfo.weightedStakeTimestamp = fromInfo.weightedStakeTimestamp;
			toInfo.weightedEntryRate = fromInfo.weightedEntryRate;
			toInfo.totalStaked = amount;
		} else {
			uint256 newTotal = toInfo.totalStaked + amount;
			
			toInfo.weightedStakeTimestamp = (
				toInfo.totalStaked * toInfo.weightedStakeTimestamp +
				amount * fromInfo.weightedStakeTimestamp
			) / newTotal;
			
			toInfo.weightedEntryRate = (
				toInfo.totalStaked * toInfo.weightedEntryRate +
				amount * fromInfo.weightedEntryRate
			) / newTotal;
			
			toInfo.totalStaked = newTotal;
		}
		
		fromInfo.totalStaked -= amount;
		
		if (fromInfo.totalStaked == 0) {
			fromInfo.weightedStakeTimestamp = 0;
			fromInfo.weightedEntryRate = 0;
		}

		emit VestingInfoTransferred(from, to, amount);
	}

	// ============ Modifiers ============

	/**
	 * @notice Ensures only the user who owns the unstake request or Gelato can call the function
	 * @param wrID The withdrawal request ID
	 */
	modifier onlyUserOrGelatoTask(uint256 wrID) {
		require(unstakeRequests[wrID].user == msg.sender || msg.sender == dedicatedMsgSender, "Not authorized");
		_;
		if (msg.sender == dedicatedMsgSender) {
			_handleGelatoFees();
		}
	}

	/**
	 * @notice Ensures only the Silver LSW Manager contract can call the function
	 */
	modifier onlySilverLswManager() {
		require(securityManager.hasContractRole(securityManager.SILVER_LSW_MANAGER_ROLE(), msg.sender), "Not authorized");
		_;
	}


	// ============ Receive function ============

	receive() external payable {}
}