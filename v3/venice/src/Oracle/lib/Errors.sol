// SPDX-License-Identifier: MIT
pragma solidity =0.8.26;

library Errors {
    string constant ZERO_ADDRESS             = "ZERO_ADDRESS";
    string constant STAKE_ZERO               = "STAKE_ZERO";
    string constant TRANSFER_FAIL            = "TRANSFER_FAIL";
    string constant BAD_UNSTAKE              = "BAD_UNSTAKE";
    string constant NO_COOLDOWN              = "NO_COOLDOWN";
    string constant COOLDOWN_NOT_OVER        = "COOLDOWN_NOT_OVER";
    string constant NO_REWARDS               = "NO_REWARDS";
    string constant NOT_TRANSFERRABLE        = "NOT_TRANSFERRABLE";
    string constant NOT_RELAYER              = "NOT_RELAYER";
    string constant INVALID_UTILIZATION_RATE = "INVALID_UTILIZATION_RATE";
}