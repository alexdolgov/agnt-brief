// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IERC20Like {
    function approve(address spender, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

interface IWBNBLike {
    function deposit() external payable;
    function withdraw(uint256 amount) external;
}

interface IAccountOwner {
    function owner() external view returns (address);
}

interface ISwapRouterLike {
    struct ExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        int24 tickSpacing;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 sqrtPriceLimitX96;
    }

    struct ExactInputParams {
        bytes path;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
    }

    function exactInputSingle(ExactInputSingleParams calldata params)
        external
        payable
        returns (uint256 amountOut);

    function exactInput(ExactInputParams calldata params) external payable returns (uint256 amountOut);
}

interface INonfungiblePositionManagerLike {
    struct MintParams {
        address token0;
        address token1;
        int24 tickSpacing;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        address recipient;
        uint256 deadline;
        uint160 sqrtPriceX96;
    }

    struct IncreaseLiquidityParams {
        uint256 tokenId;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    struct DecreaseLiquidityParams {
        uint256 tokenId;
        uint128 liquidity;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    struct CollectParams {
        uint256 tokenId;
        address recipient;
        uint128 amount0Max;
        uint128 amount1Max;
    }

    function positions(uint256 tokenId)
        external
        view
        returns (
            uint96 nonce,
            address operator,
            address token0,
            address token1,
            int24 tickSpacing,
            int24 tickLower,
            int24 tickUpper,
            uint128 liquidity,
            uint256 feeGrowthInside0LastX128,
            uint256 feeGrowthInside1LastX128,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        );

    function mint(MintParams calldata params)
        external
        payable
        returns (uint256 tokenId, uint128 liquidity, uint256 amount0, uint256 amount1);

    function increaseLiquidity(IncreaseLiquidityParams calldata params)
        external
        payable
        returns (uint128 liquidity, uint256 amount0, uint256 amount1);

    function decreaseLiquidity(DecreaseLiquidityParams calldata params)
        external
        payable
        returns (uint256 amount0, uint256 amount1);

    function collect(CollectParams calldata params)
        external
        payable
        returns (uint256 amount0, uint256 amount1);

    function burn(uint256 tokenId) external payable;

    function approve(address to, uint256 tokenId) external;

    function safeTransferFrom(address from, address to, uint256 tokenId) external;
}

interface ICLFactoryLike {
    function getPool(address tokenA, address tokenB, int24 tickSpacing) external view returns (address);
}

interface IVoterLike {
    function gauges(address pool) external view returns (address);
}

interface ICLGaugeLike {
    function deposit(uint256 tokenId) external;
    function withdraw(uint256 tokenId) external;
    function getReward(uint256 tokenId) external;
    function earned(address account, uint256 tokenId) external view returns (uint256);
}

interface ICLPoolLike {
    function token0() external view returns (address);

