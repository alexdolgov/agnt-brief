// SPDX-License-Identifier: MIT
pragma solidity >=0.8.20 <=0.8.25;

import {ERC20} from '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import 'contracts/Libraries/TransferHelper.sol';

import {Utils} from "contracts/Libraries/Utils.sol";
import 'contracts/DcaApprover.sol';

import 'contracts/Integrations/Gelato/AutomateTaskCreator.sol';
import 'contracts/Interfaces/IWrappedNative.sol';


interface IMagpieRouter {
	function swapWithMagpieSignature(bytes calldata) external payable returns (uint256);
}

/// @title SilverSwap DCA
/// @author github.com/SifexPro
/// @notice This contract allows users to create DCA orders on the SilverSwap platform
contract SilverSwapDCA is AutomateTaskCreator, Ownable2Step {
	// Utils variables
	IMagpieRouter public swapRouter;
	address public tresory;
	IWrappedNative public wrappedNative;
	
	// Order variables
	uint256 public ordersCount;
	mapping(uint256 => Order) public ordersById;
	mapping(address => uint256[]) public idByAddress;

	// Script CID for Gelato
	string private scriptCID;

	// Events
	event OrderCreated(address indexed user, uint256 indexed id, address tokenIn, address tokenOut, uint256 amountIn, uint256 amountOutMin, uint256 period);
	event OrderEdited(address indexed user, uint256 indexed id, address tokenIn, address tokenOut, uint256 amountIn, uint256 amountOutMin, uint256 period);
	event OrderStopped(address indexed user, uint256 indexed id);
	event OrderRestarted(address indexed user, uint256 indexed id);
	event OrderExecuted(address indexed user, uint256 indexed id, address tokenIn, address tokenOut, uint256 amountIn, uint256 amountOut, uint256 amountOutMin, uint256 period);

	// Events for Misc
	event WithdrawnNative(address indexed to, uint256 amount);
	event WithdrawnToken(address indexed token, address to, uint256 amount);
	event EditedTresory(address indexed tresory);
	event EditedScriptCID(string cid);
	event EditedSwapRouter(address swapRouter);

	// Gelato events
	event GelatoTaskCreated(bytes32 id);
	event GelatoTaskCanceled(bytes32 id);
	event GelatoFeesCheck(uint256 fees, address token);

	// Error events
	error ErrorOrderDoesNotExist(uint256 id, uint256 ordersCount);
	error ErrorNotAuthorized(uint id, address user, address msgSender);
	error ErrorInvalidTokens(address tokenIn, address tokenOut);
	error ErrorOrderStopped(uint256 id);
	error ErrorOrderNotStopped(uint256 id);////
	error ErrorPeriodNotElapsed(uint256 id, uint256 lastExecution, uint256 blockTimestamp, uint256 nextExecution);
	error ErrorInvalidExactInputParams(uint256 pathLenght, uint256 amountIn, address recipient, uint256 deadline);////
	error ErrorTaskAlreadyCreated(uint256 id);////
	error ErrorTaskNotCreated(uint256 id);////
	error ErrorAmountOutBelowMin(uint256 amountOut, uint256 amountOutMin);

	// Constructor
	constructor(address _swapRouter, address _automate, address _tresory, address _wrappedToken, string memory _scriptCID) AutomateTaskCreator(_automate) Ownable(msg.sender) {
		swapRouter = IMagpieRouter(payable(_swapRouter));
		tresory = _tresory;
		wrappedNative = IWrappedNative(_wrappedToken);
		scriptCID = _scriptCID;
	}


	// Execution functions

	/**
	 * @dev Execute the order (internal function)
	 * @param id the order id
	 * @param gelatoFeesInTokenIn the amount of tokenIn to swap for gelato fees
	 * @param dcaArgs the calldata for magpie swap
	 */
	function _executeOrder(uint id, uint256 gelatoFeesInTokenIn, bytes calldata dcaArgs) private {
		address user = ordersById[id].user;
		IERC20 tokenIn = IERC20(ordersById[id].tokenIn);
		IERC20 tokenOut = IERC20(ordersById[id].tokenOut);

		uint256 amountIn = ordersById[id].amountIn - gelatoFeesInTokenIn;

		uint256	fees = amountIn / 100;
		uint256 amountToSwap = amountIn - fees;
		uint256 amountOutMin = ordersById[id].amountOutMin;
		
		ordersById[id].totalExecutions++;
		ordersById[id].totalAmountIn += ordersById[id].amountIn;
		ordersById[id].lastExecution = block.timestamp;
		ordersById[id].nextExecution = block.timestamp + ordersById[id].period;
        SilverDcaApprover(ordersById[id].approver).executeOrder(amountIn + fees);
		
		require(tokenIn.transfer(tresory, fees), 'Failed to transfer fees');

		TransferHelper.safeApprove(address(tokenIn), address(swapRouter), amountToSwap);
		(bool success, bytes memory returnData) = address(swapRouter).call(dcaArgs);
		require(success, "Swap failed");
		uint256 amountOut = abi.decode(returnData, (uint256));

		if (amountOut < amountOutMin)
			revert ErrorAmountOutBelowMin(amountOut, amountOutMin);

		SafeERC20.safeTransfer(tokenOut, user, amountOut);

		ordersById[id].totalAmountOut += amountOut;

		uint256 period = ordersById[id].period;
		emit OrderExecuted(user, id, address(tokenIn), address(tokenOut), ordersById[id].amountIn, amountOut, amountOutMin, period);
	}

	/**
	 * @dev Execute the order (public function)
	 * @param id the order id
	 * @param amountGelatoFeesInTokenIn the amount of tokenIn to swap for gelato fees
	 * @param dcaArgs the calldata for magpie swap (order execution)
	 * @param gelatoFeesArgs the calldata for gelato fees (gelato fees execution)
	 */
	function executeOrder(uint256 id, uint256 amountGelatoFeesInTokenIn, bytes calldata dcaArgs, bytes calldata gelatoFeesArgs) public gelatoTaskOnly {
		if (id >= getOrdersCountTotal())
			revert ErrorOrderDoesNotExist(id, getOrdersCountTotal());
		////if (ordersById[id].stopped)
		////	revert ErrorOrderStopped(id);
		require(!ordersById[id].stopped, 'Order stopped');
		require(ordersById[id].nextExecution + 5 minutes >= block.timestamp, 'Period not elapsed');
		////if (block.timestamp - ordersById[id].lastExecution < ordersById[id].period) // G-02
		////	revert ErrorPeriodNotElapsed(id, ordersById[id].lastExecution, block.timestamp, ordersById[id].lastExecution + ordersById[id].period);
		require(ERC20(ordersById[id].tokenIn).balanceOf(ordersById[id].user) >= ordersById[id].amountIn, 'Not enough balance');
			
		require(amountGelatoFeesInTokenIn < ordersById[id].amountIn, 'amountGelatoFeesInTokenIn too high');

		SilverDcaApprover(ordersById[id].approver).transferGelatoFees(amountGelatoFeesInTokenIn);
		TransferHelper.safeApprove(ordersById[id].tokenIn, address(swapRouter), amountGelatoFeesInTokenIn);
		
		(bool success, bytes memory returnData) = address(swapRouter).call(gelatoFeesArgs);
		require(success, "Gelato fees swap failed");
		uint256 wrappedNativeAmount = abi.decode(returnData, (uint256));
		wrappedNative.withdraw(wrappedNativeAmount);

		_executeOrder(id, amountGelatoFeesInTokenIn, dcaArgs);
	}

	// Order functions

	/**
	 * @dev Create an order
	 * @param tokenIn the token to swap
	 * @param tokenOut the token to receive
	 * @param amountIn the amount of tokenIn to swap
	 * @param amountOutMin the minimum amount of tokenOut to receive
	 * @param period the period between each swap
	 * @param dcaArgs the calldata for magpie swap
	 */
	function createOrder(
		address tokenIn, 
		address tokenOut, 
		uint256 amountIn, 
		uint256 amountOutMin, 
		uint256 period, 
		bytes calldata dcaArgs,
		bytes calldata data
	) public onlyValidEntries(period, amountIn, amountOutMin) onlyValidTokens(tokenIn, tokenOut){
        address approver = address(new SilverDcaApprover{salt: bytes32(ordersCount)}(ordersCount, msg.sender, tokenIn));
		
		Order memory order = Order(msg.sender, tokenIn, tokenOut, amountIn, amountOutMin, period, 0, 0, 0, 0, 0, block.timestamp, data, false, approver, bytes32(""));
		ordersById[ordersCount] = order;
		idByAddress[msg.sender].push(ordersCount);
		ordersCount++;

		_executeOrder(ordersCount - 1, 0, dcaArgs);
		createTaskOrder(ordersCount - 1);

		emit OrderCreated(msg.sender, getOrdersCountTotal() - 1, tokenIn, tokenOut, amountIn, amountOutMin, period);
	}

	/**
	 * @dev Edit an order
	 * @param id the order id
	 * @param amountIn the amount of tokenIn to swap
	 * @param amountOutMin the minimum amount of tokenOut to receive
	 * @param period the period between each swap
	 * @param dcaArgs the calldata for magpie swap
	 */
	function editOrder(uint256 id, uint256 amountIn, uint256 amountOutMin, uint256 period, bytes calldata dcaArgs, bytes calldata data) public onlyUser(id) onlyValidEntries(period, amountIn, amountOutMin) {
		ordersById[id].amountIn = amountIn;
		ordersById[id].amountOutMin = amountOutMin;
		ordersById[id].period = period;

		if (data.length > 0)
			ordersById[id].data = data;

		if (!ordersById[id].stopped)
		{
			cancelTaskOrder(id);
			if (ordersById[id].nextExecution + 5 minutes >= block.timestamp)
				_executeOrder(id, 0, dcaArgs);
			createTaskOrder(id);
		}

		address tokenIn = ordersById[id].tokenIn;
		address tokenOut = ordersById[id].tokenOut;
		emit OrderEdited(msg.sender, id, tokenIn, tokenOut, amountIn, amountOutMin, period);
	}

	/**
	 * @dev Stop an order
	 * @param id the order id
	 */
	function stopOrder(uint256 id) public onlyUser(id) {
		require (!ordersById[id].stopped, 'Order already stopped');

		ordersById[id].stopped = true;
		cancelTaskOrder(id);

		emit OrderStopped(msg.sender, id);
	}
	
	/**
	 * @dev Restart an order
	 * @param id the order id
	 * @param dcaArgs the dcaArgs struct for Algebra swap (in case the order should be directly executed)
	 */
	function restartOrder(uint256 id, bytes calldata dcaArgs) public onlyUser(id) {
		require (ordersById[id].stopped, 'Order not stopped');

		ordersById[id].stopped = false;
		if (ordersById[id].nextExecution + 5 minutes >= block.timestamp)
			_executeOrder(id, 0, dcaArgs);
		createTaskOrder(id);

		emit OrderRestarted(msg.sender, id);
	}


	// Gelato functions

	/**
	 * @dev Create a task with Gelato
	 * Cancel the previous task if it exists
	 * @param id the order id
	 */
	function createTaskOrder(uint256 id) private {
		if (ordersById[id].taskId != bytes32(""))
			cancelTaskOrder(id);

		bytes memory execData = abi.encode(
			Strings.toHexString(uint256(uint160(address(this))), 20),						// dca
			id,																				// id
			Strings.toHexString((uint256(uint160(ordersById[id].user))), 20),				// userAddress
			Strings.toHexString((uint256(uint160(ordersById[id].tokenIn))), 20),			// srcToken
			Strings.toHexString((uint256(uint160(ordersById[id].tokenOut))), 20),			// destToken
			Strings.toString(ERC20(ordersById[id].tokenIn).decimals()),						// srcDecimals
			Strings.toString(ERC20(ordersById[id].tokenOut).decimals()),					// destDecimals
			Strings.toString(ordersById[id].amountIn),										// amount
			ordersById[id].data,															// data
			Strings.toString(block.chainid)													// network
		);

		ModuleData memory moduleData = ModuleData({
			modules: new Module[](3),
			args: new bytes[](3)
		});

		moduleData.modules[0] = Module.PROXY;
		moduleData.modules[1] = Module.WEB3_FUNCTION;
		moduleData.modules[2] = Module.TRIGGER;
	
		moduleData.args[0] = _proxyModuleArg();
		moduleData.args[1] = _web3FunctionModuleArg(
			scriptCID,
			execData
		);
		moduleData.args[2] = _timeTriggerModuleArg(
			uint128(ordersById[id].nextExecution) * 1000, 
			uint128(ordersById[id].period) * 1000
		);

		bytes32 taskId = _createTask(address(this), execData, moduleData, ETH);
	
		ordersById[id].taskId = taskId;
		
		emit GelatoTaskCreated(taskId);
	}

	/**
	 * @dev Cancel the gelato task for the order
	 * @param id the order id
	 */
	function cancelTaskOrder(uint256 id) private {
		if (ordersById[id].taskId != bytes32(""))
		{
			bytes32 taskId = ordersById[id].taskId;
			ordersById[id].taskId = bytes32("");

			_cancelTask(taskId);

			emit GelatoTaskCanceled(taskId);
		}
    }

	function _handleGelatoFees() private {
		(uint256 fee, address feeToken) = _getFeeDetails();
		_transfer(fee, feeToken);
		emit GelatoFeesCheck(fee, feeToken);
	}


	// Utils functions

	function getOrdersCountTotal() public view returns (uint256) {
		return ordersCount;
	}

    function getOrdersCountByAddress(address user) public view returns (uint256) {
        return idByAddress[user].length;
    }

	function getOrdersByIndex(address user, uint256 index) public view returns (Order memory, uint256 id) {
        return (ordersById[idByAddress[user][index]], idByAddress[user][index]);
    }

    function getApproveBytecode(uint256 _id, address _user, address _tokenIn) public pure returns (bytes memory) {
        bytes memory bytecode = type(SilverDcaApprover).creationCode;

        return abi.encodePacked(bytecode, abi.encode(_id, _user, _tokenIn));
    }

    function getApproveAddress(address _user, address _tokenIn) public view returns (address) {
        uint256 _id = ordersCount;
        bytes memory bytecode = getApproveBytecode(_id, _user, _tokenIn);

        bytes32 hash = keccak256(
            abi.encodePacked(bytes1(0xff), address(this), _id, keccak256(bytecode))
        );

        // NOTE: cast last 20 bytes of hash to address
        return address(uint160(uint(hash)));
    }

	function checkAllowanceBalance(uint256 id) public view returns (bool) {
		IERC20 token = IERC20(ordersById[id].tokenIn);
		
		if (token.allowance(ordersById[id].user, ordersById[id].approver) < ordersById[id].amountIn)
			return (false);
		else if (token.balanceOf(ordersById[id].user) < ordersById[id].amountIn)
			return (false);

		return (true);
	}
	

	// Internal functions 

	/**
	 * @dev Edit the tresory address
	 */
	function editTresory(address _tresory) public onlyOwner {
		tresory = _tresory;

		emit EditedTresory(_tresory);
	}

	/**
	 * @dev Edit the script CID
	 */
	function editScriptCID(string memory _cid) public onlyOwner {
		scriptCID = _cid;

		emit EditedScriptCID(_cid);
	}

	/**
	 * @dev Edit the swap router address
	 */
	function editSwapRouter(address _swapRouter) public onlyOwner {
		swapRouter = IMagpieRouter(payable(_swapRouter));

		emit EditedSwapRouter(_swapRouter);
	}

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


	// Modifiers 

	modifier onlyUser(uint256 id) {
		if (id >= getOrdersCountTotal())
			revert ErrorOrderDoesNotExist(id, getOrdersCountTotal());
		if (ordersById[id].user != msg.sender)
			revert ErrorNotAuthorized(id, ordersById[id].user, msg.sender);
		_;
	}

	modifier onlyValidEntries(uint256 period, uint256 amountIn, uint256 amountOutMin) {
		require(period >= 5 minutes, 'Period must be >= 5 min');
		require(amountIn >= 100, 'AmountIn must be > 99');
		////require(amountOutMin > 0, 'AmountOutMin must be > 0'); so the user can set it to 0 
		_;
	}

	modifier onlyValidTokens(address tokenIn, address tokenOut) {
		if (tokenIn == address(0) || tokenOut == address(0) || tokenIn == tokenOut)
			revert ErrorInvalidTokens(tokenIn, tokenOut);
		_;
	}

	modifier gelatoTaskOnly() {
		require(msg.sender == dedicatedMsgSender, "Not authorized");
		_;
		_handleGelatoFees();
	}


	// Receive function (to receive FTM)

	receive() external payable {}
}
//// FeeM
//// New features
//// Some
//// fees custom