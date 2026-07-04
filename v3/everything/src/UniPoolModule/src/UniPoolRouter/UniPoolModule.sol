// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.8.0;

import { IERC20 } from "@openzeppelin-contracts-5/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin-contracts-5/token/ERC20/utils/SafeERC20.sol";
import { ERC165, IERC165 } from "@openzeppelin-contracts-5/utils/introspection/ERC165.sol";
import { IAllowanceTransfer } from "permit2/src/interfaces/IAllowanceTransfer.sol";
import { FixedPointMathLib } from "solady-0.1/utils/FixedPointMathLib.sol";
import { SafeCastLib } from "solady-0.1/utils/SafeCastLib.sol";

import "../UniPoolTypes.sol";
import { IUniPoolFactory } from "../interfaces/IUniPoolFactory.sol";
import { IUniPoolMintCallback } from "../interfaces/IUniPoolMintCallback.sol";
import { IUniPoolModule } from "../interfaces/IUniPoolModule.sol";
import { IUniPoolPair } from "../interfaces/IUniPoolPair.sol";
import { IUniPoolPairBorrowCallback } from "../interfaces/IUniPoolPairBorrowCallback.sol";
import { IUniPoolPairRepayCallback } from "../interfaces/IUniPoolPairRepayCallback.sol";
import { IUniPoolSwapCallback } from "../interfaces/IUniPoolSwapCallback.sol";
import { MathUtils } from "../libraries/MathUtils.sol";
import { Path } from "../libraries/Path.sol";
import { UniPoolPairSwap } from "../libraries/UniPoolPairSwap.sol";

/**
 * @title UniPool Module
 * @notice Abstract contract implementing the logic for interacting with UniPool.
 */
