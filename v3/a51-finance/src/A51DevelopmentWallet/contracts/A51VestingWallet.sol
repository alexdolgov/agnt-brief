// SPDX-License-Identifier: MIT
pragma solidity =0.8.20;

import "@openzeppelin/contracts/finance/VestingWallet.sol";

contract A51DevelopmentWallet is VestingWallet {
    string public wallet;

    constructor(
        address beneficiary,
        uint64 startTimestamp,
        uint64 durationSeconds,
        string memory _wallet
    ) VestingWallet(beneficiary, startTimestamp, durationSeconds) {
        wallet = _wallet;
    }
}
