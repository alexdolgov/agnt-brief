// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "src/interfaces/ITokenSwapper.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title UniversalSwapper
 * @author JonesDAO
 * @notice Perform swaps using any aggregator
 * @dev Aggregators must be whitelisted before being used
 */
contract UniversalMainnetSwapper is ITokenSwapper, Ownable {
    using SafeERC20 for IERC20;

    address public strategy;

    mapping(address => bool) public allowedAggregators;

    error Swapper__BelowMinAmountOut();
    error Swapper__SwapFail();
    error Swapper__OnlyStrat();
    error Swapper__ZeroAddress();
    error Swapper__NotEnoughAmount();
    error Swapper__NotWhitelisted();

    event UniversalSwapperSwap(
        address indexed aggregatorUsed,
        address indexed tokenIn,
        address indexed tokenOut,
        uint256 amountIn,
        uint256 amountOut
    );

    constructor(address _strategy) Ownable() {
        if (_strategy == address(0)) revert Swapper__ZeroAddress();

        strategy = _strategy;
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
        // Only the strategy can call this function
        if (msg.sender != strategy) revert Swapper__OnlyStrat();

        if (IERC20(tokenIn).balanceOf(address(this)) < amountIn) revert Swapper__NotEnoughAmount();

        // First address is the contract we are calling and the second is the data we are passing to it
        (address chosenAggregator, bytes memory arbitraryData) = abi.decode(externalData, (address, bytes));

        // Make sure the aggregator is whitelisted
        if (!allowedAggregators[chosenAggregator]) revert Swapper__NotWhitelisted();

        IERC20(tokenIn).safeApprove(chosenAggregator, amountIn);

        // Perform the swap itself
        (bool success,) = chosenAggregator.call(arbitraryData);
        if (!success) revert Swapper__SwapFail();

        // Make sure we have received at least minAmountOut
        amountOut = IERC20(tokenOut).balanceOf(address(this));

        if (amountOut < minAmountOut) revert Swapper__BelowMinAmountOut();

        IERC20(tokenOut).safeTransfer(strategy, amountOut);

        emit UniversalSwapperSwap(chosenAggregator, tokenIn, tokenOut, amountIn, amountOut);
    }

    function rescue(address _token, address _to, uint256 _amount) external onlyOwner {
        IERC20(_token).safeTransfer(_to, _amount);
    }

    function updateStrategy(address _newStrategy) external onlyOwner {
        if (_newStrategy == address(0)) revert Swapper__ZeroAddress();
        strategy = _newStrategy;
    }

    function updateAggregator(address _aggregator, bool _allowed) external onlyOwner {
        allowedAggregators[_aggregator] = _allowed;
    }
}
