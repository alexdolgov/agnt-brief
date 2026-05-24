// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {IPermit2} from "@permit2/interfaces/IPermit2.sol";
import {IRouter} from "@balancer-v3-monorepo/interfaces/vault/IRouter.sol";
import {IQuoterV2} from "../interfaces/IQuoterV2.sol";
import {ISwapRouter} from "../interfaces/ISwapRouter.sol";

/**
 * @title BeetsShadowArbitrage
 * @notice A contract to check for arbitrage opportunities between Shadow V3 and Beets V3
 */
contract BeetsShadowArbitrage {
    IQuoterV2 public immutable shadowQuoter;
    IRouter public immutable beetsRouter;
    ISwapRouter public immutable shadowRouter;
    IPermit2 public constant permit2 = IPermit2(0x000000000022D473030F116dDEE9F6B43aC78BA3);

    struct ArbitrageOpportunity {
        uint256 shadowToBeetsProfit;
        uint256 beetsToShadowProfit;
        bool hasOpportunity;
    }

    // Events
    event ArbitrageExecuted(
        address indexed tokenA,
        address indexed tokenB,
        address indexed executor,
        uint256 amountIn,
        uint256 amountOut,
        uint256 profit,
        bool isShadowToBeets
    );

    /**
     * @notice Constructor
     * @param _shadowQuoter Address of Shadow V3 Quoter contract
     * @param _beetsRouter Address of Beets V3 Router contract
     * @param _shadowRouter Address of Shadow V3 Router contract
     */
    constructor(address _shadowQuoter, address _beetsRouter, address _shadowRouter) {
        shadowQuoter = IQuoterV2(_shadowQuoter);
        beetsRouter = IRouter(_beetsRouter);
        shadowRouter = ISwapRouter(_shadowRouter);
    }

    /**
     * @notice Check for arbitrage opportunities between Shadow V3 and Beets V3
     * @param tokenA First token in the pair
     * @param tokenB Second token in the pair
     * @param beetsPool Address of the Beets V3 pool
     * @param shadowTickSpacing Shadow V3 pool tick spacing
     * @param amountIn Amount of tokenA to use for the check
     * @return opportunity Arbitrage opportunity details
     */
    function checkArbitrageOpportunity(
        address tokenA,
        address tokenB,
        address beetsPool,
        int24 shadowTickSpacing,
        uint256 amountIn
    ) external returns (ArbitrageOpportunity memory opportunity) {
        // Path 1: Shadow V3 -> Beets V3
        // Step 1: Get output amount from Shadow for tokenA -> tokenB
        uint256 shadowOut = _getShadowExactInputQuote(tokenA, tokenB, shadowTickSpacing, amountIn);
        // Step 2: Get output amount from Beets for tokenB -> tokenA
        uint256 beetsOut = _getBeetsExactInputQuote(beetsPool, IERC20(tokenB), IERC20(tokenA), shadowOut);
        // Path 2: Beets V3 -> Shadow V3
        // Step 1: Get output amount from Beets for tokenA -> tokenB
        uint256 beetsDirectOut = _getBeetsExactInputQuote(beetsPool, IERC20(tokenA), IERC20(tokenB), amountIn);
        // Step 2: Get output amount from Shadow for tokenB -> tokenA
        uint256 shadowDirectOut = _getShadowExactInputQuote(tokenB, tokenA, shadowTickSpacing, beetsDirectOut);
        // Calculate potential profits
        uint256 shadowToBeetsProfit = 0;
        if (beetsOut > amountIn) {
            shadowToBeetsProfit = beetsOut - amountIn;
        }

        uint256 beetsToShadowProfit = 0;
        if (shadowDirectOut > amountIn) {
            beetsToShadowProfit = shadowDirectOut - amountIn;
        }

        // Determine if there's an arbitrage opportunity
        bool hasOpportunity = shadowToBeetsProfit > 0 || beetsToShadowProfit > 0;

        return ArbitrageOpportunity({
            shadowToBeetsProfit: shadowToBeetsProfit,
            beetsToShadowProfit: beetsToShadowProfit,
            hasOpportunity: hasOpportunity
        });
    }

    /**
     * @notice Execute an arbitrage opportunity
     * @param tokenA First token in the pair
     * @param tokenB Second token in the pair
     * @param beetsPool Address of the Beets V3 pool
     * @param shadowTickSpacing Shadow V3 pool tick spacing
     * @param amountIn Amount of tokenA to use for the arbitrage
     * @param isShadowToBeets Whether to execute Shadow -> Beets path (true) or Beets -> Shadow path (false)
     * @param minProfitAmount Minimum profit amount to execute the arbitrage (to protect against price changes)
     * @param deadline Timestamp after which the transaction will revert
     * @return profit The actual profit amount from the arbitrage
     */
    function executeArbitrage(
        address tokenA,
        address tokenB,
        address beetsPool,
        int24 shadowTickSpacing,
        uint256 amountIn,
        bool isShadowToBeets,
        uint256 minProfitAmount,
        uint256 deadline
    ) external returns (uint256 profit) {
        require(deadline >= block.timestamp, "BeetsShadowArbitrage: EXPIRED");
        require(amountIn > 0, "BeetsShadowArbitrage: INVALID_AMOUNT");

        // Transfer tokens from the caller to this contract
        IERC20(tokenA).transferFrom(msg.sender, address(this), amountIn);

        // Execute the arbitrage based on the path
        uint256 finalAmount;
        if (isShadowToBeets) {
            finalAmount =
                _executeShadowToBeetsArbitrage(tokenA, tokenB, beetsPool, shadowTickSpacing, amountIn, deadline);
        } else {
            finalAmount =
                _executeBeetsToShadowArbitrage(tokenA, tokenB, beetsPool, shadowTickSpacing, amountIn, deadline);
        }

        // Calculate profit
        require(finalAmount > amountIn, "BeetsShadowArbitrage: NO_PROFIT");
        profit = finalAmount - amountIn;

        // Check if profit meets the minimum requirement
        require(profit >= minProfitAmount, "BeetsShadowArbitrage: INSUFFICIENT_PROFIT");

        // Emit event
        emit ArbitrageExecuted(tokenA, tokenB, msg.sender, amountIn, finalAmount, profit, isShadowToBeets);

        // Transfer the original amount + profit back to the caller
        IERC20(tokenA).transfer(msg.sender, amountIn + profit);

        return profit;
    }

    /**
     * @notice Execute Shadow -> Beets arbitrage path
     * @param tokenA First token in the pair
     * @param tokenB Second token in the pair
     * @param beetsPool Address of the Beets V3 pool
     * @param shadowTickSpacing Shadow V3 pool tick spacing
     * @param amountIn Amount of tokenA to use
     * @param deadline Transaction deadline
     * @return finalAmount The final amount of tokenA received
     */
    function _executeShadowToBeetsArbitrage(
        address tokenA,
        address tokenB,
        address beetsPool,
        int24 shadowTickSpacing,
        uint256 amountIn,
        uint256 deadline
    ) internal returns (uint256 finalAmount) {
        // Approve Shadow Router to spend tokenA
        IERC20(tokenA).approve(address(shadowRouter), amountIn);

        // Step 1: Swap tokenA for tokenB on Shadow
        uint256 amountOut = _swapOnShadow(tokenA, tokenB, shadowTickSpacing, amountIn, address(this), deadline);

        // Approve Beets Router to spend tokenB
        IERC20(tokenB).approve(address(permit2), amountOut);
        permit2.approve(address(tokenB), address(beetsRouter), type(uint160).max, type(uint48).max);

        // Step 2: Swap tokenB back to tokenA on Beets
        finalAmount = beetsRouter.swapSingleTokenExactIn(
            beetsPool,
            IERC20(tokenB),
            IERC20(tokenA),
            amountOut,
            0, // No minimum amount out (we'll check profit at the end)
            deadline,
            false, // wethIsEth
            ""
        );

        return finalAmount;
    }

    /**
     * @notice Execute Beets -> Shadow arbitrage path
     * @param tokenA First token in the pair
     * @param tokenB Second token in the pair
     * @param beetsPool Address of the Beets V3 pool
     * @param shadowTickSpacing Shadow V3 pool tick spacing
     * @param amountIn Amount of tokenA to use
     * @param deadline Transaction deadline
     * @return finalAmount The final amount of tokenA received
     */
    function _executeBeetsToShadowArbitrage(
        address tokenA,
        address tokenB,
        address beetsPool,
        int24 shadowTickSpacing,
        uint256 amountIn,
        uint256 deadline
    ) internal returns (uint256 finalAmount) {
        // Approve Beets Router to spend tokenA
        IERC20(tokenA).approve(address(permit2), amountIn);
        permit2.approve(address(tokenA), address(beetsRouter), type(uint160).max, type(uint48).max);

        // Step 1: Swap tokenA for tokenB on Beets
        uint256 amountOut = beetsRouter.swapSingleTokenExactIn(
            beetsPool,
            IERC20(tokenA),
            IERC20(tokenB),
            amountIn,
            0, // No minimum amount out (we'll check profit at the end)
            deadline,
            false, // wethIsEth
            ""
        );

        // Approve Shadow Router to spend tokenB
        IERC20(tokenB).approve(address(shadowRouter), amountOut);

        // Step 2: Swap tokenB back to tokenA on Shadow
        finalAmount = _swapOnShadow(tokenB, tokenA, shadowTickSpacing, amountOut, address(this), deadline);

        return finalAmount;
    }

    /**
     * @notice Swap tokens on Shadow V3
     * @param tokenIn Input token address
     * @param tokenOut Output token address
     * @param tickSpacing Pool tick spacing
     * @param amountIn Input token amount
     * @param recipient Address to receive the output tokens
     * @param deadline Transaction deadline
     * @return amountOut Output token amount
     */
    function _swapOnShadow(
        address tokenIn,
        address tokenOut,
        int24 tickSpacing,
        uint256 amountIn,
        address recipient,
        uint256 deadline
    ) internal returns (uint256 amountOut) {
        // Create the params for the exactInputSingle function
        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
            tokenIn: tokenIn,
            tokenOut: tokenOut,
            tickSpacing: tickSpacing,
            recipient: recipient,
            deadline: deadline,
            amountIn: amountIn,
            amountOutMinimum: 0, // No minimum amount out (we'll check profit at the end)
            sqrtPriceLimitX96: 0
        });

        // Execute the swap
        amountOut = shadowRouter.exactInputSingle(params);
        return amountOut;
    }

    /**
     * @notice Get exact input quote from Shadow V3
     * @param tokenIn Input token address
     * @param tokenOut Output token address
     * @param tickSpacing Pool tick spacing
     * @param amountIn Input token amount
     * @return amountOut Output token amount
     */
    function _getShadowExactInputQuote(address tokenIn, address tokenOut, int24 tickSpacing, uint256 amountIn)
        internal
        returns (uint256 amountOut)
    {
        IQuoterV2.QuoteExactInputSingleParams memory params = IQuoterV2.QuoteExactInputSingleParams({
            tokenIn: tokenIn,
            tokenOut: tokenOut,
            amountIn: amountIn,
            tickSpacing: tickSpacing,
            sqrtPriceLimitX96: 0
        });

        (amountOut,,,) = shadowQuoter.quoteExactInputSingle(params);
        return amountOut;
    }

    /**
     * @notice Get exact input quote from Beets V3
     * @param pool Beets pool address
     * @param tokenIn Input token
     * @param tokenOut Output token
     * @param amountIn Input token amount
     * @return amountOut Output token amount
     */
    function _getBeetsExactInputQuote(address pool, IERC20 tokenIn, IERC20 tokenOut, uint256 amountIn)
        internal
        returns (uint256 amountOut)
    {
        return beetsRouter.querySwapSingleTokenExactIn(pool, tokenIn, tokenOut, amountIn, address(this), "0x");
    }
}
