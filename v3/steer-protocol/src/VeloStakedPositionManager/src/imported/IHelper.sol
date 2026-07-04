// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.27;
pragma abicoder v2;

interface IHelper {
    struct NewLiquidityPositions {
        int24 lowerTick;
        int24 upperTick;
        uint16 relativeWeight;
    }

    struct LiquidityPositions {
        int24[] lowerTick;
        int24[] upperTick;
        uint16[] relativeWeight;
    }

    function getShares(
        uint256 _totalSupply,
        uint256 total0,
        uint256 total1,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min,
        uint256 minShares
    )
        external
        pure
        returns (uint256 shares, uint256 amount0Used, uint256 amount1Used);

    function uniVolatilityCheck(
        int24 currentTick,
        uint32 _twapInterval,
        int24 _maxTickChange,
        address pool
    ) external view;

    function algebraVolatilityCheck(
        int24 currentTick,
        uint32 _twapInterval,
        int24 _maxTickChange,
        address pool
    ) external view;

    function poolsharkCheckVolatility(
        int24 currentTick,
        uint32 _twapInterval,
        int24 _maxTickChange,
        address pool
    ) external view;

    function getUniswapVaultBalances(
        uint256 bal0,
        uint256 bal1,
        NewLiquidityPositions[] memory positions,
        address pool,
        address feeManager
    ) external view returns (uint256 total0, uint256 total1);

    function getAlgebraVaultBalances(
        uint256 total0,
        uint256 total1,
        IHelper.NewLiquidityPositions[] memory positions,
        address pool,
        address feeManager,
        uint160 sqrtPriceX96
    ) external view returns (uint256, uint256);
}
