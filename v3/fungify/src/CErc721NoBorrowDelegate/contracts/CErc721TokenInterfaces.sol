// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.26;

import "contracts/CErc20InterestMarketInterfaces.sol";

contract CErc721Storage {

    /**
     * @notice NFTs supplied
     */
    uint[] public heldNFTs;

    /**
     * @notice Accumulator of the total earned interest rate by suppliers since the opening of the market
     */
    uint public supplyIndex;

    struct SupplyInterestSnapshot {
        uint interestIndex;
        uint interestAccrued;
    }
    mapping(address => SupplyInterestSnapshot) internal supplyInterest;

    /**
     * @notice NFTs supplied per user
     */
    uint public userHeldNFTCount;
    mapping(address => uint[]) public userHeldNFTs;
}

abstract contract CErc721Interface is CErc20Interface, CErc721Storage {

    /**
     * @notice Event emitted when interest tokens are redeemed
     */
    event RedeemInterest(address redeemer, uint redeemInterest, uint redeemTokens);

    /**
     * @notice Not supported. Use mint(uint[]) instead.
     */
    function mint(uint) override external returns (uint) {
        revert TokenErrorReporter.Unsupported();
    }
    /**
     * @notice Sender supplies assets into the market and receives cTokens in exchange
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param nftIds The NFT IDs to supply
     * @return uint 0=success, otherwise a failure (see ErrorReporter.sol for details)
     */
    function mint(uint[] memory nftIds) virtual external returns (uint);

    /**
     * @notice Redeems the interest accrued from the supplied assets. Owed interest will also be paid from this amount.
     * @param redeemer The address to redeem the interest for
     *                 If the caller is not the comptroller the sender is the redeemer.
     * @return uint 0=success, otherwise a failure (see ErrorReporter.sol for details)
     */
    function redeemInterest(address redeemer) virtual external returns (uint);

    /**
     * @notice Redeems the interest accrued from the supplied assets. Owed interest will also be paid from this amount.
     * @param redeemer The address to redeem the interest for
     *                 Only the comptroller can call.
     * @return uint 0=success, otherwise a failure (see ErrorReporter.sol for details)
     */
    function _redeemInterestForLiquidation(address redeemer) virtual external returns (uint);

    /**
     * @notice Not supported. Use repayBorrow(uint[], uint) instead.
     */
    function repayBorrow(uint) override external returns (uint) {
        revert TokenErrorReporter.Unsupported();
    }
    /**
     * @notice Sender repays their own borrow
     * @param nftIds The NFT IDs to be used for the repayment
     * @param repayInterest The min amount of interest to be repaid in interest market units
     * @return uint 0=success, otherwise a failure (see ErrorReporter.sol for details)
     */
    function repayBorrow(uint[] memory nftIds, uint repayInterest) virtual external returns (uint);

    /**
     * @notice Not supported. Use repayBorrowBehalf(address, uint[], uint) instead.
     */
    function repayBorrowBehalf(address, uint) override external returns (uint) {
        revert TokenErrorReporter.Unsupported();
    }
    /**
     * @notice Repays a loan on behalf of another user
     * @param borrower The account with the debt being payed off
     * @param nftIds The NFT IDs to be used for the repayment
     * @param repayInterest The min amount of interest to be repaid in interest market units
     * @return uint 0=success, otherwise a failure (see ErrorReporter.sol for details)
     */
    function repayBorrowBehalf(address borrower, uint[] memory nftIds, uint repayInterest) virtual external returns (uint);

    /**
     * @notice Not supported.
     */
    function _addReserves(uint addAmount) override external returns (uint) {
        revert TokenErrorReporter.Unsupported();
    }

    /**
     * @notice Not supported. Use _liquidateBorrow(address, address, uint[]) instead.
     */
    function _liquidateBorrow(address liquidator, address borrower, uint repayAmount) override external returns (uint) {
        revert TokenErrorReporter.Unsupported();
    }
    /**
     * @notice The liquidator liquidates the borrowers collateral.
     *         This function can only be called by the Comptroller.
     * @param liquidator The liquidator who called Comptroller::batchLiquidateBorrow
     * @param borrower The borrower of this cToken to be liquidated
     * @param nftIds The NFT IDs of the underlying borrowed asset to repay
     * @return uint The amount of the underlying borrowed asset that was actually repaid
     */
    function _liquidateBorrow(address liquidator, address borrower, uint[] memory nftIds) virtual external returns (uint);

    event Mint(address minter, uint mintAmount, uint mintTokens, uint[] nftIds);
    event Redeem(address redeemer, uint redeemAmount, uint redeemTokens, uint[] nftIds);
    event Borrow(address borrower, uint[] nftIds, uint accountBorrows, uint totalBorrows);
    event RepayBorrow(address payer, address borrower, uint[] nftIds, uint repayInterest, uint accountBorrows, uint totalBorrows);
    event LiquidateBorrow(address liquidator, address borrower, uint[] nftIds, uint repayInterest);
}

abstract contract CErc721NoBorrowInterface {
    /**
     * @notice Sender redeems cTokens in exchange for a specified amount of underlying asset
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param nftIds The NFT IDs to redeem
     * @return uint 0=success, otherwise a failure (see ErrorReporter.sol for details)
     */
    function redeemUnderlyingNfts(uint[] memory nftIds) virtual external returns (uint);
}