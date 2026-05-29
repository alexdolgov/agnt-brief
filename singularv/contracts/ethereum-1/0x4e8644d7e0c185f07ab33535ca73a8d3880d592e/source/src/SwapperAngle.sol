// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

import {ISwapRoute} from "./interfaces/ISwapRoute.sol";
import {IAngleSwapper} from "./interfaces/IAngleSwapper.sol";

struct AngleRoute {
    IAngleSwapper swapper;
    IERC20 tokenFrom;
    IERC20 tokenTo;
}

contract SwapperAngle is ISwapRoute, AccessControl {
    event RouteAdded(
        uint32 routeId,
        IAngleSwapper swapper,
        IERC20 tokenFrom,
        IERC20 tokenTo
    );
    event Swap(
        uint32 routeId,
        IAngleSwapper swapper,
        IERC20 tokenFrom,
        IERC20 tokenTo,
        uint256 amountIn,
        uint256 amountOut
    );

    mapping(uint32 => AngleRoute) public routes;
    uint32 public routesCount = 0;

    address private immutable STEAKHOUSE_SIGNER_1 =
        0x0D61C8b6CA9669A36F351De3AE335e9689dd9C5b;
    address private immutable STEAKHOUSE_SMOL_OPS =
        0x0000aeB716a0DF7A9A1AAd119b772644Bc089dA8;

    constructor(address admin) {
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
    }

    function sell(uint32 routeId) public returns (uint256) {
        AngleRoute memory route = routes[routeId];

        uint256 amountIn = route.tokenFrom.balanceOf(msg.sender);

        route.tokenFrom.transferFrom(msg.sender, address(this), amountIn);
        route.tokenFrom.approve(address(route.swapper), amountIn);
        uint256 amountOut = route.swapper.swapExactInput(
            amountIn,
            0,
            address(route.tokenFrom),
            address(route.tokenTo),
            msg.sender,
            block.timestamp + 1
        );

        emit Swap(
            routeId,
            route.swapper,
            route.tokenFrom,
            route.tokenTo,
            amountIn,
            amountOut
        );

        return amountOut;
    }

    function previewSell(
        uint32 routeId,
        uint256 amountIn
    ) external view returns (uint256 amountOut) {
        AngleRoute memory route = routes[routeId];
        return
            route.swapper.quoteIn(
                amountIn,
                address(route.tokenFrom),
                address(route.tokenTo)
            );
    }

    function approvalNeeded(
        uint32 routeId
    ) external view returns (IERC20 token, address who, uint256 amount) {
        AngleRoute memory route = routes[routeId];

        return (
            route.tokenFrom,
            address(this),
            route.tokenFrom.balanceOf(msg.sender)
        );
    }

    function addRoute(
        IAngleSwapper swapper,
        IERC20 tokenFrom,
        IERC20 tokenTo
    ) public onlyRole(DEFAULT_ADMIN_ROLE) returns (uint32 routeId) {
        emit RouteAdded(routesCount, swapper, tokenFrom, tokenTo);
        routes[routesCount] = AngleRoute(swapper, tokenFrom, tokenTo);
        routesCount += 1;
        return routesCount - 1;
    }

    /******************************************
     * RECOVER AND UNSTUCK FUNCTION
     ******************************************/
    function recover(
        IERC20 token,
        address where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(
            amount <= token.balanceOf(address(this)),
            "Insufficient balance"
        );
        token.transfer(where, amount);
    }

    function recover(
        IERC20 token,
        address where
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.transfer(where, token.balanceOf(address(this)));
    }

    function recoverETH(
        address payable where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(amount <= address(this).balance, "Insufficient balance");
        where.transfer(amount);
    }

    function approve(
        IERC20 token,
        address where,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.approve(where, amount);
    }
}
