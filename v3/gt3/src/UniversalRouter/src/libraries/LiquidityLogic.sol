// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IPairFactory} from "src/interfaces/IPairFactory.sol";
import {IRouter} from "src/interfaces/IRouter.sol";
import {IPair} from "src/interfaces/IPair.sol";
import {IWETH} from "src/interfaces/IWETH.sol";
import {RouterUtilsLib} from "src/libraries/RouterUtilsLib.sol";

library LiquidityLogic {
    using SafeERC20 for IERC20;

    struct Signature {
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    function quoteAddLiquidity(
        address factory,
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired
    ) external view returns (uint256 amountA, uint256 amountB, uint256 liquidity) {
        address pair = IPairFactory(factory).getPair(tokenA, tokenB);
        (uint256 reserveA, uint256 reserveB) = (0, 0);
        uint256 totalSupply = 0;
        if (pair != address(0)) {
            totalSupply = IERC20(pair).totalSupply();
            (reserveA, reserveB) = RouterUtilsLib.getReserves(factory, tokenA, tokenB);
        }
        if (reserveA == 0 && reserveB == 0) {
            (amountA, amountB) = (amountADesired, amountBDesired);
            liquidity = Math.sqrt(amountA * amountB) - RouterUtilsLib.MINIMUM_LIQUIDITY;
        } else {
            uint256 amountBOptimal = _quoteLiquidity(amountADesired, reserveA, reserveB);
            if (amountBOptimal <= amountBDesired) {
                (amountA, amountB) = (amountADesired, amountBOptimal);
                liquidity = Math.min(amountA * totalSupply / reserveA, amountB * totalSupply / reserveB);
            } else {
                uint256 amountAOptimal = _quoteLiquidity(amountBDesired, reserveB, reserveA);
                (amountA, amountB) = (amountAOptimal, amountBDesired);
                liquidity = Math.min(amountA * totalSupply / reserveA, amountB * totalSupply / reserveB);
            }
        }
    }

    function quoteRemoveLiquidity(address factory, address tokenA, address tokenB, uint256 liquidity)
        external
        view
        returns (uint256 amountA, uint256 amountB)
    {
        address pair = IPairFactory(factory).getPair(tokenA, tokenB);
        if (pair == address(0)) {
            return (0, 0);
        }
        (uint256 reserveA, uint256 reserveB) = RouterUtilsLib.getReserves(factory, tokenA, tokenB);
        uint256 totalSupply = IERC20(pair).totalSupply();
        amountA = liquidity * reserveA / totalSupply;
        amountB = liquidity * reserveB / totalSupply;
    }

    function addLiquidity(
        address factory,
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to
    ) external returns (uint256 amountA, uint256 amountB, uint256 liquidity) {
        (amountA, amountB) =
            _addLiquidity(factory, tokenA, tokenB, amountADesired, amountBDesired, amountAMin, amountBMin);
        address pair = IPairFactory(factory).getPair(tokenA, tokenB);
        IERC20(tokenA).safeTransferFrom(msg.sender, pair, amountA);
        IERC20(tokenB).safeTransferFrom(msg.sender, pair, amountB);
        liquidity = IPair(pair).mint(to);
    }

    function addLiquidityETH(
        address factory,
        address weth,
        address token,
        uint256 msgValue,
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to
    ) external returns (uint256 amountToken, uint256 amountETH, uint256 liquidity) {
        (amountToken, amountETH) =
            _addLiquidity(factory, token, weth, amountTokenDesired, msgValue, amountTokenMin, amountETHMin);
        address pair = IPairFactory(factory).getPair(token, weth);
        IERC20(token).safeTransferFrom(msg.sender, pair, amountToken);
        IWETH(weth).deposit{value: amountETH}();
        assert(IWETH(weth).transfer(pair, amountETH));
        liquidity = IPair(pair).mint(to);
        if (msgValue > amountETH) _safeTransferETH(msg.sender, msgValue - amountETH);
    }

    function removeLiquidity(
        address factory,
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to
    ) public returns (uint256 amountA, uint256 amountB) {
        address pair = IPairFactory(factory).getPair(tokenA, tokenB);
        IERC20(pair).safeTransferFrom(msg.sender, pair, liquidity);
        (uint256 amount0, uint256 amount1) = IPair(pair).burn(to);
        (address token0,) = RouterUtilsLib.sortTokens(tokenA, tokenB);
        (amountA, amountB) = tokenA == token0 ? (amount0, amount1) : (amount1, amount0);
        if (amountA < amountAMin) revert IRouter.RouterInsufficientAmountA();
        if (amountB < amountBMin) revert IRouter.RouterInsufficientAmountB();
    }

    function removeLiquidityETH(
        address factory,
        address weth,
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to
    ) public returns (uint256 amountToken, uint256 amountETH) {
        (amountToken, amountETH) =
            removeLiquidity(factory, token, weth, liquidity, amountTokenMin, amountETHMin, address(this));
        IERC20(token).safeTransfer(to, amountToken);
        IWETH(weth).withdraw(amountETH);
        _safeTransferETH(to, amountETH);
    }

    function removeLiquidityWithPermit(
        address factory,
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
    ) external returns (uint256 amountA, uint256 amountB) {
        {
            address pair = IPairFactory(factory).getPair(tokenA, tokenB);
            uint256 value = approveMax ? type(uint256).max : liquidity;
            IERC20Permit(pair).permit(msg.sender, address(this), value, deadline, v, r, s);
        }
        (amountA, amountB) = removeLiquidity(factory, tokenA, tokenB, liquidity, amountAMin, amountBMin, to);
    }

    function removeLiquidityETHWithPermit(
        address factory,
        address weth,
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline,
        bool approveMax,
        Signature memory sig
    ) internal returns (uint256 amountToken, uint256 amountETH) {
        uint256 value_ = approveMax ? type(uint256).max : liquidity;
        IERC20Permit(IPairFactory(factory).getPair(token, weth)).permit(
            msg.sender, address(this), value_, deadline, sig.v, sig.r, sig.s
        );
        (amountToken, amountETH) = removeLiquidityETH(factory, token, weth, liquidity, amountTokenMin, amountETHMin, to);
    }

    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address factory,
        address weth,
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to
    ) public returns (uint256 amountETH) {
        (, amountETH) = removeLiquidity(factory, token, weth, liquidity, amountTokenMin, amountETHMin, address(this));
        IERC20(token).safeTransfer(to, IERC20(token).balanceOf(address(this)));
        IWETH(weth).withdraw(amountETH);
        _safeTransferETH(to, amountETH);
    }

    function removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(
        address factory,
        address weth,
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
    ) external returns (uint256 amountETH) {
        address pair = IPairFactory(factory).getPair(token, weth);
        uint256 value = approveMax ? type(uint256).max : liquidity;
        IERC20Permit(pair).permit(msg.sender, address(this), value, deadline, v, r, s);
        amountETH = removeLiquidityETHSupportingFeeOnTransferTokens(
            factory, weth, token, liquidity, amountTokenMin, amountETHMin, to
        );
    }

    function _addLiquidity(
        address factory,
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin
    ) private returns (uint256 amountA, uint256 amountB) {
        if (amountADesired < amountAMin) revert IRouter.RouterInsufficientAmountADesired();
        if (amountBDesired < amountBMin) revert IRouter.RouterInsufficientAmountBDesired();

        address pair = IPairFactory(factory).getPair(tokenA, tokenB);
        if (pair == address(0)) {
            pair = IPairFactory(factory).createPair(tokenA, tokenB);
        }

        (uint256 reserveA, uint256 reserveB) = RouterUtilsLib.getReserves(factory, tokenA, tokenB);
        if (reserveA == 0 && reserveB == 0) {
            (amountA, amountB) = (amountADesired, amountBDesired);
        } else {
            uint256 amountBOptimal = _quoteLiquidity(amountADesired, reserveA, reserveB);
            if (amountBOptimal <= amountBDesired) {
                if (amountBOptimal < amountBMin) revert IRouter.RouterInsufficientAmountB();
                (amountA, amountB) = (amountADesired, amountBOptimal);
            } else {
                uint256 amountAOptimal = _quoteLiquidity(amountBDesired, reserveB, reserveA);
                assert(amountAOptimal <= amountADesired);
                if (amountAOptimal < amountAMin) revert IRouter.RouterInsufficientAmountA();
                (amountA, amountB) = (amountAOptimal, amountBDesired);
            }
        }
    }

    function _quoteLiquidity(uint256 amountA, uint256 reserveA, uint256 reserveB)
        private
        pure
        returns (uint256 amountB)
    {
        if (amountA == 0) revert IRouter.RouterZeroAmount();
        if (reserveA == 0 || reserveB == 0) revert IRouter.RouterInsufficientReserves();
        amountB = amountA * reserveB / reserveA;
    }

    function _safeTransferETH(address to_, uint256 value_) private {
        (bool success_,) = to_.call{value: value_}(new bytes(0));
        if (!success_) revert IRouter.RouterETHTransferFailed();
    }
}
