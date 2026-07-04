// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {IBondToken} from "../../interfaces/IBondToken.sol";
import {IFiraWrappedStandardized} from "../../interfaces/IFiraWrappedStandardized.sol";

import {IBCToken} from "../../interfaces/IBCToken.sol";
import {ApproxParams, LimitOrderData, TokenInput, TokenOutput} from "../../interfaces/IPAllActionTypeV3.sol";
import {ILendingMarket, MarketParams} from "@lending-market/interfaces/ILendingMarket.sol";

import {IPMarketV3} from "../../interfaces/IPMarketV3.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IPActionBorrow} from "../../interfaces/IPActionBorrow.sol";
import {ActionDelegateBase} from "./base/ActionDelegateBase.sol";

/// @title ActionBorrow
/// @notice Router facet enabling fixed-rate borrowing through integration with the Lending Market
/// @dev Provides functions to supply collateral and borrow against it at fixed rates. The borrowed
///      Bond Tokens (BT) are automatically swapped to the user's desired output token through the
///      Fira AMM market. This enables users to borrow stablecoins at fixed rates in a single transaction.
///
///      Workflow for supplyAndBorrowSingleToken:
///      1. User supplies collateral to Lending Market
///      2. User borrows BT from Lending Market (debt position created)
///      3. BT is swapped to FW via Fira AMM
///      4. FW is redeemed to the user's desired output token
///
///      Note: LimitOrderData is kept for interface compatibility but orderbook is not used in this version.
contract ActionBorrow is ActionDelegateBase, IPActionBorrow {
    using SafeERC20 for IERC20;

    /// @notice Supplies collateral and borrows in a single transaction, converting BT to desired output token
    /// @dev Executes the full borrow flow: supply collateral -> borrow BT -> swap BT to FW -> redeem to token.
    ///      The borrowed amount creates a debt position in the Lending Market that must be repaid.
    /// @param marketParams The Lending Market parameters defining the collateral/debt pair
    /// @param lendingMarket The Lending Market contract address
    /// @param firaMarket The Fira AMM market used to swap BT for FW
    /// @param collateralAmount Amount of collateral tokens to supply
    /// @param tokensToBorrow Amount of BT to borrow from the Lending Market
    /// @param output Token output configuration including desired token and minimum output
    /// @param limitOrderData Limit order data (not used in current version, kept for interface compatibility)
    /// @param receiver Address to receive the final output tokens
    /// @return btBorrowed Actual amount of BT borrowed
    /// @return tokenBorrowed Amount of output tokens received by the receiver
    function supplyAndBorrowSingleToken(
        MarketParams memory marketParams,
        ILendingMarket lendingMarket,
        IPMarketV3 firaMarket,
        uint256 collateralAmount,
        uint256 tokensToBorrow,
        TokenOutput calldata output,
        LimitOrderData calldata limitOrderData,
        address receiver
    ) external returns (uint256 btBorrowed, uint256 tokenBorrowed) {
        require(collateralAmount > 0, "AB: zero collateral");
        require(tokensToBorrow > 0, "AB: zero borrow");
        require(receiver != address(0), "AB: zero receiver");
        require(address(firaMarket) != address(0), "AB: zero firaMarket");
        require(address(lendingMarket) != address(0), "AB: zero lendingMarket");
        // 1. Transfer collateral from user
        IERC20(marketParams.collateralToken).safeTransferFrom(msg.sender, address(this), collateralAmount);
        // 2. Approve collateral to LM
        IERC20(marketParams.collateralToken).forceApprove(address(lendingMarket), collateralAmount);
        // 3. Supply collateral to LM
        ILendingMarket(lendingMarket)
            .supplyCollateral(
                marketParams,
                collateralAmount,
                msg.sender, // Position owner
                "" // No callback data
            );
        // 4. Borrow BT from LM
        (btBorrowed,) = ILendingMarket(lendingMarket)
            .borrow(
                marketParams,
                tokensToBorrow,
                0,
                msg.sender, // Debt ownership
                address(this) // Token receiver
            );
        (IFiraWrappedStandardized FW, IBondToken BT,) = firaMarket.readTokens();
        _transferOut(address(BT), _entry_swapExactBtForFw(address(firaMarket), limitOrderData), btBorrowed);
        (uint256 fwOut,) = _swapExactBtForFw(address(this), address(firaMarket), btBorrowed, 0, limitOrderData);
        // Transfer FW to FW to be burned as shares
        _transferOut(address(FW), address(FW), fwOut);
        tokenBorrowed = _redeemFwToToken(address(this), address(FW), fwOut, output, false);
        // 5. Transfer the borrowed token to receiver
        _transferOut(output.tokenOut, receiver, tokenBorrowed);
    }

    /// @notice Borrows against existing collateral and converts BT to desired output token
    /// @dev Similar to supplyAndBorrowSingleToken but assumes collateral is already supplied.
    ///      User must have sufficient collateral in their Lending Market position.
    /// @param marketParams The Lending Market parameters defining the collateral/debt pair
    /// @param lendingMarket The Lending Market contract address
    /// @param firaMarket The Fira AMM market used to swap BT for FW
    /// @param tokensToBorrow Amount of BT to borrow from the Lending Market
    /// @param output Token output configuration including desired token and minimum output
    /// @param limitOrderData Limit order data (not used in current version, kept for interface compatibility)
    /// @param receiver Address to receive the final output tokens
    /// @return btBorrowed Actual amount of BT borrowed
    /// @return tokenBorrowed Amount of output tokens received by the receiver
    function borrowSingleToken(
        MarketParams memory marketParams,
        ILendingMarket lendingMarket,
        IPMarketV3 firaMarket,
        uint256 tokensToBorrow,
        TokenOutput calldata output,
        LimitOrderData calldata limitOrderData,
        address receiver
    ) external returns (uint256 btBorrowed, uint256 tokenBorrowed) {
        require(tokensToBorrow > 0, "AB: zero borrow");
        require(receiver != address(0), "AB: zero receiver");
        require(address(firaMarket) != address(0), "AB: zero firaMarket");
        require(address(lendingMarket) != address(0), "AB: zero lendingMarket");
        // Borrow BT from LM
        (btBorrowed,) = ILendingMarket(lendingMarket)
            .borrow(
                marketParams,
                tokensToBorrow,
                0,
                msg.sender, // Debt ownership
                address(this) // Token receiver
            );
        (IFiraWrappedStandardized FW, IBondToken BT,) = firaMarket.readTokens();
        _transferOut(address(BT), _entry_swapExactBtForFw(address(firaMarket), limitOrderData), btBorrowed);
        (uint256 fwOut,) = _swapExactBtForFw(address(this), address(firaMarket), btBorrowed, 0, limitOrderData);
        // Transfer FW to FW to be burned as shares
        _transferOut(address(FW), address(FW), fwOut);
        tokenBorrowed = _redeemFwToToken(address(this), address(FW), fwOut, output, false);
        // 5. Transfer the borrowed token to receiver
        _transferOut(output.tokenOut, receiver, tokenBorrowed);
    }

    /// @notice Repays a borrow position by converting input tokens to BT
    /// @dev Handles repayment differently based on BT expiry status:
    ///      - Before expiry: Swaps input token -> FW -> BT via AMM, then repays
    ///      - After expiry: Mints BT+CT from FW (1:1 redemption available), then repays
    ///      Any excess BT after repayment is refunded to the user.
    /// @param marketParams The Lending Market parameters defining the collateral/debt pair
    /// @param lendingMarket The Lending Market contract address
    /// @param firaMarket The Fira AMM market used for token conversion
    /// @param tokensToRepay Minimum amount of BT debt to repay
    /// @param input Token input configuration including the token to convert from
    /// @return repayAmount Actual amount of BT debt repaid
    function repay(
        MarketParams memory marketParams,
        ILendingMarket lendingMarket,
        IPMarketV3 firaMarket,
        uint256 tokensToRepay, // Always BT
        TokenInput calldata input
    ) external returns (uint256 repayAmount) {
        (,, uint256 borrowAssets,,) =
            lendingMarket.getUserPosition(
                marketParams,
                msg.sender // Position owner
            );
        require(borrowAssets > 0, "AB: no borrow");
        require(borrowAssets >= tokensToRepay, "AB: repay too much");
        (IFiraWrappedStandardized FW, IBondToken BT, IBCToken CT) = firaMarket.readTokens();

        if (!BT.isExpired()) {
            (uint256 netBtOut,,) =
                delegateToSwapExactTokenForBtSimple(address(this), address(firaMarket), tokensToRepay, input);

            // If the user has no borrow position, we can skip the repayment
            uint256 btToRepay = netBtOut;
            if (netBtOut > borrowAssets) {
                // If the user is trying to repay more than they owe, we can only repay what they owe
                btToRepay = borrowAssets;
            }
            _safeApprove(address(BT), address(lendingMarket), btToRepay);
            (repayAmount,) = lendingMarket.repay(marketParams, btToRepay, 0, msg.sender, "");
            // Refund any excess BT back to the user

            if (netBtOut > repayAmount) {
                IERC20(address(BT)).safeTransfer(msg.sender, netBtOut - repayAmount);
            }
        } else {
            uint256 netFwOut = _mintFwFromToken(address(CT), address(FW), 0, input);
            uint256 netBTOut = _mintBcFromFw(address(this), address(FW), address(CT), netFwOut, tokensToRepay, false);

            uint256 btToRepay = netBTOut;
            if (netBTOut > borrowAssets) {
                btToRepay = borrowAssets;
            }

            _safeApprove(address(BT), address(lendingMarket), btToRepay);
            (repayAmount,) = lendingMarket.repay(marketParams, btToRepay, 0, msg.sender, "");

            // Refund any excess BT back to the user
            if (netBTOut > repayAmount) {
                IERC20(address(BT)).safeTransfer(msg.sender, netBTOut - repayAmount);
            }
        }
    }
}
