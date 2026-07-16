// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

interface IAlgebraPool {
    /// @notice The globalState structure in the pool stores many values but requires only one slot
    /// and is exposed as a single method to save gas when accessed externally.
    /// @dev **important security note: caller should check `unlocked` flag to prevent read-only reentrancy**
    /// @return price The current price of the pool as a sqrt(dToken1/dToken0) Q64.96 value
    /// @return tick The current tick of the pool, i.e. according to the last tick transition that was run
    /// This value may not always be equal to SqrtTickMath.getTickAtSqrtRatio(price) if the price is on a tick boundary
    /// @return lastFee The current (last known) pool fee value in hundredths of a bip, i.e. 1e-6 (so '100' is '0.01%'). May be obsolete if using dynamic fee plugin
    /// @return pluginConfig The current plugin config as bitmap. Each bit is responsible for enabling/disabling the hooks, the last bit turns on/off dynamic fees logic
    /// @return communityFee The community fee represented as a percent of all collected fee in thousandths, i.e. 1e-3 (so 100 is 10%)
    /// @return unlocked Reentrancy lock flag, true if the pool currently is unlocked, otherwise - false

    function globalState() external view returns (
        uint160 price,
        int24 tick,
        uint16 lastFee,
        uint8 pluginConfig,
        uint16 communityFee,
        bool unlocked
    );

    /// @notice Initialize the pool with the initial price
    /// @param sqrtPriceX96 The initial sqrt price of the pool as a Q64.96 value
    function initialize(uint160 sqrtPriceX96) external;

    /// @notice Returns the plugin address
    /// @return plugin The plugin address
    function plugin() external view returns (address);
}