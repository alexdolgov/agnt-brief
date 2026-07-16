// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

library Errors {
    error Blacklisted();
    error ZeroAddress();
    error ZeroAmount();    
    error Unauthorized();
    error ManagementFeeIsZero();
    error ValueNotSet();
}