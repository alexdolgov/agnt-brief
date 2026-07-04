// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

library ErrorsLib {
    error ZeroAddress();
    error ZeroAmount();
    error Unauthorized();

    error InvalidFundVault();
    error VaultIsPaused();
    error Paused(address);

    error FeeReceiverNotSet();
    error FeeRateTooHigh();
    error NoTimeElapsed();

    error DataAlreadyPending();
    error DataNotPending();
    error TimelockNotExpired();
}
