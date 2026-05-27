// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.24;

import {IAuthority} from "./interfaces/IAuthority.sol";
import {AccessControl} from "./libraries/AccessControl.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/**
 *  @title Contract used as the source of truth for all protocol authority and access control, based off of OlympusDao Access Control
 */
contract Authority is IAuthority, UUPSUpgradeable, AccessControl {

	address public override governor;

	mapping(address => bool) public override guardian;

	address public override manager;

	mapping(address => bool) public override upgrader;

	mapping(address => bool) public override optionHandler;

	address public newGovernor;

	address public newManager;

	event UpgraderPushed(address indexed upgrader);
	event UpgraderRevoked(address indexed upgrader);

	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor() {
		_disableInitializers();
	}

	/**
	 * @notice Initialize the Authority contract with initial roles
	 * @param _governor address of the initial governor
	 * @param _guardian address of the initial guardian
	 * @param _manager address of the initial manager
	 * @param _upgrader address of the initial upgrader
	 */
	function initialize(
		address _governor,
		address _guardian,
		address _manager,
		address _upgrader
	) external initializer {
		__UUPSUpgradeable_init();
		__AccessControl_init(IAuthority(address(this)));
		
		if (_governor == address(0) || _guardian == address(0) || _manager == address(0) || _upgrader == address(0)) {
			revert("Authority: Invalid address");
		}
		
		governor = _governor;
		emit GovernorPushed(address(0), _governor);
		emit GovernorPulled(address(0), _governor);
		guardian[_guardian] = true;
		emit GuardianPushed(_guardian);
		manager = _manager;
		emit ManagerPushed(address(0), _manager);
		emit ManagerPulled(address(0), _manager);
		upgrader[_upgrader] = true;
		emit UpgraderPushed(_upgrader);
	}

	/**
	 * @notice Propose a new governor (requires pullGovernor() to complete transfer)
	 * @param _newGovernor address of the proposed new governor
	 * @dev only current governor can call this function
	 */
	function pushGovernor(address _newGovernor) external onlyGovernor {
		if (_newGovernor == address(0)) {
			revert("Authority: Invalid address");
		}
		newGovernor = _newGovernor;
		emit GovernorPushed(governor, newGovernor);
	}

	/**
	 * @notice Add a new guardian address
	 * @param _newGuardian address to grant guardian role
	 * @dev only governor can call this function
	 */
	function pushGuardian(address _newGuardian) external onlyGovernor {
		if (_newGuardian == address(0)) {
			revert("Authority: Invalid address");
		}
		guardian[_newGuardian] = true;
		emit GuardianPushed(_newGuardian);
	}

	/**
	 * @notice Propose a new manager (requires pullManager() to complete transfer)
	 * @param _newManager address of the proposed new manager
	 * @dev only governor can call this function
	 */
	function pushManager(address _newManager) external onlyGovernor{
		if (_newManager == address(0)) {
			revert("Authority: Invalid address");
		}
		newManager = _newManager;
		emit ManagerPushed(manager, newManager);
	}

	/**
	 * @notice Accept the governor role (must be called by the proposed new governor)
	 * @dev only the proposed new governor can call this function
	 */
	function pullGovernor() external {
		require(msg.sender == newGovernor, "Authority: Not new governor");
		emit GovernorPulled(governor, newGovernor);
		governor = newGovernor;
		delete newGovernor;
	}

	/**
	 * @notice Remove guardian privileges from an address
	 * @param _guardian address to revoke guardian role from
	 * @dev only governor can call this function
	 */
	function revokeGuardian(address _guardian) external onlyGovernor {
		emit GuardianRevoked(_guardian);
		guardian[_guardian] = false;
	}

	/**
	 * @notice Accept the manager role (must be called by the proposed new manager)
	 * @dev only the proposed new manager can call this function
	 */
	function pullManager() external {
		require(msg.sender == newManager, "Authority: Not new manager");
		emit ManagerPulled(manager, newManager);
		manager = newManager;
		delete newManager;
	}

	/**
	 * @notice Add a new upgrader address
	 * @param _newUpgrader address to grant upgrader role
	 * @dev only governor can call this function
	 */
	function pushUpgrader(address _newUpgrader) external onlyGovernor {
		if (_newUpgrader == address(0)) {
			revert("Authority: Invalid address");
		}
		upgrader[_newUpgrader] = true;
		emit UpgraderPushed(_newUpgrader);
	}

	/**
	 * @notice Remove upgrader privileges from an address
	 * @param _upgrader address to revoke upgrader role from
	 * @dev only governor can call this function
	 */
	function revokeUpgrader(address _upgrader) external onlyGovernor {
		emit UpgraderRevoked(_upgrader);
		upgrader[_upgrader] = false;
	}

	/**
	 * @notice Add a new option handler address
	 * @param _newOptionHandler address to grant option handler role
	 * @dev only governor can call this function
	 */
	function pushOptionHandler(address _newOptionHandler) external onlyGovernor {
		if (_newOptionHandler == address(0)) {
			revert("Authority: Invalid address");
		}
		optionHandler[_newOptionHandler] = true;
		emit OptionHandlerPushed(_newOptionHandler);
	}

	/**
	 * @notice Remove option handler privileges from an address
	 * @param _optionHandler address to revoke option handler role from
	 * @dev only governor can call this function
	 */
	function revokeOptionHandler(address _optionHandler) external onlyGovernor {
		emit OptionHandlerRevoked(_optionHandler);
		optionHandler[_optionHandler] = false;
	}

	function _authorizeUpgrade(address newImplementation) internal view override onlyUpgrader {
		newImplementation; 
	}
}
