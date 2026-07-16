// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IPositionAdapter
/// @notice Interface for DEX-specific position management adapters
/// @dev Adapters handle LP operations for different DEXes (Uniswap, PancakeSwap, Aerodrome, etc.)
interface IPositionAdapter {
    /// @notice Get the pool address for a token pair
    /// @param token0 First token address (must be sorted)
    /// @param token1 Second token address (must be sorted)
    /// @param fee Pool fee tier
    /// @return pool The pool address, or address(0) if not found
    function getPool(
        address token0,
        address token1,
        uint24 fee
    ) external view returns (address pool);

    /// @notice Get tick spacing for a pool
    /// @param pool The pool address
    /// @return tickSpacing The tick spacing
    function getTickSpacing(address pool) external view returns (int24 tickSpacing);

    /// @notice Get current tick for a pool (spot price)
    /// @param pool The pool address
    /// @return tick The current tick
    function getCurrentTick(address pool) external view returns (int24 tick);

    /// @notice Get TWAP tick for a pool over specified interval
    /// @param pool The pool address
    /// @param twapInterval The TWAP interval in seconds
    /// @return tick The TWAP tick
    function getTWAPTick(address pool, uint32 twapInterval) external view returns (int24 tick);

    /// @notice Mint a new LP position with slippage protection
    /// @param token0 First token address
    /// @param token1 Second token address
    /// @param fee Pool fee tier
    /// @param tickLower Lower tick of the position
    /// @param tickUpper Upper tick of the position
    /// @param amount0Desired Amount of token0 to deposit
    /// @param amount1Desired Amount of token1 to deposit
    /// @param amount0Min Minimum amount of token0 (slippage protection)
    /// @param amount1Min Minimum amount of token1 (slippage protection)
    /// @param recipient Address to receive the position NFT
    /// @param deadline Transaction deadline timestamp
    /// @return tokenId The position NFT token ID
    /// @return liquidity The amount of liquidity minted
    /// @return amount0Used Actual amount of token0 used
    /// @return amount1Used Actual amount of token1 used
    function mint(
        address token0,
        address token1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min,
        address recipient,
        uint256 deadline
    ) external returns (
        uint256 tokenId,
        uint128 liquidity,
        uint256 amount0Used,
        uint256 amount1Used
    );

    /// @notice Remove liquidity from a position with slippage protection
    /// @param tokenId The position NFT token ID
    /// @param liquidity Amount of liquidity to remove
    /// @param amount0Min Minimum amount of token0 (slippage protection)
    /// @param amount1Min Minimum amount of token1 (slippage protection)
    /// @param deadline Transaction deadline timestamp
    /// @return amount0 Amount of token0 received
    /// @return amount1 Amount of token1 received
    function decreaseLiquidity(
        uint256 tokenId,
        uint128 liquidity,
        uint256 amount0Min,
        uint256 amount1Min,
        uint256 deadline
    ) external returns (uint256 amount0, uint256 amount1);

    /// @notice Collect tokens from a position (fees + withdrawn liquidity)
    /// @param tokenId The position NFT token ID
    /// @param recipient Address to receive the tokens
    /// @return amount0 Amount of token0 collected
    /// @return amount1 Amount of token1 collected
    function collect(
        uint256 tokenId,
        address recipient
    ) external returns (uint256 amount0, uint256 amount1);

    /// @notice Burn a position NFT (must have 0 liquidity and 0 tokens owed)
    /// @param tokenId The position NFT token ID
    function burn(uint256 tokenId) external;

    /// @notice Get position details
    /// @param tokenId The position NFT token ID
    /// @return token0 First token address
    /// @return token1 Second token address
    /// @return fee Pool fee tier
    /// @return tickLower Lower tick of the position
    /// @return tickUpper Upper tick of the position
    /// @return liquidity Current liquidity in the position
    function getPosition(uint256 tokenId) external view returns (
        address token0,
        address token1,
        uint24 fee,
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity
    );

    /// @notice Get the position manager/NFT contract address
    /// @return The address of the NFT position manager
    function positionManager() external view returns (address);

    /// @notice Approve the adapter to manage a position NFT
    /// @dev V16-I-08: Currently unused — vault uses setApprovalForAll during addPool() instead
    ///      of per-position approvals. Retained in interface for external integrators and
    ///      potential future use (e.g., granular per-position approval workflows).
    ///      UniswapV3Adapter: no-op. Aerodrome/PancakeSwap: approves vault on position manager.
    /// @param tokenId The position NFT token ID
    function approvePosition(uint256 tokenId) external;
}
