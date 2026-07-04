// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.24;

import {IAuthority} from "../interfaces/IAuthority.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/**
 *  @title Contract used for access control functionality, based off of OlympusDao Access Control
 */
abstract contract AccessControl is Initializable {

	event AuthorityUpdated(IAuthority authority);

	IAuthority public authority;

	/**
	 * @dev Initializes the authority
	 * @param _authority The authority contract address
	 */
	function __AccessControl_init(IAuthority _authority) internal onlyInitializing {
		__AccessControl_init_unchained(_authority);
	}

	function __AccessControl_init_unchained(IAuthority _authority) internal onlyInitializing {
		authority = _authority;
		emit AuthorityUpdated(_authority);
	}

	function setAuthority(IAuthority _newAuthority) external onlyGovernor{
		authority = _newAuthority;
		emit AuthorityUpdated(_newAuthority);
	}

	modifier onlyGovernor() {
		if (msg.sender != authority.governor()) revert("AccessControl: UNAUTHORIZED");
		_;
	}

	modifier onlyGuardian() {
		if (!authority.guardian(msg.sender) && msg.sender != authority.governor()) revert("AccessControl: UNAUTHORIZED");
		_;
	}

	modifier onlyManager() {
		if (msg.sender != authority.manager() && msg.sender != authority.governor())
			revert("AccessControl: UNAUTHORIZED");
		_;
	}

	modifier onlyUpgrader() {
		if (!authority.upgrader(msg.sender)) revert("AccessControl: UNAUTHORIZED");
		_;
	}

	modifier onlyOptionHandler() {
		if (!authority.optionHandler(msg.sender) && msg.sender != authority.governor()) revert("AccessControl: UNAUTHORIZED");
		_;
	}

	/**
	 * @dev This empty reserved space is put in place to allow future versions to add new
	 * variables without shifting down storage in the inheritance chain.
	 */
	uint256[49] private __gap;
}
