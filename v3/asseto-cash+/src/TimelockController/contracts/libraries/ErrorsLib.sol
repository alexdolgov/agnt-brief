
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

library ErrorsLib {
    // ─── Common ───────────────────────────────────────────────────────────────
    error zeroAddress();
    error zeroToken();
    error sameToken();
    error zeroAmount();
    error invalidFeeRecipient();

    // ─── Order signer ─────────────────────────────────────────────────────────
    error selfSigner();

    // ─── lock() ───────────────────────────────────────────────────────────────
    error emptyOrderId();
    error orderExists();
    error deadlineInPast();
    error transferFailed();

    // ─── settle() ─────────────────────────────────────────────────────────────
    error orderNotLocked();
    error orderExpired();
    error quoteTooLow();
    error quoteExpired();
    error orderIdMismatch();
    error wrongTaker();
    error wrongRouterAddress();
    error tokenMismatch();
    error invalidMakerSig();
    error unauthorizedMakerSigner();
    error feeMismatch();
    error makerFundingAddressMismatch();
    error settleAmountInMismatch();
    error amountInTooHigh();
    error insufficientLockedAmount();

    // ─── refund() ─────────────────────────────────────────────────────────────
    error callerIsNotTaker();
    error deadlineNotPassed();

    // ─── instantSettle() ──────────────────────────────────────────────────────
    error orderIdUsed();
    error invalidTakerSig();
    error feeExceedsAmountIn();
    error unauthorizedMarker();

    // ─── Permit2 ──────────────────────────────────────────────────────────────
    error permit2NotConfigured();
    error permit2AmountMismatch();

    // ─── Exchange platform attestation ────────────────────────────────────────
    error unauthorizedExchangeSigner();
}