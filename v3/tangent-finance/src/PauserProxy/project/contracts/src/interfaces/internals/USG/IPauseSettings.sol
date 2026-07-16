// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IPauseSettings {
    enum PauseEnum {
        DepositPaused,
        BorrowPaused,
        LeveragePaused
    }
    function getPausedSettings() external view returns (uint64, uint64, uint64);

    function setPause(PauseEnum pauseType, uint64 isPaused) external;
}
