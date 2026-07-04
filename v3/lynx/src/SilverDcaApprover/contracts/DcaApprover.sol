// SPDX-License-Identifier: MIT
pragma solidity >=0.8.20 <=0.8.25;

import {IERC20} from '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Order struct
struct Order {
    address user;
    address tokenIn;
    address tokenOut;
    uint256 amountIn;
    uint256 amountOutMin;
    uint256 period;
	uint256 nextExecution;
    uint256 lastExecution;
    uint256 totalExecutions;
    uint256 totalAmountIn;
    uint256 totalAmountOut;
    uint256 createdAt;
	bytes data;
    bool stopped;
    address approver;
	bytes32	taskId;
}

// SilverDCA interface
interface ISilverDCA {
    function ordersById(uint256) external returns (Order memory);
}

/// @title Silver DCA Approver
/// @author github.com/SifexPro
/// @notice This contract is used manage the approval of a DCA order
contract SilverDcaApprover is Ownable {
    address public silverDca;

	// Order data
	uint256 public id;
    address public user;
    address public tokenIn;

	// Error events
	error ErrorOrderStopped(uint256 id);
	error ErrorPeriodNotElapsed(uint256 id, uint256 lastExecution, uint256 blockTimestamp, uint256 nextExecution);

    // Constructor
	constructor(uint256 _id, address _user, address _tokenIn) Ownable(msg.sender) {
		id = _id;
        silverDca = msg.sender;
        user = _user;
        tokenIn = _tokenIn;
	}

	// Utils functions

	/**
	 * @dev Transfer the tokenIn to the DCA contract (for the order execution)
	 */
    function executeOrder(uint256 amount) public onlyDCA onlyValidOrder {
        SafeERC20.safeTransferFrom(IERC20(tokenIn), user, silverDca, amount);
    }

	/**
	 * @dev Transfer the tokenIn to the DCA contract (for gelato's fees)
	 * @param feesAmount The amount of fees to transfer (in tokenIn)
	 */
	function transferGelatoFees(uint256 feesAmount) public onlyDCA onlyValidOrder {
        SafeERC20.safeTransferFrom(IERC20(tokenIn), user, silverDca, feesAmount);
    }


	// Modifiers 

	modifier onlyDCA() {
		require(msg.sender == silverDca, 'Not authorized');
		_;
	}

	modifier onlyValidOrder() {
		Order memory order = ISilverDCA(silverDca).ordersById(id);

        ////require(!order.stopped, 'Order is stopped');
		if (order.stopped)
			revert ErrorOrderStopped(id);
		////require(block.timestamp - order.lastExecution >= order.period, 'Period not elapsed.');
		if (block.timestamp - order.lastExecution < order.period) 
			revert ErrorPeriodNotElapsed(id, order.lastExecution, block.timestamp, order.lastExecution + order.period);
		_;
	}
}