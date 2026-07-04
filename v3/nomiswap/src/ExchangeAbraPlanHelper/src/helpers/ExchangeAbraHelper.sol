// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.23;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import {Multicall} from "@openzeppelin/contracts/utils/Multicall.sol";
import {IBalancer, IAdapter} from "src/interfaces/IBalancer.sol";
import {IConverter} from "./converters/IConverter.sol";
import {IV3SwapRouter} from "src/interfaces/uniswap/IV3SwapRouter.sol";
import {IRouter} from "../interfaces/IRouter.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract ExchangeAbraHelper {

    using SafeERC20 for IERC20;

    address internal immutable ABRA;
    address internal immutable CADABRA_ROUTER;
    address internal  immutable V3SWAP_ROUTER;

    uint24 DEFAULT_SWAP_FEE = 3000;

    constructor(address abra, address cadabraRouter, address uniswapRouter) {
        ABRA = abra;
        CADABRA_ROUTER = cadabraRouter;
        V3SWAP_ROUTER = uniswapRouter;
    }

    function buyAbra(
        address tokenIn,
        uint amountIn,
        address[] calldata adapters,
        address[] calldata converters,
        uint[] calldata adapterAmountsIn,
        uint minAmountOut,
        uint deadline) external returns (uint amountOut) {
        require(deadline >= block.timestamp, "EXPIRED");

        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);

        for (uint i = 0; i < adapters.length; ++i) {
            amountIn -= adapterAmountsIn[i];
            amountOut += buyAbraWithInvest(
                adapters[i],
                tokenIn,
                adapterAmountsIn[i],
                converters[i],
                msg.sender,
                uint32(deadline)
            );
        }
        amountOut += swapDirect(
            tokenIn,
            ABRA,
            amountIn,
            msg.sender,
            0
        );
        require(amountOut >= minAmountOut, "SLIPPAGE");
    }

    function sellAbra(
        address tokenOut,
        uint amountIn,
        address[] calldata adapters,
        address[] calldata converters,
        uint[] calldata adapterAmountsIn,
        uint minAmountOut,
        uint deadline) external returns (uint amountOut) {
        require(deadline >= block.timestamp, "EXPIRED");

        IERC20(ABRA).safeTransferFrom(msg.sender, address(this), amountIn);

        for (uint i = 0; i < adapters.length; ++i) {
            amountIn -= adapterAmountsIn[i];
            amountOut += sellAbraWithRedeem(
                adapters[i],
                adapterAmountsIn[i],
                tokenOut,
                converters[i],
                msg.sender,
                new IRouter.TokenAmount[](0),
                uint32(deadline)
            );
        }

        amountOut += swapDirect(
            ABRA,
            tokenOut,
            amountIn,
            msg.sender,
            0
        );

        require(amountOut >= minAmountOut, "SLIPPAGE");
    }

    function swapDirect(
        address tokenIn,
        address tokenOut,
        uint amountIn,
        address recipient,
        uint minAmountOut
    ) internal returns (uint amountOut) {
        IERC20(tokenIn).forceApprove(V3SWAP_ROUTER, amountIn);
        return IV3SwapRouter(V3SWAP_ROUTER).exactInputSingle(
            IV3SwapRouter.ExactInputSingleParams({
                tokenIn: tokenIn,
                tokenOut: tokenOut,
                fee: DEFAULT_SWAP_FEE,
                recipient: recipient,
                amountIn: amountIn,
                amountOutMinimum: minAmountOut,
                sqrtPriceLimitX96: 0
            })
        );
    }

    function buyAbraWithInvest(
        address adapter,
        address tokenIn,
        uint256 amountIn,
        address converter,
        address recipient,
        uint32 deadline
    ) public returns (uint amountOut)  {

        address balancer = IAdapter(adapter).balancer();

        uint shares;
        if (converter != address(0)) {
            IERC20(tokenIn).forceApprove(converter, amountIn);
            shares = IConverter(converter).invest(adapter, tokenIn, amountIn);
        } else {
            uint depositAmount = amountIn;
            address[] memory depositTokens = IAdapter(adapter).depositTokens();

            require(depositTokens.length == 1, string.concat("MDT", Strings.toHexString(uint160(address(adapter)), 20)));
            address depositToken = depositTokens[0];

            if (depositToken != tokenIn) {
                IERC20(tokenIn).forceApprove(V3SWAP_ROUTER, amountIn);
                depositAmount = IV3SwapRouter(V3SWAP_ROUTER).exactInputSingle(IV3SwapRouter.ExactInputSingleParams({
                tokenIn: tokenIn,
                tokenOut: depositToken,
                fee: 500,
                recipient: address(this),
                amountIn: amountIn,
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
                }));
            }

            IERC20(depositToken).forceApprove(CADABRA_ROUTER, amountIn);
            shares = IRouter(CADABRA_ROUTER).invest(
                adapter,
                balancer,
                depositToken,
                depositAmount,
                0,
                new IBalancer.SwapInfo[](0),
                deadline
            );
        }

        IERC20(balancer).approve(V3SWAP_ROUTER, shares);

        return IV3SwapRouter(V3SWAP_ROUTER).exactInputSingle(
                IV3SwapRouter.ExactInputSingleParams({
                    tokenIn: balancer,
                    tokenOut: ABRA,
                    fee: DEFAULT_SWAP_FEE,
                    recipient: recipient,
                    amountIn: shares,
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
        );
    }

    function sellAbraWithRedeem(
        address adapter,
        uint amountIn,
        address tokenOut,
        address converter,
        address recipient,
        IRouter.TokenAmount[] memory minAmounts,
        uint32 deadline
    ) public returns (uint amountOut)  {

        address[] memory tokens;
        uint[] memory amounts;
        {
            (address balancer, uint shares) = swapForShares(
                adapter,
                amountIn,
                0
            );

            if (converter != address(0)) {
                IERC20(balancer).approve(converter, shares);
                amountOut = IConverter(converter).redeem(adapter, tokenOut, amountIn);
                if (recipient != address(this)) {
                    IERC20(tokenOut).safeTransfer(recipient, amountOut);
                }
                return amountOut;
            }

            (tokens, amounts) = redeem(adapter, shares, minAmounts, deadline);
        }

        for (uint i = 0; i < tokens.length; ++i) {
            if (tokens[i] == tokenOut) {
                amountOut += amounts[i];
                if (recipient != address(this)) {
                    IERC20(tokenOut).safeTransfer(recipient, amounts[i]);
                }
                continue;
            }
            IERC20(tokens[i]).forceApprove(V3SWAP_ROUTER, amounts[i]);
            amountOut += IV3SwapRouter(V3SWAP_ROUTER).exactInputSingle(
                IV3SwapRouter.ExactInputSingleParams({
                    tokenIn: tokens[i],
                    tokenOut: tokenOut,
                    fee: 500,
                    recipient: recipient,
                    amountIn: amounts[i],
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
            );
        }
    }

    function swapForShares(
        address adapter,
        uint amountIn,
        uint minSharesOut
    ) private returns (address balancer, uint shares) {
        balancer = IAdapter(adapter).balancer();
        IERC20(ABRA).approve(V3SWAP_ROUTER, amountIn);

        shares = IV3SwapRouter(V3SWAP_ROUTER).exactInputSingle(
            IV3SwapRouter.ExactInputSingleParams({
                tokenIn: ABRA,
                tokenOut: balancer,
                fee: DEFAULT_SWAP_FEE,
                recipient: address(this),
                amountIn: amountIn,
                amountOutMinimum: minSharesOut,
                sqrtPriceLimitX96: 0
            })
        );
    }

    function redeem(
        address adapter,
        uint shares,
        IRouter.TokenAmount[] memory minAmounts,
        uint32 deadline
    ) private returns (address[] memory tokens, uint[] memory amounts) {
        address balancer = IAdapter(adapter).balancer();
        IERC20(balancer).approve(CADABRA_ROUTER, shares);
        (tokens, amounts) = IRouter(CADABRA_ROUTER).redeem(
            balancer,
            shares,
            IAdapter(adapter),
            address(this),
            minAmounts,
            deadline
        );
    }

}