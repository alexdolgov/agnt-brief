// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "src/interfaces/ITokenSwapper.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Swapper0x is ITokenSwapper, Ownable {
    using SafeERC20 for IERC20;

    address public router0x;
    address public strategy;

    constructor(address _router0x, address _strategy) {
        if (_router0x == address(0) || _strategy == address(0)) revert ZeroAddress();

        strategy = _strategy;
        router0x = _router0x;
    }

    /*
    * @notice Swaps `amountIn` of `tokenIn` for `amountOut` of `tokenOut`, with a minimum output amount of `minAmountOut`.
    * @param tokenIn The address of the token to be swapped. Must match the `srcToken` parameter in `externalData`.
    * @param amountIn The amount of `tokenIn` to be swapped. Must match the `amount` parameter in `externalData`.
    * @param tokenOut The address of the desired output token. Must match the `dstToken` parameter in `externalData`.
    * @param minAmountOut The minimum amount of `tokenOut` that must be received in the swap. Must match the `minReturnAmount` parameter in `externalData`.
    * @param externalData A bytes value containing the encoded swap parameters.
    * @return The actual amount of `tokenOut` received in the swap.
    */
    function swap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut, bytes memory externalData)
        external
        returns (uint256 amountOut)
    {
        if (msg.sender != strategy) revert OnlyStrat();

        IERC20 _tokenIn = IERC20(tokenIn);

        _tokenIn.transferFrom(msg.sender, address(this), amountIn);
        
        _tokenIn.safeApprove(address(router0x), amountIn);

        (bool success,) = router0x.call(externalData);
        if (!success) revert SwapFail();

        amountOut = IERC20(tokenOut).balanceOf(address(this));

        IERC20(tokenOut).safeTransfer(strategy, amountOut);
    }

    function rescue(address _token, address _to, uint256 _amount) external onlyOwner {
        IERC20(_token).safeTransfer(_to, _amount);
    }

    function updateStrategy(address _newStrategy) external onlyOwner {
        if (_newStrategy == address(0)) revert ZeroAddress();
        strategy = _newStrategy;
    }

    error SwapFail();
    error OnlyStrat();
    error ZeroAddress();
}
