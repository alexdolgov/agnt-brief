// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

// Message type for a deposit request sent from Router to Agent.
uint8 constant MSG_DEPOSIT_REQUEST = 1;

// Message type for a redeem request sent from Router to Agent.
uint8 constant MSG_REDEEM_REQUEST = 2;

// Message type for a fulfilled request response sent from Agent to Router.
uint8 constant MSG_REQUEST_FULFILL = 3;

// Message type for a cancelled request response sent from Agent to Router.
uint8 constant MSG_REQUEST_CANCEL = 4;
