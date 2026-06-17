// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

contract MockLendingPool {
	bool public _paused;

	event Paused();
	event Unpaused();

	/**
	 * @dev Set the _pause state of a reserve
	 * @param val `true` to pause the reserve, `false` to un-pause it
	 */
	function setPause(bool val) external {
		_paused = val;
		if (_paused) {
			emit Paused();
		} else {
			emit Unpaused();
		}
	}
}
