// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IWETH9.sol";
import "./AdminAccess.sol";

abstract contract Exchange is AdminAccess {
    using SafeERC20 for IERC20;

    address public router;

    event NewRouterSet(address indexed oldRouter, address indexed newRouter);

    constructor(address _routerV2) {
        router = _routerV2;
    }

    function exchange(
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 minAmountOut
    ) internal returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = tokenIn;
        path[1] = tokenOut;

        uint256[] memory amounts = IUniswapV2Router01(router)
            .swapExactTokensForTokens(
                amountIn,
                minAmountOut,
                path,
                address(this),
                block.timestamp + 15 // on sushi?
            );
        return amounts[1]; //returns output token amount
    }

    function setRouter(address _router) external virtual onlyAdmin {
        require(_router != address(0), "ZUSR");
        require(_router != router, "SUSR");

        emit NewRouterSet(router, _router);
        router = _router;
    }

    function quoteOut(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) public view returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = tokenIn;
        path[1] = tokenOut;

        uint256[] memory amounts = IUniswapV2Router01(router).getAmountsOut(
            amountIn,
            path
        );
        return amounts[1];
    }
}
