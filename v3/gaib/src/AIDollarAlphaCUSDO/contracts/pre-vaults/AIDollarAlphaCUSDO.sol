// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import { BaseAIDollarAlpha } from "./BaseAIDollarAlpha.sol";
import { IPool } from "@aave/core-v3/contracts/interfaces/IPool.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract AIDollarAlphaCUSDO is BaseAIDollarAlpha {
    using SafeERC20 for IERC20;

    IPool public aaveLendingPool;
    IERC20 public aToken;

    constructor(
        IERC20 asset,
        address admin,
        uint256 maxDepositLimit,
        IPool _aaveLendingPool,
        IERC20 _aToken
    )
        BaseAIDollarAlpha(asset, admin, maxDepositLimit, "AI Dollar Alpha cUSDO", "AIDaCUSDO")
    {
        aaveLendingPool = _aaveLendingPool;
        aToken = _aToken;
        asset.forceApprove(address(_aaveLendingPool), type(uint256).max);
    }

    function _earn(uint256 amount) internal override {
        aaveLendingPool.supply(address(asset()), amount, address(this), 0);
    }

    function _unearn(uint256 amount) internal override {
        aaveLendingPool.withdraw(address(asset()), amount, address(this));
    }

    function _claimProfit() internal override {
        IERC20 assetToken = IERC20(asset());
        uint256 totalBalance = assetToken.balanceOf(address(this)) + aToken.balanceOf(address(this));
        uint256 profit = totalBalance > totalDeposit ? totalBalance - totalDeposit : 0;
        if (profit > assetToken.balanceOf(address(this))) revert("Insufficient balance");

        claimedProfit += profit;
        assetToken.safeTransfer(msg.sender, profit);
        emit ProfitClaimed(profit);
    }
}
