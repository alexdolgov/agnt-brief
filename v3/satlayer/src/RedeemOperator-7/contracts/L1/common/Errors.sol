// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

library Errors {
    error InvalidVault(); // 0xd03a6320
    error InvalidNewOperator(); // 0xba0cdec5
    error InvalidFeeReceiver(); // 0xd200485c
    error InvalidShares(); // 0x6edcc523
    error CallerNotVault(); // 0xedd7338f
    error CallerNotOperator(); // 0xa5523ee5
    error IncorrectState(); // 0x7f3f2b2e
    error InvalidWithdrawalUser(); // 0x36c17319
}
