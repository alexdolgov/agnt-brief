// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { IAsyncSwapper, SwapParams } from "src/interfaces/liquidation/IAsyncSwapper.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title BaseAsyncSwapper
 * @notice This contract is designed to be invoked via delegatecall. It does not implement its own reentrancy
 * protection.
 *
 * @dev WARNING: Any contract delegatecalling into this MUST implement its own ReentrancyGuard protection mechanism to
 * prevent potential reentrancy attacks.
 */
contract BaseAsyncSwapper is IAsyncSwapper {
    // solhint-disable-next-line var-name-mixedcase
    address public immutable AGGREGATOR;

    // solhint-disable-next-line var-name-mixedcase
    bool public immutable TRANSFER_TO_CALLER;

    constructor(address aggregator, bool transferToCaller) {
        if (aggregator == address(0)) revert TokenAddressZero();
        AGGREGATOR = aggregator;
        TRANSFER_TO_CALLER = transferToCaller;
    }

    /// @inheritdoc IAsyncSwapper
    function swap(
        SwapParams memory swapParams
    ) public virtual returns (uint256 buyTokenAmountReceived) {
        //slither-disable-start reentrancy-events
        if (swapParams.buyTokenAddress == address(0)) revert TokenAddressZero();
        if (swapParams.sellTokenAddress == address(0)) revert TokenAddressZero();
        if (swapParams.sellAmount == 0) revert InsufficientSellAmount();
        if (swapParams.buyAmount == 0) revert InsufficientBuyAmount();

        IERC20 sellToken = IERC20(swapParams.sellTokenAddress);
        IERC20 buyToken = IERC20(swapParams.buyTokenAddress);

        address approveTo = _getApproveTo();
        SafeERC20.safeApprove(sellToken, approveTo, swapParams.sellAmount);

        uint256 buyTokenBalanceBefore = buyToken.balanceOf(address(this));

        // we don't need the returned value, we calculate the buyTokenAmountReceived ourselves
        // slither-disable-start low-level-calls,unchecked-lowlevel
        // solhint-disable-next-line avoid-low-level-calls
        (bool success,) = AGGREGATOR.call(swapParams.data);
        // slither-disable-end low-level-calls,unchecked-lowlevel

        if (!success) {
            revert SwapFailed();
        }

        SafeERC20.safeApprove(sellToken, approveTo, 0);

        uint256 buyTokenBalanceAfter = buyToken.balanceOf(address(this));
        buyTokenAmountReceived = buyTokenBalanceAfter - buyTokenBalanceBefore;

        if (buyTokenAmountReceived < swapParams.buyAmount) {
            revert InsufficientBuyAmountReceived(buyTokenAmountReceived, swapParams.buyAmount);
        }

        if (TRANSFER_TO_CALLER) {
            SafeERC20.safeTransfer(buyToken, msg.sender, buyTokenAmountReceived);
        }

        emit Swapped(
            swapParams.sellTokenAddress,
            swapParams.buyTokenAddress,
            swapParams.sellAmount,
            swapParams.buyAmount,
            buyTokenAmountReceived
        );

        return buyTokenAmountReceived;
        //slither-disable-end reentrancy-events
    }

    function _getApproveTo() internal virtual returns (address) {
        return AGGREGATOR;
    }
}
