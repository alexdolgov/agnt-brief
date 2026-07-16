// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.20;

import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IUniswapV2Router02} from "src/periphery/interfaces/external/IUniswapV2Router02.sol";
import {ISwapForwarder} from "src/periphery/interfaces/ISwapForwarder.sol";
import {IInfinityPool} from "src/interfaces/IInfinityPool.sol";
import {Spot} from "src/libraries/external/Spot.sol";
import {fromUint256, Quad} from "src/types/ABDKMathQuad/Quad.sol";
import {OptQuad} from "src/types/Optional/OptQuad.sol";
import {IInfinityPoolFactory} from "src/interfaces/IInfinityPoolFactory.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {OPT_QUAD_NONE} from "src/Constants.sol";
import {CallbackValidation} from "src/periphery/libraries/CallbackValidation.sol";

interface IInfinityPoolsPeriphery {
    function factory() external view returns (address);
}

contract InfinityPoolsSwapForwarder is ISwapForwarder {
    IInfinityPoolFactory public immutable factory;
    IInfinityPoolsPeriphery public immutable infinityPoolsPeriphery;

    error InsufficientOutputAmount();
    error ExcessiveInputAmount();

    struct CallbackData {
        address token0;
        address token1;
        int256 splits;
        address caller;
    }

    function infinityPoolPaymentCallback(int256 amount0, int256 amount1, bytes calldata data) external {
        CallbackData memory callbackData = abi.decode(data, (CallbackData));
        //msg.sender = pool contract
        CallbackValidation.verifyCallback(address(factory), callbackData.token0, callbackData.token1, callbackData.splits);

        //if caller is infinityPoolsPeriphery, we know it has sent the required tokens to this contract already
        if (callbackData.caller == address(infinityPoolsPeriphery)) {
            if (amount0 > 0) SafeERC20.safeTransfer(IERC20(callbackData.token0), msg.sender, uint256(amount0));
            else SafeERC20.safeTransfer(IERC20(callbackData.token1), msg.sender, uint256(amount1));
        } else {
            //otherwise we pull the funds from the caller
            if (amount0 > 0) SafeERC20.safeTransferFrom(IERC20(callbackData.token0), callbackData.caller, msg.sender, uint256(amount0));
            else SafeERC20.safeTransferFrom(IERC20(callbackData.token1), callbackData.caller, msg.sender, uint256(amount1));
        }
    }

    constructor(address _infinityPoolsPeriphery) {
        infinityPoolsPeriphery = IInfinityPoolsPeriphery(_infinityPoolsPeriphery);
        factory = IInfinityPoolFactory(IInfinityPoolsPeriphery(_infinityPoolsPeriphery).factory());
    }

    function exactOutputSupported() external pure returns (bool) {
        return true;
    }

    struct SwapLocalVars {
        int256 splits;
        IInfinityPool pool;
        address token0;
        address token1;
        Quad tenToPowerTokenDecimals;
        Spot.SpotSwapParams spotSwapParams;
        CallbackData callbackData;
        int256 amount0;
        int256 amount1;
    }

    function swapExactInput(IERC20 tokenIn, address, uint256 tokenAmountIn, IERC20 tokenOut, uint256 minTokenAmountOut, address, bytes calldata data)
        external
        returns (uint256 tokenAmountOut)
    {
        SwapLocalVars memory vars;

        vars.splits = 15;
        if (data.length > 0) vars.splits = abi.decode(data, (int256));

        vars.pool = IInfinityPool(factory.getPool(address(tokenIn), address(tokenOut), vars.splits));

        (vars.token0, vars.token1,) = vars.pool.getPoolInfo();

        vars.tenToPowerTokenDecimals = fromUint256(10 ** IERC20Metadata(address(tokenIn)).decimals());
        vars.spotSwapParams = Spot.SpotSwapParams({
            shove: fromUint256(tokenAmountIn) / vars.tenToPowerTokenDecimals,
            ofToken: vars.token0 != address(tokenIn),
            limitPrice: OPT_QUAD_NONE,
            remainingAmount: OPT_QUAD_NONE
        });

        vars.callbackData = CallbackData({token0: vars.token0, token1: vars.token1, splits: vars.splits, caller: msg.sender});

        (vars.amount0, vars.amount1) = vars.pool.swap(vars.spotSwapParams, msg.sender, abi.encode(vars.callbackData));

        tokenAmountOut = vars.token0 != address(tokenIn) ? uint256(-vars.amount0) : uint256(-vars.amount1);
        if (tokenAmountOut < minTokenAmountOut) revert InsufficientOutputAmount();
    }

    function swapExactOutput(IERC20 tokenIn, address, uint256 maxTokenAmountIn, IERC20 tokenOut, uint256 tokenAmountOut, address, bytes calldata data)
        external
        returns (uint256 tokenInAmount)
    {
        SwapLocalVars memory vars;
        vars.splits = 15;
        if (data.length > 0) vars.splits = abi.decode(data, (int256));

        vars.pool = IInfinityPool(factory.getPool(address(tokenIn), address(tokenOut), vars.splits));

        (vars.token0, vars.token1,) = vars.pool.getPoolInfo();

        vars.tenToPowerTokenDecimals = fromUint256(10 ** IERC20Metadata(address(tokenOut)).decimals());
        vars.spotSwapParams = Spot.SpotSwapParams({
            shove: fromUint256(tokenAmountOut).neg() / vars.tenToPowerTokenDecimals,
            ofToken: vars.token0 != address(tokenOut),
            limitPrice: OPT_QUAD_NONE,
            remainingAmount: OPT_QUAD_NONE
        });

        vars.callbackData = CallbackData({token0: vars.token0, token1: vars.token1, splits: vars.splits, caller: msg.sender});

        (vars.amount0, vars.amount1) = vars.pool.swap(vars.spotSwapParams, msg.sender, abi.encode(vars.callbackData));

        tokenInAmount = vars.token0 != address(tokenOut) ? uint256(vars.amount0) : uint256(vars.amount1);
        if (tokenInAmount > maxTokenAmountIn) revert ExcessiveInputAmount();

        if (msg.sender == address(infinityPoolsPeriphery)) {
            uint256 tokenInAmountNotUsed = maxTokenAmountIn - tokenInAmount;
            if (tokenInAmountNotUsed > 0) SafeERC20.safeTransfer(IERC20(tokenIn), msg.sender, tokenInAmountNotUsed);
        }
    }
}
