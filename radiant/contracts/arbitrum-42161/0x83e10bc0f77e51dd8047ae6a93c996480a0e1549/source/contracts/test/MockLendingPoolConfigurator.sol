// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import {ILendingPool} from "../interfaces/ILendingPool.sol";
import {ILendingPoolAddressesProvider} from "../interfaces/ILendingPoolAddressesProvider.sol";
import {Errors} from "../lending/libraries/helpers/Errors.sol";

contract MockLendingPoolConfigurator {
	ILendingPoolAddressesProvider public addressesProvider;
	ILendingPool public pool;

	constructor(ILendingPoolAddressesProvider provider) {
		addressesProvider = provider;
		pool = ILendingPool(addressesProvider.getLendingPool());
	}

	modifier onlyEmergencyAdmin() {
		require(addressesProvider.getEmergencyAdmin() == msg.sender, Errors.LPC_CALLER_NOT_EMERGENCY_ADMIN);
		_;
	}

	/**
	 * @dev pauses or unpauses all the actions of the protocol, including aToken transfers
	 * @param val true if protocol needs to be paused, false otherwise
	 **/
	function setPoolPause(bool val) external onlyEmergencyAdmin {
		pool.setPause(val);
	}
}
