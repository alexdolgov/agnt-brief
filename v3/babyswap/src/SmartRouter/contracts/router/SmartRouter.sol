// SPDX-License-Identifier: MIT

pragma solidity >=0.6.6;

import "@openzeppelin/contracts/access/Ownable.sol";
import '../interfaces/IBabyFactory.sol';
import '../interfaces/IBabyRouter02.sol';
import '../libraries/TransferHelper.sol';
import '../libraries/BabyLibrary.sol';
import '../libraries/SafeMath.sol';
import '../interfaces/IERC20.sol';
import '../interfaces/IWETH.sol';
import 'hardhat/console.sol';

contract SmartRouter {
    using SafeMath for uint;

    address public immutable WETH;

    modifier ensure(uint deadline) {
        require(deadline >= block.timestamp, 'SmartRouter');
        _;
    }

    constructor(address _WETH) {
        WETH = _WETH;
    }

    receive() external payable {
        assert(msg.sender == WETH); // only accept ETH via fallback from the WETH contract
    }

    function _swap(uint[] memory amounts, address[] memory path, address[] memory factories, address _to) internal virtual {
        for (uint i; i < path.length - 1; i++) {
            (address input, address output) = (path[i], path[i + 1]);
            (address token0,) = BabyLibrary.sortTokens(input, output);
            uint amountOut = amounts[i + 1];
            (uint amount0Out, uint amount1Out) = input == token0 ? (uint(0), amountOut) : (amountOut, uint(0));
            address to = i < path.length - 2 ? BabyLibrary.pairFor(factories[i + 1], output, path[i + 2]) : _to;
            IBabyPair(BabyLibrary.pairFor(factories[i], input, output)).swap(
                amount0Out, amount1Out, to, new bytes(0)
            );
        }
    }

    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address[] calldata factories,
        uint[] calldata fees,
        address to,
        uint deadline
    ) external virtual ensure(deadline) returns (uint[] memory amounts) {
        amounts = BabyLibrary.getAggregationAmountsOut(factories, fees, amountIn, path);
        console.log("amount0: ", amounts[0], "amount1: ", amounts[1]);
        require(amounts[amounts.length - 1] >= amountOutMin, 'BabyRouter: INSUFFICIENT_OUTPUT_AMOUNT');
        TransferHelper.safeTransferFrom(
            path[0], msg.sender, BabyLibrary.pairFor(factories[0], path[0], path[1]), amounts[0]
        );
        _swap(amounts, path, factories, to);
    }

    function swapTokensForExactTokens(
        uint amountOut,
        uint amountInMax,
        address[] calldata path,
        address[] calldata factories,
        uint[] calldata fees,
        address to,
        uint deadline
    ) external virtual ensure(deadline) returns (uint[] memory amounts) {
        amounts = BabyLibrary.getAggregationAmountsIn(factories, fees, amountOut, path);
        require(amounts[0] <= amountInMax, 'BabyRouter: EXCESSIVE_INPUT_AMOUNT');
        TransferHelper.safeTransferFrom(
            path[0], msg.sender, BabyLibrary.pairFor(factories[0], path[0], path[1]), amounts[0]
        );
        _swap(amounts, path, factories, to);
    }

    function swapExactETHForTokens(uint amountOutMin, address[] calldata path, address[] calldata factories, uint[] calldata fees, address to, uint deadline)
        external
        virtual
        payable
        ensure(deadline)
        returns (uint[] memory amounts)
    {
        require(path[0] == WETH, 'BabyRouter: INVALID_PATH');
        amounts = BabyLibrary.getAggregationAmountsOut(factories, fees,  msg.value, path);
        require(amounts[amounts.length - 1] >= amountOutMin, 'BabyRouter: INSUFFICIENT_OUTPUT_AMOUNT');
        IWETH(WETH).deposit{value: amounts[0]}();
        assert(IWETH(WETH).transfer(BabyLibrary.pairFor(factories[0], path[0], path[1]), amounts[0]));
        _swap(amounts, path, factories, to);
    }

    function swapTokensForExactETH(uint amountOut, uint amountInMax, address[] calldata path, address[] calldata factories, uint[] calldata fees, address to, uint deadline)
        external
        virtual
        ensure(deadline)
        returns (uint[] memory amounts)
    {
        require(path[path.length - 1] == WETH, 'BabyRouter: INVALID_PATH');
        amounts = BabyLibrary.getAggregationAmountsIn(factories, fees, amountOut, path);
        require(amounts[0] <= amountInMax, 'BabyRouter: EXCESSIVE_INPUT_AMOUNT');
        TransferHelper.safeTransferFrom(
            path[0], msg.sender, BabyLibrary.pairFor(factories[0], path[0], path[1]), amounts[0]
        );
        _swap(amounts, path, factories, address(this));
        IWETH(WETH).withdraw(amounts[amounts.length - 1]);
        TransferHelper.safeTransferETH(to, amounts[amounts.length - 1]);
    }

    function swapExactTokensForETH(uint amountIn, uint amountOutMin, address[] calldata path, address[] calldata factories, uint[] calldata fees, address to, uint deadline)
        external
        virtual
        ensure(deadline)
        returns (uint[] memory amounts)
    {
        require(path[path.length - 1] == WETH, 'BabyRouter: INVALID_PATH');
        amounts = BabyLibrary.getAggregationAmountsOut(factories, fees, amountIn, path);
        require(amounts[amounts.length - 1] >= amountOutMin, 'BabyRouter: INSUFFICIENT_OUTPUT_AMOUNT');
        TransferHelper.safeTransferFrom(
            path[0], msg.sender, BabyLibrary.pairFor(factories[0], path[0], path[1]), amounts[0]
        );
        _swap(amounts, path, factories, address(this));
        IWETH(WETH).withdraw(amounts[amounts.length - 1]);
        TransferHelper.safeTransferETH(to, amounts[amounts.length - 1]);
    }

    function swapETHForExactTokens(uint amountOut, address[] calldata path, address[] calldata factories, uint[] calldata fees, address to, uint deadline)
        external
        virtual
        payable
        ensure(deadline)
        returns (uint[] memory amounts)
    {
        require(path[0] == WETH, 'BabyRouter: INVALID_PATH');
        amounts = BabyLibrary.getAggregationAmountsIn(factories, fees, amountOut, path);
        require(amounts[0] <= msg.value, 'BabyRouter: EXCESSIVE_INPUT_AMOUNT');
        IWETH(WETH).deposit{value: amounts[0]}();
        assert(IWETH(WETH).transfer(BabyLibrary.pairFor(factories[0], path[0], path[1]), amounts[0]));
        _swap(amounts, path, factories, to);
        // refund dust eth, if any
        if (msg.value > amounts[0]) TransferHelper.safeTransferETH(msg.sender, msg.value - amounts[0]);
    }

    /*
    function getReserve(IBabyPair pair, address token0, address token1) internal view returns(uint reserve0, uint reserve1, address token) {
        (token,) = BabyLibrary.sortTokens(token0, token1);
        (uint _reserve0, uint _reserve1,) = pair.getReserves();
        (reserve0, reserve1) = token0 == token ? (_reserve0, _reserve1) : (_reserve1, _reserve0);
    }
    */

    function _swapSupportingFeeOnTransferTokens(address[] memory path, address[] memory factories, uint[] memory fees, address _to) internal virtual {
        for (uint i; i < path.length - 1; i++) {
            (address input, address output) = (path[i], path[i + 1]);
            (address token0,) = BabyLibrary.sortTokens(input, output);
            IBabyPair pair = IBabyPair(BabyLibrary.pairFor(factories[i], input, output));
            //uint amountInput;
            //uint amountOutput;
            uint[] memory amounts = new uint[](2);
            { // scope to avoid stack too deep errors
            (uint reserve0, uint reserve1,) = pair.getReserves();
            (uint reserveInput, uint reserveOutput) = input == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
            amounts[0] = IERC20(input).balanceOf(address(pair)).sub(reserveInput);
            amounts[1] = BabyLibrary.getAmountOutWithFee(amounts[0], reserveInput, reserveOutput, fees[i]);
            }
            (uint amount0Out, uint amount1Out) = input == token0 ? (uint(0), amounts[1]) : (amounts[1], uint(0));
            address to = i < path.length - 2 ? BabyLibrary.pairFor(factories[i + 1], output, path[i + 2]) : _to;
            pair.swap(amount0Out, amount1Out, to, new bytes(0));
        }
    }

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address[] calldata factories,
        uint[] calldata fees,
        address to,
        uint deadline
    ) external virtual ensure(deadline) {
        TransferHelper.safeTransferFrom(
            path[0], msg.sender, BabyLibrary.pairFor(factories[0], path[0], path[1]), amountIn
        );
        uint balanceBefore = IERC20(path[path.length - 1]).balanceOf(to);
        _swapSupportingFeeOnTransferTokens(path, factories, fees,  to);
        require(
            IERC20(path[path.length - 1]).balanceOf(to).sub(balanceBefore) >= amountOutMin,
            'BabyRouter: INSUFFICIENT_OUTPUT_AMOUNT'
        );
    }

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint amountOutMin,
        address[] calldata path,
        address[] calldata factories,
        uint[] calldata fees,
        address to,
        uint deadline
    )
        external
        virtual
        payable
        ensure(deadline)
    {
        require(path[0] == WETH, 'BabyRouter');
        uint amountIn = msg.value;
        IWETH(WETH).deposit{value: amountIn}();
        assert(IWETH(WETH).transfer(BabyLibrary.pairFor(factories[0], path[0], path[1]), amountIn));
        uint balanceBefore = IERC20(path[path.length - 1]).balanceOf(to);
        _swapSupportingFeeOnTransferTokens(path, factories, fees, to);
        uint balanceAfter = IERC20(path[path.length - 1]).balanceOf(to);
        require(
            balanceAfter.sub(balanceBefore) >= amountOutMin,
            'BabyRouter: INSUFFICIENT_OUTPUT_AMOUNT'
        );
    }

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address[] calldata factories,
        uint[] calldata fees,
        address to,
        uint deadline
    )
        external
        virtual
        ensure(deadline)
    {
        require(path[path.length - 1] == WETH, 'BabyRouter: INVALID_PATH');
        TransferHelper.safeTransferFrom(
            path[0], msg.sender, BabyLibrary.pairFor(factories[0], path[0], path[1]), amountIn
        );
        _swapSupportingFeeOnTransferTokens(path, factories, fees, address(this));
        uint amountOut = IERC20(WETH).balanceOf(address(this));
        require(amountOut >= amountOutMin, 'BabyRouter: INSUFFICIENT_OUTPUT_AMOUNT');
        IWETH(WETH).withdraw(amountOut);
        TransferHelper.safeTransferETH(to, amountOut);
    }

    /*
    // **** LIBRARY FUNCTIONS ****
    function quote(uint amountA, uint reserveA, uint reserveB) public pure virtual override returns (uint amountB) {
        return BabyLibrary.quote(amountA, reserveA, reserveB);
    }

    function getAmountOut(uint amountIn, uint reserveIn, uint reserveOut)
        public
        pure
        virtual
        override
        returns (uint amountOut)
    {
        return BabyLibrary.getAmountOut(amountIn, reserveIn, reserveOut);
    }

    function getAmountIn(uint amountOut, uint reserveIn, uint reserveOut)
        public
        pure
        virtual
        override
        returns (uint amountIn)
    {
        return BabyLibrary.getAmountIn(amountOut, reserveIn, reserveOut);
    }

    function getAmountsOut(uint amountIn, address[] memory path)
        public
        view
        virtual
        override
        returns (uint[] memory amounts)
    {
        uint[] memory minAmounts = new uint[](path.length);
        for (uint i = 0; i < path.length; i ++) {
            minAmounts[i] = tokenMinAmount[path[i]];
        }
        (amounts, ) = BabyLibrary.getAggregationAmountsOut(factories, fees, minAmounts, amountIn, path);
    }

    function getAmountsIn(uint amountOut, address[] memory path)
        public
        view
        virtual
        override
        returns (uint[] memory amounts)
    {
        uint[] memory minAmounts = new uint[](path.length);
        for (uint i = 0; i < path.length; i ++) {
            minAmounts[i] = tokenMinAmount[path[i]];
        }
        (amounts, ) = BabyLibrary.getAggregationAmountsIn(factories, fees, minAmounts, amountOut, path);
    }
    */
}
