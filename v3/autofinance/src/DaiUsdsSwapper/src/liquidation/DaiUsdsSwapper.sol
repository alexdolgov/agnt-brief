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
import { IDaiUsds } from "src/interfaces/external/sky/IDaiUsds.sol";
import { Errors } from "src/utils/Errors.sol";

// solhint-disable var-name-mixedcase

/// @title DAI/USDS Swapper
/// @notice Convert 1:1 between DAI and USDS optionally performing a swap on either side
contract DaiUsdsSwapper is SystemComponent, IAsyncSwapper {
    using Address for address;
    using SafeERC20 for IERC20;

    /// =====================================================
    /// Immutable Vars
    /// =====================================================

    /// @notice Whether resulting funds will be transferred to caller or left as-is
    bool public immutable TRANSFER_TO_CALLER;

    /// @notice Returns the DAI/USDS Converter contract
    IDaiUsds public immutable daiUsdsConverter;

    /// @notice Returns the DAI token address
    IERC20 public immutable dai;

    /// @notice Returns the USDS token address
    IERC20 public immutable usds;

    /// =====================================================
    /// Structs
    /// =====================================================

    struct SwapInstructions {
        bool swapBefore;
        bool performSwap;
    }

    struct SecondarySwap {
        address asyncSwapper;
        SwapParams params;
    }

    /// =====================================================
    /// Functions - Construction
    /// =====================================================

    constructor(
        ISystemRegistry _systemRegistry,
        bool transferToCaller,
        address _daiUsdsConverter
    ) SystemComponent(_systemRegistry) {
        Errors.verifyNotZero(_daiUsdsConverter, "daiUsdsConverter");

        daiUsdsConverter = IDaiUsds(_daiUsdsConverter);
        dai = IERC20(IDaiUsds(_daiUsdsConverter).dai());
        usds = IERC20(IDaiUsds(_daiUsdsConverter).usds());

        TRANSFER_TO_CALLER = transferToCaller;
    }

    /// =====================================================
    /// Functions - Public
    /// =====================================================

    /// @inheritdoc IAsyncSwapper
    function swap(
        SwapParams memory swapParams
    ) public payable virtual returns (uint256 buyTokenAmountReceived) {
        if (swapParams.sellTokenAddress == address(0)) revert TokenAddressZero();
        if (swapParams.buyTokenAddress == address(0)) revert TokenAddressZero();
        if (swapParams.sellAmount == 0) revert InsufficientSellAmount();
        if (swapParams.buyAmount == 0) revert InsufficientBuyAmount();

        SwapInstructions memory swapInstructions = abi.decode(swapParams.data, (SwapInstructions));

        address receiver = TRANSFER_TO_CALLER ? msg.sender : address(this);

        if (swapInstructions.performSwap) {
            SecondarySwap memory secondarySwapParams = abi.decode(swapParams.extraData, (SecondarySwap));

            if (swapInstructions.swapBefore) {
                buyTokenAmountReceived = _swapBefore(secondarySwapParams, receiver);
            } else {
                buyTokenAmountReceived = _swapAfter(swapParams, secondarySwapParams);
            }
        } else {
            // Converter is 1:1
            buyTokenAmountReceived = swapParams.sellAmount;

            if (swapParams.sellTokenAddress == address(dai) && swapParams.buyTokenAddress == address(usds)) {
                _daiOut(receiver, swapParams.sellAmount);
            } else if (swapParams.sellTokenAddress == address(usds) && swapParams.buyTokenAddress == address(dai)) {
                _usdsOut(receiver, swapParams.sellAmount);
            } else {
                _revertBadTokens();
            }
        }

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

    /// =====================================================
    /// Functions - Private
    /// =====================================================

    /// @dev Perform the operations needed when we are swapping after converting the tokens
    /// @param swapParams Encoded swap data
    /// @param secondarySwapParams Parameters for the secondary swap
    /// @return amountReceived The amount of buyToken received from the swap
    function _swapAfter(
        SwapParams memory swapParams,
        SecondarySwap memory secondarySwapParams
    ) private returns (uint256 amountReceived) {
        // We're only here because we need to do a conversion. Whatever the sell token is on the secondary
        // params is the one we need to acquire
        if (secondarySwapParams.params.sellTokenAddress == address(dai)) {
            _usdsOut(address(this), swapParams.sellAmount);
        } else if (secondarySwapParams.params.sellTokenAddress == address(usds)) {
            _daiOut(address(this), swapParams.sellAmount);
        } else {
            _revertBadTokens();
        }
        amountReceived = _performSwap(secondarySwapParams);
        if (TRANSFER_TO_CALLER) {
            IERC20(swapParams.buyTokenAddress).safeTransfer(msg.sender, amountReceived);
        }
    }

    /// @dev Perform the operations needed when we are swapping before converting the tokens
    /// @param secondarySwapParams Parameters for the secondary swap
    /// @param receiver Who should receiver the tokens
    /// @return amountReceived The amount of buyToken received from the swap
    function _swapBefore(
        SecondarySwap memory secondarySwapParams,
        address receiver
    ) private returns (uint256 amountReceived) {
        if (
            secondarySwapParams.params.buyTokenAddress != address(dai)
                && secondarySwapParams.params.buyTokenAddress != address(usds)
        ) {
            _revertBadTokens();
        }

        amountReceived = _performSwap(secondarySwapParams);
        // We're only here because we need to do a conversion and we got either DAI or USDS on that swap
        // so figure out which and then convert
        if (secondarySwapParams.params.buyTokenAddress == address(dai)) {
            _daiOut(receiver, amountReceived);
        } else {
            _usdsOut(receiver, amountReceived);
        }
    }

    /// @dev Perform a secondary swap
    /// @param secondarySwapParams Parameters for the secondary swap
    /// @return amountReceived The amount of buyToken received from the swap
    function _performSwap(
        SecondarySwap memory secondarySwapParams
    ) private returns (uint256 amountReceived) {
        // Still has to be one of our swappers
        systemRegistry.asyncSwapperRegistry().verifyIsRegistered(secondarySwapParams.asyncSwapper);

        IERC20 buyToken = IERC20(secondarySwapParams.params.buyTokenAddress);

        uint256 buyTokenBalanceBefore = buyToken.balanceOf(address(this));

        // Our swappers are all safe to delegatecall
        // slither-disable-next-line unused-return
        secondarySwapParams.asyncSwapper.functionDelegateCall(
            abi.encodeCall(IAsyncSwapper.swap, secondarySwapParams.params), "SecondarySwapFailed"
        );
        uint256 buyTokenBalanceAfter = buyToken.balanceOf(address(this));

        amountReceived = buyTokenBalanceAfter - buyTokenBalanceBefore;
    }

    /// @dev Performs DAI to USDS swap and approvals
    /// @param receiver Who should receiver the tokens
    /// @param amount Amount to convert
    function _daiOut(address receiver, uint256 amount) private {
        dai.safeApprove(address(daiUsdsConverter), amount);
        daiUsdsConverter.daiToUsds(receiver, amount);
    }

    /// @dev Performs USDS to DAI swap and approvals
    /// @param receiver Who should receiver the tokens
    /// @param amount Amount to convert
    function _usdsOut(address receiver, uint256 amount) private {
        usds.safeApprove(address(daiUsdsConverter), amount);
        daiUsdsConverter.usdsToDai(receiver, amount);
    }

    /// @dev Always reverts
    function _revertBadTokens() private pure {
        revert Errors.InvalidParam("inOutTokens");
    }
}
