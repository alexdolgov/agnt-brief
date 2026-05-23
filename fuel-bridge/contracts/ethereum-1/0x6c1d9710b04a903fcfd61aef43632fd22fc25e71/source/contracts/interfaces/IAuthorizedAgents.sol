// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

interface IAuthorizedAgents {
	event AgentAdded(address indexed agent);
	event AgentRemoved(address indexed agent);

	/**
	 * @dev Checks if an address is an authorized agent.
	 * @param addr The address to check.
	 * @return Whether the address is an authorized agent.
	 */
	function isAgent(address addr) external view returns (bool);

	/**
	 * @dev Sets the authorization status of an agent. Can only be called by the owner.
	 * @param addr The address of the agent.
	 * @param isAgent The authorization status to set.
	 */
	function setAgent(address addr, bool isAgent) external;
}
