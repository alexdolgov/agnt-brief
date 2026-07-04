pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

interface IStrategy
{
    /**
	 * @notice Information on a user's lockings
	 * @return unlockable balance
	 */
    function lockedBalances(address user) external view returns (uint256 unlockable);
}
	