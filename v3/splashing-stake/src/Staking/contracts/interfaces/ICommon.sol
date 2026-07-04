// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct Delegation {
    Balance balance;
    DelegationDetails delegation;
}

struct Balance {
    uint256 amount;
    string denom;
}

struct DelegationDetails {
    string delegator_address;
    uint256 shares;
    uint256 decimals;
    string validator_address;
}

struct Coin {
    uint256 amount;
    uint256 decimals;
    string denom;
}

struct Reward {
    Coin[] coins;
    string validator_address;
}


struct Rewards {
    Reward[] rewards;
    Coin[] total;
}
