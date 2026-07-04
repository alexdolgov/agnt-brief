pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable2Step.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract RefundUSDC is Ownable2Step {
    using SafeERC20 for IERC20;

    struct Refund {
        address recipient; // address to send the USDC to
        uint256 amount; // amount of USDC to send
    }

    IERC20 public usdc;
    uint256 public totalRefundAmountLeft;
    mapping(address => uint256) public refundAmounts; // track how much each address has been refunded

    constructor(address _usdc, Refund[] memory _refunds) Ownable(msg.sender) {
        usdc = IERC20(_usdc);

        // Calculate total refund amount and populate refund amounts
        for (uint256 i = 0; i < _refunds.length; i++) {
            Refund memory refund = _refunds[i];
            refundAmounts[refund.recipient] = refund.amount;
            totalRefundAmountLeft += refund.amount;
        }
    }

    // Function to process refunds
    function claimRefund() external {
        require(refundAmounts[msg.sender] > 0, "No refund available for this address");
        uint256 amountToRefund = refundAmounts[msg.sender];

        refundAmounts[msg.sender] = 0; // Set to 0 to prevent re-entrance attacks
        totalRefundAmountLeft -= amountToRefund; // Decrease the total refund amount left

        // Transfer USDC to the recipient
        usdc.safeTransfer(msg.sender, amountToRefund);
    }

    function sweep(address _recipient) external onlyOwner {
        usdc.safeTransfer(_recipient, usdc.balanceOf(address(this)));
    }
}
