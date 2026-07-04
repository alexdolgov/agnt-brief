// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.26;  


// uint32 constant DAY  = (1 days);
// uint32 constant WEEK = (1 weeks);
// TODO: FIX BEFORE PROD
uint32 constant WEEK = (3 hours);


// TODO: FIX BEFORE PROD
function currentEpoch() view returns (uint32) {
    // uint256 fullDays = (block.timestamp / DAY);
    // // (fullDays - 1) % 7 will be 0 on friday and 6 on thursday.
    // return uint32((fullDays - (fullDays - 1) % 7) * DAY); // returns last friday 00:00 UTC
    return uint32(block.timestamp) / WEEK * WEEK;
}

function previousEpoch() view returns (uint32) {
    return currentEpoch() - WEEK;
}

function nextEpoch() view returns (uint32) {
    return currentEpoch() + WEEK;
}
