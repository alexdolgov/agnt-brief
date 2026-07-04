// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// ============ Imports ============
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import "../integrations/gelato/AutomateTaskCreator.sol";
import "../Security/ContractPermissionManager.sol";

import {ISFC} from "../interfaces/ISFC.sol";
import {IWrappedNative} from "../interfaces/IWrappedNative.sol";
	
// ============ Interfaces ============
interface ISilverStakeToken {
	function mint(uint256 _amount) external;
	function burn(uint256 _amount) external;
}

interface ISilverLswManager {
	function isLswLocked() external view returns (bool);
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

/**
 * @title SilverStake
 * @author github.com/SifexPro
 * @notice A contract for staking Native
 */
contract SilverStake is AutomateTaskCreator, Ownable2Step, ReentrancyGuard {
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

	// ============ Stake/Unstake info ============
	mapping(address => StakeInfo) public userStakeInfo;
	mapping(uint256 => UnstakeRequest) public unstakeRequests;

	// ============ Events for staking ============
	event Staked(address indexed user, uint256 nativeAmount, uint256 stakedTokenAmount, uint96 timestamp);
	event Unstaked(address indexed user, uint256 nativeAmount, uint256 stakedTokenAmount);
	event Withdrawn(address indexed user, uint256 nativeAmount);
	event Compounded(uint256 nativeAmount);
	event RateUpdated(uint256 rate);

	// ============ Events for Gelato ============
	event GelatoTaskCreated(bytes32 id);
	event GelatoTaskCanceled(bytes32 id);
	event GelatoTaskCancelFailed(bytes32 id);
	event GelatoFeesCheck(uint256 fees, address token);

	// ============ Events for owner ============
	event WithdrawnNative(address indexed to, uint256 amount);
	event WithdrawnToken(address indexed token, address to, uint256 amount);
	event SilverLswManagerSet(address indexed newSilverLswManager);

	// ============ Constructor ============
	constructor(
		address _silverStakeToken, 
		address _securityManager, 
		address _sfc, 
		uint256 _validatorID, 
		address _wrappedNativeToken, 
		address _automate
	) AutomateTaskCreator(_automate) Ownable(msg.sender) {
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
	 * @dev Mints AGS tokens in exchange for Native tokens
	 * @dev Delegates Native tokens to the validator
	 */
	function stake() public payable nonReentrant {
		require(!silverLswManager.isLswLocked(), "Lsw system is locked");
		uint256 nativeAmount = msg.value;
		require(nativeAmount >= stakeSettings.minStakeAmount, "Amount below minimum");

		uint256 stakedTokenAmount = nativeToAGS(nativeAmount);
		////testing
		stakedTokenAmount *= 100;
		////
		
		unchecked {
			totalStakedNative += nativeAmount;
		}

		sfc.delegate{value: nativeAmount}(stakeSettings.validatorID);

		silverStakeToken.mint(stakedTokenAmount);
		SafeERC20.safeTransfer(silverStakeTokenERC20, msg.sender, stakedTokenAmount);
		
		if (userStakeInfo[msg.sender].startTime == 0) {
			userStakeInfo[msg.sender].startTime = uint96(block.timestamp);
		}
		userStakeInfo[msg.sender].lastStakeTime = uint96(block.timestamp);

		emit Staked(msg.sender, nativeAmount, stakedTokenAmount, uint96(block.timestamp));
	}

	/**
	 * @notice Unstake native by burning $AGS
	 * @param stakedTokenAmount The amount of $AGS to burn
	 */
	function unstake(uint256 stakedTokenAmount) public nonReentrant {
		require(!silverLswManager.isLswLocked(), "Lsw system is locked");
		require(stakedTokenAmount > 0, "Amount must be greater than 0");
		require(silverStakeTokenERC20.balanceOf(msg.sender) >= stakedTokenAmount, "$AGS: insufficient balance");
		require(silverStakeTokenERC20.allowance(msg.sender, address(this)) >= stakedTokenAmount, "$AGS: insufficient allowance");

		uint256 wrID = _incrementWithdrawIndex();
		uint256 nativeAmount = agsToNative(stakedTokenAmount);
		////testing
		nativeAmount /= 100;
		////

		unchecked {
			totalStakedNative -= nativeAmount;
		}
		
		sfc.undelegate(stakeSettings.validatorID, wrID, nativeAmount);
		
		SafeERC20.safeTransferFrom(silverStakeTokenERC20, msg.sender, address(this), stakedTokenAmount);
		silverStakeToken.burn(stakedTokenAmount);
	
		unstakeRequests[wrID] = UnstakeRequest({
			user: msg.sender,
			wrID: wrID,
			nativeAmount: nativeAmount,
			stakedTokenAmount: stakedTokenAmount,
			timestamp: uint96(block.timestamp),
			withdrawableTimestamp: uint96(block.timestamp + stakeSettings.withdrawDelay),
			withdrawn: false,
			taskID: bytes32(0)
		});

		createTaskWithdraw(wrID);
		
		userStakeInfo[msg.sender].lastUnstakeTime = uint96(block.timestamp);

		emit Unstaked(msg.sender, nativeAmount, stakedTokenAmount);
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

		emit Withdrawn(request.user, request.nativeAmount);
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

	function _claimRewards() public onlySilverLswManager {
		////sfc.claimRewards(stakeSettings.validatorID); testing
		(bool success,) = payable(msg.sender).call{value: 1 ether}("");
		require(success, "Transfer failed");
		////testing
	}

	function updateRateForOneToken() public onlySilverLswManager {
		uint256 totalMintedAGS = silverStakeTokenERC20.totalSupply();
		if (totalMintedAGS == 0) return; // Avoid division by zero
		
		stakeSettings.rateForOneNative = totalStakedNative / totalMintedAGS;

		emit RateUpdated(stakeSettings.rateForOneNative);
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

	//// testing
	function updateValidatorID(uint256 newValidatorID) external onlyOwner {
		stakeSettings.validatorID = newValidatorID;
	}

	function updateMinStakeAmount(uint256 newMinStakeAmount) external onlyOwner {
		stakeSettings.minStakeAmount = newMinStakeAmount;
	}

	function setSilverLswManager(address _silverLswManager) public onlyOwner {
		silverLswManager = ISilverLswManager(payable(_silverLswManager));
		emit SilverLswManagerSet(_silverLswManager);
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


	// ============ Getters ============

	function getStakeInfo(address user) public view returns (StakeInfo memory) {
		return userStakeInfo[user];
	}

	function getUnstakeRequest(uint256 wrID) public view returns (UnstakeRequest memory) {
		return unstakeRequests[wrID];
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