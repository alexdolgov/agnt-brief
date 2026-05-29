// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 Jones DAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

pragma solidity ^0.8.10;

import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

import {Governable} from "src/common/Governable.sol";
import {UniswapV3Swapper} from "src/glp/swappers/UniswapV3Swapper.sol";
import {OneInchV5Swapper} from "src/glp/swappers/OneInchV5Swapper.sol";
import {ITokenSwapper} from "src/interfaces/swap/ITokenSwapper.sol";

contract StableSwapper is Governable {
    using FixedPointMathLib for uint256;

    uint256 public constant BASIS_POINTS = 1e12;

    address public constant USDC = 0xaf88d065e77c8cC2239327C5EDb3A432268e5831;
    address public constant USDCE = 0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8;

    ITokenSwapper public swapper;
    address public target;
    uint256 public slippage;

    constructor(address _swapper, address _target, address _gov) Governable(_gov) {
        swapper = ITokenSwapper(_swapper);
        target = _target;
        slippage = BASIS_POINTS.mulDivDown(995, 1000); //0.5% slippage
    }

    function swapAndSend(bytes memory externalData) external onlyGovernor returns (uint256) {
        uint256 amount = IERC20(USDCE).balanceOf(address(this));

        uint256 minAmountOut = amount.mulDivDown(slippage, BASIS_POINTS);

        IERC20(USDCE).approve(address(swapper), amount);
        uint256 amountOut = swapper.swap(USDCE, amount, USDC, minAmountOut, externalData);

        IERC20(USDC).transfer(target, amountOut);

        return amountOut;
    }

    function send(address owner, uint256 amount) external onlyGovernor {
        IERC20(USDC).transferFrom(owner, target, amount);
    }

    function updateSwapper(address _swapper) external onlyGovernor {
        swapper = ITokenSwapper(_swapper);
    }

    function updateTarget(address _target) external onlyGovernor {
        target = _target;
    }

    function updateSlippage(uint256 _slippage) external onlyGovernor {
        slippage = _slippage;
    }

    /**
     * @notice Moves assets from the strategy to `_to`
     * @param _assets An array of IERC20 compatible tokens to move out from the strategy
     * @param _withdrawNative `true` if we want to move the native asset from the strategy
     */
    function emergencyWithdraw(address _to, address[] memory _assets, bool _withdrawNative) external onlyGovernor {
        uint256 assetsLength = _assets.length;
        for (uint256 i = 0; i < assetsLength; i++) {
            IERC20 asset_ = IERC20(_assets[i]);
            uint256 assetBalance = asset_.balanceOf(address(this));

            if (assetBalance > 0) {
                // Transfer the ERC20 tokens
                asset_.transfer(_to, assetBalance);
            }

            unchecked {
                ++i;
            }
        }

        uint256 nativeBalance = address(this).balance;

        // Nothing else to do
        if (_withdrawNative && nativeBalance > 0) {
            // Transfer the native currency
            (bool sent,) = payable(_to).call{value: nativeBalance}("");
            if (!sent) {
                revert FailSendETH();
            }
        }

        emit EmergencyWithdrawal(msg.sender, _to, _assets, _withdrawNative ? nativeBalance : 0);
    }

    event EmergencyWithdrawal(address indexed caller, address indexed receiver, address[] tokens, uint256 nativeBalanc);

    error FailSendETH();
}
