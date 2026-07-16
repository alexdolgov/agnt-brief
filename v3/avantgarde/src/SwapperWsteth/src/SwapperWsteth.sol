// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {SwapperBase} from "./SwapperBase.sol";
import {IWsteth} from "./interfaces/IWsteth.sol";

/**
 * @title Contract to swap between steth and wsteth in a ISwapRoute compliant way
 */
contract SwapperWsteth is SwapperBase {

    event RouteAdded(
        uint32 routeId,
        IERC20 tokenFrom,
        IERC20 tokenTo
    );
    event Swap(
        uint32 routeId,
        IERC20 tokenFrom,
        IERC20 tokenTo,
        uint256 amountIn,
        uint256 amountOut
    );

    uint32 public constant WRAP = 0;
    uint32 public constant UNWRAP = 1;

    IWsteth public constant wsteth =
        IWsteth(0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0);
    IERC20 public constant steth =
        IWsteth(0xae7ab96520DE3A18E5e111B5EaAb095312D7fE84);

    constructor() SwapperBase() {
        if (block.chainid == 1 || block.chainid == 8453) {
            emit RouteAdded(WRAP, steth, wsteth);
            emit RouteAdded(UNWRAP, wsteth, steth);
        } else {
            revert UnsupportedChain();
        }
    }

    function sell(uint32 routeId) public returns (uint256) {
        if (routeId == WRAP) {
            // wrap
            uint256 stethBalance = steth.balanceOf(msg.sender);
            steth.transferFrom(msg.sender, address(this), stethBalance);
            steth.approve(address(wsteth), stethBalance);
            wsteth.wrap(stethBalance);
            uint256 wstethBalance = wsteth.balanceOf(address(this));
            wsteth.transfer(msg.sender, wstethBalance);
            emit Swap(WRAP, steth, wsteth, stethBalance, wstethBalance);
            return wstethBalance;
        } else if (routeId == UNWRAP) {
            // unwrap
            uint256 wstethBalance = wsteth.balanceOf(msg.sender);
            wsteth.transferFrom(msg.sender, address(this), wstethBalance);
            wsteth.unwrap(wstethBalance);
            uint256 stethBalance = steth.balanceOf(address(this));
            steth.transfer(msg.sender, stethBalance);
            emit Swap(UNWRAP, wsteth, steth, wstethBalance, stethBalance);
            return stethBalance;
        } else {
            revert RouteNotFound();
        }
    }

    function previewSell(
        uint32 routeId,
        uint256 amountIn
    ) external view returns (uint256 amountOut) {
        if (amountIn == 0) amountIn = steth.balanceOf(msg.sender);

        if (routeId == WRAP) {
            // wrap
            amountOut = wsteth.getWstETHByStETH(amountIn);
        } else if (routeId == UNWRAP) {
            // unwrap
            amountOut = wsteth.getStETHByWstETH(amountIn);
        } else {
            revert RouteNotFound();
        }
    }

    function approvalNeeded(
        uint32 routeId
    ) external view returns (IERC20 token, address who, uint256 amount) {
        if (routeId == WRAP) {
            return (steth, address(this), steth.balanceOf(msg.sender));
        }
        // otherwise
        else {
            return (wsteth, address(this), wsteth.balanceOf(msg.sender));
        }
    }
}
