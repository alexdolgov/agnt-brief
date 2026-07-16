// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

/// @title ISwapRegistry
/// @notice Registry for supported single-hop swap paths used by TaxProcessor for dividend token conversions.
///         The TaxProcessor uses this registry to look up pool/DEX parameters when swapping quote tokens
///         into a custom dividend token during dispatch().
interface ISwapRegistry {
    /// @notice Pool type enum to distinguish between AMM versions
    enum PoolType {
        V2, // Uniswap V2-style constant product pool
        V3 // Uniswap V3-style concentrated liquidity pool

    }

    /// @notice Swap configuration for a token pair
    struct SwapInfo {
        /// @notice The liquidity pool address for this token pair
        address pool;
        /// @notice The DEX identifier (maps to MultiDexRouter dexId)
        uint8 dexId;
        /// @notice The fee tier for the pool (relevant for V3 pools; ignored for V2)
        uint24 feeTier;
        /// @notice Whether this is a V2 or V3 pool
        PoolType poolType;
        /// @notice Whether this swap path is currently active
        bool supported;
    }

    /// @notice Check if a swap from `fromToken` to `toToken` is registered and active
    /// @param fromToken The source token address
    /// @param toToken The destination token address
    /// @return True if the swap path is registered and active
    function isSwapSupported(address fromToken, address toToken) external view returns (bool);

    /// @notice Get the full swap configuration for a token pair
    /// @param fromToken The source token address
    /// @param toToken The destination token address
    /// @return info The swap configuration (pool, dex, fee tier, pool type, supported flag)
    function getSwapInfo(address fromToken, address toToken) external view returns (SwapInfo memory info);

    /// @notice Returns the MultiDexRouter address used for executing swaps
    /// @dev The TaxProcessor calls this to obtain the router address for dividend token conversion.
    ///      This is a storage variable (not immutable) so it can be updated via upgrade or setter.
    function multiDexRouter() external view returns (address);

    /// @notice Register or update a swap path for a token pair
    /// @dev Only callable by the owner.
    /// @param fromToken The source token address
    /// @param toToken The destination token address
    /// @param pool The liquidity pool address
    /// @param dexId The DEX identifier (must match MultiDexRouter's DEX IDs)
    /// @param feeTier The fee tier for the pool (ignored for V2 pools)
    /// @param poolType Whether this is a V2 or V3 pool
    function setSwapPath(
        address fromToken,
        address toToken,
        address pool,
        uint8 dexId,
        uint24 feeTier,
        PoolType poolType
    ) external;

    /// @notice Remove (disable) a swap path for a token pair
    /// @dev Does not delete the entry; sets supported = false to preserve historical data.
    /// @param fromToken The source token address
    /// @param toToken The destination token address
    function removeSwapPath(address fromToken, address toToken) external;

    /// @notice Update the MultiDexRouter address
    /// @param newRouter The new MultiDexRouter address
    function setMultiDexRouter(address newRouter) external;

    /// @notice Emitted when a swap path is registered or updated
    event SwapPathSet(
        address indexed fromToken, address indexed toToken, address pool, uint8 dexId, uint24 feeTier, PoolType poolType
    );

    /// @notice Emitted when a swap path is disabled
    event SwapPathRemoved(address indexed fromToken, address indexed toToken);

    /// @notice Emitted when the MultiDexRouter address is updated
    event MultiDexRouterUpdated(address oldRouter, address newRouter);
}
