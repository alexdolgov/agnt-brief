// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.19;

import "./Swapper_UserProxy.sol";


contract Swapper_UserProxyFactory {

	address public coordinator;

	constructor(address _coordinator) {
		coordinator = _coordinator;
	}

	/**
   * @dev Generates a new User Proxy
   */
  function generateUserProxy(address owner, uint256 index) external returns(address newUserProxy) {
		require(msg.sender == coordinator, "Not allowed");

    newUserProxy = address(
            new Swapper_UserProxy{
                salt: keccak256(abi.encode(owner, index))
            }(coordinator)
        );

    return newUserProxy;
  }

}