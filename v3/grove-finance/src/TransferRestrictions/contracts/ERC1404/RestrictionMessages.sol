// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

contract RestrictionMessages {
    // ERC1404 Error codes and messages
    uint8 public constant SUCCESS_CODE = 0;
    uint8 public constant FAILURE_NON_WHITELIST = 1;
    uint8 public constant FAILURE_TIMELOCK = 2;
    uint8 public constant FAILURE_TRANSFERS_PAUSED = 3;

    string public constant SUCCESS_MESSAGE = "SUCCESS";
    string public constant FAILURE_NON_WHITELIST_MESSAGE = "The transfer was restricted due to whitelist configuration";
    string public constant FAILURE_TIMELOCK_MESSAGE = "The transfer was restricted due to timelocked tokens";
    string public constant FAILURE_TRANSFERS_PAUSED_MESSAGE = "The transfer was restricted due to the contract being paused";
    string public constant UNKNOWN_ERROR = "Unknown Error Code";
}