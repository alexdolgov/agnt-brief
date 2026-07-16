// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

/* ------------------------ *
 *      Shared Errors       *
 * -----------------------  */

error NoAccess();
error NoUnderlying();
error NotPermissioned();

/* ------------------------ *
 *      SDYC Errors         *
 * -----------------------  */

error BadFee();
error BadAddress();
error BadAmount();
error BadPrice();
error BadOracleDecimals();
error FeesPending();
error InvalidSignature();

/* ------------------------ *
 *    Aggregators Errors    *
 * -----------------------  */
error RoundDataReported();
error StaleAnswer();
error Overflow();
error InsufficientGas();

/* ------------------------ *
 *      Teller Errors       *
 * -----------------------  */
error InvalidTradingWindow();
error BadTime();

/* ------------------------ *
 *    Teleporter Errors     *
 * -----------------------  */
error NotSupported();
error NonceUsed();
error CallFailed();
error InvalidGasFee();
error InvalidArrayLength();
error InvalidString();
