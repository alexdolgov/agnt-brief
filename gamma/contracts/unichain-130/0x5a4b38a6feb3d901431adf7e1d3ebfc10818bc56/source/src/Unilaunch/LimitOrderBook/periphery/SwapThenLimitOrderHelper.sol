// SPDX-License-Identifier: BSL
pragma solidity ^0.8.24;

import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {IUnlockCallback} from "v4-core/interfaces/callback/IUnlockCallback.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {SwapParams} from "v4-core/types/PoolOperation.sol";
import {BalanceDelta} from "v4-core/types/BalanceDelta.sol";
import {Currency, CurrencyLibrary} from "v4-core/types/Currency.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {ILimitOrderManager} from "../interfaces/ILimitOrderManager.sol";
import {TickLibrary} from "../libraries/TickLibrary.sol";
import {CurrencySettler} from "../libraries/CurrencySettler.sol";

/// @title SwapThenLimitOrderHelper
/// @notice Swaps exact input up to a price limit and places a single limit order with the leftover.
contract SwapThenLimitOrderHelper is IUnlockCallback, ReentrancyGuard {
    using PoolIdLibrary for PoolKey;
    using CurrencyLibrary for Currency;
    using CurrencySettler for Currency;
    using SafeERC20 for IERC20;

    error InvalidMsgValue();
    error InvalidRecipient();
    error InvalidPriceLimit();
    error SlippageExceeded();
    error RefundFailed();
    error ZeroAmountIn();

    uint160 private constant MIN_SQRT_PRICE_LIMIT = TickMath.MIN_SQRT_PRICE + 1;
    uint160 private constant MAX_SQRT_PRICE_LIMIT = TickMath.MAX_SQRT_PRICE - 1;

    struct SwapCallbackData {
        PoolKey key;
        bool zeroForOne;
        int256 amountSpecified;
        uint160 sqrtPriceLimitX96;
        bytes hookData;
        address swapRecipient;
    }

    IPoolManager public immutable poolManager;
    ILimitOrderManager public immutable limitOrderManager;

    constructor(IPoolManager _poolManager, ILimitOrderManager _limitOrderManager) {
        require(address(_poolManager) != address(0) && address(_limitOrderManager) != address(0));
        poolManager = _poolManager;
        limitOrderManager = _limitOrderManager;
    }

    /// @notice Swap exact input until sqrtPriceLimitX96 and place a limit order with leftover input.
    /// @param key Pool key for the swap and the limit order.
    /// @param zeroForOne Swap direction (true = currency0 -> currency1).
    /// @param amountIn Exact input amount to attempt in the swap.
    /// @param amountOutMin Minimum acceptable output amount from the swap.
    /// @param sqrtPriceLimitX96 Price limit to stop the swap.
    /// @param hookData Hook data for the swap.
    /// @param swapRecipient Recipient of the swap output.
    /// @param orderRecipient Owner of the resulting limit order.
    /// @return delta Balance delta from the swap.
    /// @return orderResult Result of the limit order creation (zeroed if no leftover).
    /// @return amountInUsed Actual input used by the swap.
    /// @return leftover Remaining input used for the limit order.
    function swapThenLimit(
        PoolKey calldata key,
        bool zeroForOne,
        uint256 amountIn,
        uint256 amountOutMin,
        uint160 sqrtPriceLimitX96,
        bytes calldata hookData,
        address swapRecipient,
        address orderRecipient
    )
        external
        payable
        nonReentrant
        returns (
            BalanceDelta delta,
            ILimitOrderManager.CreateOrderResult memory orderResult,
            uint256 amountInUsed,
            uint256 leftover
        )
    {
        if (amountIn == 0) revert ZeroAmountIn();
        if (swapRecipient == address(0) || orderRecipient == address(0)) revert InvalidRecipient();
        if (sqrtPriceLimitX96 <= MIN_SQRT_PRICE_LIMIT || sqrtPriceLimitX96 >= MAX_SQRT_PRICE_LIMIT) {
            revert InvalidPriceLimit();
        }
        _validatePriceDirection(key, zeroForOne, sqrtPriceLimitX96);

        _pullInput(zeroForOne ? key.currency0 : key.currency1, amountIn);

        delta = _swapExactIn(key, zeroForOne, amountIn, sqrtPriceLimitX96, hookData, swapRecipient);

        (amountInUsed, ) = _getSwapAmounts(delta, zeroForOne);
        if (amountInUsed > amountIn) revert SlippageExceeded();

        if (_getAmountOut(delta, zeroForOne) < amountOutMin) revert SlippageExceeded();

        leftover = amountIn - amountInUsed;
        if (leftover == 0) {
            return (delta, orderResult, amountInUsed, leftover);
        }

        orderResult = _placeLimitOrder(key, zeroForOne, sqrtPriceLimitX96, leftover, orderRecipient);
    }

    /// @notice Swap exact input until sqrtPriceLimitX96 and refund any leftover to the swap recipient.
    /// @param key Pool key for the swap.
    /// @param zeroForOne Swap direction (true = currency0 -> currency1).
    /// @param amountIn Exact input amount to attempt in the swap.
    /// @param amountOutMin Minimum acceptable output amount from the swap.
    /// @param sqrtPriceLimitX96 Price limit to stop the swap.
    /// @param hookData Hook data for the swap.
    /// @param swapRecipient Recipient of the swap output.
    /// @return delta Balance delta from the swap.
    /// @return amountInUsed Actual input used by the swap.
    /// @return leftover Remaining input refunded to the swap recipient.
    function swapThenRefund(
        PoolKey calldata key,
        bool zeroForOne,
        uint256 amountIn,
        uint256 amountOutMin,
        uint160 sqrtPriceLimitX96,
        bytes calldata hookData,
        address swapRecipient
    ) external payable nonReentrant returns (BalanceDelta delta, uint256 amountInUsed, uint256 leftover) {
        if (amountIn == 0) revert ZeroAmountIn();
        if (swapRecipient == address(0)) revert InvalidRecipient();
        if (sqrtPriceLimitX96 <= MIN_SQRT_PRICE_LIMIT || sqrtPriceLimitX96 >= MAX_SQRT_PRICE_LIMIT) {
            revert InvalidPriceLimit();
        }
        _validatePriceDirection(key, zeroForOne, sqrtPriceLimitX96);

        _pullInput(zeroForOne ? key.currency0 : key.currency1, amountIn);

        delta = _swapExactIn(key, zeroForOne, amountIn, sqrtPriceLimitX96, hookData, swapRecipient);

        (amountInUsed, ) = _getSwapAmounts(delta, zeroForOne);
        if (amountInUsed > amountIn) revert SlippageExceeded();

        if (_getAmountOut(delta, zeroForOne) < amountOutMin) revert SlippageExceeded();

        leftover = amountIn - amountInUsed;
        if (leftover == 0) {
            return (delta, amountInUsed, leftover);
        }

        Currency inputCurrency = zeroForOne ? key.currency0 : key.currency1;
        if (inputCurrency.isAddressZero()) {
            (bool success, ) = swapRecipient.call{value: leftover}("");
            if (!success) revert RefundFailed();
        } else {
            IERC20(Currency.unwrap(inputCurrency)).safeTransfer(swapRecipient, leftover);
        }
    }

    function unlockCallback(bytes calldata data) external returns (bytes memory) {
        if (msg.sender != address(poolManager)) revert InvalidRecipient();
        SwapCallbackData memory cb = abi.decode(data, (SwapCallbackData));

        BalanceDelta delta = poolManager.swap(
            cb.key,
            SwapParams({
                zeroForOne: cb.zeroForOne,
                amountSpecified: cb.amountSpecified,
                sqrtPriceLimitX96: cb.sqrtPriceLimitX96
            }),
            cb.hookData
        );

        (uint256 inputAmount, uint256 outputAmount) = _getSwapAmounts(delta, cb.zeroForOne);

        Currency inputCurrency = cb.zeroForOne ? cb.key.currency0 : cb.key.currency1;
        Currency outputCurrency = cb.zeroForOne ? cb.key.currency1 : cb.key.currency0;

        if (inputAmount > 0) {
            inputCurrency.settle(poolManager, address(this), inputAmount, false);
        }
        if (outputAmount > 0) {
            outputCurrency.take(poolManager, cb.swapRecipient, outputAmount, false);
        }

        return abi.encode(delta);
    }

    function _swapExactIn(
        PoolKey calldata key,
        bool zeroForOne,
        uint256 amountIn,
        uint160 sqrtPriceLimitX96,
        bytes calldata hookData,
        address swapRecipient
    ) private returns (BalanceDelta delta) {
        delta = abi.decode(
            poolManager.unlock(
                abi.encode(
                    SwapCallbackData({
                        key: key,
                        zeroForOne: zeroForOne,
                        amountSpecified: -int256(amountIn),
                        sqrtPriceLimitX96: sqrtPriceLimitX96,
                        hookData: hookData,
                        swapRecipient: swapRecipient
                    })
                )
            ),
            (BalanceDelta)
        );
    }

    function _placeLimitOrder(
        PoolKey calldata key,
        bool zeroForOne,
        uint160 sqrtPriceLimitX96,
        uint256 amount,
        address recipient
    ) private returns (ILimitOrderManager.CreateOrderResult memory orderResult) {
        Currency inputCurrency = zeroForOne ? key.currency0 : key.currency1;
        int24 targetTick = _selectTargetTick(key, zeroForOne, sqrtPriceLimitX96);

        if (inputCurrency.isAddressZero()) {
            orderResult = limitOrderManager.createLimitOrder{value: amount}(
                zeroForOne,
                targetTick,
                amount,
                key,
                recipient
            );
        } else {
            _ensureAllowance(IERC20(Currency.unwrap(inputCurrency)), address(limitOrderManager), amount);
            orderResult = limitOrderManager.createLimitOrder(
                zeroForOne,
                targetTick,
                amount,
                key,
                recipient
            );
        }
    }

    function _pullInput(Currency inputCurrency, uint256 amountIn) private {
        if (inputCurrency.isAddressZero()) {
            if (msg.value != amountIn) revert InvalidMsgValue();
        } else {
            if (msg.value != 0) revert InvalidMsgValue();
            IERC20(Currency.unwrap(inputCurrency)).safeTransferFrom(msg.sender, address(this), amountIn);
        }
    }

    function _ensureAllowance(IERC20 token, address spender, uint256 amount) private {
        uint256 allowance = token.allowance(address(this), spender);
        if (allowance < amount) {
            token.forceApprove(spender, amount);
        }
    }

    function _validatePriceDirection(
        PoolKey calldata key,
        bool zeroForOne,
        uint160 sqrtPriceLimitX96
    ) private view {
        (uint160 sqrtPriceX96,,,) = StateLibrary.getSlot0(poolManager, key.toId());
        if (zeroForOne) {
            if (sqrtPriceLimitX96 >= sqrtPriceX96) revert InvalidPriceLimit();
        } else {
            if (sqrtPriceLimitX96 <= sqrtPriceX96) revert InvalidPriceLimit();
        }
    }

    function _getSwapAmounts(BalanceDelta delta, bool zeroForOne)
        private
        pure
        returns (uint256 inputAmount, uint256 outputAmount)
    {
        if (zeroForOne) {
            inputAmount = uint256(int256(-delta.amount0()));
            outputAmount = uint256(int256(delta.amount1()));
        } else {
            inputAmount = uint256(int256(-delta.amount1()));
            outputAmount = uint256(int256(delta.amount0()));
        }
    }

    function _getAmountOut(BalanceDelta delta, bool zeroForOne) private pure returns (uint256) {
        if (zeroForOne) {
            return uint256(int256(delta.amount1()));
        }
        return uint256(int256(delta.amount0()));
    }

    function _selectTargetTick(
        PoolKey calldata key,
        bool isToken0,
        uint160 sqrtPriceLimitX96
    ) private view returns (int24 targetTick) {
        PoolId poolId = key.toId();
        (uint160 sqrtPriceX96, int24 currentTick,,) = StateLibrary.getSlot0(poolManager, poolId);
        int24 limitTick = TickMath.getTickAtSqrtPrice(sqrtPriceLimitX96);

        int24 roundedTarget = TickLibrary.getRoundedTargetTick(limitTick, isToken0, key.tickSpacing);
        int24 roundedCurrent = TickLibrary.getRoundedCurrentTick(currentTick, isToken0, key.tickSpacing);
        if (isToken0 && currentTick % key.tickSpacing == 0) {
            if (sqrtPriceX96 == TickMath.getSqrtPriceAtTick(currentTick)) {
                roundedCurrent = currentTick;
            }
        }

        if (isToken0) {
            if (roundedTarget <= roundedCurrent) {
                roundedTarget = roundedCurrent + key.tickSpacing;
            }
        } else {
            if (roundedTarget >= roundedCurrent) {
                roundedTarget = roundedCurrent - key.tickSpacing;
            }
        }

        int24 minTick = TickMath.minUsableTick(key.tickSpacing);
        int24 maxTick = TickMath.maxUsableTick(key.tickSpacing);
        if (roundedTarget < minTick || roundedTarget > maxTick) revert InvalidPriceLimit();

        return roundedTarget;
    }
}
