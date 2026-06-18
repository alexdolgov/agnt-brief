// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "hardhat/console.sol";

// This contract swaps specified amount of tokenOut for tokenIn
contract MockDEX {
    using SafeERC20 for IERC20;

    IERC20 public tokenIn;
    IERC20 public tokenOut;

    constructor(address tokenIn_, address tokenOut_) {
        tokenIn = IERC20(tokenIn_);
        tokenOut = IERC20(tokenOut_);
    }

    function swap(uint256 amountIn, uint256 amountOut) external {
        console.log("MockDEX.swap(sender, amountIn, amountOut)", msg.sender, amountIn, amountOut);
        tokenIn.safeTransferFrom(msg.sender, address(this), amountIn);
        tokenOut.safeTransfer(msg.sender, amountOut);
    }
}