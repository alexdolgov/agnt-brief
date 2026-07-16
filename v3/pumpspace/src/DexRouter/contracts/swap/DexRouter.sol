// SPDX-License-Identifier: GPL-3.0
pragma solidity =0.8.12;

import "../libraries/DexLibrary.sol";
import "../libraries/TransferHelper.sol";
import "../interfaces/IDexRouter.sol";
import "../interfaces/IDexFactory.sol";
import "../interfaces/IWETH.sol";
import "./Errors.sol";

contract DexRouter is IDexRouter {

    address public immutable override factory;
    address public immutable override WETH;

    modifier ensure(uint256 deadline) {
        if (deadline < block.timestamp) revert Expired();
        _;
    }

    constructor(address _factory, address _WETH) {
        if(_factory == address(0)) revert InvalidAddressParameters("DEX Router: FACTORY_ZERO_ADDRESS");
        if(_WETH == address(0)) revert InvalidAddressParameters("DEX Router: WETH_ZERO_ADDRESS");
        factory = _factory;
        WETH = _WETH;
    }

    receive() external payable {
        assert(msg.sender == WETH);
    }

    function _addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin
    ) internal virtual returns (uint256 amountA, uint256 amountB) {

        if (IDexFactory(factory).getPair(tokenA, tokenB) == address(0)) {
            // IDexFactory(factory).createPair(tokenA, tokenB);
            revert("DexFactory: Pair does not exist. Please contact the administrator.");
            //  Todo. 유저 풀 생성 제한 검토 및 팩트로에서 생성 체크
        }
        (uint256 reserveA, uint256 reserveB) = DexLibrary.getReserves(
            factory,
            tokenA,
            tokenB
        );
        if (reserveA == 0 && reserveB == 0) {
            (amountA, amountB) = (amountADesired, amountBDesired);
        } else {
            uint256 amountBOptimal = DexLibrary.quote(
                amountADesired,
                reserveA,
                reserveB
            );
            if (amountBOptimal <= amountBDesired) {
                if (amountBOptimal < amountBMin)
                    revert InsufficientAmount(
                        "DEXRouter: INSUFFICIENT_B_AMOUNT"
                    );
                (amountA, amountB) = (amountADesired, amountBOptimal);
            } else {
                uint256 amountAOptimal = DexLibrary.quote(
                    amountBDesired,
                    reserveB,
                    reserveA
                );
                assert(amountAOptimal <= amountADesired);
                if (amountAOptimal < amountAMin)
                    revert InsufficientAmount(
                        "DEXRouter: INSUFFICIENT_A_AMOUNT"
                    );
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
    )
        external
        virtual
        override
        ensure(deadline)
        returns (
            uint256 amountA,
            uint256 amountB,
            uint256 liquidity
        )
    {   
        if(to == address(0)) revert InvalidAddressParameters("DEX Router: RECIPIENT_ZERO_ADDRESS");
        (amountA, amountB) = _addLiquidity(
            tokenA,
            tokenB,
            amountADesired,
            amountBDesired,
            amountAMin,
            amountBMin
        );
        address pair = DexLibrary.pairFor(factory, tokenA, tokenB);
        TransferHelper.safeTransferFrom(tokenA, msg.sender, pair, amountA);
        TransferHelper.safeTransferFrom(tokenB, msg.sender, pair, amountB);
        liquidity = IDexPair(pair).mint(to);
        
        emit AddLiquidity(tokenA, tokenB, amountADesired, amountBDesired, to);
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
        returns (
            uint256 amountToken,
            uint256 amountETH,
            uint256 liquidity
        )
    {
        if(to == address(0)) revert InvalidAddressParameters("DEX Router: RECIPIENT_ZERO_ADDRESS");
        (amountToken, amountETH) = _addLiquidity(
            token,
            WETH,
            amountTokenDesired,
            msg.value,
            amountTokenMin,
            amountETHMin
        );
        address pair = DexLibrary.pairFor(factory, token, WETH);
        TransferHelper.safeTransferFrom(token, msg.sender, pair, amountToken);
        IWETH(WETH).deposit{value: amountETH}();
        assert(IWETH(WETH).transfer(pair, amountETH));
        liquidity = IDexPair(pair).mint(to);
        if (msg.value > amountETH && (msg.value - amountETH) > 0) {
            TransferHelper.safeTransferETH(msg.sender, msg.value - amountETH);
        }
        emit AddLiquidity(token, WETH, amountTokenDesired, msg.value, to);
    }

    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    )
        public
        virtual
        override
        ensure(deadline)
        returns (uint256 amountA, uint256 amountB)
    {
        if(to == address(0)) revert InvalidAddressParameters("DEX Router: RECIPIENT_ZERO_ADDRESS");
        address pair = DexLibrary.pairFor(factory, tokenA, tokenB);
        IDexPair(pair).transferFrom(msg.sender, pair, liquidity); 
        (uint256 amount0, uint256 amount1) = IDexPair(pair).burn(to);
        (address token0, ) = DexLibrary.sortTokens(tokenA, tokenB);
        (amountA, amountB) = tokenA == token0
            ? (amount0, amount1)
            : (amount1, amount0);
        if (amountA < amountAMin)
            revert InsufficientAmount("DEX Router: INSUFFICIENT_A_AMOUNT");
        if (amountB < amountBMin)
            revert InsufficientAmount("DEX Router: INSUFFICIENT_B_AMOUNT");

        emit RemoveLiquidity(tokenA, tokenB, amountA, amountB, to);
    }

    function removeLiquidityETH(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    )
        public
        virtual
        override
        ensure(deadline)
        returns (uint256 amountToken, uint256 amountETH)
    {
        (amountToken, amountETH) = removeLiquidity(
            token,
            WETH,
            liquidity,
            amountTokenMin,
            amountETHMin,
            address(this),
            deadline
        );
        TransferHelper.safeTransfer(token, to, amountToken);
        IWETH(WETH).withdraw(amountETH);
        TransferHelper.safeTransferETH(to, amountETH);

        emit RemoveLiquidity(token, WETH, amountToken, amountETH, to);
    }
   
    function _swap(
        uint256[] memory amounts,
        address[] memory path,
        address _to
    ) internal virtual {
        require(amounts.length == path.length, "DEX Router: INVALID_AMOUNTS");
        if(_to == address(0)) revert InvalidAddressParameters("DEX Router: SWAP_TO_ZERO_ADDRESS");
        uint256 length = path.length - 1;
        for (uint256 i = 0; i < length; i++) {
            (address input, address output) = (path[i], path[i + 1]);
            (address token0, ) = DexLibrary.sortTokens(input, output);
            uint256 amountOut = amounts[i + 1];
            (uint256 amount0Out, uint256 amount1Out) = input == token0
                ? (uint256(0), amountOut)
                : (amountOut, uint256(0));
            address to = i < length - 1
                ? DexLibrary.pairFor(factory, output, path[i + 2])
                : _to;
            IDexPair(DexLibrary.pairFor(factory, input, output)).swap(
                amount0Out,
                amount1Out,
                to,
                new bytes(0)
            );
        }
    }

    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        virtual
        override
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        amounts = DexLibrary.getAmountsOut(factory, amountIn, path);
        if (amounts[amounts.length - 1] < amountOutMin)
            revert InsufficientAmount("DEX Router: INSUFFICIENT_OUTPUT_AMOUNT");
        TransferHelper.safeTransferFrom(
            path[0],
            msg.sender,
            DexLibrary.pairFor(factory, path[0], path[1]),
            amounts[0]
        );
        _swap(amounts, path, to);
    }

    function swapTokensForExactTokens(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        virtual
        override
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        amounts = DexLibrary.getAmountsIn(factory, amountOut, path);
        if (amounts[0] > amountInMax) revert ExcessiveInputAmount();
        TransferHelper.safeTransferFrom(
            path[0],
            msg.sender,
            DexLibrary.pairFor(factory, path[0], path[1]),
            amounts[0]
        );
        _swap(amounts, path, to);
    }

    function swapExactETHForTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        payable
        virtual
        override
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        if (path[0] != WETH) revert InvalidPath();
        amounts = DexLibrary.getAmountsOut(factory, msg.value, path);
        if (amounts[amounts.length - 1] < amountOutMin)
            revert InsufficientAmount("DEX Router: INSUFFICIENT_OUTPUT_AMOUNT");
        IWETH(WETH).deposit{value: amounts[0]}();
        assert(
            IWETH(WETH).transfer(
                DexLibrary.pairFor(factory, path[0], path[1]),
                amounts[0]
            )
        );
        _swap(amounts, path, to);
    }

    function swapTokensForExactETH(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        virtual
        override
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        if (path[path.length - 1] != WETH) revert InvalidPath();
        amounts = DexLibrary.getAmountsIn(factory, amountOut, path);
        if (amounts[0] > amountInMax) revert ExcessiveInputAmount();
        TransferHelper.safeTransferFrom(
            path[0],
            msg.sender,
            DexLibrary.pairFor(factory, path[0], path[1]),
            amounts[0]
        );
        _swap(amounts, path, address(this));
        IWETH(WETH).withdraw(amounts[amounts.length - 1]);
        TransferHelper.safeTransferETH(to, amounts[amounts.length - 1]);
    }

    function swapExactTokensForETH(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        virtual
        override
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        if (path[path.length - 1] != WETH) revert InvalidPath();
        amounts = DexLibrary.getAmountsOut(factory, amountIn, path);
        if (amounts[amounts.length - 1] < amountOutMin)
            revert InsufficientAmount("DEX Router: INSUFFICIENT_OUTPUT_AMOUNT");
        TransferHelper.safeTransferFrom(
            path[0],
            msg.sender,
            DexLibrary.pairFor(factory, path[0], path[1]),
            amounts[0]
        );
        _swap(amounts, path, address(this));
        IWETH(WETH).withdraw(amounts[amounts.length - 1]);
        TransferHelper.safeTransferETH(to, amounts[amounts.length - 1]);
    }

    function swapETHForExactTokens(
        uint256 amountOut,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        payable
        virtual
        override
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        if (path[0] != WETH) revert InvalidPath();
        amounts = DexLibrary.getAmountsIn(factory, amountOut, path);
        if (amounts[0] > msg.value) revert ExcessiveInputAmount();
        IWETH(WETH).deposit{value: amounts[0]}();
        assert(
            IWETH(WETH).transfer(
                DexLibrary.pairFor(factory, path[0], path[1]),
                amounts[0]
            )
        );
        _swap(amounts, path, to);
        if (msg.value > amounts[0])
            TransferHelper.safeTransferETH(msg.sender, msg.value - amounts[0]);
    }

    function _swapTransferTokens(
        address[] memory path,
        address _to
    ) internal virtual {
        require(path.length >= 2, "DEX Router: INVALID_PATH");
        if(_to == address(0)) revert InvalidAddressParameters("DEX Router: SWAP_TO_ZERO_ADDRESS");
        uint256 amountIn;
        uint256 amountOut;
        for (uint256 i = 0; i < path.length - 1; i++) {
            (address input, address output) = (path[i], path[i + 1]);
            (address token0, ) = DexLibrary.sortTokens(input, output);
            IDexPair pair = IDexPair(
                DexLibrary.pairFor(factory, input, output)
            );
            uint256 amountInput;
            uint256 amountOutput;
            {
                (uint256 reserve0, uint256 reserve1, ) = pair.getReserves();
                (uint256 reserveInput, uint256 reserveOutput) = input == token0
                    ? (reserve0, reserve1)
                    : (reserve1, reserve0);
                amountInput =
                    IERC20(input).balanceOf(address(pair)) - reserveInput;

                amountOutput = DexLibrary.getAmountOut(
                    amountInput,
                    reserveInput,
                    reserveOutput
                );
            }
            (uint256 amount0Out, uint256 amount1Out) = input == token0
                ? (uint256(0), amountOutput)
                : (amountOutput, uint256(0));
            address to = i < path.length - 2
                ? DexLibrary.pairFor(factory, output, path[i + 2])
                : _to;
            pair.swap(amount0Out, amount1Out, to, new bytes(0));

            if (i == 0) amountIn = amountInput;
            amountOut = amountOutput;
        }
        emit Swap(path[0], path[path.length-1], amountIn, amountOut, _to);
    }

    function quote(
        uint256 amountA,
        uint256 reserveA,
        uint256 reserveB
    ) public pure virtual override returns (uint256 amountB) {
        return DexLibrary.quote(amountA, reserveA, reserveB);
    }

    function getAmountOut(
        uint256 amountIn,
        uint256 reserveIn,
        uint256 reserveOut
    ) public pure virtual override returns (uint256 amountOut) {
        return DexLibrary.getAmountOut(amountIn, reserveIn, reserveOut);
    }

    function getAmountIn(
        uint256 amountOut,
        uint256 reserveIn,
        uint256 reserveOut
    ) public pure virtual override returns (uint256 amountIn) {
        return DexLibrary.getAmountIn(amountOut, reserveIn, reserveOut);
    }

    function getAmountsOut(uint256 amountIn, address[] memory path)
        public
        view
        virtual
        override
        returns (uint256[] memory amounts)
    {
        return DexLibrary.getAmountsOut(factory, amountIn, path);
    }

    function getAmountsIn(uint256 amountOut, address[] memory path)
        public
        view
        virtual
        override
        returns (uint256[] memory amounts)
    {
        return DexLibrary.getAmountsIn(factory, amountOut, path);
    }
}
