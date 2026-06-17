// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {ISwapRoute} from "./interfaces/ISwapRoute.sol";
import {SwapperBase} from "./SwapperBase.sol";

struct ERC4626Route {
    IERC20 tokenFrom;
    IERC20 tokenTo;
    bool isWrap; // true if wrap is needed, false if unwrap is needed
}

contract SwapperERC4626 is SwapperBase {
    using SafeERC20 for IERC20;

    event RouteAdded(
        uint32 routeId,
        IERC20 tokenFrom,
        IERC20 tokenTo,
        bool isWrap
    );
    event Swap(
        uint32 routeId,
        IERC20 tokenFrom,
        IERC20 tokenTo,
        bool isWrap,
        uint256 amountIn,
        uint256 amountOut
    );

    mapping(uint32 => ERC4626Route) public routes;
    uint32 public routesCount = 0;

    constructor() SwapperBase() {}

    function sell(uint32 routeId) public returns (uint256) {
        ERC4626Route memory route = routes[routeId];

        uint256 amountIn = route.tokenFrom.balanceOf(msg.sender);
        uint256 amountOut = 0; // To be set later

        if (route.isWrap) {
            route.tokenFrom.safeTransferFrom(msg.sender, address(this), amountIn);
            IERC4626 wrapper = IERC4626(address(route.tokenTo));
            route.tokenFrom.forceApprove(address(wrapper), amountIn);
            amountOut = wrapper.deposit(amountIn, msg.sender);
        } else {
            // otherwise we  unwrap
            IERC4626 wrapper = IERC4626(address(route.tokenFrom));
            //route.tokenFrom.safeTransferFrom(msg.sender, address(this), amountIn);
            //route.tokenFrom.forceApprove(address(wrapper), amountIn);
            amountOut = wrapper.redeem(amountIn, msg.sender, msg.sender);
        }

        emit Swap(
            routeId,
            route.tokenFrom,
            route.tokenTo,
            route.isWrap,
            amountIn,
            amountOut
        );

        return amountOut;
    }

    function previewSell(
        uint32 routeId,
        uint256 amountIn
    ) external view returns (uint256 amountOut) {
        ERC4626Route memory route = routes[routeId];

        if (route.isWrap) {
            IERC4626 wrapper = IERC4626(address(route.tokenTo));
            return wrapper.convertToShares(amountIn);
        } else {
            IERC4626 wrapper = IERC4626(address(route.tokenFrom));
            return wrapper.convertToAssets(amountIn);
        }
    }

    function approvalNeeded(
        uint32 routeId
    ) external view returns (IERC20 token, address who, uint256 amount) {
        ERC4626Route memory route = routes[routeId];

        if (route.isWrap)
            return (
                route.tokenFrom,
                address(this),
                route.tokenFrom.balanceOf(msg.sender)
            );
        // otherwise
        else return (route.tokenFrom, address(this), type(uint256).max); // sDAI issue? shuld also work on wUSDM
    }

    function addRoute(
        IERC20 tokenFrom,
        IERC20 tokenTo,
        bool isWrap
    ) public onlyRole(DEFAULT_ADMIN_ROLE) returns (uint32 routeId) {
        emit RouteAdded(routesCount, tokenFrom, tokenTo, isWrap);
        routes[routesCount] = ERC4626Route(tokenFrom, tokenTo, isWrap);
        routesCount += 1;
        return routesCount - 1;
    }

    function overrideRoute(
        uint32 routeId,
        IERC20 tokenFrom,
        IERC20 tokenTo,
        bool isWrap
    ) public onlyRole(DEFAULT_ADMIN_ROLE) returns (uint32) {
        if (routeId >= routesCount) {
            revert RouteNotFound();
        }
        emit RouteAdded(routeId, tokenFrom, tokenTo, isWrap);
        routes[routeId] = ERC4626Route(tokenFrom, tokenTo, isWrap);
        return routeId;
    }
}