    function slot0()
        external
        view
        returns (
            uint160 sqrtPriceX96,
            int24 tick,
            uint16 observationIndex,
            uint16 observationCardinality,
            uint16 observationCardinalityNext,
            bool unlocked
        );
}

/// @dev 512-bit multiply-then-divide (Uniswap v3 FullMath, 0.8-compatible). Needed
///      to square `sqrtPriceX96` (up to ~2^160) without overflow when deriving an
///      on-chain spot price.
library FullMath {
    function mulDiv(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            uint256 prod0;
            uint256 prod1;
            assembly {
                let mm := mulmod(a, b, not(0))
                prod0 := mul(a, b)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            if (prod1 == 0) {
                require(denominator > 0);
                assembly {
                    result := div(prod0, denominator)
                }
                return result;
            }

            require(denominator > prod1);

            uint256 remainder;
            assembly {
                remainder := mulmod(a, b, denominator)
            }
            assembly {
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            uint256 twos = denominator & (~denominator + 1);
            assembly {
                denominator := div(denominator, twos)
            }
            assembly {
                prod0 := div(prod0, twos)
            }
            assembly {
                twos := add(div(sub(0, twos), twos), 1)
            }
            prod0 |= prod1 * twos;

            uint256 inv = (3 * denominator) ^ 2;
            inv *= 2 - denominator * inv;
            inv *= 2 - denominator * inv;
            inv *= 2 - denominator * inv;
            inv *= 2 - denominator * inv;
            inv *= 2 - denominator * inv;
            inv *= 2 - denominator * inv;

            result = prod0 * inv;
            return result;
        }
    }
}

/// @title ConnectorBase
/// @notice Shared plumbing for Topaz atomic-primitive connectors. Every connector is
///         `delegatecall`ed by a TopazAccount, so within these functions
///         `address(this)` is the account and all token custody is the account's.
///
///         **Working-balance / atomic-primitive model.** Each connector function is
///         ONE primitive (one state transition); funds stay in the account between
///         legs so later legs of a batch can consume them, and leave only via an
///         explicit `ConnectorToken.transfer` (sweep) leg. Shared helpers:
///         `_resolveAmount` (the `USE_FULL_BALANCE` sentinel — "whatever the account
///         holds right now"), `_minOutFromSpot` / `_minOutFromSpotPath` (on-chain
///         spot-price min-out bounded by a caller-supplied `maxSlippageBps`, for
///         swaps whose input size is only known at execution).
abstract contract ConnectorBase {
    address public immutable WBNB;

    /// @dev Sentinel input amount meaning "use the account's full balance".
    uint256 internal constant USE_FULL_BALANCE = type(uint256).max;

    /// @dev Hard ceiling on the on-chain slippage bound (10%). Off-chain policy
    ///      enforces a tighter default; this is a belt-and-braces backstop.
    uint256 internal constant MAX_SLIPPAGE_BPS = 1000;
    uint256 internal constant BPS = 10_000;
    uint256 internal constant Q96 = 0x1000000000000000000000000; // 2**96

    error RefundFailed();
    error SlippageTooHigh();
    error PathPoolNotFound();

    constructor(address _wbnb) {
        WBNB = _wbnb;
    }

    /// @dev The TopazAccount owner (EOA). Resolves correctly under delegatecall
    ///      because `address(this)` is the account.
    function _owner() internal view returns (address) {
        return IAccountOwner(address(this)).owner();
    }

    /// @dev Resolve a (possibly sentinel) amount against the account's current
    ///      balance of `token`. `USE_FULL_BALANCE` → entire balance; otherwise the
    ///      literal amount, capped at the balance so a stale calldata amount can
    ///      never over-spend a prior leg's smaller output.
    function _resolveAmount(address token, uint256 amount) internal view returns (uint256) {
        uint256 bal = IERC20Like(token).balanceOf(address(this));
        if (amount == USE_FULL_BALANCE || amount > bal) return bal;
        return amount;
    }

    /// @dev Expected output (ignoring fee/impact) for swapping `amountIn` of the
    ///      pool's token0 (zeroForOne=true) or token1 (false), from the pool's
    ///      current `sqrtPriceX96`.
    function _spotOut(address pool, bool zeroForOne, uint256 amountIn) internal view returns (uint256) {
        (uint160 sqrtPriceX96,,,,,) = ICLPoolLike(pool).slot0();
        uint256 sp = uint256(sqrtPriceX96);
        if (zeroForOne) {
            // token1 out ≈ amountIn * (sp / 2^96)^2
            return FullMath.mulDiv(FullMath.mulDiv(amountIn, sp, Q96), sp, Q96);
        }
        // token0 out ≈ amountIn / (sp / 2^96)^2 = amountIn * 2^192 / sp^2
        return FullMath.mulDiv(FullMath.mulDiv(amountIn, Q96, sp), Q96, sp);
    }

    /// @dev Minimum acceptable output for swapping `amountIn` of the pool's token0
    ///      (zeroForOne=true) or token1 (false), from the pool's current
    ///      `sqrtPriceX96` and bounded by `maxSlippageBps`. For runtime-sized swaps
    ///      where the off-chain QuoterV2 amount isn't known.
    function _minOutFromSpot(address pool, bool zeroForOne, uint256 amountIn, uint256 maxSlippageBps)
        internal
        view
        returns (uint256)
    {
        if (maxSlippageBps > MAX_SLIPPAGE_BPS) revert SlippageTooHigh();
        if (amountIn == 0) return 0;
        uint256 expected = _spotOut(pool, zeroForOne, amountIn);
        return (expected * (BPS - maxSlippageBps)) / BPS;
    }

    /// @dev Multi-hop variant: walk an encoded Slipstream `path`
    ///      (`token (int24 tickSpacing) token …`, 20+3-byte stride) compounding the
    ///      per-hop spot expectation, then bound the total by `maxSlippageBps`. Used
    ///      to protect a runtime-sized multi-hop swap whose absolute out isn't
    ///      known off-chain. `factory` resolves each hop's pool.
    function _minOutFromSpotPath(address factory, bytes calldata path, uint256 amountIn, uint256 maxSlippageBps)
        internal
        view
        returns (uint256)
    {
        if (maxSlippageBps > MAX_SLIPPAGE_BPS) revert SlippageTooHigh();
        if (amountIn == 0) return 0;
        uint256 numPools = (path.length - 20) / 23;
        uint256 running = amountIn;
        for (uint256 i; i < numPools;) {
            uint256 off = i * 23;
            address tIn = address(bytes20(path[off:off + 20]));
            int24 spacing = int24(uint24(bytes3(path[off + 20:off + 23])));
            address tOut = address(bytes20(path[off + 23:off + 43]));
            address pool = ICLFactoryLike(factory).getPool(tIn, tOut, spacing);
            if (pool == address(0)) revert PathPoolNotFound();
            running = _spotOut(pool, tIn == ICLPoolLike(pool).token0(), running);
            unchecked {
                ++i;
            }
        }
        return (running * (BPS - maxSlippageBps)) / BPS;
    }

}
