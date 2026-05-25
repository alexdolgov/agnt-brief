// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import { IERC20 } from "@openzeppelin-contracts-5/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin-contracts-5/token/ERC20/utils/SafeERC20.sol";
import { ERC165Checker } from "@openzeppelin-contracts-5/utils/introspection/ERC165Checker.sol";
import { FixedPointMathLib } from "solady-0.1/utils/FixedPointMathLib.sol";
import { SafeCastLib } from "solady-0.1/utils/SafeCastLib.sol";

import "../UniPoolTypes.sol";
import { IUniPoolFactory } from "../interfaces/IUniPoolFactory.sol";
import { IUniPoolPair } from "../interfaces/IUniPoolPair.sol";
import { IUniPoolSwapCallback } from "../interfaces/IUniPoolSwapCallback.sol";
import { MathUtils } from "./MathUtils.sol";
import { UniPoolPairConstants as Constants } from "./UniPoolPairConstants.sol";
import { UniPoolPairLiquidate as Liquidate } from "./UniPoolPairLiquidate.sol";
import { UniPoolPairState as State } from "./UniPoolPairState.sol";
import { UniPoolPairUtils as Utils } from "./UniPoolPairUtils.sol";

/// @title Functions related to swapping
library UniPoolPairSwap {
    using SafeERC20 for IERC20;
    using FixedPointMathLib for uint256;
    using MathUtils for uint128;
    using SafeCastLib for uint256;

    /**
     * @notice Struct containing the internal swap parameters.
     * @param amountIn The amount of input tokens being provided for the swap.
     * @param amountOut The amount of output tokens to be received from the swap.
     * @param effectiveReserveIn The effective input reserve (max of virtual reserve for inputs and real reserve).
     * @param effectiveReserveOut The effective output reserve (min of virtual reserve for outputs and real reserve).
     * @param isToken0Out True if token0 is the output token, false if token1 is the output token.
     * @param vr The virtual reserves.
     */
    struct SwapNoTransferParams {
        uint128 amountIn;
        uint128 amountOut;
        uint128 effectiveReserveIn;
        uint128 effectiveReserveOut;
        bool isToken0Out;
        VirtualReserves vr;
    }

    /**
     * @notice Holds temporary state during a swap operation.
     * @param tokenIn The token being sent into the pool.
     * @param tokenOut The token being received from the pool.
     * @param reserveIn The real reserves of the input token.
     * @param reserveOut The real reserves of the output token.
     * @param effectiveReserveIn The effective input reserve (max of virtual reserve for inputs and real reserve).
     * @param effectiveReserveOut The effective output reserve (min of virtual reserve for outputs and real reserve).
     * @param newReserveIn The new reserve of the input token after the swap.
     * @param newReserveOut The new reserve of the output token after the swap.
     */
    struct SwapData {
        IERC20 tokenIn;
        IERC20 tokenOut;
        uint128 reserveIn;
        uint128 reserveOut;
        uint128 effectiveReserveIn;
        uint128 effectiveReserveOut;
        uint128 newReserveIn;
        uint128 newReserveOut;
    }

    /**
     * @notice Holds temporary state during a simplified swap operation for repay.
     * @param reserveIn The real reserves of the input token.
     * @param reserveOut The real reserves of the output token.
     * @param effectiveReserveIn The effective input reserve (max of virtual reserve for inputs and real reserve).
     * @param effectiveReserveOut The effective output reserve (min of virtual reserve for outputs and real reserve).
     * @param newReserveIn The new reserve of the input token after the swap.
     * @param newReserveOut The new reserve of the output token after the swap.
     */
    struct SwapNoTransferData {
        uint128 reserveIn;
        uint128 reserveOut;
        uint128 effectiveReserveIn;
        uint128 effectiveReserveOut;
        uint128 newReserveIn;
        uint128 newReserveOut;
    }

    /**
     * @notice Struct to hold swap data return values.
     * @param reserveIn The reserve amount of the input token.
     * @param reserveOut The reserve amount of the output token.
     * @param feeLpBps The liquidity provider fee in basis points.
     * @param feePoolBps The protocol/pool fee in basis points.
     * @param pair The address of the UniPool pair contract for this token pair.
     * @param isToken0Out True if token0 is the swap output, false otherwise.
     * @param vr The virtual reserves.
     */
    struct SwapInfo {
        uint128 reserveIn;
        uint128 reserveOut;
        uint16 feeLpBps;
        uint16 feePoolBps;
        IUniPoolPair pair;
        bool isToken0Out;
        VirtualReserves vr;
    }

    /**
     * @notice Swaps tokens in the pair with MEV protection, using the virtual reserves as required.
     * @param params The swap parameters.
     */
    function swap(SwapParams calldata params) external {
        require(params.amountIn > 0 && params.amountOut > 0, IUniPoolPair.UniPoolPairInvalidAmount());
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        State.UpdatedState memory state = State.updateState();
        Liquidate.liquidate(type(uint256).max, state); // execute all liquidations

        TokenStorage storage tokenIn;
        TokenStorage storage tokenOut;
        SwapData memory data;

        // determine token direction, get reserves, and select appropriate virtual reserves
        // apply max/min logic for MEV protection
        if (params.isToken0Out) {
            (tokenOut, tokenIn) = (s.token0, s.token1);
            (data.reserveIn, data.reserveOut) = (tokenIn.reserve, tokenOut.reserve);

            data.effectiveReserveIn = state.vr.virtualReserve1In.max(data.reserveIn);
            data.effectiveReserveOut = state.vr.virtualReserve0Out.min(data.reserveOut);
        } else {
            (tokenOut, tokenIn) = (s.token1, s.token0);
            (data.reserveIn, data.reserveOut) = (tokenIn.reserve, tokenOut.reserve);

            data.effectiveReserveIn = state.vr.virtualReserve0In.max(data.reserveIn);
            data.effectiveReserveOut = state.vr.virtualReserve1Out.min(data.reserveOut);
        }
        (data.tokenOut, data.tokenIn) = (tokenOut.tokenAddress, tokenIn.tokenAddress);

        require(
            params.to != address(data.tokenIn) && params.to != address(data.tokenOut),
            IUniPoolPair.UniPoolPairInvalidTo()
        );

        // check that output amount doesn't exceed the effective output reserve
        require(params.amountOut < data.effectiveReserveOut, IUniPoolPair.UniPoolPairInsufficientSwapLiquidity());
        // check that output amount doesn't exceed available liquidity (reserve - total borrowed)
        // we make sure there would be 1 wei remaining in the reserves even if all loans would be liquidated, so that
        // reserves do not fall to zero
        require(
            params.amountOut < data.reserveOut - tokenOut.totalBorrowed,
            IUniPoolPair.UniPoolPairInsufficientSwapLiquidity()
        );

        // feePoolBps <= BPS_DIVISOR so it's safe to use the unchecked cast (will be smaller than amountIn)
        uint128 poolFeeAmount = params.amountIn.mulDivUnchecked(s.feePoolBps, Constants.BPS_DIVISOR);
        // since poolFeeAmount <= params.amountIn, the subtraction cannot underflow
        uint128 netAmountIn = params.amountIn.rawSub(poolFeeAmount);
        data.newReserveIn = data.reserveIn + netAmountIn;
        // we ensured the amount out is smaller than the reserve out, subtraction cannot underflow
        data.newReserveOut = data.reserveOut.rawSub(params.amountOut);

        // check if the resulting spread between the "real" price and buy/sell prices exceed the set limit
        uint16 swapPriceToleranceBps = s.swapPriceToleranceBps;
        if (swapPriceToleranceBps != type(uint16).max) {
            _validateSpreads(
                params.isToken0Out,
                data.newReserveIn,
                data.newReserveOut,
                data.effectiveReserveIn != data.reserveIn,
                data.effectiveReserveOut != data.reserveOut,
                netAmountIn,
                params.amountOut,
                state.vr,
                swapPriceToleranceBps
            );
        }

        // SAFETY: overflow checks are done manually where operations are vulnerable
        unchecked {
            // check the K invariant
            // sum of fees cannot exceed MAX_COMBINED_FEES_BPS
            // SAFETY: both values are uint16 so their sum fits in a uint256
            uint256 totalFeeBps = uint256(s.feeLpBps) + s.feePoolBps;
            // calculate the input reserve after swap, accounting for fees (multiplied by BPS_DIVISOR)
            // SAFETY: `totalFeeBps <= MAX_COMBINED_FEES_BPS <= BPS_DIVISOR` so the subtraction cannot underflow
            uint256 reserveInAdjusted = ((uint256(data.effectiveReserveIn) + params.amountIn) * Constants.BPS_DIVISOR)
                - (params.amountIn * totalFeeBps);
            // calculate the output reserve after swap (multiplied by BPS_DIVISOR for consistency)
            // SAFETY: subtraction is safe as we already checked that `params.amountOut < data.effectiveReserveOut`
            // SAFETY: BPS_DIVISOR is 10_000 and the subtraction fits in a uint128, so the result fits in a uint256
            uint256 reserveOutAdjusted = uint256(data.effectiveReserveOut - params.amountOut) * Constants.BPS_DIVISOR;
            // if the most accurate check would overflow a uint256, use a less precise method
            // SAFETY: reserveOutAdjusted cannot be 0 because `amountOut < data.effectiveReserveOut`
            if (reserveInAdjusted > type(uint256).max / reserveOutAdjusted) {
                // check invariant with division to avoid overflowing a uint256
                // SAFETY: `effectiveReserveIn` and `effectiveReserveOut` are uint128 so multiplication cannot overflow
                require(
                    reserveInAdjusted.fullMulDiv(reserveOutAdjusted, Constants.BPS_DIVISOR_SQUARED)
                        >= uint256(data.effectiveReserveIn) * data.effectiveReserveOut,
                    IUniPoolPair.UniPoolPairInvalidK()
                );
            } else {
                // check invariant without division for maximum accuracy
                // SAFETY: `effectiveReserveIn` and `effectiveReserveOut` are uint128 so multiplication cannot overflow
                uint256 effectiveReservesProduct = uint256(data.effectiveReserveIn) * data.effectiveReserveOut;

                // overflow check of `Constants.BPS_DIVISOR_SQUARED * effectiveReservesProduct`
                // if the product of effective reserves overflows but the adjusted reserves don't, the call is breaking
                // the k constant invariant as adjusted reserves must be greater than or equal to the effective reserves
                // SAFETY: `effectiveReservesProduct` cannot be 0 because the reserves cannot be empty
                require(
                    Constants.BPS_DIVISOR_SQUARED <= type(uint256).max / effectiveReservesProduct,
                    IUniPoolPair.UniPoolPairInvalidK()
                );
                // SAFETY: `reserveInAdjusted * reserveOutAdjusted` cannot overflow otherwise we would be in the `if`
                // SAFETY: we already checked `Constants.BPS_DIVISOR_SQUARED * effectiveReservesProduct` cannot overflow
                require(
                    reserveInAdjusted * reserveOutAdjusted >= Constants.BPS_DIVISOR_SQUARED * effectiveReservesProduct,
                    IUniPoolPair.UniPoolPairInvalidK()
                );
            }
        }

        // update storage
        tokenOut.reserve = data.newReserveOut;
        tokenIn.reserve = data.newReserveIn;

        // update same-direction reserves only if imbalanced
        if (data.effectiveReserveIn != data.reserveIn) {
            tokenIn.virtualReserveIn = data.effectiveReserveIn + netAmountIn;
        }
        if (data.effectiveReserveOut != data.reserveOut) {
            tokenOut.virtualReserveOut = data.effectiveReserveOut - params.amountOut;
        }

        tokenIn.feePoolAccumulated += poolFeeAmount;

        // send output token now so it's already available for the msg.sender in the callback
        data.tokenOut.safeTransfer(params.to, params.amountOut);

        // retrieve input tokens
        uint256 balanceBefore = data.tokenIn.balanceOf(address(this));
        if (ERC165Checker.supportsInterface(msg.sender, type(IUniPoolSwapCallback).interfaceId)) {
            IUniPoolSwapCallback(msg.sender).uniPoolSwapCallback(data.tokenIn, params.amountIn, params.callBackData);
        } else {
            data.tokenIn.safeTransferFrom(msg.sender, address(this), params.amountIn);
        }
        require(
            data.tokenIn.balanceOf(address(this)) - balanceBefore == params.amountIn,
            IUniPoolPair.UniPoolPairInsufficientInput()
        );
        emit IUniPoolPair.Swap(msg.sender, params.amountIn, params.amountOut, params.to, !params.isToken0Out);
        emit IUniPoolPair.ReservesUpdated(
            s.token0.reserve,
            s.token1.reserve,
            s.token0.virtualReserveIn,
            s.token0.virtualReserveOut,
            s.token1.virtualReserveIn,
            s.token1.virtualReserveOut,
            Utils._getERC20Storage()._totalSupply
        );
    }

    /**
     * @notice Simplified swap logic for the autoswap and flash loan features.
     * @dev This function performs the normal swap logic but doesn't transfer tokens.
     * @param params The swap parameters.
     */
    function swapNoTransfer(SwapNoTransferParams memory params) internal {
        // input and output amounts are guaranteed to be strictly positive since both are calculated while rounding up
        // in the caller
        // check that output amount doesn't exceed the effective output reserve
        require(params.amountOut < params.effectiveReserveOut, IUniPoolPair.UniPoolPairInsufficientSwapLiquidity());

        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        (TokenStorage storage tokenIn, TokenStorage storage tokenOut) =
            params.isToken0Out ? (s.token1, s.token0) : (s.token0, s.token1);
        SwapNoTransferData memory data;
        (data.reserveIn, data.reserveOut) = (tokenIn.reserve, tokenOut.reserve);

        // check that output amount doesn't exceed available liquidity (reserve - total borrowed)
        // we make sure there would be 1 wei remaining in the reserves even if all loans would be liquidated, so that
        // reserves do not fall to zero
        require(
            params.amountOut < data.reserveOut - tokenOut.totalBorrowed,
            IUniPoolPair.UniPoolPairInsufficientSwapLiquidity()
        );

        // feePoolBps <= BPS_DIVISOR so it's safe to use the unchecked cast (will be smaller than amountIn)
        uint128 poolFeeAmount = params.amountIn.mulDivUnchecked(s.feePoolBps, Constants.BPS_DIVISOR);
        // since poolFeeAmount <= params.amountIn, the subtraction cannot underflow
        uint128 netAmountIn = params.amountIn.rawSub(poolFeeAmount);

        // constant K check is not necessary because we calculated the input amount in the calling function
        data.newReserveIn = data.reserveIn + netAmountIn;
        // we ensured the amount out is smaller than the reserve out, subtraction cannot underflow
        data.newReserveOut = data.reserveOut.rawSub(params.amountOut);

        // check if the resulting spread between the "real" price and buy/sell prices exceed the set limit
        uint16 swapPriceToleranceBps = s.swapPriceToleranceBps;
        if (swapPriceToleranceBps != type(uint16).max) {
            _validateSpreads(
                params.isToken0Out,
                data.newReserveIn,
                data.newReserveOut,
                params.effectiveReserveIn != data.reserveIn,
                params.effectiveReserveOut != data.reserveOut,
                netAmountIn,
                params.amountOut,
                params.vr,
                swapPriceToleranceBps
            );
        }

        // update storage
        tokenIn.reserve = data.newReserveIn;
        tokenOut.reserve = data.newReserveOut;

        // update same-direction reserves only if imbalanced
        if (params.effectiveReserveIn != data.reserveIn) {
            tokenIn.virtualReserveIn = params.effectiveReserveIn + netAmountIn;
        }
        if (params.effectiveReserveOut != data.reserveOut) {
            tokenOut.virtualReserveOut = params.effectiveReserveOut - params.amountOut;
        }

        tokenIn.feePoolAccumulated += poolFeeAmount;

        emit IUniPoolPair.Swap(address(this), params.amountIn, params.amountOut, address(this), !params.isToken0Out);
    }

    /**
     * @notice Calculates the required input amount to receive a given output amount in a swap,
     * taking into account liquidity provider and pool fees.
     * @param reserveIn The reserves of the input token.
     * @param reserveOut The reserves of the output token.
     * @param amountOut The amount of tokens received as output.
     * @param feeLpBps The liquidity provider fee in basis points (bps).
     * @param feePoolBps The protocol/pool fee in basis points (bps).
     * @return amountIn_ The amount of input tokens required for the swap.
     */
    function getAmountIn(uint128 reserveIn, uint128 reserveOut, uint128 amountOut, uint16 feeLpBps, uint16 feePoolBps)
        internal
        pure
        returns (uint128 amountIn_)
    {
        uint128 totalFeeBps = feeLpBps + feePoolBps;
        require(totalFeeBps < Constants.BPS_DIVISOR, IUniPoolPair.UniPoolPairFeeExceedsMax());

        // amountIn = (reserveIn * amountOut * base) / ((reserveOut - amountOut) * (base - fee))
        uint256 denominator = (uint256(reserveOut) - amountOut) * (Constants.BPS_DIVISOR - totalFeeBps);
        amountIn_ = reserveIn.fullMulDivUpChecked(amountOut * Constants.BPS_DIVISOR, denominator);
    }

    /**
     * @notice Calculates the maximum output amount for a given input amount in a swap,
     * taking into account liquidity provider and pool fees.
     * @param reserveIn The reserves of the input token.
     * @param reserveOut The reserves of the output token.
     * @param amountIn The amount of input tokens.
     * @param feeLpBps The liquidity provider fee in basis points (bps).
     * @param feePoolBps The protocol/pool fee in basis points (bps).
     * @return amountOut_ The maximum amount of output tokens received from the swap.
     */
    function getAmountOut(uint128 reserveIn, uint128 reserveOut, uint128 amountIn, uint16 feeLpBps, uint16 feePoolBps)
        internal
        pure
        returns (uint128 amountOut_)
    {
        uint128 totalFeeBps = feeLpBps + feePoolBps;
        require(totalFeeBps < Constants.BPS_DIVISOR, IUniPoolPair.UniPoolPairFeeExceedsMax());

        // amountOut = (amountIn * (base - fee) * reserveOut) / (reserveIn * base + amountIn * (base - fee))
        uint256 amountInWithFee = uint256(amountIn) * (Constants.BPS_DIVISOR - totalFeeBps);
        uint256 denominator = (uint256(reserveIn) * Constants.BPS_DIVISOR) + amountInWithFee;
        amountOut_ = reserveOut.fullMulDivChecked(amountInWithFee, denominator);
    }

    /**
     * @notice Performs chained `getAmountOut` calculations for a given path of tokens.
     * @dev Calculates how much of the final token is received for a given input amount of the first token.
     * @param factory The address of the pair factory.
     * @param amountIn The amount of input tokens for the first swap.
     * @param path An array of token addresses representing the swap route. Must have at least 2 elements.
     * @return amountsOut_ An array of amounts, where amounts[0] is the input amount and amounts[i] is the
     * output of the previous swap. The last element is the final output amount.
     */
    function getAmountsOut(address factory, uint128 amountIn, address[] memory path)
        internal
        view
        returns (uint128[] memory amountsOut_)
    {
        require(path.length >= 2, IUniPoolPair.UniPoolPairInvalidPath());

        amountsOut_ = new uint128[](path.length);
        amountsOut_[0] = amountIn;

        for (uint256 i = 0; i < path.length - 1; ++i) {
            address tokenIn = path[i];
            address tokenOut = path[i + 1];

            SwapInfo memory swapInfo = getSwapInfo(factory, tokenIn, tokenOut);

            amountsOut_[i + 1] = getAmountOut(
                swapInfo.reserveIn, swapInfo.reserveOut, amountsOut_[i], swapInfo.feeLpBps, swapInfo.feePoolBps
            );
        }
    }

    /**
     * @notice Performs chained `getAmountIn` calculations for a given path of tokens.
     * @dev Calculates how much of the first token is required to receive a desired output of the final token.
     * @param factory The address of the pair factory.
     * @param amountOut The desired amount of output tokens from the final swap.
     * @param path An array of token addresses representing the swap route. Must have at least 2 elements.
     * @return amountsIn_ An array of amounts, where the last element is the desired output and amounts[0] is
     * the total required input amount for the entire path.
     */
    function getAmountsIn(address factory, uint128 amountOut, address[] memory path)
        internal
        view
        returns (uint128[] memory amountsIn_)
    {
        require(path.length >= 2, IUniPoolPair.UniPoolPairInvalidPath());

        amountsIn_ = new uint128[](path.length);
        amountsIn_[amountsIn_.length - 1] = amountOut;

        for (uint256 i = path.length - 1; i > 0; --i) {
            address tokenIn = path[i - 1];
            address tokenOut = path[i];
            SwapInfo memory swapInfo = getSwapInfo(factory, tokenIn, tokenOut);

            amountsIn_[i - 1] = getAmountIn(
                swapInfo.reserveIn, swapInfo.reserveOut, amountsIn_[i], swapInfo.feeLpBps, swapInfo.feePoolBps
            );
        }
    }

    /**
     * @notice Retrieves swap-related information for a given pair of tokens.
     * @param factory The factory address.
     * @param tokenIn The input token for the swap.
     * @param tokenOut The output token for the swap.
     * @return swapInfo_ Struct containing swap information.
     */
    function getSwapInfo(address factory, address tokenIn, address tokenOut)
        internal
        view
        returns (SwapInfo memory swapInfo_)
    {
        swapInfo_.pair = IUniPoolPair(IUniPoolFactory(factory).getPair(tokenIn, tokenOut));
        require(address(swapInfo_.pair) != address(0), IUniPoolPair.UniPoolPairPairNotFound());

        (uint128 reserve0, uint128 reserve1, VirtualReserves memory vr, uint16 feeLpBps, uint16 feePoolBps) =
            swapInfo_.pair.getReservesAndFees();

        swapInfo_.feeLpBps = feeLpBps;
        swapInfo_.feePoolBps = feePoolBps;
        swapInfo_.isToken0Out = tokenOut < tokenIn;
        swapInfo_.vr = vr;
        // retrieve effective reserves according to MEV protection
        if (swapInfo_.isToken0Out) {
            // token1 is input, token0 is output
            swapInfo_.reserveIn = vr.virtualReserve1In.max(reserve1);
            swapInfo_.reserveOut = vr.virtualReserve0Out.min(reserve0);
        } else {
            // token0 is input, token1 is output
            swapInfo_.reserveIn = vr.virtualReserve0In.max(reserve0);
            swapInfo_.reserveOut = vr.virtualReserve1Out.min(reserve1);
        }
    }

    /**
     * @notice Retrieves swap-related information directly from storage reserves, bypassing the preview mechanism.
     * @dev Unlike `getSwapInfo`, this function reads raw reserves and virtual reserves from storage. This avoids
     * incorporating "virtual" liquidation effects.
     * @param isToken0Out Whether the output token is token0.
     * @return swapInfo_ Struct containing swap information based on storage reserves.
     */
    function getSwapInfoFromStorage(bool isToken0Out) internal view returns (SwapInfo memory swapInfo_) {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();

        uint128 reserve0 = s.token0.reserve;
        uint128 reserve1 = s.token1.reserve;
        VirtualReserves memory vr = VirtualReserves({
            virtualReserve0In: s.token0.virtualReserveIn,
            virtualReserve0Out: s.token0.virtualReserveOut,
            virtualReserve1In: s.token1.virtualReserveIn,
            virtualReserve1Out: s.token1.virtualReserveOut
        });

        swapInfo_.feeLpBps = s.feeLpBps;
        swapInfo_.feePoolBps = s.feePoolBps;
        swapInfo_.isToken0Out = isToken0Out;
        swapInfo_.vr = vr;
        // retrieve effective reserves according to MEV protection
        if (isToken0Out) {
            // token1 is input, token0 is output
            swapInfo_.reserveIn = vr.virtualReserve1In.max(reserve1);
            swapInfo_.reserveOut = vr.virtualReserve0Out.min(reserve0);
        } else {
            // token0 is input, token1 is output
            swapInfo_.reserveIn = vr.virtualReserve0In.max(reserve0);
            swapInfo_.reserveOut = vr.virtualReserve1Out.min(reserve1);
        }
    }

    /**
     * @dev Checks that the spread between the real price and the buy/sell prices is within the allowed percentage.
     * @param isToken0Out Whether the swap has token0 as output.
     * @param reserveIn The updated input reserve after the current swap.
     * @param reserveOut The updated output reserve after the current swap.
     * @param isVrInUpdated Whether the current swap will update the input virtual reserve.
     * @param isVrOutUpdated Whether the current swap will update the output virtual reserve.
     * @param amountIn The swap's net input amount (after fees).
     * @param amountOut The swap's output amount.
     * @param vr The virtual reserves (before swap).
     * @param swapPriceToleranceBps The maximum allowed spread in basis points.
     */
    function _validateSpreads(
        bool isToken0Out,
        uint256 reserveIn,
        uint256 reserveOut,
        bool isVrInUpdated,
        bool isVrOutUpdated,
        uint256 amountIn,
        uint256 amountOut,
        VirtualReserves memory vr,
        uint16 swapPriceToleranceBps
    ) private pure {
        // price spread validation: |buyPrice - realPrice| / realPrice <= tolerance &&
        //                          |sellPrice - realPrice| / realPrice <= tolerance
        //
        // token0 buy price (either token0/token1 or token1/token0, whichever is most restrictive)
        // |reserve0 * max(vr1In,reserve1) - reserve1 * min(vr0Out,reserve0)|
        //     <= tolerance * reserve1 * min(vr0Out,reserve0)
        // |reserve0 * max(vr1In,reserve1) - reserve1 * min(vr0Out,reserve0)|
        //     <= tolerance * reserve0 * max(vr1In,reserve1)
        //
        // token0 sell price (either token0/token1 or token1/token0, whichever is most restrictive)
        // |reserve1 * max(vr0In,reserve0) - reserve0 * min(vr1Out,reserve1)|
        //     <= tolerance * reserve0 * min(vr1Out,reserve1)
        // |reserve1 * max(vr0In,reserve0) - reserve0 * min(vr1Out,reserve1)|
        //     <= tolerance * reserve1 * max(vr0In,reserve0)
        if (isToken0Out) {
            uint256 max = reserveIn.max(isVrInUpdated ? vr.virtualReserve1In + amountIn : vr.virtualReserve1In);
            uint256 min = reserveOut.min(isVrOutUpdated ? vr.virtualReserve0Out - amountOut : vr.virtualReserve0Out);
            uint256 abs = (reserveOut * max).dist(reserveIn * min);
            uint256 comp = (reserveIn * min).min(reserveOut * max);
            require(
                abs * Constants.BPS_DIVISOR <= swapPriceToleranceBps * comp, IUniPoolPair.UniPoolPairExcessiveSpread()
            );
            max = reserveOut.max(vr.virtualReserve0In);
            min = reserveIn.min(vr.virtualReserve1Out);
            abs = (reserveIn * max).dist(reserveOut * min);
            comp = (reserveOut * min).min(reserveIn * max);
            require(
                abs * Constants.BPS_DIVISOR <= swapPriceToleranceBps * comp, IUniPoolPair.UniPoolPairExcessiveSpread()
            );
        } else {
            uint256 max = reserveOut.max(vr.virtualReserve1In);
            uint256 min = reserveIn.min(vr.virtualReserve0Out);
            uint256 abs = (reserveIn * max).dist(reserveOut * min);
            uint256 comp = (reserveOut * min).min(reserveIn * max);
            require(
                abs * Constants.BPS_DIVISOR <= swapPriceToleranceBps * comp, IUniPoolPair.UniPoolPairExcessiveSpread()
            );
            max = reserveIn.max(isVrInUpdated ? vr.virtualReserve0In + amountIn : vr.virtualReserve0In);
            min = reserveOut.min(isVrOutUpdated ? vr.virtualReserve1Out - amountOut : vr.virtualReserve1Out);
            abs = (reserveOut * max).dist(reserveIn * min);
            comp = (reserveIn * min).min(reserveOut * max);
            require(
                abs * Constants.BPS_DIVISOR <= swapPriceToleranceBps * comp, IUniPoolPair.UniPoolPairExcessiveSpread()
            );
        }
    }
}
