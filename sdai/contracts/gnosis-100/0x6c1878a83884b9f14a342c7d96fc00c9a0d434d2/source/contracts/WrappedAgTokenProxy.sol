// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.19;

import "@openzeppelin/contracts/proxy/Proxy.sol";
import "./interfaces/IWrappedAgTokenFactory.sol";

contract WrappedAgTokenProxy is Proxy {

	IWrappedAgTokenFactory immutable WrappedAgTokenFactory;

	constructor() {
		WrappedAgTokenFactory = IWrappedAgTokenFactory(msg.sender);
	}

	function _implementation() internal view override returns (address) {
		return WrappedAgTokenFactory.Implementation();
	}

}