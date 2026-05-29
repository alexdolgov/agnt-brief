// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/SafeERC20.sol";
import {UpgradeableOperable} from "src/governance/UpgradeableOperable.sol";
import {ITokenSwapper} from "src/interfaces/swap/ITokenSwapper.sol";

contract UniversalSwapper is ITokenSwapper, UpgradeableOperable {
    using SafeERC20 for IERC20;

    mapping(address => bool) public allowedCallers;
    mapping(address => bool) public allowedAggregators;

    event UniversalSwap(
        address indexed caller,
        address aggregator,
        address indexed tokenIn,
        address indexed tokenOut,
        uint256 amountIn,
        uint256 amountOut
    );

    function initialize(address[] memory callers, address[] memory aggregators) external initializer {
        __Governable_init(msg.sender);

        uint256 length = callers.length;
        for (uint256 i; i < length;) {
            allowedCallers[callers[i]] = true;

            ++i;
        }

        length = aggregators.length;

        for (uint256 i; i < length;) {
            allowedAggregators[aggregators[i]] = true;

            ++i;
        }
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
        override
        returns (uint256 amountOut)
    {
        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);

        // Only allowed caller can use this swapper
        require(allowedCallers[msg.sender], "Invalid Caller");

        // First address is the contract we are calling and the second is the data we are passing to it
        (address aggregator, bytes memory arbitraryData) = abi.decode(externalData, (address, bytes));

        // Make sure the aggregator is whitelisted
        require(allowedAggregators[aggregator], "Invalid Aggregator");

        IERC20(tokenIn).safeApprove(aggregator, amountIn);

        uint256 prevAmount = IERC20(tokenOut).balanceOf(address(this));

        // Perform the swap itself
        (bool success,) = aggregator.call(arbitraryData);
        require(success, "Swap Failed");

        // Make sure we have received at least minAmountOut
        amountOut = IERC20(tokenOut).balanceOf(address(this)) - prevAmount;
        require(amountOut >= minAmountOut, "Below Min Amount");

        IERC20(tokenOut).safeTransfer(msg.sender, amountOut);

        IERC20(tokenIn).safeApprove(aggregator, 0);

        emit UniversalSwap(msg.sender, aggregator, tokenIn, tokenOut, amountIn, amountOut);
    }

    function rescue(address _token, address _to, uint256 _amount) external onlyGovernor {
        IERC20(_token).safeTransfer(_to, _amount);
    }

    function updateAggregator(address _aggregator, bool _allowed) external onlyGovernor {
        allowedAggregators[_aggregator] = _allowed;
    }

    function updateCaller(address _caller, bool _allowed) external onlyGovernorOrOperator {
        allowedCallers[_caller] = _allowed;
    }

    function minAmountOut(address tokenIn, address tokenOut, uint256 amountIn)
        external
        view
        override
        returns (uint256)
    {}
}
