// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";

import {IEERC20} from "./interface/IEERC20.sol";
import {IKPool} from "./interface/IKPool.sol";
import {ISaddleStableSwap} from "./interface/ISaddleStableSwap.sol";
import {IUniswapV3Pool} from "./interface/IUniswapV3Pool.sol";
import {IGmxVault} from "./interface/IGmxVault.sol";

import {BeamswapTypes} from "./BeamswapTypes.sol";

import "./libraries/TransferHelper.sol";
import "./libraries/AlgebraVerifier.sol";
import "./libraries/UniV3Verifier.sol";
import "./libraries/SafeCast.sol";

import "./constants/PoolConstants.sol";

error BEAMSWAP_BadAmountIn();
error BEAMSWAP_BadSwapType();
error BEAMSWAP_AmountOutLow();
error BEAMSWAP_AddressZero();
error BEAMSWAP_BadCaller();

contract BeamswapExecutor is BeamswapTypes, Ownable, PoolConstants {
    using SafeCast for uint256;

    address internal router;

    function setRouter(address newRouter) external onlyOwner {
        if (newRouter == address(0)) revert BEAMSWAP_AddressZero();
        router = newRouter;
    }

    function executeSplitSwap(
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOutMin,
        bytes calldata data
    ) external {
        if (msg.sender != router) revert BEAMSWAP_BadCaller();

        SplitPaths[] memory splitPaths = abi.decode(data, (SplitPaths[]));
        uint256 netAmountIn;
        uint256 splitPathsLen = splitPaths.length;

        for (uint i; i < splitPathsLen; ) {
            netAmountIn += splitPaths[i].amountIn;
            unchecked {
                ++i;
            }
        }

        if (netAmountIn != amountIn) revert BEAMSWAP_BadAmountIn();

        for (uint i; i < splitPathsLen; ) {
            SplitPaths memory splitPath = splitPaths[i];
            SwapDataWrapper[] memory wrappedSwapData = splitPath
                .wrappedSwapData;
            address[] memory pools = splitPath.pools;
            uint256 nextAmountIn = splitPath.amountIn;
            address nextTokenIn = tokenIn;
            uint256 len = pools.length;
            for (uint j; j < len; ) {
                SwapDataWrapper memory wrappedSwapData_ = wrappedSwapData[j];
                // Constant product swap
                if (wrappedSwapData_.swapType == SwapType.K) {
                    PlainSwapData memory swapData = abi.decode(
                        wrappedSwapData_.swapData,
                        (PlainSwapData)
                    );
                    TransferHelper.safeTransfer(
                        nextTokenIn,
                        pools[j],
                        nextAmountIn
                    );
                    nextTokenIn = swapData.tokenOut;
                    nextAmountIn = _kSwap(swapData, pools[j], nextAmountIn);
                }
                // UniV3 swap
                else if (wrappedSwapData_.swapType == SwapType.UniV3) {
                    UniV3SwapData memory swapData = abi.decode(
                        wrappedSwapData_.swapData,
                        (UniV3SwapData)
                    );
                    nextTokenIn = swapData.tokenOut;
                    nextAmountIn = _uniV3Swap(swapData, pools[j], nextAmountIn);
                }
                // GMX swap
                if (wrappedSwapData_.swapType == SwapType.Gmx) {
                    GmxSwapData memory swapData = abi.decode(
                        wrappedSwapData_.swapData,
                        (GmxSwapData)
                    );
                    TransferHelper.safeTransfer(
                        nextTokenIn,
                        pools[j],
                        nextAmountIn
                    );
                    nextTokenIn = swapData.tokenOut;
                    nextAmountIn = _gmxSwap(swapData, pools[j]);
                }
                // Saddle Stableswap
                else if (wrappedSwapData_.swapType == SwapType.SaddleStable) {
                    PlainSwapData memory swapData = abi.decode(
                        wrappedSwapData_.swapData,
                        (PlainSwapData)
                    );
                    IEERC20(nextTokenIn).approve(pools[j], nextAmountIn);
                    nextTokenIn = swapData.tokenOut;
                    nextAmountIn = _saddleStableSwap(
                        swapData,
                        pools[j],
                        nextAmountIn
                    );
                }
                unchecked {
                    ++j;
                }
            }
            unchecked {
                ++i;
            }
        }

        uint256 resultBal = IEERC20(tokenOut).balanceOf(address(this));
        if (resultBal < amountOutMin) revert BEAMSWAP_AmountOutLow();

        TransferHelper.safeTransfer(tokenOut, msg.sender, resultBal);
    }

    function _kSwap(
        PlainSwapData memory swapData,
        address pool,
        uint256 amountIn
    ) internal returns (uint256 amountOut) {
        uint256 balCurrent = IEERC20(swapData.tokenOut).balanceOf(
            address(this)
        );
        amountOut = _getAmountOutK(
            pool,
            amountIn,
            swapData.poolInPos,
            swapData.poolFee
        );
        (uint256 amount0Out, uint256 amount1Out) = swapData.poolInPos == 0
            ? (uint256(0), amountOut)
            : (amountOut, uint256(0));
        IKPool(pool).swap(amount0Out, amount1Out, address(this), "");
        amountOut =
            IEERC20(swapData.tokenOut).balanceOf(address(this)) -
            balCurrent;
    }

    function _saddleStableSwap(
        PlainSwapData memory swapData,
        address pool,
        uint256 amountIn
    ) internal returns (uint256 amountOut) {
        uint256 balCurrent = IEERC20(swapData.tokenOut).balanceOf(
            address(this)
        );
        ISaddleStableSwap(pool).swap(
            swapData.poolInPos,
            swapData.poolOutPos,
            amountIn,
            1,
            ~uint256(0)
        );
        amountOut =
            IEERC20(swapData.tokenOut).balanceOf(address(this)) -
            balCurrent;
    }

    function _gmxSwap(
        GmxSwapData memory swapData,
        address pool
    ) internal returns (uint256 amountOut) {
        uint256 balCurrent = IEERC20(swapData.tokenOut).balanceOf(
            address(this)
        );
        IGmxVault(pool).swap(
            swapData.tokenIn,
            swapData.tokenOut,
            address(this)
        );
        amountOut =
            IEERC20(swapData.tokenOut).balanceOf(address(this)) -
            balCurrent;
    }

    function _uniV3Swap(
        UniV3SwapData memory swapData,
        address pool,
        uint256 amountIn
    ) internal returns (uint256 amountOut) {
        uint256 balCurrent = IEERC20(swapData.tokenOut).balanceOf(
            address(this)
        );
        bool zeroForOne = (swapData.poolInPos == 0 ? true : false);
        IUniswapV3Pool(pool).swap(
            address(this),
            zeroForOne,
            amountIn.toInt256(),
            (zeroForOne ? MIN_SQRT_RATIO + 1 : MAX_SQRT_RATIO - 1),
            swapData.callbackData
        );
        amountOut =
            IEERC20(swapData.tokenOut).balanceOf(address(this)) -
            balCurrent;
    }

    function _getAmountOutK(
        address pool,
        uint256 amountIn,
        uint256 poolInPos,
        uint256 fee
    ) internal view returns (uint256 amtOut) {
        (uint256 reserve0, uint256 reserve1) = IKPool(pool).getReserves();
        (uint256 reserveIn, uint256 reserveOut) = poolInPos == 0
            ? (reserve0, reserve1)
            : (reserve1, reserve0);
        uint256 amountInWithFee = amountIn * fee;
        uint256 numerator = amountInWithFee * reserveOut;
        uint256 denominator = (reserveIn * 1_000_000) + amountInWithFee;

        amtOut = numerator / denominator;
    }

    function algebraSwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) external {
        uniswapV3SwapCallback(amount0Delta, amount1Delta, data);
    }

    function beamswapV3SwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) external {
        uniswapV3SwapCallback(amount0Delta, amount1Delta, data);
    }

    // This differs from the usual uniswapV3SwapCallback, in that we do not verify that the calling address is an official deployment
    // of any particular factory. As such, it's imperative not to interact with the executor directly, but always to transact through
    // the router and ensure a reasonable amountOutMin parameter for the swap.

    function uniswapV3SwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) public {
        (address tokenIn, address tokenOut, uint24 fee, uint256 v3Id) = abi
            .decode(data, (address, address, uint24, uint256));

        (bool isExactInput, uint256 amountToPay) = amount0Delta > 0
            ? (tokenIn < tokenOut, uint256(amount0Delta))
            : (tokenOut < tokenIn, uint256(amount1Delta));
        if (isExactInput) {
            TransferHelper.safeTransfer(tokenIn, msg.sender, amountToPay);
        } else {
            tokenIn = tokenOut; // swap in/out because exact output swaps are reversed
            TransferHelper.safeTransfer(tokenIn, msg.sender, amountToPay);
        }
    }
}
