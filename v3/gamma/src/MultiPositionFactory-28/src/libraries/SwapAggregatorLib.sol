// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title SwapAggregatorLib
/// @notice Library for executing swaps through any DEX aggregator
/// @dev Supports both ERC20 and native ETH swaps with composable aggregator support
library SwapAggregatorLib {
    using SafeERC20 for IERC20;

    error InvalidReceiver();
    error SwapFailed();
    error InsufficientOutput();

    struct SwapValidation {
        address expectedTokenIn;
        address expectedTokenOut;
        uint256 expectedAmountIn;
        address expectedReceiver;
        bool isETHIn;
        bool isETHOut;
    }

    /// @notice Execute swap through any aggregator with validation
    /// @param aggregator The aggregator contract address (Augustus v6.2, Odos, or any other)
    /// @param swapData The encoded swap calldata for the aggregator
    /// @param minAmountOut Minimum amount expected from swap
    /// @param validation Expected parameters for validation
    /// @return amountOut The amount received from the swap
    function executeSwap(
        address aggregator,
        bytes calldata swapData,
        uint256 minAmountOut,
        SwapValidation memory validation
    ) internal returns (uint256 amountOut) {
        // Validate receiver in calldata
        _validateReceiver(swapData, validation.expectedReceiver);

        // Approve tokens if not ETH
        if (!validation.isETHIn) {
            IERC20(validation.expectedTokenIn).forceApprove(aggregator, validation.expectedAmountIn);
        }

        // Get balance before swap
        uint256 balanceBefore;
        if (validation.isETHOut) {
            balanceBefore = address(this).balance;
        } else {
            balanceBefore = IERC20(validation.expectedTokenOut).balanceOf(address(this));
        }

        // Execute swap with msg.value for ETH
        uint256 msgValue = validation.isETHIn ? validation.expectedAmountIn : 0;
        (bool success, ) = aggregator.call{value: msgValue}(swapData);
        if (!success) revert SwapFailed();

        // Reset approval if ERC20
        if (!validation.isETHIn) {
            IERC20(validation.expectedTokenIn).forceApprove(aggregator, 0);
        }

        // Calculate amount received
        if (validation.isETHOut) {
            amountOut = address(this).balance - balanceBefore;
        } else {
            amountOut = IERC20(validation.expectedTokenOut).balanceOf(address(this)) - balanceBefore;
        }

        if (amountOut < minAmountOut) revert InsufficientOutput();
    }

    /// @notice Validate receiver address in swap calldata
    /// @dev Checks common positions where aggregators typically encode the receiver/beneficiary
    function _validateReceiver(bytes calldata swapData, address expectedReceiver) private pure {
        // Common offsets where receiver/beneficiary is typically encoded
        uint256[] memory commonOffsets = new uint256[](8);
        commonOffsets[0] = 0x1B;  // 27 bytes - ODOS compact encoding (adjusted for calldata)
        commonOffsets[1] = 0x3B;  // 59 bytes - ODOS compact encoding (raw offset)
        commonOffsets[2] = 0x64;  // 100 bytes
        commonOffsets[3] = 0x84;  // 132 bytes
        commonOffsets[4] = 0xA4;  // 164 bytes
        commonOffsets[5] = 0xC4;  // 196 bytes - common for many aggregators
        commonOffsets[6] = 0xE4;  // 228 bytes
        commonOffsets[7] = 0x104; // 260 bytes

        bool foundReceiver = false;

        for (uint256 i = 0; i < commonOffsets.length; i++) {
            uint256 offset = commonOffsets[i];
            if (swapData.length >= offset + 32) {
                address potentialReceiver;
                assembly {
                    potentialReceiver := calldataload(add(swapData.offset, offset))
                }

                if (potentialReceiver == expectedReceiver) {
                    foundReceiver = true;
                    break;
                }
            }
        }

        if (!foundReceiver) revert InvalidReceiver();
    }
}