// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

library FeeFunctions {
	// Bitmask flags to determine which functions have fees
	uint8 constant FEE_ON_STAKE = 1; // 00000001
	uint8 constant FEE_ON_WITHDRAW = 2; // 00000010
	uint8 constant FEE_ON_CLAIM = 4; // 00000100
	uint8 constant FEE_ON_ALL = 7; // 00000111 (All functions)
	uint8 constant FEE_ON_NONE = 0; // 00000000 (No fees)
}
