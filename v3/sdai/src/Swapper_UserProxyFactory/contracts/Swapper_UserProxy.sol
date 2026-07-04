// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.19;

import "./utils/Proxy.sol";
import "./interfaces/ICoordinator.sol";

contract Swapper_UserProxy is Proxy {

	ICoordinator immutable Coordinator;

	constructor(address _coordinator) {
		Coordinator = ICoordinator(_coordinator);
	}

	function _implementation() internal view override returns (address) {
		return Coordinator.UserProxyImplementation();
	}

}