// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IAsyncSwapper, SwapParams } from "src/interfaces/liquidation/IAsyncSwapper.sol";
import { SystemComponent, ISystemRegistry } from "src/SystemComponent.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import { IRootPriceOracle } from "src/interfaces/oracles/IRootPriceOracle.sol";
import { IERC20Metadata as IERC20 } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { Errors } from "src/utils/Errors.sol";
import { Roles } from "src/libs/Roles.sol";

/// @title Swaps tokens on Tokemak controlled "bank" multisig to avoid high slippage swaps on illiquid markets
/// @dev WARNING!! Do NOT use this contract with a non Tokemak controlled contract.  This contract forgoes some
/// necessary checks for interacting with external contracts
/// @dev In addition to the above, this should only be used via the LiquidationRow.sol contract.  This contract performs
/// necessary checks to ensure the execution we are getting is within some margin
contract BankSwapper is IAsyncSwapper, SystemComponent {
    using SafeERC20 for IERC20;

    /// @notice Address of the bank contract
    address public immutable BANK;

    // @notice Reverts when the calculated buy amount is 0
    error BuyAmountZero();

    // address(this) will be LiquidationRow contract in delegatecall context
    modifier onlyLiquidator() {
        if (!systemRegistry.accessController().hasRole(Roles.BANK_SWAP_MANAGER, address(this))) {
            revert Errors.AccessDenied();
        }
        _;
    }

    constructor(address _bank, ISystemRegistry _systemRegistry) SystemComponent(_systemRegistry) {
        Errors.verifyNotZero(_bank, "_bank");
        Errors.verifyNotZero(address(_systemRegistry.rootPriceOracle()), "_systemRegistry.rootPriceOracle");

        // slither-disable-next-line missing-zero-check
        BANK = _bank;
    }

    /// @inheritdoc IAsyncSwapper
    function swap(
        SwapParams memory swapParams
    ) external payable onlyLiquidator returns (uint256 buyTokenAmountReceived) {
        IERC20 sellToken = IERC20(swapParams.sellTokenAddress);
        IERC20 buyToken = IERC20(swapParams.buyTokenAddress);
        uint256 sellAmount = swapParams.sellAmount;

        IRootPriceOracle oracle = systemRegistry.rootPriceOracle();
        uint256 sellTokenPrice = oracle.getPriceInEth(swapParams.sellTokenAddress);
        uint256 buyTokenPrice = oracle.getPriceInEth(swapParams.buyTokenAddress);

        // Expected buy amount from Price Oracle
        buyTokenAmountReceived = _calculateExpectedBuyAmount(
            sellAmount, swapParams.sellTokenAddress, swapParams.buyTokenAddress, sellTokenPrice, buyTokenPrice
        );

        if (buyTokenAmountReceived == 0) {
            revert BuyAmountZero();
        }

        sellToken.safeTransfer(BANK, sellAmount);
        // slither-disable-next-line arbitrary-send-erc20
        buyToken.safeTransferFrom(BANK, address(this), buyTokenAmountReceived);

        // slither-disable-next-line reentrancy-events
        emit Swapped(address(sellToken), address(buyToken), sellAmount, buyTokenAmountReceived, buyTokenAmountReceived);
    }

    /**
     * @notice Calculates the expected buy amount for a swap
     * @dev Handles decimal differences between tokens by scaling amounts appropriately:
     *      - If buy token has more decimals than sell token => multiplies by 10^(difference)
     *      - If sell token has more decimals than buy token => divides by 10^(difference)
     * @param sellAmount The amount of the token to sell
     * @param fromToken The address of the token to sell
     * @param buyTokenAddress The address of the token to buy
     * @param sellTokenPrice The price in ETH of the token to sell
     * @param buyTokenPrice The price in ETH of the token to buy
     * @return expectedBuyAmount The expected buy amount adjusted for decimal differences
     */
    function _calculateExpectedBuyAmount(
        uint256 sellAmount,
        address fromToken,
        address buyTokenAddress,
        uint256 sellTokenPrice,
        uint256 buyTokenPrice
    ) internal view returns (uint256 expectedBuyAmount) {
        uint8 sellTokenDecimals = IERC20(fromToken).decimals();
        uint8 buyTokenDecimals = IERC20(buyTokenAddress).decimals();

        if (buyTokenDecimals >= sellTokenDecimals) {
            expectedBuyAmount =
                (sellAmount * sellTokenPrice * 10 ** (buyTokenDecimals - sellTokenDecimals)) / buyTokenPrice;
        } else {
            expectedBuyAmount =
                (sellAmount * sellTokenPrice) / (buyTokenPrice * 10 ** (sellTokenDecimals - buyTokenDecimals));
        }
    }
}
