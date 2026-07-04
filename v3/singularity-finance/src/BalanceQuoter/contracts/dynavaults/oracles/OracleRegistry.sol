// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/AccessControl.sol";

/**
 * @title Oracle Registry
 * @notice Registers oracles.
 */
contract OracleRegistry is AccessControl {
	mapping(address => address) public oracles;

	constructor() {
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
	}

	function registerOracle(address referenceAssetAddress, address referenceAssetOracleAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		oracles[referenceAssetAddress] = referenceAssetOracleAddress;
	}

	function hasOracle(address referenceAssetAddress) external view returns (bool) {
		return oracles[referenceAssetAddress] != address(0);
	}
}
