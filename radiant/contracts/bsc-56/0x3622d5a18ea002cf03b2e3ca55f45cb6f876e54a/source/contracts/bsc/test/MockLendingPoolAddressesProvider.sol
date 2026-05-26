// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

contract MockLendingPoolAddressesProvider {
	address private lendingPool;
	address private lendingPoolConfigurator;
	address private emergencyAdmin;

	function initialize(address _lendingPool, address _lendingPoolConfigurator, address _emergencyAdmin) public {
		lendingPool = _lendingPool;
		lendingPoolConfigurator = _lendingPoolConfigurator;
		emergencyAdmin = _emergencyAdmin;
	}

	function getLendingPool() external view returns (address) {
		return lendingPool;
	}

	function getLendingPoolConfigurator() external view returns (address) {
		return lendingPoolConfigurator;
	}

	function getEmergencyAdmin() external view returns (address) {
		return emergencyAdmin;
	}
}
