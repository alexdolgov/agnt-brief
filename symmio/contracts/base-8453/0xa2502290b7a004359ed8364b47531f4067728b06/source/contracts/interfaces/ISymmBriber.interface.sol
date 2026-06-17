// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

interface ISymmBriber {
	error ZeroAddress();
	error InvalidAmount();
	error BribeAlreadyPaid();
	error BribeAmountNotSet();
}
