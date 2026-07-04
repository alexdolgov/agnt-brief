// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

library Checks {
	function requireNonZeroAddress(address _address) internal pure {
		require(_address != address(0), "ERR_ZERO_ADDRESS");
	}

	function requireMaxFee(uint256 _fee, uint256 _maxFee) internal pure {
		require(_fee <= _maxFee, "ERR_MAX_FEE");
	}
}
