pragma solidity 0.7.6;
pragma abicoder v2;

import {UniswapV3Pool} from "./UniswapV3Pool.sol";
import './interfaces/IERC20Minimal.sol';

contract SwapMinter {
    UniswapV3Pool pool;
    IERC20Minimal token0;
    IERC20Minimal token1;

    struct MinterStats {
        uint128 liq;
        uint128 tL_liqGross;
        int128 tL_liqNet;
        uint128 tU_liqGross;
        int128 tU_liqNet;
    }

    function setPool(UniswapV3Pool _pool, IERC20Minimal _token0, IERC20Minimal _token1) public {
        pool = _pool;
        token0 = _token0;
        token1 = _token1;
    }

    function uniswapV3MintCallback(
        uint256 amount0,
        uint256 amount1,
        bytes calldata data
    ) external {
        if (amount0 > 0) token0.transfer(address(pool), amount0);
        if (amount1 > 0) token1.transfer(address(pool), amount1);
    }

    function getTickLiquidityVars(
        int24 _tickLower,
        int24 _tickUpper
    ) internal view returns (uint128, int128, uint128, int128) {
        (uint128 tL_liqGross, int128 tL_liqNet, , , , , , ) = pool.ticks(
            _tickLower
        );
        (uint128 tU_liqGross, int128 tU_liqNet, , , , , , ) = pool.ticks(
            _tickUpper
        );
        return (tL_liqGross, tL_liqNet, tU_liqGross, tU_liqNet);
    }

    function getStats(
        int24 _tickLower,
        int24 _tickUpper
    ) internal view returns (MinterStats memory stats) {
        (
            uint128 tL_lg,
            int128 tL_ln,
            uint128 tU_lg,
            int128 tU_ln
        ) = getTickLiquidityVars(_tickLower, _tickUpper);
        return MinterStats(pool.liquidity(), tL_lg, tL_ln, tU_lg, tU_ln);
    }

    function _mint(
        address recipient,
        int24 tickLower,
        int24 tickUpper,
        uint128 amount,
        bytes memory data
    ) private returns (MinterStats memory bfre, MinterStats memory aftr) 
    {
        bfre = getStats(tickLower, tickUpper);
        pool.mint(recipient, tickLower, tickUpper, amount, data);
        aftr = getStats(tickLower, tickUpper);
    }

     function mint(
        address recipient,
        int24 tickLower,
        int24 tickUpper,
        uint128 amount,
        bytes calldata data
    ) external returns (MinterStats memory bfre, MinterStats memory aftr) {
        return _mint(recipient, tickLower, tickUpper, amount, data);
    }


    function pureMint(
        int24 tickLower,
        int24 tickUpper,
        uint128 amount
    ) external returns (MinterStats memory bfre, MinterStats memory aftr) {
        return _mint(address(this), tickLower, tickUpper, amount, new bytes(0));
    }

    function doBurn(
        int24 _tickLower,
        int24 _tickUpper,
        uint128 _amount
    ) public returns (MinterStats memory bfre, MinterStats memory aftr) {
        bfre = getStats(_tickLower, _tickUpper);
        pool.burn(_tickLower, _tickUpper, _amount);
        aftr = getStats(_tickLower, _tickUpper);
    }
}

contract Swapper {
    UniswapV3Pool pool;
    IERC20Minimal token0;
    IERC20Minimal token1;

    struct SwapperStats {
        uint128 liq;
        uint256 feeGrowthGlobal0X128;
        uint256 feeGrowthGlobal1X128;
        uint256 bal0;
        uint256 bal1;
        int24 tick;
    }

    function setPool(UniswapV3Pool _pool, IERC20Minimal _token0, IERC20Minimal _token1) public {
        pool = _pool;
        token0 = _token0;
        token1 = _token1;
    }

    function uniswapV3SwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) external {
        if (amount0Delta > 0) token0.transfer(address(pool), uint256(amount0Delta));
        if (amount1Delta > 0) token1.transfer(address(pool), uint256(amount1Delta));
    }

    function getStats() internal view returns (SwapperStats memory stats) {
        (, int24 currentTick, , , , , ) = pool.slot0();
        return
            SwapperStats(
                pool.liquidity(),
                pool.feeGrowthGlobal0X128(),
                pool.feeGrowthGlobal1X128(),
                token0.balanceOf(address(this)),
                token1.balanceOf(address(this)),
                currentTick
            );
    }

    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes calldata data
    ) external returns (SwapperStats memory bfre, SwapperStats memory aftr) {
        return _swap(recipient, zeroForOne, amountSpecified, sqrtPriceLimitX96, data);
    }

    function pureSwap(
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96
    ) external returns (SwapperStats memory bfre, SwapperStats memory aftr) {
        return _swap(msg.sender, zeroForOne, amountSpecified, sqrtPriceLimitX96, new bytes(0));
    }

    function _swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes memory data
    ) private returns (SwapperStats memory bfre, SwapperStats memory aftr) {
        bfre = getStats();
        pool.swap(
            recipient,
            zeroForOne,
            amountSpecified,
            sqrtPriceLimitX96,
            data
        );
        aftr = getStats();
    }
}
