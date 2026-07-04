// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../uniswapv2/interfaces/IUniswapV2Pair.sol";

contract SpotPriceLens {
    uint256 public constant PRECISION = 1e18;

    struct PartOfLp {
        uint256 amount;
        uint256 decimals;
    }

    function consultUniswapV2LPToken(
        IUniswapV2Pair lpToken,
        address[] memory token0Route,
        address[] memory token1Route,
        address chainlinkAddress0,
        address chainlinkAddress1
    ) external view returns (uint256) {
        address token0 = lpToken.token0();
        address token1 = lpToken.token1();

        uint256 token0Part = calculatePartOfLP(lpToken, token0, token0Route);
        uint256 token1Part = calculatePartOfLP(lpToken, token1, token1Route);

        (uint256 price0, uint256 decimals0) = getChainlinkPrice(chainlinkAddress0);
        (uint256 price1, uint256 decimals1) = getChainlinkPrice(chainlinkAddress1);
        uint256 totalSupply = lpToken.totalSupply();
        uint256 decimals = lpToken.decimals();

        uint256 totalAmount = token0Part * price0 * 10**decimals1;
        totalAmount += token1Part * price1 * 10**decimals0;
        return (totalAmount * 10**decimals) / totalSupply / 10**(decimals0 + decimals1);
    }

    /**
     * calculate token price from series of Uniswap pair and chainlink price feed.
     * Once swap route is empty
     * @param token address of token to consult
     * @param pairs swap route to get price
     * @param chainlinkAddress chainlink price feed
     */
    function consultToken(
        address token,
        address[] memory pairs,
        address chainlinkAddress
    ) external view returns (uint256) {
        require(pairs.length >= 1 || chainlinkAddress != address(0), "route empty");

        uint256 amountOut = consultTokenToToken(token, pairs);
        (uint256 price, uint256 decimals) = getChainlinkPrice(chainlinkAddress);
        return (amountOut * price) / (10**decimals);
    }

    // internal function
    function consultTokenToToken(address token, address[] memory pairs) internal view returns (uint256) {
        if (pairs.length == 0) {
            return PRECISION;
        }

        address tokenIn = token;
        address tokenOut = address(0);
        uint256 amountIn = 10**ERC20(token).decimals();

        for (uint256 i = 0; i < pairs.length; i++) {
            IUniswapV2Pair pair = IUniswapV2Pair(pairs[i]);
            (uint112 reserve0, uint112 reserve1, ) = pair.getReserves();

            if (tokenIn == pair.token0()) {
                tokenIn = pair.token1();
                tokenOut = pair.token0();
                amountIn = getAmountOut(amountIn, reserve0, reserve1);
            } else {
                assert(tokenIn == pair.token1());
                amountIn = getAmountOut(amountIn, reserve1, reserve0);
                tokenIn = pair.token0();
                tokenOut = pair.token1();
            }
        }

        return (amountIn * PRECISION) / (10**ERC20(tokenOut).decimals());
    }

    // UniswapV2Libarary.getAmountOut
    function getAmountOut(
        uint256 amountIn,
        uint256 reserveIn,
        uint256 reserveOut
    ) internal pure returns (uint256 amountOut) {
        require(amountIn > 0, "UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT");
        require(reserveIn > 0 && reserveOut > 0, "UniswapV2Library: INSUFFICIENT_LIQUIDITY");
        uint256 amountInWithFee = amountIn * 997;
        uint256 numerator = amountInWithFee * reserveOut;
        uint256 denominator = (reserveIn * 1000) + amountInWithFee;
        amountOut = numerator / denominator;
    }

    function getChainlinkPrice(address chainlinkAddress) internal view returns (uint256, uint256) {
        AggregatorV3Interface chainlink = AggregatorV3Interface(chainlinkAddress);
        (, int256 price, , , ) = chainlink.latestRoundData();
        uint256 decimals = chainlink.decimals();
        return (uint256(price), decimals);
    }

    function calculatePartOfLP(
        IUniswapV2Pair lpToken,
        address underlyingAddress,
        address[] memory token0Route
    ) internal view returns (uint256) {
        ERC20 underlying = ERC20(underlyingAddress);
        uint256 decimals = underlying.decimals();
        uint256 balance = underlying.balanceOf(address(lpToken));
        uint price = consultTokenToToken(address(underlying), token0Route);
        return (balance * price) / 10**decimals;
    }
}
