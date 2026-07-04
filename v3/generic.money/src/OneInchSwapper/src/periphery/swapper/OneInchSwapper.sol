// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.29;

import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { ISwapper } from "../../interfaces/ISwapper.sol";
import { IOneInchAggregationRouterLike } from "../../interfaces/IOneInchAggregationRouterLike.sol";

/**
 * @title OneInchSwapper
 * @notice A swapper implementation that integrates with 1inch Aggregation Router for token swaps
 * @dev Implements the ISwapper interface to provide token swapping functionality through 1inch protocol
 */
contract OneInchSwapper is ISwapper {
    using SafeERC20 for IERC20;

    /**
     * @notice The 1inch Aggregation Router contract used for executing swaps
     */
    IOneInchAggregationRouterLike public immutable oneInchRouter;

    /**
     * @notice Thrown when a zero address is provided where a valid address is required
     */
    error ZeroAddress();
    /**
     * @notice Thrown when identical addresses are provided for input and output tokens
     */
    error IdenticalAddresses();
    /**
     * @notice Thrown when the input amount is zero or invalid
     */
    error InsufficientInputAmount();
    /**
     * @notice Thrown when the output amount is below the minimum required
     */
    error InsufficientOutputAmount();
    /**
     * @notice Thrown when the swap does not use the entire input amount
     */
    error PartialFill();
    /**
     * @notice Thrown when the swap description parameters do not match the expected values
     */
    error InvalidSwapDescription();

    /**
     * @notice Initializes the OneInchSwapper with the 1inch router address
     * @param _oneInchRouter The address of the 1inch Aggregation Router contract
     */
    constructor(IOneInchAggregationRouterLike _oneInchRouter) {
        oneInchRouter = _oneInchRouter;
    }

    /**
     * @notice Executes a token swap using the 1inch Aggregation Router
     * @dev This function handles the complete swap process including approval, execution, and validation
     * @param assetIn The address of the input token to be swapped
     * @param amountIn The amount of input tokens to swap
     * @param assetOut The address of the output token to receive
     * @param minAmountOut The minimum amount of output tokens expected
     * @param recipient The address that will receive the output tokens
     * @param swapperParams The transaction data obtained from the 1inch API /swap endpoint response. This parameter
     * contains the encoded swap transaction data that should be passed directly to the 1inch router contract to execute
     * the token swap.
     * @return The actual amount of output tokens received from the swap
     */
    function swap(
        address assetIn,
        uint256 amountIn,
        address assetOut,
        uint256 minAmountOut,
        address recipient,
        bytes calldata swapperParams
    )
        external
        returns (uint256)
    {
        require(assetIn != address(0), ZeroAddress());
        require(assetOut != address(0), ZeroAddress());
        require(assetIn != assetOut, IdenticalAddresses());
        require(amountIn > 0, InsufficientInputAmount());
        require(minAmountOut > 0, InsufficientOutputAmount());

        (address executor, IOneInchAggregationRouterLike.SwapDescription memory desc, bytes memory swapData) =
            abi.decode(swapperParams[4:], (address, IOneInchAggregationRouterLike.SwapDescription, bytes));

        require(desc.srcToken == assetIn, InvalidSwapDescription());
        require(desc.dstToken == assetOut, InvalidSwapDescription());
        require(desc.amount == amountIn, InvalidSwapDescription());

        desc.dstReceiver = payable(recipient);

        IERC20(assetIn).forceApprove(address(oneInchRouter), amountIn);
        (uint256 amountOut, uint256 spentAmount) = oneInchRouter.swap(executor, desc, swapData);

        require(amountOut >= minAmountOut, InsufficientOutputAmount());
        require(spentAmount == amountIn, PartialFill());

        emit Swap(assetIn, assetOut, amountIn, amountOut);

        return amountOut;
    }
}
