// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {LimitOrderData, TokenInput, TokenOutput} from "./IPAllActionTypeV3.sol";
import {IPMarketV3} from "./IPMarketV3.sol";
import {ILendingMarket, MarketParams} from "@lending-market/interfaces/ILendingMarket.sol";

interface IPActionBorrow {
    /// @notice Supply collateral to Lending Market, then borrow BT from it and swap into token to `receiver`
    function supplyAndBorrowSingleToken(
        MarketParams memory marketParams,
        ILendingMarket lendingMarket,
        IPMarketV3 firaMarket,
        uint256 collateralAmount,
        uint256 tokensToBorrow, //BT
        TokenOutput calldata output,
        LimitOrderData calldata limitOrderData,
        address receiver
    ) external returns (uint256 btBorrowed, uint256 tokenBorrowed);

    function borrowSingleToken(
        MarketParams memory marketParams,
        ILendingMarket lendingMarket,
        IPMarketV3 firaMarket,
        uint256 tokensToBorrow, //BT
        TokenOutput calldata output,
        LimitOrderData calldata limitOrderData,
        address receiver
    ) external returns (uint256 btBorrowed, uint256 tokenBorrowed);

    function repay(
        MarketParams memory marketParams,
        ILendingMarket lendingMarket,
        IPMarketV3 firaMarket,
        uint256 tokensToRepay,
        TokenInput calldata input
    ) external returns (uint256 repayAmount);
}
