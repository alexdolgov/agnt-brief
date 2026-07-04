// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.20;

struct UserCooldown {
    uint104 cooldownEnd;
    uint152 underlyingAmount;
}
