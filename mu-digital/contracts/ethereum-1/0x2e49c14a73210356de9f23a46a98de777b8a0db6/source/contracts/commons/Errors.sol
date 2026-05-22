// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * @title Errors
 * @author Mu Digital
 * @notice Library containing all custom error definitions for the Mu Protocol
 */
library Errors {
    error ZeroAddress();
    error InvalidArray();
    error NotAdmin();
    error NotPauser();
    error NotOracle();
    error NotMinter();
    error NotBurner();
    error NotWithdrawer();
    error NotTransfer();
    error NotRewardDepositor();
    error NotAuthorized();
    error InvalidAmount();
    error InvalidToken();
    error InvalidVault();
    error VaultAlreadySet();
    error InvalidPrice();
    error AlreadyClaimed();
    error InvalidRequestId();
    error CooldownTooShort();
    error NotInWhitelist();
    error SlippageTooHigh();
    error PriceChangeExceedsLimit();
    error UpdateTooFrequent();
    error InvalidInterval();
    error NoPaymentsDue();
    error ScheduleActive();
    error NoActiveSchedule();
    error AmountLocked();
    error PaymentsDue();
    error InvalidDecimals();
    error PendingRedeemRequestsExceedsLimit();
}
