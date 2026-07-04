// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { IAsyncSwapper, SwapParams } from "src/interfaces/liquidation/IAsyncSwapper.sol";
import { IERC4626 } from "src/interfaces/vault/IERC4626.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import { SystemComponent } from "src/SystemComponent.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { Address } from "openzeppelin-contracts/utils/Address.sol";

// solhint-disable var-name-mixedcase

contract ERC4626Swapper is SystemComponent, IAsyncSwapper {
    using Address for address;
    using SafeERC20 for IERC20;

    /// @notice Whether resulting funds will be transferred to caller or left as-is
    bool public immutable TRANSFER_TO_CALLER;

    struct SwapInstructions {
        bool redeem;
        bool performSwap;
    }

    struct SecondarySwap {
        address asyncSwapper;
        SwapParams params;
    }

    constructor(ISystemRegistry _systemRegistry, bool transferToCaller) SystemComponent(_systemRegistry) {
        TRANSFER_TO_CALLER = transferToCaller;
    }

    /// @inheritdoc IAsyncSwapper
    function swap(
        SwapParams memory swapParams
    ) public payable virtual returns (uint256 buyTokenAmountReceived) {
        if (swapParams.sellTokenAddress == address(0)) revert TokenAddressZero();
        if (swapParams.buyTokenAddress == address(0)) revert TokenAddressZero();
        if (swapParams.sellAmount == 0) revert InsufficientSellAmount();
        if (swapParams.buyAmount == 0) revert InsufficientBuyAmount();

        SwapInstructions memory swapInstructions = abi.decode(swapParams.data, (SwapInstructions));
        buyTokenAmountReceived = swapInstructions.redeem
            ? _performRedeem(swapParams, swapInstructions)
            : _performDeposit(swapParams, swapInstructions);

        if (buyTokenAmountReceived < swapParams.buyAmount) {
            revert InsufficientBuyAmountReceived(buyTokenAmountReceived, swapParams.buyAmount);
        }

        // slither-disable-next-line reentrancy-events
        emit Swapped(
            swapParams.sellTokenAddress,
            swapParams.buyTokenAddress,
            swapParams.sellAmount,
            swapParams.buyAmount,
            buyTokenAmountReceived
        );
    }

    function _performDeposit(
        SwapParams memory swapParams,
        SwapInstructions memory swapInstructions
    ) private returns (uint256 buyTokenAmountReceived) {
        // We are going from some token to a 4626 token
        // This may involve us swapping for the base asset or it may not

        // If we're doing a swap we'll overwrite this amount for now assume we already hold the asset
        uint256 tokenAmountToDeposit = swapParams.sellAmount;
        IERC20 baseAsset = IERC20(swapParams.sellTokenAddress);

        // If we need to perform a swap we will do so before we deposit
        if (swapInstructions.performSwap) {
            SecondarySwap memory secondarySwapParams = abi.decode(swapParams.extraData, (SecondarySwap));

            // Still has to be one of our swappers
            systemRegistry.asyncSwapperRegistry().verifyIsRegistered(secondarySwapParams.asyncSwapper);

            baseAsset = IERC20(secondarySwapParams.params.buyTokenAddress);

            uint256 buyTokenBalanceBefore = baseAsset.balanceOf(address(this));

            // Our swappers are all safe to delegatecall
            // slither-disable-next-line unused-return
            secondarySwapParams.asyncSwapper.functionDelegateCall(
                abi.encodeCall(IAsyncSwapper.swap, secondarySwapParams.params), "SecondarySwapFailed"
            );
            uint256 buyTokenBalanceAfter = baseAsset.balanceOf(address(this));

            tokenAmountToDeposit = buyTokenBalanceAfter - buyTokenBalanceBefore;
        }

        // slither-disable-next-line unused-return
        baseAsset.safeApprove(swapParams.buyTokenAddress, tokenAmountToDeposit);
        buyTokenAmountReceived = IERC4626(swapParams.buyTokenAddress).deposit(
            tokenAmountToDeposit, TRANSFER_TO_CALLER ? msg.sender : address(this)
        );
    }

    function _performRedeem(
        SwapParams memory swapParams,
        SwapInstructions memory swapInstructions
    ) private returns (uint256 buyTokenAmountReceived) {
        // We are starting with a 4626 assets, redeeming it for the underlying
        // and then potentially swapping it for something else

        IERC20 buyToken = IERC20(swapParams.buyTokenAddress);

        uint256 receivedAmount =
            IERC4626(swapParams.sellTokenAddress).redeem(swapParams.sellAmount, address(this), address(this));

        if (swapInstructions.performSwap) {
            SecondarySwap memory secondarySwapParams = abi.decode(swapParams.extraData, (SecondarySwap));

            // Update the secondary swap to actual amount received from redeem
            // buyAmount checks in other swappers expected to capture slippage
            secondarySwapParams.params.sellAmount = receivedAmount;

            // Still has to be one of our swappers
            systemRegistry.asyncSwapperRegistry().verifyIsRegistered(secondarySwapParams.asyncSwapper);

            uint256 buyTokenBalanceBefore = buyToken.balanceOf(address(this));

            // Our swappers are all safe to delegatecall
            // slither-disable-next-line unused-return
            secondarySwapParams.asyncSwapper.functionDelegateCall(
                abi.encodeCall(IAsyncSwapper.swap, secondarySwapParams.params), "SecondarySwapFailed"
            );
            uint256 buyTokenBalanceAfter = buyToken.balanceOf(address(this));

            buyTokenAmountReceived = buyTokenBalanceAfter - buyTokenBalanceBefore;
        } else {
            // If we aren't swapping then we assume the underlying token we redeemed is our final state
            buyTokenAmountReceived = receivedAmount;
        }

        if (TRANSFER_TO_CALLER) {
            SafeERC20.safeTransfer(IERC20(swapParams.buyTokenAddress), msg.sender, buyTokenAmountReceived);
        }
    }
}
