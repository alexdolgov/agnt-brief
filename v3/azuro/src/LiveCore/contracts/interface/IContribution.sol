// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

interface IContribution {
    struct Contribution {
        uint128[2] payouts;
        uint128 totalNetBets;
    }
}
