// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";

/**
 * @dev Base upgradeable contract with:
 * - UUPS upgradeability
 * - Access control with roles
 * - Pausable functionality
 */

abstract contract BaseUpgradeable is UUPSUpgradeable, AccessControlUpgradeable, PausableUpgradeable {
    uint256[50] private __gap;

    /// @notice Emergency role for pausing contract
    bytes32 public constant EMERGENCY_ROLE = keccak256("EMERGENCY_ROLE");

    function __BaseUpgradable_init() internal onlyInitializing {
        __UUPSUpgradeable_init();
        __AccessControl_init();
        __Pausable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /**
     * @dev Function that should revert when `msg.sender` is not authorized to upgrade the contract. Called by
     * {upgradeToAndCall}.
     */
    function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    /**
     * @notice Function to set the emergency role address and its status.
     * @dev Can only be called by the DEFAULT_ADMIN_ROLE, emergency role used for pausing
     */
    function setEmergencyRole(address _emergencyRole, bool _status) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_status) {
            _grantRole(EMERGENCY_ROLE, _emergencyRole);
        } else {
            _revokeRole(EMERGENCY_ROLE, _emergencyRole);
        }
    }

    /** @dev See {ITToken-pause} */
    function pause() external onlyRole(EMERGENCY_ROLE) whenNotPaused {
        _pause();
    }

    /** @dev See {ITToken-unpause} */
    function unpause() external onlyRole(EMERGENCY_ROLE) whenPaused {
        _unpause();
    }
}
