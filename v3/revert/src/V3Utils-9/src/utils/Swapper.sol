// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "v3-core/interfaces/callback/IUniswapV3SwapCallback.sol";
import "v3-core/interfaces/IUniswapV3Pool.sol";
import "v3-core/libraries/TickMath.sol";

import "../interfaces/aerodrome/IAerodromePositionManager.sol";
import "@openzeppelin/contracts/proxy/Clones.sol";

import "../../lib/IWETH9.sol";
import "../../lib/IUniversalRouter.sol";
import "../utils/Constants.sol";
import "../interfaces/aerodrome/ICLFactory.sol";

// base functionality to do swaps with different routing protocols
abstract contract Swapper is IUniswapV3SwapCallback, Constants {
    event Swap(address indexed tokenIn, address indexed tokenOut, uint256 amountIn, uint256 amountOut);

    /// @notice Wrapped native token address
    IWETH9 public immutable weth;

    address public immutable factory;

    /// @notice Aerodrome position manager
    IAerodromePositionManager public immutable nonfungiblePositionManager;

    /// @notice Uniswap Universal Router
    address public immutable universalRouter;

    /// @notice 0x Protocol AllowanceHolder contract
    address public immutable zeroxAllowanceHolder;

    /// @notice Constructor
    /// @param _nonfungiblePositionManager Aerodrome position manager
    /// @param _universalRouter Uniswap Universal Router
    /// @param _zeroxAllowanceHolder 0x Protocol AllowanceHolder contract
    constructor(
        IAerodromePositionManager _nonfungiblePositionManager,
        address _universalRouter,
        address _zeroxAllowanceHolder
    ) {
        // Try to get WETH9 from position manager, fallback to Base WETH if not available
        address wethAddress;
        try _nonfungiblePositionManager.WETH9() returns (address _weth) {
            wethAddress = _weth;
        } catch {
            // Fallback to Base mainnet WETH address
            wethAddress = 0x4200000000000000000000000000000000000006;
        }
        
        weth = IWETH9(wethAddress);
        factory = _nonfungiblePositionManager.factory();
        nonfungiblePositionManager = _nonfungiblePositionManager;
        universalRouter = _universalRouter;
        zeroxAllowanceHolder = _zeroxAllowanceHolder;
    }


    // swap data for uni - must include sweep for input token
    struct UniversalRouterData {
        bytes commands;
        bytes[] inputs;
        uint256 deadline;
    }

    struct RouterSwapParams {
        IERC20 tokenIn;
        IERC20 tokenOut;
        uint256 amountIn;
        uint256 amountOutMin;
        bytes swapData;
    }

    // general swap function which uses external router with off-chain calculated swap instructions
    // does slippage check with amountOutMin param
    // returns token amounts deltas after swap
    function _routerSwap(RouterSwapParams memory params)
        internal
        returns (uint256 amountInDelta, uint256 amountOutDelta)
    {
        if (params.amountIn != 0 && params.swapData.length != 0 && address(params.tokenOut) != address(0) && address(params.tokenIn) != address(0)) {
            uint256 balanceInBefore = params.tokenIn.balanceOf(address(this));
            uint256 balanceOutBefore = params.tokenOut.balanceOf(address(this));

            // Check if this is Universal Router data by looking at first 32 bytes
            bool isUniversalRouter;
            bytes memory swapData = params.swapData;
            address uniRouter = universalRouter;
            assembly {
                let firstWord := mload(add(swapData, 32))
                isUniversalRouter := eq(firstWord, uniRouter)
            }

            if (isUniversalRouter) {
                // Handle Universal Router case
                (address target, bytes memory routerData) = abi.decode(params.swapData, (address, bytes));
                UniversalRouterData memory data = abi.decode(routerData, (UniversalRouterData));
                SafeERC20.safeTransfer(params.tokenIn, universalRouter, params.amountIn);
                IUniversalRouter(universalRouter).execute(data.commands, data.inputs, data.deadline);
            } else {
                // For 0x v2, use raw data
                SafeERC20.safeIncreaseAllowance(params.tokenIn, zeroxAllowanceHolder, params.amountIn);
                (bool success,) = zeroxAllowanceHolder.call(params.swapData);
                if (!success) {
                    revert SwapFailed();
                }
                SafeERC20.safeApprove(params.tokenIn, zeroxAllowanceHolder, 0);
            }

            amountInDelta = balanceInBefore - params.tokenIn.balanceOf(address(this));
            amountOutDelta = params.tokenOut.balanceOf(address(this)) - balanceOutBefore;

            if (amountOutDelta < params.amountOutMin) {
                revert SlippageError();
            }

            emit Swap(address(params.tokenIn), address(params.tokenOut), amountInDelta, amountOutDelta);
        }
    }

    struct PoolSwapParams {
        IUniswapV3Pool pool;
        IERC20 token0;
        IERC20 token1;
        int24 tickSpacing;
        bool swap0For1;
        uint256 amountIn;
        uint256 amountOutMin;
    }

    // execute swap directly on specified pool
    // amounts must be available on the contract for both tokens
    function _poolSwap(PoolSwapParams memory params) internal returns (uint256 amountInDelta, uint256 amountOutDelta) {
        if (params.amountIn != 0) {
            (int256 amount0Delta, int256 amount1Delta) = params.pool.swap(
                address(this),
                params.swap0For1,
                int256(params.amountIn),
                (params.swap0For1 ? TickMath.MIN_SQRT_RATIO + 1 : TickMath.MAX_SQRT_RATIO - 1),
                abi.encode(
                    params.swap0For1 ? params.token0 : params.token1,
                    params.swap0For1 ? params.token1 : params.token0,
                    params.tickSpacing
                )
            );
            amountInDelta = params.swap0For1 ? uint256(amount0Delta) : uint256(amount1Delta);
            amountOutDelta = params.swap0For1 ? uint256(-amount1Delta) : uint256(-amount0Delta);

            // amountMin slippage check
            if (amountOutDelta < params.amountOutMin) {
                revert SlippageError();
            }
        }
    }

    // swap callback function where amount for swap is payed
    function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata data) external override {
        require(amount0Delta > 0 || amount1Delta > 0); // swaps entirely within 0-liquidity regions are not supported

        // check if really called from pool
        (address tokenIn, address tokenOut, int24 tickSpacing) = abi.decode(data, (address, address, int24));
        if (address(_getPool(tokenIn, tokenOut, tickSpacing)) != msg.sender) {
            revert Unauthorized();
        }

        // transfer needed amount of tokenIn
        SafeERC20.safeTransfer(IERC20(tokenIn), msg.sender, amount0Delta > 0 ? uint256(amount0Delta) : uint256(amount1Delta));
    }

    function _getPool(
        address tokenA,
        address tokenB,
        int24 tickSpacing
    ) internal view returns (address _pool) {
        (address token0, address token1) = tokenA < tokenB
            ? (tokenA, tokenB)
            : (tokenB, tokenA);

        address implementation = ICLFactory(factory).poolImplementation();

        return Clones.predictDeterministicAddress(
            implementation,
            keccak256(abi.encode(token0, token1, tickSpacing)),
            factory
        );
    }
}
