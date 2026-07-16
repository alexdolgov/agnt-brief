// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.24;

interface IAuthority {
	/* ========== EVENTS ========== */

	event GovernorPushed(address indexed from, address indexed to);
	event GuardianPushed(address indexed to);
	event ManagerPushed(address indexed from, address indexed to);
	event OptionHandlerPushed(address indexed to);

	event GovernorPulled(address indexed from, address indexed to);
	event GuardianRevoked(address indexed to);
	event ManagerPulled(address indexed from, address indexed to);
	event OptionHandlerRevoked(address indexed to);

	/* ========== VIEW ========== */

	function governor() external view returns (address);

	function guardian(address _target) external view returns (bool);

	function manager() external view returns (address);
	
	function upgrader(address _target) external view returns (bool);

	function optionHandler(address _target) external view returns (bool);
}
