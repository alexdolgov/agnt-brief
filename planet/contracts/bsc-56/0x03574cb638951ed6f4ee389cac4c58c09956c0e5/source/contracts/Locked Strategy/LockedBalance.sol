pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

struct LockedBalance {
	uint256 amount;
	uint256 unlockTime;
	uint256 multiplier;
	uint256 duration;
}

struct Balances {
	uint256 total; // total balance of users
	uint256 totalWithMultiplier; // multiplied locked amount
}