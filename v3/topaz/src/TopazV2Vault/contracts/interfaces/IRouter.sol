// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { IWETH } from "./IWETH.sol";

interface IRouter {
    struct Route {
        address from;
        address to;
        bool stable;
        address factory;
    }

    error ETHTransferFailed();
    error Expired();
    error InsufficientAmount();
    error InsufficientAmountA();
    error InsufficientAmountB();
    error InsufficientAmountADesired();
    error InsufficientAmountBDesired();
    error InsufficientAmountAOptimal();
    error InsufficientLiquidity();
    error InsufficientOutputAmount();
    error InvalidAmountInForETHDeposit();
    error InvalidTokenInForETHDeposit();
    error InvalidPath();
    error InvalidRouteA();
    error InvalidRouteB();
    error OnlyWETH();
    error PoolDoesNotExist();
    error PoolFactoryDoesNotExist();
    error SameAddresses();
    error ZeroAddress();

    /// @notice Address of FactoryRegistry.sol
    function factoryRegistry() external view returns (address);

    /// @notice Address of Protocol PoolFactory.sol
    function defaultFactory() external view returns (address);

    /// @notice Address of Voter.sol
    function voter() external view returns (address);

    /// @notice Interface of WETH contract used for WETH => ETH wrapping/unwrapping
    function weth() external view returns (IWETH);

    /// @dev Represents Ether. Used by zapper to determine whether to return assets as ETH/WETH.
    function ETHER() external view returns (address);

    /// @dev Struct containing information necessary to zap in and out of pools
    struct Zap {
        address tokenA;
        address tokenB;
        bool stable;
        address factory;
        uint256 amountOutMinA;
        uint256 amountOutMinB;
        uint256 amountAMin;
        uint256 amountBMin;
    }

    /// @notice Sort two tokens by which address value is less than the other
    function sortTokens(address tokenA, address tokenB) external pure returns (address token0, address token1);

    /// @notice Calculate the address of a pool by its' factory.
    function poolFor(
        address tokenA,
        address tokenB,
        bool stable,
        address _factory
    ) external view returns (address pool);

    /// @notice Fetch and sort the reserves for a pool
    function getReserves(
        address tokenA,
        address tokenB,
        bool stable,
        address _factory
    ) external view returns (uint256 reserveA, uint256 reserveB);

    /// @notice Perform chained getAmountOut calculations on any number of pools
    function getAmountsOut(uint256 amountIn, Route[] memory routes) external view returns (uint256[] memory amounts);

    /// @notice Quote the amount deposited into a Pool
    function quoteAddLiquidity(
        address tokenA,
        address tokenB,
        bool stable,
        address _factory,
        uint256 amountADesired,
        uint256 amountBDesired
    ) external view returns (uint256 amountA, uint256 amountB, uint256 liquidity);

    /// @notice Quote the amount of liquidity removed from a Pool
    function quoteRemoveLiquidity(
        address tokenA,
        address tokenB,
        bool stable,
        address _factory,
        uint256 liquidity
    ) external view returns (uint256 amountA, uint256 amountB);

    /// @notice Add liquidity of two tokens to a Pool
    function addLiquidity(
        address tokenA,
        address tokenB,
        bool stable,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB, uint256 liquidity);

    /// @notice Add liquidity of a token and WETH (transferred as ETH) to a Pool
    function addLiquidityETH(
        address token,
        bool stable,
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external payable returns (uint256 amountToken, uint256 amountETH, uint256 liquidity);

    /// @notice Remove liquidity of two tokens from a Pool
    function removeLiquidity(
        address tokenA,
        address tokenB,
        bool stable,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB);

    /// @notice Remove liquidity of a token and WETH (returned as ETH) from a Pool
    function removeLiquidityETH(
        address token,
        bool stable,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountToken, uint256 amountETH);

    /// @notice Swap one token for another
    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        Route[] calldata routes,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    /// @notice Swap ETH for a token
    function swapExactETHForTokens(
        uint256 amountOutMin,
        Route[] calldata routes,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);

    /// @notice Swap a token for WETH (returned as ETH)
    function swapExactTokensForETH(
        uint256 amountIn,
        uint256 amountOutMin,
        Route[] calldata routes,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    /// @notice Zap a token A into a pool (B, C). (A can be equal to B or C).
    function zapIn(
        address tokenIn,
        uint256 amountInA,
        uint256 amountInB,
        Zap calldata zapInPool,
        Route[] calldata routesA,
        Route[] calldata routesB,
        address to,
        bool stake
    ) external payable returns (uint256 liquidity);

    /// @notice Zap out a pool (B, C) into A.
    function zapOut(
        address tokenOut,
        uint256 liquidity,
        Zap calldata zapOutPool,
        Route[] calldata routesA,
        Route[] calldata routesB
    ) external;

    /// @notice Used to generate params required for zapping in.
    function generateZapInParams(
        address tokenA,
        address tokenB,
        bool stable,
        address _factory,
        uint256 amountInA,
        uint256 amountInB,
        Route[] calldata routesA,
        Route[] calldata routesB
    ) external view returns (uint256 amountOutMinA, uint256 amountOutMinB, uint256 amountAMin, uint256 amountBMin);

    /// @notice Used to generate params required for zapping out.
    function generateZapOutParams(
        address tokenA,
        address tokenB,
        bool stable,
        address _factory,
        uint256 liquidity,
        Route[] calldata routesA,
        Route[] calldata routesB
    ) external view returns (uint256 amountOutMinA, uint256 amountOutMinB, uint256 amountAMin, uint256 amountBMin);

    /// @notice Used by zapper to determine appropriate ratio of A to B to deposit liquidity. Assumes stable pool.
    function quoteStableLiquidityRatio(
        address tokenA,
        address tokenB,
        address factory
    ) external view returns (uint256 ratio);
}
