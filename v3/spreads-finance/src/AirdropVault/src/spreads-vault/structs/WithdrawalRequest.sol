// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.29;

struct WithdrawalRequest {
    address requester;
    uint256 shareAmount;
    uint256 requestTimestamp;
    uint256 requestId;
    bool allocated;
    uint256 allocatedAmount;
    bool canceled; // Flag to mark the request as canceled
}
