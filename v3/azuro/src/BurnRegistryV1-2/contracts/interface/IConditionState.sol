// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.9;

interface IConditionState {
    enum ConditionState {
        CREATED,
        RESOLVED,
        CANCELED,
        PAUSED
    }
}
