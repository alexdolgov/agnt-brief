// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

/* ========================== FREE VARIABLES ========================== */

// keccak256("Authority")
/// @dev Authority role.
bytes32 constant _AUTHORITY_ROLE = 0x8b16b0b80f67879a61157c5541d94886825d45098bee58e37e2d2e87b2fe367b;

// keccak256("Manager")
/// @dev Manager role.
bytes32 constant _MANAGER_ROLE = 0x6d439300980e333f0256d64be2c9f67e86f4493ce25f82498d6db7f4be3d9e6f;

// keccak256("Owner")
/// @dev Owner role.
bytes32 constant _OWNER_ROLE = 0x929f3fd6848015f83b9210c89f7744e3941acae1195c8bf9f5798c090dc8f497;
