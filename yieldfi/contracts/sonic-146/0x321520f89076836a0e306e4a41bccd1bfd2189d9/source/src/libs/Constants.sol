// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.20;

library Constants {
    // admin role
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN");

    // role for minting and redeeming tokens
    bytes32 public constant MINTER_AND_REDEEMER_ROLE = keccak256("MINTER_AND_REDEEMER");

    // role for collateral manager who can transfer collateral
    bytes32 public constant COLLATERAL_MANAGER_ROLE = keccak256("COLLATERAL_MANAGER");

    // role for rewarder who can transfer reward
    bytes32 public constant REWARDER_ROLE = keccak256("REWARDER");

    // role for managing blacklist addresses
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER");

    // role assigned to bridges
    bytes32 public constant BRIDGE_ROLE = keccak256("BRIDGE");

    // role for perpetual bond
    bytes32 public constant BOND_ROLE = keccak256("BOND");

    // role for lockbox
    bytes32 public constant LOCKBOX_ROLE = keccak256("LOCKBOX");

    // role for yield
    bytes32 public constant YIELD_ROLE = keccak256("YIELD");

    uint256 constant PINT = 1e18;
    uint256 constant HUNDRED_PERCENT = 100e18;
    uint256 constant ONE_PERCENT = 1e18;
    uint256 constant HUNDRED = 100;

    // Period for vesting strategy rewards
    uint256 constant VESTING_PERIOD = 24 hours;


    // Bridge transaction types
    bytes32 public constant BRIDGE_SEND_HASH = keccak256("BRIDGE_SEND");
}
