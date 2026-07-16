// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import {
    IAllowanceTransfer
} from "contracts/interfaces/external/IAllowanceTransfer.sol";

/// @title MultiSwapRouter
/// @notice A router that executes multi-hop swaps across different DEXs
/// @dev Called via AggregatorConnector like Paraswap/Odos
contract MultiSwapRouter {
    // ══════════════════════════════════════════════════════════════════════════════
    // CONSTANTS
    // ══════════════════════════════════════════════════════════════════════════════

    address public constant PERMIT2 = 0x000000000022D473030F116dDEE9F6B43aC78BA3;

    // V4 UniversalRouter command
    uint8 internal constant V4_SWAP = 0x10;

    // V4 Actions
    uint8 internal constant SWAP_EXACT_IN_SINGLE = 0x06;
    uint8 internal constant SETTLE_ALL = 0x0c;
    uint8 internal constant TAKE_ALL = 0x0f;

    // ══════════════════════════════════════════════════════════════════════════════
    // ERRORS
    // ══════════════════════════════════════════════════════════════════════════════

    error UnknownDexType();
    error SwapFailed(bytes error);
    error InsufficientOutputAmount(uint256 received, uint256 minRequired);
    error InvalidStepsLength();
    error Expired();

    // ══════════════════════════════════════════════════════════════════════════════
    // EVENTS
    // ══════════════════════════════════════════════════════════════════════════════

    event MultiSwap(
        address indexed sender,
        address indexed tokenIn,
        address indexed tokenOut,
        uint256 amountIn,
        uint256 amountOut
    );

    // ══════════════════════════════════════════════════════════════════════════════
    // ENUMS
    // ══════════════════════════════════════════════════════════════════════════════

    enum DexType {
        UniswapV2,
        UniswapV3,
        Solidly,
        Algebra,
        UniswapV4
    }

    // ══════════════════════════════════════════════════════════════════════════════
    // STRUCTS
    // ══════════════════════════════════════════════════════════════════════════════

    struct SwapStep {
        DexType dexType;
        address router;
        address tokenIn;
        address tokenOut;
        bytes dexData;
    }

    /// @notice V4 PoolKey structure (encoded in dexData for V4 swaps)
    /// @dev currency0 and currency1 are derived from tokenIn/tokenOut
    struct V4PoolKey {
        uint24 fee;
        int24 tickSpacing;
        address hooks;
    }

    // ══════════════════════════════════════════════════════════════════════════════
    // EXTERNAL FUNCTIONS
    // ══════════════════════════════════════════════════════════════════════════════

    /// @notice Execute a multi-step swap
    /// @param steps Array of swap steps to execute
    /// @param amountIn Amount of input token
    /// @param minAmountOut Minimum output amount
    /// @param recipient Address to receive output tokens
    /// @param deadline Transaction deadline
    /// @return amountOut Actual output amount
    function swap(
        SwapStep[] calldata steps,
        uint256 amountIn,
        uint256 minAmountOut,
        address recipient,
        uint256 deadline
    ) external payable returns (uint256 amountOut) {
        if (block.timestamp > deadline) revert Expired();
        if (steps.length == 0) revert InvalidStepsLength();

        // Transfer input tokens from caller
        if (msg.value == 0) {
            SafeTransferLib.safeTransferFrom(
                steps[0].tokenIn, msg.sender, address(this), amountIn
            );
        }

        // Execute all steps
        uint256 currentAmount = msg.value > 0 ? msg.value : amountIn;
        for (uint256 i = 0; i < steps.length; i++) {
            currentAmount = _executeStep(steps[i], currentAmount, i == 0 && msg.value > 0);
        }

        // Verify output
        if (currentAmount < minAmountOut) {
            revert InsufficientOutputAmount(currentAmount, minAmountOut);
        }

        // Transfer output to recipient
        address tokenOut = steps[steps.length - 1].tokenOut;
        SafeTransferLib.safeTransfer(tokenOut, recipient, currentAmount);

        emit MultiSwap(msg.sender, steps[0].tokenIn, tokenOut, amountIn, currentAmount);

        return currentAmount;
    }

    // ══════════════════════════════════════════════════════════════════════════════
    // INTERNAL FUNCTIONS
    // ══════════════════════════════════════════════════════════════════════════════

    function _executeStep(
        SwapStep calldata step,
        uint256 amountIn,
        bool useETH
    ) internal returns (uint256) {
        if (step.dexType == DexType.UniswapV2) {
            return _swapUniswapV2(step, amountIn, useETH);
        } else if (step.dexType == DexType.UniswapV3) {
            return _swapUniswapV3(step, amountIn, useETH);
        } else if (step.dexType == DexType.Solidly) {
            return _swapSolidly(step, amountIn, useETH);
        } else if (step.dexType == DexType.Algebra) {
            return _swapAlgebra(step, amountIn, useETH);
        } else if (step.dexType == DexType.UniswapV4) {
            return _swapUniswapV4(step, amountIn, useETH);
        }
        revert UnknownDexType();
    }

    function _swapUniswapV2(
        SwapStep calldata step,
        uint256 amountIn,
        bool useETH
    ) internal returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = step.tokenIn;
        path[1] = step.tokenOut;

        uint256 balanceBefore = IERC20(step.tokenOut).balanceOf(address(this));

        if (useETH) {
            (bool success, bytes memory result) = step.router.call{ value: amountIn }(
                abi.encodeWithSelector(
                    0x7ff36ab5, // swapExactETHForTokens
                    0,
                    path,
                    address(this),
                    block.timestamp
                )
            );
            if (!success) revert SwapFailed(result);
        } else {
            _approve(step.tokenIn, step.router, amountIn);
            (bool success, bytes memory result) = step.router.call(
                abi.encodeWithSelector(
                    0x38ed1739, // swapExactTokensForTokens
                    amountIn,
                    0,
                    path,
                    address(this),
                    block.timestamp
                )
            );
            if (!success) revert SwapFailed(result);
        }

        return IERC20(step.tokenOut).balanceOf(address(this)) - balanceBefore;
    }

    function _swapUniswapV3(
        SwapStep calldata step,
        uint256 amountIn,
        bool useETH
    ) internal returns (uint256) {
        uint24 fee = abi.decode(step.dexData, (uint24));

        uint256 balanceBefore = IERC20(step.tokenOut).balanceOf(address(this));

        if (!useETH) {
            _approve(step.tokenIn, step.router, amountIn);
        }

        (bool success, bytes memory result) = step.router.call{ value: useETH ? amountIn : 0 }(
            abi.encodeWithSelector(
                0x414bf389, // exactInputSingle
                step.tokenIn,
                step.tokenOut,
                fee,
                address(this),
                block.timestamp,
                amountIn,
                0,
                uint160(0)
            )
        );
        if (!success) revert SwapFailed(result);

        return IERC20(step.tokenOut).balanceOf(address(this)) - balanceBefore;
    }

    /// @dev Route struct for Solidly-style routers (Velodrome, Aerodrome, etc.)
    struct SolidlyRoute {
        address from;
        address to;
        bool stable;
        address factory;
    }

    function _swapSolidly(
        SwapStep calldata step,
        uint256 amountIn,
        bool useETH
    ) internal returns (uint256) {
        (bool stable, address factory) = abi.decode(step.dexData, (bool, address));

        uint256 balanceBefore = IERC20(step.tokenOut).balanceOf(address(this));

        // Build routes array with single route
        SolidlyRoute[] memory routes = new SolidlyRoute[](1);
        routes[0] = SolidlyRoute({
            from: step.tokenIn,
            to: step.tokenOut,
            stable: stable,
            factory: factory
        });

        if (useETH) {
            (bool success, bytes memory result) = step.router.call{ value: amountIn }(
                abi.encodeWithSelector(
                    0x903638a4, // swapExactETHForTokens(uint256,(address,address,bool,address)[],address,uint256)
                    0,
                    routes,
                    address(this),
                    block.timestamp
                )
            );
            if (!success) revert SwapFailed(result);
        } else {
            _approve(step.tokenIn, step.router, amountIn);
            (bool success, bytes memory result) = step.router.call(
                abi.encodeWithSelector(
                    0xcac88ea9, // swapExactTokensForTokens(uint256,uint256,(address,address,bool,address)[],address,uint256)
                    amountIn,
                    0,
                    routes,
                    address(this),
                    block.timestamp
                )
            );
            if (!success) revert SwapFailed(result);
        }

        return IERC20(step.tokenOut).balanceOf(address(this)) - balanceBefore;
    }

    function _swapAlgebra(
        SwapStep calldata step,
        uint256 amountIn,
        bool useETH
    ) internal returns (uint256) {
        uint256 balanceBefore = IERC20(step.tokenOut).balanceOf(address(this));

        if (!useETH) {
            _approve(step.tokenIn, step.router, amountIn);
        }

        bool success;
        bytes memory result;

        // Check if deployer address is provided in dexData
        if (step.dexData.length >= 32) {
            // Algebra Integral V1.1+ params: tokenIn, tokenOut, recipient, deployer, deadline, amountIn, amountOutMin, limitSqrtPrice
            address deployer = abi.decode(step.dexData, (address));
            (success, result) = step.router.call{ value: useETH ? amountIn : 0 }(
                abi.encodeWithSelector(
                    0x1679c792, // exactInputSingle (Algebra Integral v1.1+)
                    step.tokenIn,
                    step.tokenOut,
                    address(this),
                    deployer,
                    block.timestamp,
                    amountIn,
                    0,
                    uint160(0)
                )
            );
        } else {
            // Algebra V3 params: tokenIn, tokenOut, recipient, deadline, amountIn, amountOutMin, limitSqrtPrice
            (success, result) = step.router.call{ value: useETH ? amountIn : 0 }(
                abi.encodeWithSelector(
                    0xbc651188, // exactInputSingle (Algebra V3)
                    step.tokenIn,
                    step.tokenOut,
                    address(this),
                    block.timestamp,
                    amountIn,
                    0,
                    uint160(0)
                )
            );
        }
        if (!success) revert SwapFailed(result);

        return IERC20(step.tokenOut).balanceOf(address(this)) - balanceBefore;
    }

    function _swapUniswapV4(
        SwapStep calldata step,
        uint256 amountIn,
        bool useETH
    ) internal returns (uint256) {
        uint256 balanceBefore = IERC20(step.tokenOut).balanceOf(address(this));

        // For V4, we need Permit2 approval
        if (!useETH) {
            _approve(step.tokenIn, PERMIT2, amountIn);
            IAllowanceTransfer(PERMIT2).approve(
                step.tokenIn,
                step.router,
                uint160(amountIn),
                uint48(block.timestamp)
            );
        }

        // Build and execute V4 swap in scoped block to manage stack
        {
            bytes memory input = _buildV4Input(step, amountIn);
            bytes[] memory inputs = new bytes[](1);
            inputs[0] = input;

            (bool success, bytes memory result) = step.router.call{
                value: useETH ? amountIn : 0
            }(
                abi.encodeWithSelector(
                    0x3593564c, // execute(bytes,bytes[],uint256)
                    abi.encodePacked(V4_SWAP),
                    inputs,
                    block.timestamp
                )
            );
            if (!success) revert SwapFailed(result);
        }

        // Revoke Permit2 approval
        if (!useETH) {
            _approve(step.tokenIn, PERMIT2, 0);
        }

        return IERC20(step.tokenOut).balanceOf(address(this)) - balanceBefore;
    }

    function _buildV4Input(
        SwapStep calldata step,
        uint256 amountIn
    ) internal pure returns (bytes memory) {
        V4PoolKey memory poolKey = abi.decode(step.dexData, (V4PoolKey));

        // Sort currencies for PoolKey (V4 requires currency0 < currency1)
        (address currency0, address currency1) = step.tokenIn < step.tokenOut
            ? (step.tokenIn, step.tokenOut)
            : (step.tokenOut, step.tokenIn);

        bool zeroForOne = step.tokenIn == currency0;

        // Actions: SWAP_EXACT_IN_SINGLE, SETTLE_ALL, TAKE_ALL
        bytes memory actions = abi.encodePacked(
            SWAP_EXACT_IN_SINGLE,
            SETTLE_ALL,
            TAKE_ALL
        );

        bytes[] memory params = new bytes[](3);

        // ExactInputSingleParams: PoolKey + zeroForOne + amountIn + amountOutMin + hookData
        params[0] = abi.encode(
            currency0,
            currency1,
            poolKey.fee,
            poolKey.tickSpacing,
            poolKey.hooks,
            zeroForOne,
            uint128(amountIn),
            uint128(0),
            bytes("")
        );

        // SETTLE_ALL params: (currency, maxAmount)
        params[1] = abi.encode(step.tokenIn, amountIn);

        // TAKE_ALL params: (currency, minAmount)
        params[2] = abi.encode(step.tokenOut, 0);

        return abi.encode(actions, params);
    }

    function _approve(address token, address spender, uint256 amount) internal {
        SafeTransferLib.safeApprove(token, spender, 0);
        SafeTransferLib.safeApprove(token, spender, amount);
    }

    receive() external payable {}
}
