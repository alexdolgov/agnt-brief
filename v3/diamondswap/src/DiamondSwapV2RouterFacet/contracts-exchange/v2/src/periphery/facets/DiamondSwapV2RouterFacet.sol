// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IDiamondSwapV2Router02 } from "../interfaces/IDiamondSwapV2Router02.sol";
import { IDiamondSwapV2Factory } from "../../core/factory/interfaces/IDiamondSwapV2Factory.sol";
import { DiamondSwapV2Library } from "../libraries/DiamondSwapV2Library.sol";
import { IDiamondSwapV2Pair } from "../../core/interfaces/IDiamondSwapV2Pair.sol";
import { TransferHelper } from "../../shared/libraries/TransferHelper.sol";
import { IWETH } from "../interfaces/IWETH.sol";
import { IERC20 } from "../../shared/interfaces/IERC20.sol";
import { BlockTimestamp } from "@common/libraries/BlockTimestamp.sol";
import { Facet } from "@internal/eip2535/Facet.sol";

contract DiamondSwapV2RouterFacet is Facet, IDiamondSwapV2Router02 {
    uint256 constant uint256_max = type(uint256).max;

    IDiamondSwapV2Factory immutable factoryInterface;
    IWETH immutable wethInterface;
    address public immutable override factory;
    address public immutable override WETH;

    constructor(address _factoryAddress, address _wethAddress) {
        factoryInterface = IDiamondSwapV2Factory(_factoryAddress);
        wethInterface = IWETH(_wethAddress);
        factory = _factoryAddress;
        WETH = _wethAddress;
    }

    modifier ensure(uint256 deadline) {
        //require(deadline >= BlockTimestamp.get(), "DiamondSwapV2Router: EXPIRED");
        if (deadline < BlockTimestamp.get()) {
            revert DiamondSwapV2RouterExpired();
        }
        _;
    }

    receive() external payable {
        assert(msg.sender == WETH); // only accept ETH via fallback from the WETH contract
    }

    // **** ADD LIQUIDITY ****
    function _addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin
    ) internal virtual returns (uint256 amountA, uint256 amountB) {
        // create the pair if it doesn't exist yet
        if (factoryInterface.getPair(tokenA, tokenB) == address(0)) {
            factoryInterface.createPair(tokenA, tokenB);
        }
        (uint256 reserveA, uint256 reserveB) = DiamondSwapV2Library.getReserves(factory, tokenA, tokenB);
        if (reserveA == 0 && reserveB == 0) {
            (amountA, amountB) = (amountADesired, amountBDesired);
        } else {
            uint256 amountBOptimal = DiamondSwapV2Library.quote(amountADesired, reserveA, reserveB);
            if (amountBOptimal <= amountBDesired) {
                //require(amountBOptimal >= amountBMin, "DiamondSwapV2Router: INSUFFICIENT_B_AMOUNT");
                if (amountBOptimal < amountBMin) {
                    revert DiamondSwapV2RouterInsufficientBAmount();
                }
                (amountA, amountB) = (amountADesired, amountBOptimal);
            } else {
                uint256 amountAOptimal = DiamondSwapV2Library.quote(amountBDesired, reserveB, reserveA);
                assert(amountAOptimal <= amountADesired);
                //require(amountAOptimal >= amountAMin, "DiamondSwapV2Router: INSUFFICIENT_A_AMOUNT");
                if (amountAOptimal < amountAMin) {
                    revert DiamondSwapV2RouterInsufficientAAmount();
                }
                (amountA, amountB) = (amountAOptimal, amountBDesired);
            }
        }
    }

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external virtual override ensure(deadline) returns (uint256 amountA, uint256 amountB, uint256 liquidity) {
        (amountA, amountB) = _addLiquidity(tokenA, tokenB, amountADesired, amountBDesired, amountAMin, amountBMin);
        address pair = DiamondSwapV2Library.pairFor(factory, tokenA, tokenB);
        TransferHelper.safeTransferFrom(tokenA, msg.sender, pair, amountA);
        TransferHelper.safeTransferFrom(tokenB, msg.sender, pair, amountB);
        liquidity = IDiamondSwapV2Pair(pair).mint(to);
    }

    function addLiquidityETH(
        address token,
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    )
        external
        payable
        virtual
        override
        ensure(deadline)
        returns (uint256 amountToken, uint256 amountETH, uint256 liquidity)
    {
        (amountToken, amountETH) =
            _addLiquidity(token, WETH, amountTokenDesired, msg.value, amountTokenMin, amountETHMin);
        address pair = DiamondSwapV2Library.pairFor(factory, token, WETH);
        TransferHelper.safeTransferFrom(token, msg.sender, pair, amountToken);
        wethInterface.deposit{ value: amountETH }();
        assert(wethInterface.transfer(pair, amountETH));
        liquidity = IDiamondSwapV2Pair(pair).mint(to);
        // refund dust eth, if any
        if (msg.value > amountETH) TransferHelper.safeTransferETH(msg.sender, msg.value - amountETH);
    }

    // **** REMOVE LIQUIDITY ****
    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) public virtual override ensure(deadline) returns (uint256 amountA, uint256 amountB) {
        address pair = DiamondSwapV2Library.pairFor(factory, tokenA, tokenB);
        IERC20(pair).transferFrom(msg.sender, pair, liquidity); // send liquidity to pair
        (uint256 amount0, uint256 amount1) = IDiamondSwapV2Pair(pair).burn(to);
        (address token0,) = DiamondSwapV2Library.sortTokens(tokenA, tokenB);
        (amountA, amountB) = tokenA == token0 ? (amount0, amount1) : (amount1, amount0);
        //require(amountA >= amountAMin, "DiamondSwapV2Router: INSUFFICIENT_A_AMOUNT");
        if (amountA < amountAMin) {
            revert DiamondSwapV2RouterInsufficientAAmount();
        }
        //require(amountB >= amountBMin, "DiamondSwapV2Router: INSUFFICIENT_B_AMOUNT");
        if (amountB < amountBMin) {
            revert DiamondSwapV2RouterInsufficientBAmount();
        }
    }

    function removeLiquidityETH(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) public virtual override ensure(deadline) returns (uint256 amountToken, uint256 amountETH) {
        (amountToken, amountETH) =
            removeLiquidity(token, WETH, liquidity, amountTokenMin, amountETHMin, address(this), deadline);
        TransferHelper.safeTransfer(token, to, amountToken);
        wethInterface.withdraw(amountETH);
        TransferHelper.safeTransferETH(to, amountETH);
    }

    function removeLiquidityWithPermit(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external virtual override returns (uint256 amountA, uint256 amountB) {
        address pair = DiamondSwapV2Library.pairFor(factory, tokenA, tokenB);
        uint256 value = approveMax ? uint256_max : liquidity;
        IDiamondSwapV2Pair(pair).permit(msg.sender, address(this), value, deadline, v, r, s);
        (amountA, amountB) = removeLiquidity(tokenA, tokenB, liquidity, amountAMin, amountBMin, to, deadline);
    }

    function removeLiquidityETHWithPermit(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external virtual override returns (uint256 amountToken, uint256 amountETH) {
        address pair = DiamondSwapV2Library.pairFor(factory, token, WETH);
        uint256 value = approveMax ? uint256_max : liquidity;
        IDiamondSwapV2Pair(pair).permit(msg.sender, address(this), value, deadline, v, r, s);
        (amountToken, amountETH) = removeLiquidityETH(token, liquidity, amountTokenMin, amountETHMin, to, deadline);
    }

    // **** REMOVE LIQUIDITY (supporting fee-on-transfer tokens) ****
    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) public virtual override ensure(deadline) returns (uint256 amountETH) {
        (, amountETH) = removeLiquidity(token, WETH, liquidity, amountTokenMin, amountETHMin, address(this), deadline);
        TransferHelper.safeTransfer(token, to, IERC20(token).balanceOf(address(this)));
        wethInterface.withdraw(amountETH);
        TransferHelper.safeTransferETH(to, amountETH);
    }

    function removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external virtual override returns (uint256 amountETH) {
        address pair = DiamondSwapV2Library.pairFor(factory, token, WETH);
        uint256 value = approveMax ? uint256_max : liquidity;
        IDiamondSwapV2Pair(pair).permit(msg.sender, address(this), value, deadline, v, r, s);
        amountETH = removeLiquidityETHSupportingFeeOnTransferTokens(
            token, liquidity, amountTokenMin, amountETHMin, to, deadline
        );
    }

    // **** SWAP ****
    // requires the initial amount to have already been sent to the first pair
    function _swap(uint256[] memory amounts, address[] memory path, address _to) internal virtual {
        uint256 pathLength = path.length;
        uint256 pathLengthMinusOne = pathLength - 1;
        uint256 pathLengthMinusTwo = pathLength - 2;
        for (uint256 i; i < pathLengthMinusOne; i++) {
            uint256 indexPlusOne = i + 1;
            (address input, address output) = (path[i], path[indexPlusOne]);
            (address token0,) = DiamondSwapV2Library.sortTokens(input, output);
            uint256 amountOut = amounts[indexPlusOne];
            (uint256 amount0Out, uint256 amount1Out) =
                input == token0 ? (uint256(0), amountOut) : (amountOut, uint256(0));
            address to = i < pathLengthMinusTwo ? DiamondSwapV2Library.pairFor(factory, output, path[i + 2]) : _to;
            IDiamondSwapV2Pair(DiamondSwapV2Library.pairFor(factory, input, output)).swap(
                amount0Out, amount1Out, to, new bytes(0)
            );
        }
    }

    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external virtual override ensure(deadline) returns (uint256[] memory amounts) {
        amounts = DiamondSwapV2Library.getAmountsOut(factory, amountIn, path);
        //require(amounts[amounts.length - 1] >= amountOutMin, "DiamondSwapV2Router: INSUFFICIENT_OUTPUT_AMOUNT");
        if (amounts[amounts.length - 1] < amountOutMin) {
            revert DiamondSwapV2RouterInsufficientOutputAmount();
        }
        TransferHelper.safeTransferFrom(
            path[0], msg.sender, DiamondSwapV2Library.pairFor(factory, path[0], path[1]), amounts[0]
        );
        _swap(amounts, path, to);
    }

    function swapTokensForExactTokens(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external virtual override ensure(deadline) returns (uint256[] memory amounts) {
        amounts = DiamondSwapV2Library.getAmountsIn(factory, amountOut, path);
        //require(amounts[0] <= amountInMax, "DiamondSwapV2Router: EXCESSIVE_INPUT_AMOUNT");
        if (amounts[0] > amountInMax) {
            revert DiamondSwapV2RouterInsufficientInputAmount();
        }
        TransferHelper.safeTransferFrom(
            path[0], msg.sender, DiamondSwapV2Library.pairFor(factory, path[0], path[1]), amounts[0]
        );
        _swap(amounts, path, to);
    }

    function swapExactETHForTokens(uint256 amountOutMin, address[] calldata path, address to, uint256 deadline)
        external
        payable
        virtual
        override
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        //require(path[0] == WETH, "DiamondSwapV2Router: INVALID_PATH");
        if (path[0] != WETH) {
            revert DiamondSwapV2RouterInvalidPath();
        }
        amounts = DiamondSwapV2Library.getAmountsOut(factory, msg.value, path);
        //require(amounts[amounts.length - 1] >= amountOutMin, "DiamondSwapV2Router: INSUFFICIENT_OUTPUT_AMOUNT");
        if (amounts[amounts.length - 1] < amountOutMin) {
            revert DiamondSwapV2RouterInsufficientOutputAmount();
        }
        wethInterface.deposit{ value: amounts[0] }();
        assert(wethInterface.transfer(DiamondSwapV2Library.pairFor(factory, path[0], path[1]), amounts[0]));
        _swap(amounts, path, to);
    }

    function swapTokensForExactETH(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external virtual override ensure(deadline) returns (uint256[] memory amounts) {
        //require(path[path.length - 1] == WETH, "DiamondSwapV2Router: INVALID_PATH");
        if (path[path.length - 1] != WETH) {
            revert DiamondSwapV2RouterInvalidPath();
        }
        amounts = DiamondSwapV2Library.getAmountsIn(factory, amountOut, path);
        //require(amounts[0] <= amountInMax, "DiamondSwapV2Router: EXCESSIVE_INPUT_AMOUNT");
        if (amounts[0] > amountInMax) {
            revert DiamondSwapV2RouterInsufficientInputAmount();
        }
        TransferHelper.safeTransferFrom(
            path[0], msg.sender, DiamondSwapV2Library.pairFor(factory, path[0], path[1]), amounts[0]
        );
        _swap(amounts, path, address(this));
        uint256 withdrawAmount = amounts[amounts.length - 1];
        wethInterface.withdraw(withdrawAmount);
        TransferHelper.safeTransferETH(to, withdrawAmount);
    }

    function swapExactTokensForETH(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external virtual override ensure(deadline) returns (uint256[] memory amounts) {
        //require(path[path.length - 1] == WETH, "DiamondSwapV2Router: INVALID_PATH");
        if (path[path.length - 1] != WETH) {
            revert DiamondSwapV2RouterInvalidPath();
        }
        amounts = DiamondSwapV2Library.getAmountsOut(factory, amountIn, path);
        //require(amounts[amounts.length - 1] >= amountOutMin, "DiamondSwapV2Router: INSUFFICIENT_OUTPUT_AMOUNT");
        if (amounts[amounts.length - 1] < amountOutMin) {
            revert DiamondSwapV2RouterInsufficientOutputAmount();
        }
        TransferHelper.safeTransferFrom(
            path[0], msg.sender, DiamondSwapV2Library.pairFor(factory, path[0], path[1]), amounts[0]
        );
        _swap(amounts, path, address(this));
        uint256 withdrawAmount = amounts[amounts.length - 1];
        wethInterface.withdraw(withdrawAmount);
        TransferHelper.safeTransferETH(to, withdrawAmount);
    }

    function swapETHForExactTokens(uint256 amountOut, address[] calldata path, address to, uint256 deadline)
        external
        payable
        virtual
        override
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        //require(path[0] == WETH, "DiamondSwapV2Router: INVALID_PATH");
        if (path[0] != WETH) {
            revert DiamondSwapV2RouterInvalidPath();
        }
        amounts = DiamondSwapV2Library.getAmountsIn(factory, amountOut, path);
        //require(amounts[0] <= msg.value, "DiamondSwapV2Router: EXCESSIVE_INPUT_AMOUNT");
        if (amounts[0] > msg.value) {
            revert DiamondSwapV2RouterInsufficientInputAmount();
        }
        wethInterface.deposit{ value: amounts[0] }();
        assert(wethInterface.transfer(DiamondSwapV2Library.pairFor(factory, path[0], path[1]), amounts[0]));
        _swap(amounts, path, to);
        // refund dust eth, if any
        if (msg.value > amounts[0]) TransferHelper.safeTransferETH(msg.sender, msg.value - amounts[0]);
    }

    // **** SWAP (supporting fee-on-transfer tokens) ****
    // requires the initial amount to have already been sent to the first pair
    function _swapSupportingFeeOnTransferTokens(address[] memory path, address _to) internal virtual {
        uint256 pathLength = path.length;
        uint256 pathLengthMinusOne = pathLength - 1;
        uint256 pathLengthMinusTwo = pathLength - 2;
        for (uint256 i; i < pathLengthMinusOne; i++) {
            (address input, address output) = (path[i], path[i + 1]);
            (address token0,) = DiamondSwapV2Library.sortTokens(input, output);
            IDiamondSwapV2Pair pair = IDiamondSwapV2Pair(DiamondSwapV2Library.pairFor(factory, input, output));
            uint256 amountInput;
            uint256 amountOutput;
            {
                // scope to avoid stack too deep errors
                (uint256 reserve0, uint256 reserve1,) = pair.getReserves();
                (uint256 reserveInput, uint256 reserveOutput) =
                    input == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
                amountInput = IERC20(input).balanceOf(address(pair)) - reserveInput;
                amountOutput = DiamondSwapV2Library.getAmountOut(amountInput, reserveInput, reserveOutput, pair.swapFee());
            }
            (uint256 amount0Out, uint256 amount1Out) =
                input == token0 ? (uint256(0), amountOutput) : (amountOutput, uint256(0));
            address to = i < pathLengthMinusTwo ? DiamondSwapV2Library.pairFor(factory, output, path[i + 2]) : _to;
            pair.swap(amount0Out, amount1Out, to, new bytes(0));
        }
    }

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external virtual override ensure(deadline) {
        TransferHelper.safeTransferFrom(
            path[0], msg.sender, DiamondSwapV2Library.pairFor(factory, path[0], path[1]), amountIn
        );
        IERC20 token = IERC20(path[path.length - 1]);
        uint256 balanceBefore = token.balanceOf(to);
        _swapSupportingFeeOnTransferTokens(path, to);
        //require(token.balanceOf(to) - balanceBefore >= amountOutMin, "DiamondSwapV2Router: INSUFFICIENT_OUTPUT_AMOUNT");
        if (token.balanceOf(to) - balanceBefore < amountOutMin) {
            revert DiamondSwapV2RouterInsufficientOutputAmount();
        }
    }

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable virtual override ensure(deadline) {
        //require(path[0] == WETH, "DiamondSwapV2Router: INVALID_PATH");
        if (path[0] != WETH) {
            revert DiamondSwapV2RouterInvalidPath();
        }
        uint256 amountIn = msg.value;
        wethInterface.deposit{ value: amountIn }();
        assert(wethInterface.transfer(DiamondSwapV2Library.pairFor(factory, path[0], path[1]), amountIn));
        IERC20 token = IERC20(path[path.length - 1]);
        uint256 balanceBefore = token.balanceOf(to);
        _swapSupportingFeeOnTransferTokens(path, to);
        //require(token.balanceOf(to) - balanceBefore >= amountOutMin, "DiamondSwapV2Router: INSUFFICIENT_OUTPUT_AMOUNT");
        if (token.balanceOf(to) - balanceBefore < amountOutMin) {
            revert DiamondSwapV2RouterInsufficientOutputAmount();
        }
    }

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external virtual override ensure(deadline) {
        //require(path[path.length - 1] == WETH, "DiamondSwapV2Router: INVALID_PATH");
        if (path[path.length - 1] != WETH) {
            revert DiamondSwapV2RouterInvalidPath();
        }
        TransferHelper.safeTransferFrom(
            path[0], msg.sender, DiamondSwapV2Library.pairFor(factory, path[0], path[1]), amountIn
        );
        _swapSupportingFeeOnTransferTokens(path, address(this));
        uint256 amountOut = IERC20(WETH).balanceOf(address(this));
        //require(amountOut >= amountOutMin, "DiamondSwapV2Router: INSUFFICIENT_OUTPUT_AMOUNT");
        if (amountOut < amountOutMin) {
            revert DiamondSwapV2RouterInsufficientOutputAmount();
        }
        wethInterface.withdraw(amountOut);
        TransferHelper.safeTransferETH(to, amountOut);
    }

    // **** LIBRARY FUNCTIONS ****
    function quote(uint256 amountA, uint256 reserveA, uint256 reserveB)
        public
        pure
        virtual
        override
        returns (uint256 amountB)
    {
        return DiamondSwapV2Library.quote(amountA, reserveA, reserveB);
    }

    function getAmountOut(uint256 amountIn, uint256 reserveIn, uint256 reserveOut, uint32 swapFee)
        public
        pure
        virtual
        override
        returns (uint256 amountOut)
    {
        return DiamondSwapV2Library.getAmountOut(amountIn, reserveIn, reserveOut, swapFee);
    }

    function getAmountOut(uint256 amountIn, uint256 reserveIn, uint256 reserveOut)
        public
        view
        virtual
        override
        returns (uint256 amountOut)
    {
        return DiamondSwapV2Library.getAmountOut(amountIn, reserveIn, reserveOut, factoryInterface.swapFee());
    }

    function getAmountIn(uint256 amountOut, uint256 reserveIn, uint256 reserveOut, uint32 swapFee)
        public
        pure
        virtual
        override
        returns (uint256 amountIn)
    {
        return DiamondSwapV2Library.getAmountIn(amountOut, reserveIn, reserveOut, swapFee);
    }

    function getAmountIn(uint256 amountOut, uint256 reserveIn, uint256 reserveOut)
        public
        view
        virtual
        override
        returns (uint256 amountIn)
    {
        return DiamondSwapV2Library.getAmountIn(amountOut, reserveIn, reserveOut, factoryInterface.swapFee());
    }

    function getAmountsOut(uint256 amountIn, address[] memory path)
        public
        view
        virtual
        override
        returns (uint256[] memory amounts)
    {
        return DiamondSwapV2Library.getAmountsOut(factory, amountIn, path);
    }

    function getAmountsIn(uint256 amountOut, address[] memory path)
        public
        view
        virtual
        override
        returns (uint256[] memory amounts)
    {
        return DiamondSwapV2Library.getAmountsIn(factory, amountOut, path);
    }
}
