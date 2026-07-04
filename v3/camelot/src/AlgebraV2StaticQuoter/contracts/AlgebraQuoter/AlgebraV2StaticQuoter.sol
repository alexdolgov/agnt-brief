// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;
pragma abicoder v2;

import "./interfaces/IAlgebraV2StaticQuoter.sol";
import "./interfaces/IAlgebraFactory.sol";
import "../../lib/Path.sol";
import "../../lib/PoolAddress.sol";
import "./AlgebraV2QuoterCore.sol";

contract AlgebraV2StaticQuoter is AlgebraV2QuoterCore {
    using LowGasSafeMath for uint256;
    using LowGasSafeMath for int256;
    using SafeCast for uint256;
    using SafeCast for int256;
    using Path for bytes;

    address immutable factory;
    address immutable poolDeployer;

    constructor(address _factory, address _poolDeployer, address _tickLens)
        AlgebraV2QuoterCore(_tickLens)
    {
        factory = _factory;
        poolDeployer = _poolDeployer;
    }

    /// @dev Returns the pool for the given token pair. The pool contract may or may not exist.
    function getPool(address deployer, address tokenA, address tokenB)
        private
        view
        returns (address)
    {
        return PoolAddress.computeAddress(
            poolDeployer, PoolAddress.getPoolKey(deployer, tokenA, tokenB)
        );
    }

    function quoteExactInputSingle(QuoteExactInputSingleParams memory params)
        public
        view
        returns (uint256 amountOut)
    {
        bool zeroForOne = params.tokenIn < params.tokenOut;
        address pool = getPool(params.deployer, params.tokenIn, params.tokenOut);
        require(pool != address(0), "Pool not found");
        (int256 amount0, int256 amount1) = quote(
            pool,
            zeroForOne,
            params.amountIn.toInt256(),
            params.sqrtPriceLimitX96 == 0
                ? (zeroForOne ? TickMath.MIN_SQRT_RATIO + 1 : TickMath.MAX_SQRT_RATIO - 1)
                : params.sqrtPriceLimitX96
        );

        return zeroForOne ? uint256(-amount1) : uint256(-amount0);
    }

    function quoteExactInput(bytes memory path, uint256 amountIn)
        public
        view
        returns (uint256 amountOut)
    {
        uint256 i = 0;
        while (true) {
            (address tokenIn, address deployer, address tokenOut) = path.decodeFirstPool();
            // the outputs of prior swaps become the inputs to subsequent ones
            uint256 _amountOut = quoteExactInputSingle(
                QuoteExactInputSingleParams({
                    tokenIn: tokenIn,
                    tokenOut: tokenOut,
                    deployer: deployer,
                    amountIn: amountIn,
                    sqrtPriceLimitX96: 0
                })
            );
            amountIn = _amountOut;
            i++;

            // decide whether to continue or terminate
            if (path.hasMultiplePools()) path = path.skipToken();
            else return amountIn;
        }
    }
}
