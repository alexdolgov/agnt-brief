// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.24;

import {AccessControl} from "./libraries/AccessControl.sol";
import {IAuthority} from "./interfaces/IAuthority.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/**
 *  @title Contract used for storage of important contracts for the liquidity pool
 */
contract Protocol is UUPSUpgradeable, AccessControl {

	address public optionRegistry;

	address public accounting;

	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor() {
		_disableInitializers();
	}

	/**
	 * @notice Initialize the Protocol contract
	 * @param _optionRegistry address of the OptionRegistry contract
	 * @param _authority address of the Authority contract
	 */
	function initialize(
		address _optionRegistry,
		address _authority
	) external initializer {
		__UUPSUpgradeable_init();
		__AccessControl_init(IAuthority(_authority));
		
		if (_optionRegistry == address(0) || _authority == address(0)) {
			revert("Protocol: Invalid address");
		}
		
		optionRegistry = _optionRegistry;
	}

	/**
	 * @notice Set the Accounting contract address
	 * @param _accounting address of the Accounting contract
	 * @dev only governor can call this function
	 */
	function changeAccounting(address _accounting) external onlyGovernor {
		if (_accounting == address(0)) {
			revert("Protocol: Invalid address");
		}
		accounting = _accounting;
	}

	function _authorizeUpgrade(address newImplementation) internal view override onlyUpgrader {
		newImplementation; 
	}
}
