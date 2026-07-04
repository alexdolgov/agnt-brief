// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IPairFactory} from "src/interfaces/IPairFactory.sol";
import {IRouter} from "src/interfaces/IRouter.sol";
import {IPair} from "src/interfaces/IPair.sol";
import {IWETH} from "src/interfaces/IWETH.sol";
import {RouterUtilsLib} from "src/libraries/RouterUtilsLib.sol";

library SwapLogic {
    using SafeERC20 for IERC20;

    struct SwapCommonParams {
        address to;
        address[] path;
        address[] factories;
        address gt3Factory;
        address weth;
    }

    modifier checkArrayLen(SwapCommonParams memory params) {
        if (params.path.length - 1 != params.factories.length) {
            revert IRouter.RouterArrayLengths();
        }
        _;
    }

    function getAmountOut(uint256 amountIn, address tokenIn, address tokenOut, address factory, address gt3Factory)
        internal
        view
        returns (uint256 amount)
    {
        return _getAmountOut(amountIn, tokenIn, tokenOut, factory, gt3Factory);
    }

    function getAmountIn(uint256 amountOut, address tokenOut, address tokenIn, address factory, address gt3Factory)
        internal
        view
        returns (uint256 amount)
    {
        return _getAmountIn(amountOut, tokenOut, tokenIn, factory, gt3Factory);
    }

    function getAmountsIn(uint256 amountOut, address[] calldata path, address[] calldata factories, address gt3Factory)
        public
        view
        returns (uint256[] memory amounts)
    {
        uint256 length = path.length;
        if (length <= 1) revert IRouter.RouterInvalidPathLength();
        amounts = new uint256[](length);
        amounts[length - 1] = amountOut;
        for (uint256 i = length - 1; i > 0; i--) {
            amounts[i - 1] = _getAmountIn(amounts[i], path[i], path[i - 1], factories[i - 1], gt3Factory);
        }
        return amounts;
    }

    function getAmountsOut(uint256 amountIn, address[] calldata path, address[] calldata factories, address gt3Factory)
        internal
        view
        returns (uint256[] memory amounts)
    {
        uint256 length = path.length;
        if (length <= 1) revert IRouter.RouterInvalidPathLength();
        amounts = new uint256[](length);
        amounts[0] = amountIn;
        for (uint256 i = 0; i < length - 1; i++) {
            amounts[i + 1] = _getAmountOut(amounts[i], path[i], path[i + 1], factories[i], gt3Factory);
        }
        return amounts;
    }

    function swapExactTokensForTokens(uint256 amountIn, uint256 amountOutMin, SwapCommonParams calldata params)
        external
        checkArrayLen(params)
        returns (uint256[] memory amounts)
    {
        amounts = getAmountsOut(amountIn, params.path, params.factories, params.gt3Factory);
        if (amounts[amounts.length - 1] < amountOutMin) revert IRouter.RouterInsufficientOutputAmount();
        IERC20(params.path[0]).safeTransferFrom(
            msg.sender, IPairFactory(params.factories[0]).getPair(params.path[0], params.path[1]), amounts[0]
        );
        _swap(amounts, params.path, params.factories, params.to);
        return amounts;
    }

    function swapTokensForExactTokens(uint256 amountOut, uint256 amountInMax, SwapCommonParams calldata params)
        external
        checkArrayLen(params)
        returns (uint256[] memory amounts)
    {
        amounts = getAmountsIn(amountOut, params.path, params.factories, params.gt3Factory);
        if (amounts[0] > amountInMax) revert IRouter.RouterExcesiveInputAmount(amounts[0], amountInMax);
        IERC20(params.path[0]).safeTransferFrom(
            msg.sender, IPairFactory(params.factories[0]).getPair(params.path[0], params.path[1]), amounts[0]
        );
        _swap(amounts, params.path, params.factories, params.to);
        return amounts;
    }

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        SwapCommonParams calldata params
    ) public checkArrayLen(params) {
        IERC20(params.path[0]).safeTransferFrom(
            msg.sender, IPairFactory(params.factories[0]).getPair(params.path[0], params.path[1]), amountIn
        );
        uint256 balanceBefore = IERC20(params.path[params.path.length - 1]).balanceOf(params.to);
        _swapSupportingFeeOnTransferTokens(params);
        uint256 outputAmount_ = IERC20(params.path[params.path.length - 1]).balanceOf(params.to) - balanceBefore;
        if (outputAmount_ < amountOutMin) revert IRouter.RouterInsufficientOutputAmount();
    }

    function swapTokensForExactETH(uint256 amountOut, uint256 amountInMax, SwapCommonParams calldata params)
        external
        checkArrayLen(params)
        returns (uint256[] memory amounts)
    {
        if (params.path[params.path.length - 1] != params.weth) {
            revert IRouter.RouterInvalidPath(params.path[params.path.length - 1], params.weth);
        }
        amounts = getAmountsIn(amountOut, params.path, params.factories, params.gt3Factory);
        if (amounts[0] > amountInMax) revert IRouter.RouterExcesiveInputAmount(amounts[0], amountInMax);
        IERC20(params.path[0]).safeTransferFrom(
            msg.sender, IPairFactory(params.factories[0]).getPair(params.path[0], params.path[1]), amounts[0]
        );
        _swap(amounts, params.path, params.factories, address(this));
        IWETH(params.weth).withdraw(amounts[amounts.length - 1]);
        _safeTransferETH(params.to, amounts[amounts.length - 1]);
        return amounts;
    }

    function swapExactETHForTokens(uint256 amountOutMin, uint256 msgValue, SwapCommonParams calldata params)
        external
        checkArrayLen(params)
        returns (uint256[] memory amounts)
    {
        if (params.path[0] != params.weth) revert IRouter.RouterInvalidPath(params.path[0], params.weth);
        amounts = getAmountsOut(msgValue, params.path, params.factories, params.gt3Factory);
        if (amounts[amounts.length - 1] < amountOutMin) revert IRouter.RouterInsufficientOutputAmount();
        IWETH(params.weth).deposit{value: amounts[0]}();
        assert(
            IWETH(params.weth).transfer(
                IPairFactory(params.factories[0]).getPair(params.path[0], params.path[1]), amounts[0]
            )
        );
        _swap(amounts, params.path, params.factories, params.to);
        return amounts;
    }

    function swapETHForExactTokens(uint256 amountOut, uint256 msgValue, SwapCommonParams calldata params)
        external
        checkArrayLen(params)
        returns (uint256[] memory amounts)
    {
        if (params.path[0] != params.weth) revert IRouter.RouterInvalidPath(params.path[0], params.weth);
        amounts = getAmountsIn(amountOut, params.path, params.factories, params.gt3Factory);
        if (amounts[0] > msgValue) revert IRouter.RouterExcesiveInputAmount(amounts[0], msgValue);
        IWETH(params.weth).deposit{value: amounts[0]}();
        assert(
            IWETH(params.weth).transfer(
                IPairFactory(params.factories[0]).getPair(params.path[0], params.path[1]), amounts[0]
            )
        );
        _swap(amounts, params.path, params.factories, params.to);
        // refund dust eth, if any
        if (msgValue > amounts[0]) _safeTransferETH(msg.sender, msgValue - amounts[0]);
        return amounts;
    }

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256 amountOutMin,
        uint256 amountIn,
        SwapCommonParams calldata params
    ) external checkArrayLen(params) {
        if (params.path[0] != params.weth) revert IRouter.RouterInvalidPath(params.path[0], params.weth);
        IWETH(params.weth).deposit{value: amountIn}();
        assert(
            IWETH(params.weth).transfer(
                IPairFactory(params.factories[0]).getPair(params.path[0], params.path[1]), amountIn
            )
        );
        uint256 balanceBefore = IERC20(params.path[params.path.length - 1]).balanceOf(params.to);
        _swapSupportingFeeOnTransferTokens(params);
        uint256 outputAmount_ = IERC20(params.path[params.path.length - 1]).balanceOf(params.to) - balanceBefore;
        if (outputAmount_ < amountOutMin) revert IRouter.RouterInsufficientOutputAmount();
    }

    function swapExactTokensForETH(uint256 amountIn, uint256 amountOutMin, SwapCommonParams calldata params)
        public
        checkArrayLen(params)
        returns (uint256[] memory amounts)
    {
        if (params.path[params.path.length - 1] != params.weth) {
            revert IRouter.RouterInvalidPath(params.path[params.path.length - 1], params.weth);
        }
        amounts = getAmountsOut(amountIn, params.path, params.factories, params.gt3Factory);
        if (amounts[amounts.length - 1] < amountOutMin) revert IRouter.RouterInsufficientOutputAmount();
        IERC20(params.path[0]).safeTransferFrom(
            msg.sender, IPairFactory(params.factories[0]).getPair(params.path[0], params.path[1]), amounts[0]
        );
        _swap(amounts, params.path, params.factories, address(this));
        IWETH(params.weth).withdraw(amounts[amounts.length - 1]);
        _safeTransferETH(params.to, amounts[amounts.length - 1]);
        return amounts;
    }

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        SwapCommonParams memory params
    ) public checkArrayLen(params) {
        if (params.path[params.path.length - 1] != params.weth) {
            revert IRouter.RouterInvalidPath(params.path[params.path.length - 1], params.weth);
        }
        IERC20(params.path[0]).safeTransferFrom(
            msg.sender, IPairFactory(params.factories[0]).getPair(params.path[0], params.path[0]), amountIn
        );
        address to_ = params.to;
        params.to = address(this);
        _swapSupportingFeeOnTransferTokens(params);
        uint256 amountOut = IERC20(params.weth).balanceOf(address(this));
        if (amountOut < amountOutMin) revert IRouter.RouterInsufficientOutputAmount();
        IWETH(params.weth).withdraw(amountOut);
        _safeTransferETH(to_, amountOut);
    }

    function _getAmountOut(uint256 amountIn, address tokenIn, address tokenOut, address factory, address gt3Factory)
        private
        view
        returns (uint256 amountOut)
    {
        address pair = IPairFactory(factory).getPair(tokenIn, tokenOut);
        if (IPairFactory(gt3Factory).isPair(pair)) {
            //its a GT3 pair
            amountOut = IPair(pair).getAmountOut(amountIn, tokenIn);
        } else {
            //UniswapV2 style pair
            (uint256 reserve0, uint256 reserve1,) = IPair(pair).getReserves();
            (uint256 reserveIn, uint256 reserveOut) =
                tokenIn == IPair(pair).token0() ? (reserve0, reserve1) : (reserve1, reserve0);
            uint256 amountInWithFee = amountIn * 997;
            uint256 numerator = amountInWithFee * reserveOut;
            uint256 denominator = reserveIn * 1000 + amountInWithFee;
            amountOut = numerator / denominator;
        }
    }

    function _getAmountIn(uint256 amountOut, address tokenOut, address tokenIn, address factory, address gt3Factory)
        internal
        view
        returns (uint256 amountIn)
    {
        address pair = IPairFactory(factory).getPair(tokenIn, tokenOut);
        if (IPairFactory(gt3Factory).isPair(pair)) {
            //its a GT3 pair
            amountIn = IPair(pair).getAmountIn(amountOut, tokenOut);
        } else {
            //UniswapV2 style pair
            (uint256 reserve0, uint256 reserve1,) = IPair(pair).getReserves();
            (uint256 reserveIn, uint256 reserveOut) =
                tokenIn == IPair(pair).token0() ? (reserve0, reserve1) : (reserve1, reserve0);
            uint256 numerator = reserveIn * amountOut * 1000;
            uint256 denominator = (reserveOut - amountOut) * 997;
            amountIn = (numerator / denominator) + 1;
        }
    }

    function _swap(uint256[] memory amounts, address[] memory path, address[] calldata factories, address recipient)
        private
    {
        for (uint256 i = 0; i < path.length - 1; i++) {
            (address inputToken_, address outputToken_) = (path[i], path[i + 1]);
            (address token0,) = RouterUtilsLib.sortTokens(inputToken_, outputToken_);
            uint256 amountOut_ = amounts[i + 1];
            (uint256 amount0Out, uint256 amount1Out) =
                inputToken_ == token0 ? (uint256(0), amountOut_) : (amountOut_, uint256(0));
            address to_ =
                i < path.length - 2 ? IPairFactory(factories[i + 1]).getPair(outputToken_, path[i + 2]) : recipient;
            address pair = IPairFactory(factories[i]).getPair(inputToken_, outputToken_);
            IPair(pair).swap(amount0Out, amount1Out, to_, new bytes(0));
        }
    }

    // **** SWAP (supporting fee-on-transfer tokens) ****
    // requires the initial amount to have already been sent to the first pair
    function _swapSupportingFeeOnTransferTokens(SwapCommonParams memory params) private {
        for (uint256 i; i < params.path.length - 1; i++) {
            (address input, address output) = (params.path[i], params.path[i + 1]);
            (address token0,) = RouterUtilsLib.sortTokens(input, output);
            IPair pair = IPair(IPairFactory(params.factories[i]).getPair(input, output));
            uint256 amountInput;
            uint256 amountOutput;
            {
                // scope to avoid stack too deep errors
                uint256 reserveInput;
                {
                    (uint256 reserve0, uint256 reserve1,) = pair.getReserves();
                    (reserveInput,) = input == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
                }
                {
                    amountInput = IERC20(input).balanceOf(address(pair)) - reserveInput;
                    amountOutput = _getAmountOut(amountInput, input, output, params.factories[i], params.gt3Factory);
                }
            }
            (uint256 amount0Out, uint256 amount1Out) =
                input == token0 ? (uint256(0), amountOutput) : (amountOutput, uint256(0));
            address to_ = i < params.path.length - 2
                ? IPairFactory(params.factories[i + 1]).getPair(output, params.path[i + 2])
                : params.to;
            IPair(pair).swap(amount0Out, amount1Out, to_, new bytes(0));
        }
    }

    function _safeTransferETH(address to_, uint256 value_) private {
        (bool success_,) = to_.call{value: value_}(new bytes(0));
        if (!success_) revert IRouter.RouterETHTransferFailed();
    }
}
