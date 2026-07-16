// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "src/interfaces/utils/integrations/uniswap/IUniswapV3Pool.sol";

interface IKodiakPool is IUniswapV3PoolImmutables, IUniswapV3PoolActions, IUniswapV3PoolDerivedState {
    function positions(bytes32 key)
        external
        view
        returns (
            uint128 liquidity,
            uint256 feeGrowthInside0LastX128,
            uint256 feeGrowthInside1LastX128,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        );

    function slot0()
        external
        view
        returns (
            uint160 sqrtPriceX96,
            int24 tick,
            uint16 observationIndex,
            uint16 observationCardinality,
            uint16 observationCardinalityNext,
            uint32 feeProtocol,
            bool unlocked
        );

    function ticks(int24 tick)
        external
        view
        returns (
            uint128 liquidityGross,
            int128 liquidityNet,
            uint256 feeGrowthOutside0X128,
            uint256 feeGrowthOutside1X128,
            int56 tickCumulativeOutside,
            uint160 secondsPerLiquidityOutsideX128,
            uint32 secondsOutside,
            bool initialized
        );

    
    /// @notice The fee growth as a Q128.128 fees of token0 collected per unit of liquidity for the entire life of the pool
    /// @dev This value can overflow the uint256
    function feeGrowthGlobal0X128() external view returns (uint256);

    /// @notice The fee growth as a Q128.128 fees of token1 collected per unit of liquidity for the entire life of the pool
    /// @dev This value can overflow the uint256
    function feeGrowthGlobal1X128() external view returns (uint256);
}

interface IVault {
    function deposit(uint256, uint256, uint256, uint256, address) external returns (uint256, uint256, uint256);

    function withdraw(uint256, uint256, uint256, address) external returns (uint256, uint256);

    function getTotalAmounts(bool roundUp) external view returns (uint256, uint256);

    function getTotalAmounts() external view returns (uint256, uint256);

    function getBalance0() external view returns (uint256);

    function getBalance1() external view returns (uint256);

    function rebalance() external;

    function checkCanRebalance() external view;

    // state variables
    function wideLower() external view returns (int24);

    function wideUpper() external view returns (int24);

    function baseLower() external view returns (int24);

    function baseUpper() external view returns (int24);

    function limitLower() external view returns (int24);

    function limitUpper() external view returns (int24);

    function pool() external view returns (IKodiakPool);

    function protocolFee() external view returns (uint24);

    function managerFee() external view returns (uint24);

    function manager() external view returns (address);

    function pendingManager() external view returns (address);

    function rebalanceDelegate() external view returns (address);

    function depositDelegate() external view returns (address);

    function maxTotalSupply() external view returns (uint256);

    function wideRangeWeight() external view returns (uint24);

    function wideThreshold() external view returns (int24);

    function period() external view returns (uint32);

    function minTickMove() external view returns (int24);

    function maxTwapDeviation() external view returns (int24);

    function twapDuration() external view returns (uint32);

    function tickSpacing() external view returns (int24);

    function accruedProtocolFees0() external view returns (uint128);

    function accruedProtocolFees1() external view returns (uint128);

    function accruedManagerFees0() external view returns (uint128);

    function accruedManagerFees1() external view returns (uint128);

    function lastTimestamp() external view returns (uint40);

    function lastTick() external view returns (int24);

    function baseThreshold() external view returns (int24);

    function limitThreshold() external view returns (int24);

    function pendingManagerFee() external view returns (uint24);

    function pendingProtocolFee() external view returns (uint24);

    function getPositions() external view returns (int24[2][3] memory);
}