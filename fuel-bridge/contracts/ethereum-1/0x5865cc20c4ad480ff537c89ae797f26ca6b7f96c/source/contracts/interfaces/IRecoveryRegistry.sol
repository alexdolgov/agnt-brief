// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IRecoveryRegistry {
	function setRecoveryAddress(address compromised, address recovery) external;
	function getRecoveryAddress(
		address account
	) external view returns (address);
}
