// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library AutomationPermissions {
    uint256 internal constant FARM_HARVEST = 1 << 0;
    uint256 internal constant FARM_COMPOUND = 1 << 1;
    uint256 internal constant FARM_EXIT = 1 << 2;
    uint256 internal constant NFT_HARVEST = 1 << 3;
    uint256 internal constant NFT_COMPOUND = 1 << 4;
    uint256 internal constant NFT_EXIT = 1 << 5;
    uint256 internal constant NFT_REBALANCE = 1 << 6;
    uint256 internal constant ALL = (1 << 7) - 1;
}
