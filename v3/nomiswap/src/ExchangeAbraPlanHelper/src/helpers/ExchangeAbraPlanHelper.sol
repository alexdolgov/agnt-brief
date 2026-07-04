// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IV3SwapRouter} from "src/interfaces/uniswap/IV3SwapRouter.sol";
import {ExchangeAbraHelper} from "./ExchangeAbraHelper.sol";
import {IRouter} from "../interfaces/IRouter.sol";
import "../interfaces/IWETH.sol";

import {removeSelector} from "vulcan/utils.sol";

contract ExchangeAbraPlanHelper is ExchangeAbraHelper {

    using SafeERC20 for IERC20;

    address internal immutable WETH;

    uint constant INV_PHI = 618033988749895000; //1/1.618033988749895
    uint constant PFI = 1618033988749895000; //1.618033988749895

    error ResultEstimates(uint[] amountsIn, uint amountOut);

    error EstimatedValue(uint value);

    enum Operation {
        Buy,
        Sell
    }

    struct FixedSwap {
        address adapter;
        address converter;
        uint rate;
    }

    struct SwapContext {
        Operation operation;
        address tokenIn;
        address tokenOut;
        uint amountIn;
        address adapter;
        address converter;
        FixedSwap[] fixedSwaps;
    }

    constructor(address abra, address weth, address cadabraRouter, address uniswapRouter)
        ExchangeAbraHelper(abra, cadabraRouter, uniswapRouter) {
        WETH = weth;
    }

    function buyAbraPlan(
        uint amountIn,
        address tokenIn,
        address[] calldata adapters,
        address[] calldata converters,
        uint accuracy
    ) external payable returns (uint[] memory amountsIn, uint amountOut) {

        try this.getOptimalRates{value: msg.value}({
            tokenIn: tokenIn,
            tokenOut: ABRA,
            amountIn: amountIn,
            adapters: adapters,
            converters: converters,
            accuracy: accuracy,
            operation: Operation.Buy,
            sender: msg.sender
        }) {}
        catch (bytes memory data) {
            if (msg.value > 0) {
                bool success = payable(msg.sender).send(msg.value);
                if (!success) {
                    //nothing
                }
            }
            require(bytes4(data) == ResultEstimates.selector, "NRE");
            return abi.decode(removeSelector(data), (uint[], uint));
        }
    }

    function sellAbraPlan(
        uint amountIn,
        address tokenOut,
        address[] calldata adapters,
        address[] calldata converters,
        uint accuracy
    ) external payable returns (uint[] memory amountsIn, uint amountOut) {
        try this.getOptimalRates({
            tokenIn: ABRA,
            tokenOut: tokenOut,
            amountIn: amountIn,
            adapters: adapters,
            converters: converters,
            accuracy: accuracy,
            operation: Operation.Sell,
            sender: msg.sender
        }) {}
        catch (bytes memory data) {
            if (msg.value > 0) {
                bool success = payable(msg.sender).send(msg.value);
                if (!success) {
                    //nothing
                }
            }
            require(bytes4(data) == ResultEstimates.selector, "NRE");
            return abi.decode(removeSelector(data), (uint[], uint));
        }
    }

    function getOptimalRates(
        address tokenIn,
        address tokenOut,
        uint amountIn,
        address[] calldata adapters,
        address[] calldata converters,
        uint accuracy,
        Operation operation,
        address sender
    ) external payable {
        _getInput(tokenIn, amountIn, sender);

        SwapContext memory swapContext = SwapContext({
            operation: operation,
            tokenIn: tokenIn,
            tokenOut: tokenOut,
            amountIn: amountIn,
            adapter: address(0),
            converter: address(0),
            fixedSwaps: new FixedSwap[](adapters.length)
        });

        uint amountOut;
        for (uint i = 0; i < adapters.length; ++i) {
            swapContext.adapter = adapters[i];
            swapContext.converter = converters[i];
            uint rate;
            (rate, amountOut) = getRateWithGoldenRatio(
                accuracy,
                quote,
                swapContext
            );
            swapContext.fixedSwaps[i] = FixedSwap({
                adapter: swapContext.adapter,
                converter: swapContext.converter,
                rate: rate
            });
        }

        uint[] memory amountsIn = new uint[](swapContext.fixedSwaps.length);
        uint amountLeft = amountIn;
        for (uint i = 0; i < swapContext.fixedSwaps.length; ++i) {
            uint idx = swapContext.fixedSwaps.length - i - 1;
            FixedSwap memory fixedSwap = swapContext.fixedSwaps[idx];
            amountsIn[idx] = amountLeft * fixedSwap.rate / 1E18;
            amountLeft -= amountsIn[idx];
        }

        revert ResultEstimates(
            amountsIn,
            amountOut
        );
    }

    function _getInput(address tokenIn, uint amountIn, address sender) private {

        if (IERC20(tokenIn).balanceOf(address(this)) >= amountIn) {
            return;
        }
        if (IERC20(tokenIn).allowance(sender, address(this)) >= amountIn) {
            IERC20(tokenIn).safeTransferFrom(sender, address(this), amountIn);
            return;
        }

        require(msg.value > 0, "INP");
        IWETH(WETH).deposit{value: msg.value}();
        IERC20(WETH).forceApprove(V3SWAP_ROUTER, msg.value);

        IV3SwapRouter(V3SWAP_ROUTER).exactOutputSingle(IV3SwapRouter.ExactOutputSingleParams({
            tokenIn: WETH,
            tokenOut: tokenIn,
            fee: 500,
            recipient: address(this),
            amountOut: amountIn,
            amountInMaximum: msg.value,
            sqrtPriceLimitX96: 0
        }));
    }

    function getRateWithGoldenRatio(
        uint accuracy,
        function (uint, SwapContext memory) returns (uint) quoteSwap,
        SwapContext memory swapContext
    ) private returns (uint rate, uint outputValue) {
        uint ll = 0;
        uint uu = 1E18;

        uint ml;
        uint mu;

        uint vl = quoteSwap(ll, swapContext);
        uint vu = quoteSwap(uu, swapContext);

        if (vl > vu) {
            ml = uu;
            while (vl > vu) {
                if ((vl - vu) * 1E18 < vl * accuracy) {
                    return (ll, vl);
                }
                uu = ml;
                ml = ll + (uu-ll) * (1E18 - INV_PHI) / 1E18;
                vu = quoteSwap(ml, swapContext);
            }
            vl = vu;
            mu = ll + (uu-ll) * (INV_PHI) / 1E18;
            vu = quoteSwap(mu, swapContext);
        } else {
            mu = ll;
            while (vu > vl) {
                if ((vu - vl) * 1E18 < vu * accuracy) {
                    return (uu, vu);
                }
                ll = mu;
                mu = ll + (uu-ll) * INV_PHI / 1E18;
                vl = quoteSwap(mu, swapContext);
            }
            vu = vl;
            ml = ll + (uu-ll) * (1E18 - INV_PHI) / 1E18;
            vl = quoteSwap(ml, swapContext);
        }
        while (true) {
            if (vl > vu) {
                if ((vl - vu) * 1E18 < vl * accuracy) {
                    return (ml, vl);
                }
                uu = mu;
                mu = ml;
                vu = vl;
                ml = ll + (uu-ll) * (1E18 - INV_PHI) / 1E18;
                vl = quoteSwap(ml, swapContext);
            } else {
                if ((vu - vl) * 1E18 < vu * accuracy) {
                    return (mu, vu);
                }
                ll = ml;
                ml = mu;
                vl = vu;
                mu = ll + (uu-ll) * (INV_PHI) / 1E18;
                vu = quoteSwap(mu, swapContext);
            }
        }
    }

    function quote(uint rate, SwapContext memory swapContext) private returns (uint total) {
        try this.processOperation(rate, swapContext) {}
        catch (bytes memory reason) {
            require(bytes4(reason) == EstimatedValue.selector, "NR");
            return abi.decode(removeSelector(reason), (uint));
        }
    }

    function processOperation(uint rate, SwapContext calldata swapContext) external returns (uint total) {
        return swapContext.operation == Operation.Buy
        ? estimateBuyAbra(rate, swapContext)
        : estimateSellAbra(rate, swapContext);
    }


    function estimateBuyAbra(uint rate, SwapContext calldata swapContext) private returns (uint amountOut) {
        uint amountIn = swapContext.amountIn * rate / 1E18;
        amountOut += callBuyAbraWithInvest(swapContext, swapContext.adapter, swapContext.converter, amountIn);
        uint amountInLeft = swapContext.amountIn - amountIn;

        for (uint i = 0; i < swapContext.fixedSwaps.length; ++i) {
            FixedSwap memory fixedSwap = swapContext.fixedSwaps[swapContext.fixedSwaps.length - i - 1];
            if (fixedSwap.adapter == address(0)) {
                continue;
            }
            amountIn = amountInLeft * fixedSwap.rate / 1E18;
            amountOut += callBuyAbraWithInvest(swapContext, fixedSwap.adapter, fixedSwap.converter, amountIn);
            amountInLeft -= amountIn;
        }

        if (amountInLeft > 0) {
            amountOut += swapDirect(
                swapContext.tokenIn,
                swapContext.tokenOut,
                amountInLeft,
                address(this),
                0
            );
        }

        revert EstimatedValue(amountOut);
    }

    function callBuyAbraWithInvest(
        SwapContext memory swapContext,
        address adapter,
        address converter,
        uint amountIn
    ) private returns (uint amountOut) {
        if (amountIn == 0) {
            return 0;
        }

        try this.buyAbraWithInvest({
            adapter: adapter,
            tokenIn: swapContext.tokenIn,
            amountIn: amountIn,
            converter: converter,
            recipient: address(this),
            deadline: uint32(block.timestamp + 1)
        }) returns (uint out){ amountOut = out;}
        catch (bytes memory) {
            return 0;
        }
    }

    function estimateSellAbra(uint rate, SwapContext calldata swapContext) private returns (uint amountOut) {

        uint amountIn = swapContext.amountIn * rate / 1E18;
        amountOut += callSellAbraWithRedeem(swapContext, swapContext.adapter, swapContext.converter, amountIn);

        uint amountInLeft = swapContext.amountIn - amountIn;

        for (uint i = 0; i < swapContext.fixedSwaps.length; ++i) {
            FixedSwap memory fixedSwap = swapContext.fixedSwaps[swapContext.fixedSwaps.length - i - 1];
            if (fixedSwap.adapter == address(0)) {
                continue;
            }
            amountIn = amountInLeft * fixedSwap.rate / 1E18;
            amountOut += callSellAbraWithRedeem(swapContext, fixedSwap.adapter, fixedSwap.converter, amountIn);
            amountInLeft -= amountIn;
        }

        if (amountInLeft > 0) {
            uint amount = swapDirect(
                swapContext.tokenIn,
                swapContext.tokenOut,
                amountInLeft,
                address(this),
                0
            );
            amountOut += amount;
        }

        revert EstimatedValue(amountOut);
    }

    function callSellAbraWithRedeem(
        SwapContext memory swapContext,
        address adapter,
        address converter,
        uint amountIn
    ) private returns (uint amountOut) {
        if (amountIn == 0) {
            return 0;
        }

        try this.sellAbraWithRedeem({
            adapter: adapter,
            amountIn: amountIn,
            tokenOut: swapContext.tokenOut,
            converter: converter,
            recipient: address(this),
            minAmounts: new IRouter.TokenAmount[](0),
            deadline: uint32(block.timestamp + 1)
        }) returns (uint ramountOut){
            amountOut = ramountOut;
        }
        catch (bytes memory) {
            return 0;
        }
    }

}