// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IUniswapV3Pool {
    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes calldata data
    ) external returns (int256 amount0, int256 amount1);
}

/// @title UniV3Executor
/// @notice Permissionless executor for Uniswap V3-style swaps with mandatory
///         callback pool validation following the canonical SwapRouter pattern.
/// @dev Called via weiroll CALL from SwapExecutor. Handles the swap callback
///      internally -- no fallback needed on SwapExecutor.
///      Deploy separate instances per protocol (different factory + init code hash):
///      one for Uniswap V3, one for Aerodrome CL, etc.
contract UniV3Executor {
    using SafeERC20 for IERC20;

    address public immutable factory;
    bytes32 public immutable poolInitCodeHash;

    error InvalidPool();
    error NotFilled();
    error InvalidCallback();

    constructor(address _factory, bytes32 _poolInitCodeHash) {
        factory = _factory;
        poolInitCodeHash = _poolInitCodeHash;
    }

    /// @notice Execute a single-pool exact-input swap on a Uniswap V3-style pool.
    /// @param pool         The pool to swap through.
    /// @param recipient    Where the output tokens go (typically SwapExecutor).
    /// @param sellToken    The token being sold (tokenIn).
    /// @param buyToken     The token being bought (tokenOut) -- needed for callback pool validation.
    /// @param fee          The pool fee tier -- needed for callback pool validation.
    /// @param zeroForOne   Swap direction.
    /// @param sellAmount   Exact input amount.
    /// @param sqrtPriceLimitX96  Price limit (pass MIN_SQRT_RATIO+1 or MAX_SQRT_RATIO-1 for no limit).
    /// @return buyAmount   The amount of buyToken received.
    function swap(
        address pool,
        address recipient,
        address sellToken,
        address buyToken,
        uint24 fee,
        bool zeroForOne,
        uint256 sellAmount,
        uint160 sqrtPriceLimitX96
    ) external returns (uint256 buyAmount) {
        (int256 amount0, int256 amount1) = IUniswapV3Pool(pool)
            .swap(
                recipient,
                zeroForOne,
                int256(sellAmount),
                sqrtPriceLimitX96,
                abi.encode(msg.sender, sellToken, buyToken, fee)
            );

        if (zeroForOne) {
            if (uint256(amount0) != sellAmount) revert NotFilled();
            buyAmount = uint256(-amount1);
        } else {
            if (uint256(amount1) != sellAmount) revert NotFilled();
            buyAmount = uint256(-amount0);
        }
    }

    /// @notice Callback invoked by the Uniswap V3 pool during a swap.
    /// @dev Validates that msg.sender is the expected pool by recomputing its
    ///      CREATE2 address from (factory, token0, token1, fee, initCodeHash).
    ///      Follows the canonical SwapRouter CallbackValidation pattern.
    function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata data) external {
        if (amount0Delta <= 0 && amount1Delta <= 0) revert InvalidCallback();

        (address payer, address tokenIn, address tokenOut, uint24 fee) =
            abi.decode(data, (address, address, address, uint24));

        _verifyCallback(tokenIn, tokenOut, fee);

        uint256 amountToPay = amount0Delta > 0 ? uint256(amount0Delta) : uint256(amount1Delta);

        IERC20(tokenIn).safeTransferFrom(payer, msg.sender, amountToPay);
    }

    /// @dev Recompute expected pool address via CREATE2 and verify msg.sender
    ///      matches. Adapted from canonical PoolAddress.computeAddress().
    function _verifyCallback(address tokenA, address tokenB, uint24 fee) internal view {
        if (tokenA > tokenB) (tokenA, tokenB) = (tokenB, tokenA);
        address expectedPool = address(
            uint160(
                uint256(
                    keccak256(
                        abi.encodePacked(hex"ff", factory, keccak256(abi.encode(tokenA, tokenB, fee)), poolInitCodeHash)
                    )
                )
            )
        );
        if (msg.sender != expectedPool) revert InvalidPool();
    }
}
