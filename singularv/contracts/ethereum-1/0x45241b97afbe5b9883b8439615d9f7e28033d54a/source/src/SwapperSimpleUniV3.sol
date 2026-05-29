// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SwapperBase} from "./SwapperBase.sol";
import {IV3SwapRouter} from "./interfaces/IV3SwapRouter.sol";
import {IUniswapV3StaticQuoter} from "./interfaces/IUniswapV3StaticQuoter.sol";

struct UniV3Route {
    IERC20 tokenFrom;
    IERC20 tokenTo;
    uint24 poolFee; // 3000 for 30bps
}

contract SwapperSimpleUniV3 is SwapperBase {
    using SafeERC20 for IERC20;

    event RouteAdded(
        uint32 routeId,
        IERC20 tokenFrom,
        IERC20 tokenTo,
        uint24 poolFee
    );
    event Swap(
        uint32 routeId,
        IERC20 tokenFrom,
        IERC20 tokenTo,
        uint24 poolFee,
        uint256 amountIn,
        uint256 amountOut
    );

    // For mainnet 0x68b3465833fb72A70ecDF485E0e4C7bD8665Fc45
    // For base  0x2626664c2603336E57B271c5C0b26F421741e481
    IV3SwapRouter public immutable swapRouter;
    // https://github.com/eden-network/uniswap-v3-static-quoter
    IUniswapV3StaticQuoter public immutable quoter;

    mapping(uint32 => UniV3Route) public routes;
    uint32 public routesCount = 0;

    constructor() SwapperBase() {
        if (block.chainid == 1) {
            swapRouter = IV3SwapRouter(0x68b3465833fb72A70ecDF485E0e4C7bD8665Fc45);
            quoter = IUniswapV3StaticQuoter(0xc80f61d1bdAbD8f5285117e1558fDDf8C64870FE);
        } else if (block.chainid == 8453) {
            swapRouter = IV3SwapRouter(0x2626664c2603336E57B271c5C0b26F421741e481);
            quoter = IUniswapV3StaticQuoter(0x28aF629a9F3ECE3c8D9F0b7cCf6349708CeC8cFb);
        } else {
            revert UnsupportedChain();
        }
    }

    function sell(uint32 routeId) public returns (uint256) {
        UniV3Route memory route = routes[routeId];

        uint256 amountIn = route.tokenFrom.balanceOf(msg.sender);

        route.tokenFrom.safeTransferFrom(msg.sender, address(this), amountIn);

        route.tokenFrom.forceApprove(address(swapRouter), amountIn);

        IV3SwapRouter.ExactInputSingleParams memory params = IV3SwapRouter
            .ExactInputSingleParams({
                tokenIn: address(route.tokenFrom),
                tokenOut: address(route.tokenTo),
                fee: route.poolFee,
                recipient: msg.sender,
                amountIn: amountIn,
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            });

        // The call to `exactInputSingle` executes the swap.
        uint256 amountOut = swapRouter.exactInputSingle(params);

        emit Swap(
            routeId,
            route.tokenFrom,
            route.tokenTo,
            route.poolFee,
            amountIn,
            amountOut
        );

        return amountOut;
    }

    function previewSell(
        uint32 routeId,
        uint256 amountIn
    ) external view returns (uint256 amountOut) {
        UniV3Route memory route = routes[routeId];

        IUniswapV3StaticQuoter.QuoteExactInputSingleParams
            memory params = IUniswapV3StaticQuoter.QuoteExactInputSingleParams(
                address(route.tokenFrom),
                address(route.tokenTo),
                amountIn,
                route.poolFee,
                0
            );

        amountOut = quoter.quoteExactInputSingle(params);
    }

    function approvalNeeded(
        uint32 routeId
    ) external view returns (IERC20 token, address who, uint256 amount) {
        UniV3Route memory route = routes[routeId];

        return (
            route.tokenFrom,
            address(this),
            route.tokenFrom.balanceOf(msg.sender)
        );
    }

    function addRoute(
        IERC20 tokenFrom,
        IERC20 tokenTo,
        uint24 poolFee
    ) public onlyRole(DEFAULT_ADMIN_ROLE) returns (uint32 routeId) {
        emit RouteAdded(routesCount, tokenFrom, tokenTo, poolFee);
        routes[routesCount] = UniV3Route(tokenFrom, tokenTo, poolFee);
        routesCount += 1;
        return routesCount - 1;
    }

    function overrideRoute(
        uint32 routeId,
        IERC20 tokenFrom,
        IERC20 tokenTo,
        uint24 poolFee
    ) public onlyRole(DEFAULT_ADMIN_ROLE) returns (uint32) {
        if (routeId >= routesCount) {
            revert RouteNotFound();
        }
        emit RouteAdded(routeId, tokenFrom, tokenTo, poolFee);
        routes[routeId] = UniV3Route(tokenFrom, tokenTo, poolFee);
        return routeId;
    }
}
