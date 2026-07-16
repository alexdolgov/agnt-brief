// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IWETH} from "./IWETH.sol";

/// @notice Reward calculation works as the payment is in WETH Terms
contract UnwrapSearcherFixed {
    error InsufficientBalance();
    error NotOwner();
    error FailedTransfer();
    error MaxFeeExceeded();

    event Repaid(uint256 totalAmount, uint128 executorFee);

    uint256 public constant MAX_FEE = 0.01 ether;
    IWETH public immutable WETH;
    address public immutable owner;
    address public immutable receiver;
    uint128 public immutable minBalance;
    uint128 public fee;

    constructor(address _weth, address _owner, address _receiver, uint128 _minBalance, uint128 _fee) {
        WETH = IWETH(_weth);
        owner = _owner;
        receiver = _receiver;
        minBalance = _minBalance;
        fee = _fee;
    }

    function updateFee(uint128 _fee) public {
        if (msg.sender != owner) revert NotOwner();
        if (_fee > MAX_FEE) revert MaxFeeExceeded();
        fee = _fee;
    }

    function repay() public {
        uint256 balance = WETH.balanceOf(address(this));
        if (balance > minBalance) {
            uint128 executorFee = fee;
            uint256 withdrawAmount = balance - executorFee;

            WETH.approve(address(WETH), withdrawAmount);
            WETH.withdraw(withdrawAmount);

            (bool success,) = receiver.call{value: withdrawAmount}("");
            if (!success) revert FailedTransfer();
            WETH.transfer(msg.sender, executorFee);

            emit Repaid(withdrawAmount, executorFee);
        } else {
            revert InsufficientBalance();
        }
    }

    receive() external payable {}
}
