// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { ISwapRouter } from "src/interfaces/swapper/ISwapRouter.sol";
import { ISyncSwapper } from "src/interfaces/swapper/ISyncSwapper.sol";
import { IERC4626 } from "openzeppelin-contracts/interfaces/IERC4626.sol";
import { IBatchRouter } from "src/interfaces/external/balancer/v3/IBatchRouter.sol";

import { Errors } from "src/utils/Errors.sol";
import { BalancerV3BaseSwap, IERC20 } from "src/swapper/adapters/BalancerV3BaseSwap.sol";

/// @title Swap adapter for multi step Bal swaps
contract BalancerV3BatchSwap is BalancerV3BaseSwap {
    error InvalidBatchSwap();

    constructor(
        address _router,
        address _balancerVaultExplorer,
        address _permit2,
        address _balRouter
    ) BalancerV3BaseSwap(_router, _balancerVaultExplorer, _permit2, _balRouter) { }

    /// @inheritdoc ISyncSwapper
    /// @dev `swapData.pool` ignored here as all validations are done with Bal steps
    function validate(address fromAddress, ISwapRouter.SwapData memory swapData) external view override {
        Errors.verifyNotZero(fromAddress, "fromAddress");
        Errors.verifyNotZero(swapData.token, "swapData.token");

        IBatchRouter.SwapPathStep[] memory swapSteps = abi.decode(swapData.data, (IBatchRouter.SwapPathStep[]));
        uint256 swapStepsLength = swapSteps.length;

        // If we have length of 1, should be using BalV3 single swap for gas savings
        if (swapStepsLength <= 1) revert InvalidBatchSwap();

        // Check before other validations that our buy token and bal swaps token out match
        // fromAddress validated in for loop below
        if (swapData.token != address(swapSteps[swapStepsLength - 1].tokenOut)) {
            revert DataMismatch("buyToken mismatch");
        }

        address currentSellToken = fromAddress;
        address currentBuyToken;
        for (uint256 i = 0; i < swapStepsLength; ++i) {
            IBatchRouter.SwapPathStep memory current = swapSteps[i];
            currentBuyToken = address(current.tokenOut);
            address vaultOrPool = current.pool; // Depending on situation this value represents either pool or vault

            if (current.isBuffer) {
                // Buffer asset always based on vault address. Returns zero address if DNE
                address asset = balVaultExplorer.getBufferAsset(IERC4626(vaultOrPool));

                // Verifying this zero takes care of multiple needed checks
                // 1) Verifies that vault is not zero address
                // 2) Verifies that vault has been initialized
                // 3) Ensures that buy and sell token cannot be zero. If either vault or asset is zero, will revert
                // here. Buy and sell token validated against vault and asset below
                Errors.verifyNotZero(asset, "asset");

                if (
                    !(
                        (currentBuyToken == vaultOrPool && currentSellToken == asset)
                            || (currentSellToken == vaultOrPool && currentBuyToken == asset)
                    )
                ) revert DataMismatch("vault+asset+sell+buy");
            } else {
                _validatePool(vaultOrPool, currentSellToken, currentBuyToken);
            }

            // Buy token (SwapPathStep.tokenOut) becomes sell token for next loop
            currentSellToken = currentBuyToken;
        }
    }

    /// @inheritdoc ISyncSwapper
    /// @dev Bal batch router has the ability to do multiple swaps with multiple steps per swap. This swapper is
    /// limited to one swap with multiple steps
    function swap(
        address,
        address sellTokenAddress,
        uint256 sellAmount,
        address,
        uint256 minBuyAmount,
        bytes memory data
    ) external override onlyRouter returns (uint256) {
        _permit2Approval(sellTokenAddress, sellAmount);

        IBatchRouter.SwapPathExactAmountIn[] memory swapPaths = new IBatchRouter.SwapPathExactAmountIn[](1);
        swapPaths[0] = IBatchRouter.SwapPathExactAmountIn({
            tokenIn: IERC20(sellTokenAddress),
            steps: abi.decode(data, (IBatchRouter.SwapPathStep[])),
            exactAmountIn: sellAmount,
            minAmountOut: minBuyAmount
        });

        // slither-disable-next-line unused-return
        (,, uint256[] memory amountsOut) = IBatchRouter(balRouter).swapExactIn(swapPaths, block.timestamp, false, "");
        return amountsOut[0];
    }
}
