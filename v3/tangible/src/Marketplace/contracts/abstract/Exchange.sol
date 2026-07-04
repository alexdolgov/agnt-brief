// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import "@uniswap/v3-periphery/contracts/interfaces/IQuoter.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IWETH9.sol";
import "./AdminAndTangibleAccess.sol";

abstract contract Exchange is AdminAndTangibleAccess {
    using SafeERC20 for IERC20;

    IQuoter public quoter;
    address public router;
    bool public isUniswapV3;
    IWETH9 public WETH9;

    event NewRouterSet(
        address indexed oldRouter,
        address indexed newRouter,
        bool isUniswapV3
    );
    event NewUniswapV3Quoter(
        address indexed oldQuoter,
        address indexed newQuoter
    );
    event NewWETH9(address indexed oldWETH9, address indexed newWETH9);

    constructor(address _uniswapV3Quoter, address _WETH9) {
        quoter = IQuoter(_uniswapV3Quoter);
        WETH9 = IWETH9(_WETH9);
    }

    function setQuoter(address _quoter) external onlyAdmin {
        require(_quoter != address(0), "ZUSQ");
        require(_quoter != address(quoter), "SUSQ");

        emit NewUniswapV3Quoter(address(quoter), _quoter);
        quoter = IQuoter(_quoter);
    }

    function setWETH9(address _WETH9) external onlyAdmin {
        require(_WETH9 != address(0), "ZWETH");
        require(_WETH9 != address(WETH9), "SWETH");

        emit NewUniswapV3Quoter(address(quoter), _WETH9);
        quoter = IQuoter(_WETH9);
    }

    function setRouter(address _router, bool _isUniswapV3) external onlyAdmin {
        require(_router != address(0), "ZUSR");
        require(_router != router || _isUniswapV3 != isUniswapV3, "SUSR");

        emit NewRouterSet(router, _router, _isUniswapV3);
        router = _router;
        isUniswapV3 = _isUniswapV3;
    }

    function exchange(
        address tokenIn,
        address tokenOut,
        uint256 amountToReceive,
        uint256 maxAmountIn
    ) internal returns (uint256) {
        if (isUniswapV3) {
            return exchangeV3(tokenIn, tokenOut, amountToReceive, maxAmountIn);
        }

        address[] memory path = new address[](2);
        path[0] = tokenIn;
        path[1] = tokenOut;

        uint256[] memory amounts = IUniswapV2Router01(router)
            .swapTokensForExactTokens(
                amountToReceive,
                maxAmountIn,
                path,
                address(this),
                block.timestamp + 15
            );
        return amounts[0];
    }

    function exchangeV3(
        address tokenIn,
        address tokenOut,
        uint256 amountToReceive,
        uint256 maxAmountIn
    ) internal returns (uint256) {
        ISwapRouter.ExactOutputSingleParams memory params = ISwapRouter
            .ExactOutputSingleParams(
                tokenIn,
                tokenOut,
                3000,
                address(this),
                block.timestamp + 15,
                amountToReceive,
                maxAmountIn,
                0
            );

        return ISwapRouter(router).exactOutputSingle(params);
    }

    function quoteIn(
        address tokenIn,
        address tokenOut,
        uint256 amountOut
    ) public returns (uint256) {
        if (isUniswapV3) {
            return
                quoter.quoteExactOutputSingle(
                    tokenIn,
                    tokenOut,
                    300,
                    amountOut,
                    0
                );
        }

        address[] memory path = new address[](2);
        path[0] = tokenIn;
        path[1] = tokenOut;

        uint256[] memory amounts = IUniswapV2Router01(router).getAmountsIn(
            amountOut,
            path
        );
        return amounts[0];
    }
}
