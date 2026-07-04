// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

/// @notice Minimal interface for the Topaz Slipstream concentrated-liquidity factory
interface ICLFactory {
    /// @notice Returns the pool address for a given pair of tokens and a tick spacing, or address 0 if it does not exist
    /// @dev tokenA and tokenB may be passed in either order
    /// @param tokenA The first token of the pool
    /// @param tokenB The second token of the pool
    /// @param tickSpacing The tick spacing of the pool
    /// @return pool The pool address
    function getPool(address tokenA, address tokenB, int24 tickSpacing) external view returns (address pool);

    /// @notice Returns a list of enabled tick spacings
    function tickSpacings() external view returns (int24[] memory);

    /// @notice Returns the default fee (in pips) for a given tick spacing
    function tickSpacingToFee(int24 tickSpacing) external view returns (uint24 fee);
}
