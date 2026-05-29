// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;

import "./ISigmaSP.sol";
import "./ICurveStableSwapNG.sol";
import "./IStandardizedYieldAdapter.sol";

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract SigmaSPAdapterExample {
    using SafeERC20 for IERC20;

    address public constant SP = 0x2b9C1F069Ddcd873275B3363986081bDA94A3aA3;
    address public constant USDT = 0x55d398326f99059fF775485246999027B3197955;
    address public constant BNBUSD = 0x5519a479Da8Ce3Af7f373c16f14870BbeaFDa265;
    address public constant ADAPTER =
        0xC04F63543b3ea6827374Bbe95450Bc107757e91B;

    function deposit(
        address tokenIn,
        uint256 amount
    ) external returns (uint256 amountOut) {
        IERC20(tokenIn).safeTransferFrom(msg.sender, ADAPTER, amount);
        amountOut = IStandardizedYieldAdapter(ADAPTER).convertToDeposit(
            tokenIn,
            amount
        );
        IERC20(SP).safeTransfer(msg.sender, amountOut);
    }

    function withdraw(
        address tokenOut,
        uint256 amount
    ) external returns (uint256 amountOut) {
        IERC20(SP).safeTransferFrom(msg.sender, ADAPTER, amount);
        amountOut = IStandardizedYieldAdapter(ADAPTER).convertToRedeem(
            tokenOut,
            amount
        );
        IERC20(tokenOut).safeTransfer(msg.sender, amountOut);
    }
}
