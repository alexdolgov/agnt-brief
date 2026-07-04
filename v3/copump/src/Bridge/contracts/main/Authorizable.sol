// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import "@openzeppelin/contracts/access/Ownable2Step.sol";

abstract contract Authorizable is Ownable2Step {
	address public authorizedAddress;

	event AuthorizedAddressChanged(address newAuthorizedAddress, uint256 occuredAt);

	modifier onlyAuthorized {
	    require(msg.sender == authorizedAddress, "The caller is not authorized");
	    _;
	}

	constructor(address authorizedAddress_) {
		require(authorizedAddress_ != address(0), "Authorized address cannot be 0");

		authorizedAddress = authorizedAddress_;
	}

	function setAuthorizedAddress(address newAuthorizedAddress) external onlyOwner {
		require(newAuthorizedAddress != address(0), "Authorized address cannot be 0");

	    emit AuthorizedAddressChanged(newAuthorizedAddress, block.timestamp);
	    authorizedAddress = newAuthorizedAddress;
	}
}