abstract contract UniPoolModule is IUniPoolModule, ERC165 {
    using Path for bytes;
    using Path for address[];
    using SafeERC20 for IERC20;
    using SafeCastLib for uint256;
    using FixedPointMathLib for uint256;
    using MathUtils for uint128;

    /// @notice The address of the factory contract.
    IUniPoolFactory internal immutable FACTORY;

    /// @notice The address of the permit2 contract.
    IAllowanceTransfer private immutable PERMIT2;

    /// @dev Used as placeholder for cached amount in exact output swaps.
    uint128 private constant DEFAULT_AMOUNT_IN_CACHED = type(uint128).max;

    /// @dev Temporary variable for caching amountIn in exact output multi-hop swaps to check slippage.
    uint128 private _amountInCached = DEFAULT_AMOUNT_IN_CACHED;

    /// @notice Modifier to ensure only known `UniPoolPairs` can call callbacks.
    modifier onlyValidPair() {
        _onlyValidPair();
        _;
    }

    /**
     * @param factory The address of the UniPool factory contract.
     * @param permit2 The address of the Permit2 contract.
     */
    constructor(IUniPoolFactory factory, IAllowanceTransfer permit2) {
        require(address(factory) != address(0), UniPoolModuleZeroAddress());
        require(address(permit2) != address(0), UniPoolModuleZeroAddress());
        FACTORY = factory;
        PERMIT2 = permit2;
    }

    /// @inheritdoc IUniPoolMintCallback
    function uniPoolMintCallback(MintCallbackData calldata callbackData) external {
        require(msg.sender == FACTORY.getPair(callbackData.token0, callbackData.token1), UniPoolModuleInvalidPair());
        (PaymentType payment, address payer) = abi.decode(callbackData.data, (PaymentType, address));

        if (payment == PaymentType.Transfer) {
            require(payer == address(this)); // sanity check
            IERC20(callbackData.token0).safeTransfer(msg.sender, callbackData.amount0);
            IERC20(callbackData.token1).safeTransfer(msg.sender, callbackData.amount1);
        } else if (payment == PaymentType.TransferFrom) {
            IERC20(callbackData.token0).safeTransferFrom(payer, msg.sender, callbackData.amount0);
            IERC20(callbackData.token1).safeTransferFrom(payer, msg.sender, callbackData.amount1);
        } else if (payment == PaymentType.Permit2) {
            IAllowanceTransfer.AllowanceTransferDetails[] memory transferDetails =
                new IAllowanceTransfer.AllowanceTransferDetails[](2);
            transferDetails[0] = IAllowanceTransfer.AllowanceTransferDetails({
                from: payer, to: msg.sender, amount: callbackData.amount0.toUint160(), token: callbackData.token0
            });
            transferDetails[1] = IAllowanceTransfer.AllowanceTransferDetails({
                from: payer, to: msg.sender, amount: callbackData.amount1.toUint160(), token: callbackData.token1
            });
            PERMIT2.transferFrom(transferDetails);
        } else {
            revert UniPoolModuleInvalidPaymentType();
        }
    }

    /// @inheritdoc IUniPoolSwapCallback
    function uniPoolSwapCallback(IERC20 token, uint128 amount, bytes calldata data) external {
        require(amount > 0, UniPoolModuleInvalidAmount());

        SwapCallbackData memory decodedData = abi.decode(data, (SwapCallbackData));

        (address tokenIn, address tokenOut) = decodedData.path.decodeFirstPool();
        require(msg.sender == FACTORY.getPair(tokenIn, tokenOut), UniPoolModuleInvalidPair());

        // determine if this is exact input or exact output based on path direction
        bool isExactInput = address(token) == tokenIn;

        if (isExactInput) {
            // single swap and can directly transfer tokens
            _pay(token, decodedData.payer, msg.sender, amount, decodedData.payment);
        } else {
            // multi-hop swaps
            if (decodedData.path.hasMultiplePools()) {
                // continue with next hop in reverse direction
                bytes memory nextPath = decodedData.path.skipToken();
                _swapExactOut(
                    amount,
                    msg.sender,
                    SwapCallbackData({ path: nextPath, payer: decodedData.payer, payment: decodedData.payment })
                );
            } else {
                // this is the final hop, cache the input amount for the final slippage check and pay
                _amountInCached = amount;
                _pay(token, decodedData.payer, msg.sender, amount, decodedData.payment);
            }
        }
    }

    /// @inheritdoc IUniPoolPairBorrowCallback
    function uniPoolPairBorrowCallback(
        IERC20 token,
        uint256 amount,
        address to,
        uint256 loanFee,
        address feeTo,
        bytes calldata data
    ) external onlyValidPair {
        (PaymentType payment, address payer) = abi.decode(data, (PaymentType, address));
        if (payment == PaymentType.Transfer) {
            require(payer == address(this)); // sanity check
            token.safeTransfer(to, amount);
            token.safeTransfer(feeTo, loanFee);
        } else if (payment == PaymentType.TransferFrom) {
            token.safeTransferFrom(payer, to, amount);
            token.safeTransferFrom(payer, feeTo, loanFee);
        } else if (payment == PaymentType.Permit2) {
            IAllowanceTransfer.AllowanceTransferDetails[] memory transferDetails =
                new IAllowanceTransfer.AllowanceTransferDetails[](2);
            transferDetails[0] = IAllowanceTransfer.AllowanceTransferDetails({
                from: payer, to: to, amount: amount.toUint160(), token: address(token)
            });
            transferDetails[1] = IAllowanceTransfer.AllowanceTransferDetails({
                from: payer, to: feeTo, amount: loanFee.toUint160(), token: address(token)
            });
            PERMIT2.transferFrom(transferDetails);
        } else {
            revert UniPoolModuleInvalidPaymentType();
        }
    }

    /// @inheritdoc IUniPoolPairRepayCallback
    function uniPoolPairRepayCallback(IERC20 token, uint256 amount, address to, bytes calldata data)
        external
        onlyValidPair
    {
        (PaymentType payment, address payer) = abi.decode(data, (PaymentType, address));
        _pay(token, payer, to, amount, payment);
    }

    /// @inheritdoc ERC165
    function supportsInterface(bytes4 interfaceId) public view override(ERC165, IERC165) returns (bool supports_) {
        if (
            interfaceId == type(IUniPoolMintCallback).interfaceId
                || interfaceId == type(IUniPoolSwapCallback).interfaceId
                || interfaceId == type(IUniPoolPairBorrowCallback).interfaceId
                || interfaceId == type(IUniPoolPairRepayCallback).interfaceId
        ) {
            return true;
        }
        supports_ = super.supportsInterface(interfaceId);
    }

    /**
     * @notice Adds liquidity to the pool.
     * @param params Liquidity addition params.
     * @param payment The payment type to use.
     * @param payer The address of the payer.
     */
    function _addLiquidity(AddLiquidityParams memory params, PaymentType payment, address payer) internal {
        require(params.to != address(0), UniPoolModuleZeroAddress());
        IUniPoolPair pair = IUniPoolPair(FACTORY.getPair(params.tokenA, params.tokenB));
        require(pair != IUniPoolPair(address(0)), UniPoolModuleInvalidPair());

        (uint256 reserve0, uint256 reserve1) = pair.getReserves();

        bool isOrdered = _isOrdered(params.tokenA, params.tokenB);
        if (reserve0 != 0) {
            (uint256 reserveA, uint256 reserveB) = isOrdered ? (reserve0, reserve1) : (reserve1, reserve0);

            // SAFETY: reserves are uint128 in storage
            // forge-lint: disable-next-line(unsafe-typecast)
            uint128 amountBOptimal = params.amountADesired.mulDivChecked(uint128(reserveB), reserveA);
            if (amountBOptimal <= params.amountBDesired) {
                require(amountBOptimal >= params.amountBMin, UniPoolModuleSlippageTooHigh());
                params.amountBDesired = amountBOptimal;
            } else {
                // SAFETY: reserves are uint128 in storage
                // forge-lint: disable-next-line(unsafe-typecast)
                uint128 amountAOptimal = params.amountBDesired.mulDivChecked(uint128(reserveA), reserveB);
                require(
                    amountAOptimal <= params.amountADesired && amountAOptimal >= params.amountAMin,
                    UniPoolModuleSlippageTooHigh()
                );
                params.amountADesired = amountAOptimal;
            }
        }

        (uint128 amount0, uint128 amount1, uint256 vr0MaxDelta, uint256 vr1MaxDelta) = isOrdered
            ? (params.amountADesired, params.amountBDesired, params.vrAMaxDelta, params.vrBMaxDelta)
            : (params.amountBDesired, params.amountADesired, params.vrBMaxDelta, params.vrAMaxDelta);
        pair.mint(amount0, amount1, params.to, abi.encode(payment, payer));

        VirtualReserves memory vr = pair.getVirtualReserves();
        // SAFETY: adding uint128 reserves and amounts together cannot overflow uint256
        reserve0 = reserve0.rawAdd(amount0);
        reserve1 = reserve1.rawAdd(amount1);
        require(reserve0.dist(vr.virtualReserve0In) <= vr0MaxDelta, UniPoolModuleSpreadTooHigh());
        require(reserve0.dist(vr.virtualReserve0Out) <= vr0MaxDelta, UniPoolModuleSpreadTooHigh());
        require(reserve1.dist(vr.virtualReserve1In) <= vr1MaxDelta, UniPoolModuleSpreadTooHigh());
        require(reserve1.dist(vr.virtualReserve1Out) <= vr1MaxDelta, UniPoolModuleSpreadTooHigh());
    }

    /**
     * @notice Removes liquidity from the pool.
     * @param params Liquidity removal params.
     * @param payment The payment type to use.
     * @param payer Address paying for the liquidity.
     * @return amountA_ Amount of token A received.
     * @return amountB_ Amount of token B received.
     */
    function _removeLiquidity(RemoveLiquidityParams memory params, PaymentType payment, address payer)
        internal
        returns (uint256 amountA_, uint256 amountB_)
    {
        require(params.to != address(0), UniPoolModuleZeroAddress());
        IUniPoolPair pair = IUniPoolPair(FACTORY.getPair(params.tokenA, params.tokenB));
        require(pair != IUniPoolPair(address(0)), UniPoolModuleInvalidPair());

        _pay(IERC20(address(pair)), payer, address(pair), params.liquidity, payment);
        (uint256 amount0, uint256 amount1) = pair.burn(params.to);

        (amountA_, amountB_) = _isOrdered(params.tokenA, params.tokenB) ? (amount0, amount1) : (amount1, amount0);

        require(amountA_ >= params.amountAMin, UniPoolModuleSlippageTooHigh());
        require(amountB_ >= params.amountBMin, UniPoolModuleSlippageTooHigh());
    }

    /**
     * @notice Creates a new UniPool pair for the given tokens.
     * @param tokenA The address of token A.
     * @param tokenB The address of token B.
     */
    function _createPair(address tokenA, address tokenB) internal {
        FACTORY.createPair(tokenA, tokenB);
    }

    /**
     * @notice Swaps an exact amount of input tokens for as many output tokens as possible.
     * @param amountIn The amount of input tokens to send.
     * @param amountOutMin The minimum amount of output tokens that must be received.
     * @param path An array of token addresses representing the swap route.
     * @param to The address that will receive the output tokens.
     * @param payment The payment type to use.
     * @param payer Address paying for the swap.
     * @return amountOut_ The amounts of tokens for each step in the swap path.
     */
    function _swapExactTokensForTokens(
        uint128 amountIn,
        uint128 amountOutMin,
        address[] memory path,
        address to,
        PaymentType payment,
        address payer
    ) internal returns (uint128 amountOut_) {
        require(amountIn > 0, UniPoolModuleInvalidAmount());
        require(to != address(0), UniPoolModuleZeroAddress());
        require(path.length >= 2, UniPoolModuleInvalidPath());

        bytes memory bytesPath = path.encodeTightlyPacked();

        while (true) {
            bool hasMultiplePools = bytesPath.hasMultiplePools();

            // the outputs of prior swaps become the inputs to subsequent ones
            amountIn = _swapExactIn(
                amountIn,
                // for intermediate swaps, router custodies funds
                hasMultiplePools ? address(this) : to,
                SwapCallbackData({ path: bytesPath.getFirstPool(), payer: payer, payment: payment })
            );

            // multihop swap or final swap
            if (hasMultiplePools) {
                payer = address(this); // at this point, the caller has paid
                payment = PaymentType.Transfer; // subsequent hops use router's balance
                bytesPath = bytesPath.skipToken();
            } else {
                // amountOut of the final swap is the last amountIn captured in the loop
                amountOut_ = amountIn;
                break;
            }
        }
        require(amountOut_ >= amountOutMin, UniPoolModuleInsufficientOutputAmount());
    }

    /**
     * @notice Swaps as few input tokens as possible for an exact amount of output tokens.
     * @dev Works backwards through the path to determine required inputs for each hop.
     * For multi-hop swaps, the callback recursively calls this function with the next path segment.
     * @param amountOut The exact amount of output tokens desired from the final swap.
     * @param amountInMax The maximum amount of input tokens willing to be spent.
     * @param path An array of token addresses representing the swap route.
     * @param to The address that will receive the final output tokens.
     * @param payment The payment type to use.
     * @param payer Address paying for the swap.
     * @return amountIn_ The actual amount of input tokens required for the entire swap path.
     */
    function _swapTokensForExactTokens(
        uint128 amountOut,
        uint128 amountInMax,
        address[] memory path,
        address to,
        PaymentType payment,
        address payer
    ) internal returns (uint128 amountIn_) {
        require(amountOut > 0, UniPoolModuleInvalidAmount());
        require(to != address(0), UniPoolModuleZeroAddress());
        require(path.length >= 2, UniPoolModuleInvalidPath());

        // path needs to be reversed as to get the amountIn that we will ask from next pair hop
        bytes memory reversedPath = path.encodeTightlyPackedReversed();

        amountIn_ =
            _swapExactOut(amountOut, to, SwapCallbackData({ path: reversedPath, payer: payer, payment: payment }));

        // amountIn is only the right one for one hop, otherwise we need cached amountIn from callback
        if (path.length > 2) {
            amountIn_ = _amountInCached;
        }

        require(amountIn_ <= amountInMax, UniPoolModuleExcessiveInputAmount());
        _amountInCached = DEFAULT_AMOUNT_IN_CACHED; // reset cache
    }

    /**
     * @notice Function to execute exact input swap.
     * @param amountIn The exact amount to swap in.
     * @param to The recipient of the swap output.
     * @param data The callback data containing path, payer and payment info.
     * @return amountOut_ The amount received from the swap.
     */
    function _swapExactIn(uint128 amountIn, address to, SwapCallbackData memory data)
        private
        returns (uint128 amountOut_)
    {
        (address tokenIn, address tokenOut) = data.path.decodeFirstPool();
        UniPoolPairSwap.SwapInfo memory swapInfo = UniPoolPairSwap.getSwapInfo(address(FACTORY), tokenIn, tokenOut);

        amountOut_ = UniPoolPairSwap.getAmountOut(
            swapInfo.reserveIn, swapInfo.reserveOut, amountIn, swapInfo.feeLpBps, swapInfo.feePoolBps
        );
        SwapParams memory params = SwapParams({
            amountIn: amountIn,
            amountOut: amountOut_,
            isToken0Out: swapInfo.isToken0Out,
            to: to,
            callBackData: abi.encode(data)
        });
        swapInfo.pair.swap(params);
    }

    /**
     * @notice Function to execute exact output swap.
     * @param amountOut The exact amount to receive.
     * @param to The recipient of the swap output.
     * @param data The callback data containing path, payer and payment info.
     * @return amountIn_ The amount required to be paid for the swap.
     */
    function _swapExactOut(uint128 amountOut, address to, SwapCallbackData memory data)
        private
        returns (uint128 amountIn_)
    {
        // reversed for exact output
        (address tokenOut, address tokenIn) = data.path.decodeFirstPool();
        UniPoolPairSwap.SwapInfo memory swapInfo = UniPoolPairSwap.getSwapInfo(address(FACTORY), tokenIn, tokenOut);

        amountIn_ = UniPoolPairSwap.getAmountIn(
            swapInfo.reserveIn, swapInfo.reserveOut, amountOut, swapInfo.feeLpBps, swapInfo.feePoolBps
        );
        SwapParams memory params = SwapParams({
            amountIn: amountIn_,
            amountOut: amountOut,
            isToken0Out: swapInfo.isToken0Out,
            to: to,
            callBackData: abi.encode(data)
        });
        swapInfo.pair.swap(params);
    }

    /**
     * @notice Handles token payments.
     * @param token The token to pay.
     * @param payer The address that must pay.
     * @param to The address that will receive payment.
     * @param value The amount to pay.
     * @param payment The payment type to use.
     */
    function _pay(IERC20 token, address payer, address to, uint256 value, PaymentType payment) private {
        if (payment == PaymentType.Transfer) {
            require(payer == address(this)); // sanity check
            token.safeTransfer(to, value);
        } else if (payment == PaymentType.TransferFrom) {
            token.safeTransferFrom(payer, to, value);
        } else if (payment == PaymentType.Permit2) {
            PERMIT2.transferFrom(payer, to, value.toUint160(), address(token));
        } else {
            revert UniPoolModuleInvalidPaymentType();
        }
    }

    /**
     * @notice Determines whether tokenA is ordered before tokenB.
     * @param tokenA The address of the first token.
     * @param tokenB The address of the second token.
     * @return isOrdered_ A boolean indicating if tokenA is less than tokenB.
     */
    function _isOrdered(address tokenA, address tokenB) private pure returns (bool isOrdered_) {
        isOrdered_ = tokenA < tokenB;
    }

    /**
     * @dev Verifies that the caller is a legitimate pair by checking if the pair exists in the factory.
     * This prevents unauthorized contracts from calling UniPool callbacks.
     */
    function _onlyValidPair() private view {
        (IERC20 token0, IERC20 token1) = IUniPoolPair(msg.sender).getTokens();
        require(FACTORY.getPair(address(token0), address(token1)) == msg.sender, UniPoolModuleInvalidPair());
    }
}
