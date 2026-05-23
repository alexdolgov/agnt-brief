// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IUniswapV2Pair {
    function swap(uint256 amount0Out, uint256 amount1Out, address to, bytes calldata data) external;
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}

/// @title UniV2Executor
/// @notice Permissionless executor for Uniswap V2-style swaps.
/// @dev Called via weiroll CALL from SwapExecutor. Pulls tokens from msg.sender
///      (who must have approved this contract) and sends output to the recipient.
contract UniV2Executor {
    using SafeERC20 for IERC20;

    function swap(
        address pool,
        address recipient,
        address sellToken,
        address buyToken,
        uint256 sellAmount,
        bool zeroForOne
    ) external returns (uint256 buyAmount) {
        uint256 startBalance = IERC20(buyToken).balanceOf(recipient);

        (uint112 reserve0, uint112 reserve1,) = IUniswapV2Pair(pool).getReserves();
        uint256 amountInWithFee = sellAmount * 997;
        uint256 amount0Out;
        uint256 amount1Out;

        if (zeroForOne) {
            amount1Out = (amountInWithFee * reserve1) / (reserve0 * 1000 + amountInWithFee);
        } else {
            amount0Out = (amountInWithFee * reserve0) / (reserve1 * 1000 + amountInWithFee);
        }

        IERC20(sellToken).safeTransferFrom(msg.sender, pool, sellAmount);

        IUniswapV2Pair(pool).swap(amount0Out, amount1Out, recipient, new bytes(0));

        buyAmount = IERC20(buyToken).balanceOf(recipient) - startBalance;
    }
}
