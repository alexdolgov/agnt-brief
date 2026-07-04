// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

/// @title IOptimizer
/// @notice Concentrated-liquidity (Slipstream) route oracle for the Topaz Relays.
/// @dev Holds an admin-curated table of CL swap paths and derives a TWAP-protected
///      minimum output for any path. Route *selection* is curated/keeper-supplied
///      because the on-chain QuoterV2 is revert-based and cannot be used in a view.
interface IOptimizer {
    error NoRouteConfigured();
    error PoolNotFound();
    error InvalidRoute();
    error SameValue();
    error ZeroAddress();

    event SetRoute(address indexed tokenIn, address indexed tokenOut, bytes path);
    event SetTwapPeriod(uint32 twapPeriod);

    /// @notice Slipstream CL factory used for pool lookups
    function clFactory() external view returns (address);

    /// @notice Length of the TWAP observation window, in seconds, used for slippage quotes
    function twapPeriod() external view returns (uint32);

    /// @notice The admin-configured CL path to swap `tokenIn` into `tokenOut`
    /// @dev Returns empty bytes if no route is configured for the pair
    /// @return path Packed Slipstream path: token | int24 tickSpacing | token | ...
    function getRoute(address tokenIn, address tokenOut) external view returns (bytes memory path);

    /// @notice Minimum acceptable output for swapping `amountIn` along `path`, derived from each
    ///         hop's CL pool TWAP and reduced by `slippage` (in basis points)
    /// @dev Reverts if any hop's pool is missing or lacks sufficient TWAP observations
    /// @param path Packed Slipstream path
    /// @param amountIn Amount of the path's input token to swap
    /// @param slippage Allowed slippage in basis points (e.g. 100 = 1%)
    /// @return amountOutMin Minimum amount of the path's output token to accept
    function getAmountOutMin(
        bytes calldata path,
        uint256 amountIn,
        uint256 slippage
    ) external view returns (uint256 amountOutMin);

    /// @notice Configure (or clear, with empty path) the curated CL route for a token pair
    function setRoute(address tokenIn, address tokenOut, bytes calldata path) external;

    /// @notice Update the TWAP observation window
    function setTwapPeriod(uint32 twapPeriod) external;
}
