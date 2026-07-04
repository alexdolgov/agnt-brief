// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @notice Topaz Slipstream CL pool (Aerodrome-CL fork). Pools are keyed by
///         `(token0, token1, tickSpacing)` — not by fee.
interface ICLPool {
    function token0() external view returns (address);

    function token1() external view returns (address);

    function tickSpacing() external view returns (int24);

    function fee() external view returns (uint24);

    /// @notice The CLGauge bound to this pool (0x0 until one is set).
    function gauge() external view returns (address);

    /// @notice NonfungiblePositionManager.
    function nft() external view returns (address);

    /// @notice Standard Uniswap-v3 slot0 6-tuple.
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

    /// @notice Total in-range liquidity.
    function liquidity() external view returns (uint128);

    /// @notice Slipstream-only: in-range liquidity that is gauge-staked.
    function stakedLiquidity() external view returns (uint128);

    /// @notice Standard Uniswap-v3 TWAP oracle.
    function observe(uint32[] calldata secondsAgos)
        external
        view
        returns (int56[] memory tickCumulatives, uint160[] memory secondsPerLiquidityCumulativeX128s);

    function increaseObservationCardinalityNext(uint16 observationCardinalityNext) external;
}
