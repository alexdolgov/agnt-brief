// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {Allocation} from "../common/SaleStruct.sol";

/**
 * @notice Struct representing a user based allocation for a specific phase of a sale.
 *
 * @dev Backend is in charge of generating an allocation, which will depends on the sale type:
 *      - IGO: allocation based on the tier from which wallet is part of,
 *      - VPR IGO: off-chain backend lottery + allocation based on off-chain actions, e.g.
 *          * social task: +50% from base price,
 *          * in-game tasks: +33% from base price,
 *          * etc...
 *      - INO: allocation based on SFUND/SFNTS staked-farmed.
 *
 * @param base User based allocation data.
 * @param account Wallet address of the buyer.
 */
struct UserAllocation {
    Allocation base;
    address account;
}

/**
 * @notice Struct representing a user based allocation with a refund fee.
 *
 * @param usrData User based allocation data.
 * @param refundFee Fee to be paid by the buyer in case of refund, expressed in
 *        {SaleStorage.SetUp.paymentToken} - decimals defined in {IGOVesting.decimals}.
 */
struct UserAllocationFee {
    UserAllocation usrData;
    uint256 refundFee;
}
