// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import {ILendingPoolAddressesProvider} from "../interfaces/ILendingPoolAddressesProvider.sol";
import {Errors} from "../lending/libraries/helpers/Errors.sol";

contract MockLendingPool {
	bool public _paused;
	ILendingPoolAddressesProvider internal _addressesProvider;

	event Paused();
	event Unpaused();

	function _onlyLendingPoolConfigurator() internal view {
		require(
			_addressesProvider.getLendingPoolConfigurator() == msg.sender,
			Errors.LP_CALLER_NOT_LENDING_POOL_CONFIGURATOR
		);
	}

	modifier onlyLendingPoolConfigurator() {
		_onlyLendingPoolConfigurator();
		_;
	}

	function initialize(ILendingPoolAddressesProvider provider) public {
		_addressesProvider = provider;
	}

	/**
	 * @dev Set the _pause state of a reserve
	 * @param val `true` to pause the reserve, `false` to un-pause it
	 */
	function setPause(bool val) external onlyLendingPoolConfigurator {
		_paused = val;
		if (_paused) {
			emit Paused();
		} else {
			emit Unpaused();
		}
	}
}
