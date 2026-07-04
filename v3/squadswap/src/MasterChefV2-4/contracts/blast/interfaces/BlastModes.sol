// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

library BlastModes {
    enum YieldMode {
        AUTOMATIC,
        VOID,
        CLAIMABLE
    }

    enum GasMode {
        VOID,
        CLAIMABLE
    }
}
