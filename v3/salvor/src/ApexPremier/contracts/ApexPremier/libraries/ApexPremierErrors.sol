// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./ApexPremierTypes.sol";

// === Initialization Errors ===
error AlreadyInitialized();
error NotInitialized();
error TokensNotDeposited();
error NotEnoughFundsForFees();

// === Access Control Errors ===
error NotAdmin();
error NotModerator();
error UpdatePriceTooSoon();

// === Parameter Validation Errors ===
error InvalidAddress();
error InvalidAmount();
error InvalidAmountOfTokensToSell();
error InvalidDuration();
error InvalidLaunchFee();
error InvalidStartTime();
error InvalidTeamWallet();
error InvalidToken();
error InvalidName();
error InvalidTokenPrice();
error InvalidTransfer();
error InvalidVestingCliff();
error InvalidVestingDuration();
error InvalidInitialVestingPercentage();
error DurationTooShort();
error InvalidMinAvaxPerParticipant();

// === Premier State Errors ===
error NotActive();
error Ended();
error NotEnded();
error NotInReview();
error Completed();
error NotApproved();
error AlreadyApproved();
error InReview();
error NotReadyForReview();
error NotInParametersSet();
error InvalidState(PremierState currentState, PremierState requiredState);
error VestingAlreadyInitialized();
error UnsoldTokensAlreadyClaimed();

// === Participation Errors ===
error FundsNotWithdrawn();
error FundsAlreadyWithdrawn();
error InsufficientRemainingTokens();
error NotEligible(PremierPhases phase);
error AmountExceedsCap(PremierPhases phase);

// === Vesting Errors ===
error NoTokensDue();

// === Phase Errors ===
error InvalidPhase(PremierPhases phase);
