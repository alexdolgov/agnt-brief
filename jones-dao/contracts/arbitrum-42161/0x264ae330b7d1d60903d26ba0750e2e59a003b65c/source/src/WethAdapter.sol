// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {IFactory} from "src/interfaces/management/IFactory.sol";
import {IManager} from "src/interfaces/manager/IManager.sol";
import {IRouter} from "src/interfaces/IRouter.sol";

import {UpgradeableGovernable} from "src/governance/UpgradeableGovernable.sol";

import {SafeERC20} from "@openzeppelin/token/ERC20/SafeERC20.sol";

import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {IWETH} from "src/interfaces/swap/IWETH.sol";

contract WethAdapter is UpgradeableGovernable {
    using SafeERC20 for IERC20;
    using SafeERC20 for IWETH;

    // Math Precision
    IWETH public constant WETH = IWETH(0x82aF49447D8a07e3bd95BD0d56f35241523fBab1);

    function initialize() external initializer {
        __Governable_init(msg.sender);
    }

    /**
     * @notice LP Deposit.
     */
    function deposit(address _factory, address _pool, IRouter.DepositInput calldata _deposit)
        external
        payable
        returns (uint256 amount0, uint256 amount1, uint256 position, uint256 shares)
    {
        IFactory.LPContracts memory lpContracts = IFactory(_factory).getLPManagerContracts(_pool);
        require(lpContracts.lp == _pool, "LP Manager Not Found");

        IERC20 token0 = IManager(lpContracts.lpManager).token0();
        IERC20 token1 = IManager(lpContracts.lpManager).token1();

        address thisAddress = address(this);

        if (msg.value > 0) {
            WETH.deposit{value: msg.value}();
        }

        if (_deposit.amount0 > 0 && token0.allowance(msg.sender, thisAddress) >= _deposit.amount0) {
            token0.safeTransferFrom(msg.sender, thisAddress, _deposit.amount0);
        }

        if (_deposit.amount1 > 0 && token1.allowance(msg.sender, thisAddress) >= _deposit.amount1) {
            token1.safeTransferFrom(msg.sender, thisAddress, _deposit.amount1);
        }

        token0.safeApprove(lpContracts.lpManager, _deposit.amount0);
        token1.safeApprove(lpContracts.lpManager, _deposit.amount1);

        (amount0, amount1, position, shares) = IRouter(lpContracts.router).deposit(_deposit);

        uint256 amount0Balance = token0.balanceOf(thisAddress);

        if (amount0Balance > 0) {
            token0.safeTransfer(msg.sender, amount0Balance);
        }

        uint256 amount1Balance = token1.balanceOf(thisAddress);

        if (amount1Balance > 0) {
            token1.safeTransfer(msg.sender, amount1Balance);
        }

        uint256 wethRemainder = WETH.balanceOf(thisAddress);

        if (wethRemainder > 0) {
            WETH.safeTransfer(msg.sender, wethRemainder);
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                   GOVERNOR                                 */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Moves assets from the strategy to `_to`
     * @param _assets An array of IERC20 compatible tokens to move out from the strategy
     * @param _withdrawNative `true` if we want to move the native asset from the strategy
     */
    function emergencyWithdraw(address _to, address[] memory _assets, bool _withdrawNative) external onlyGovernor {
        uint256 assetsLength = _assets.length;
        for (uint256 i = 0; i < assetsLength;) {
            IERC20 asset_ = IERC20(_assets[i]);
            uint256 assetBalance = asset_.balanceOf(address(this));

            if (assetBalance > 0) {
                // Transfer the ERC20 tokens
                asset_.transfer(_to, assetBalance);
            }

            ++i;
        }

        uint256 nativeBalance = address(this).balance;

        // Nothing else to do
        if (_withdrawNative && nativeBalance > 0) {
            // Transfer the native currency
            (bool sent,) = payable(_to).call{value: nativeBalance}("");

            require(sent, "Fail Send ETH");
        }

        emit EmergencyWithdrawal(msg.sender, _to, _assets, _withdrawNative ? nativeBalance : 0);
    }

    event EmergencyWithdrawal(address indexed caller, address to, address[] assets, uint256 nativeBalance);
}
