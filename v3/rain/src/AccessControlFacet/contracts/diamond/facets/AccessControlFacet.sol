// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IAccessControl } from "@openzeppelin/contracts/access/IAccessControl.sol";

import { LibAccessControl } from "../dependencies/openzeppelin/libraries/LibAccessControl.sol";

import { LibUtilsRevert } from "../libraries/LibUtilsRevert.sol";
import { Modifiers } from "../utils/Modifiers.sol";

/**
 * @title AccessControlFacet
 * @author Rain Team
 * @notice Provides role-based access control functionality for the diamond.
 * @dev Implements role management logic backed by shared diamond storage. Intended to mirror OpenZeppelin AccessControl
 * behavior in a facet-based architecture.
 */
contract AccessControlFacet is IAccessControl, Modifiers {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @inheritdoc IAccessControl
     */
    function renounceRole(
        bytes32 role,
        address callerConfirmation
    ) external onlyRole(LibAccessControl.getRoleAdmin(role)) {
        if (callerConfirmation != msg.sender) {
            LibUtilsRevert.revertWithSelector(AccessControlBadConfirmation.selector);
        }

        LibAccessControl.revokeRole(role, callerConfirmation);
    }

    /**
     * @inheritdoc IAccessControl
     */
    function grantRole(bytes32 role, address account) external onlyRole(LibAccessControl.getRoleAdmin(role)) {
        LibAccessControl.grantRole(role, account);
    }

    /**
     * @inheritdoc IAccessControl
     */
    function revokeRole(bytes32 role, address account) external onlyRole(LibAccessControl.getRoleAdmin(role)) {
        LibAccessControl.revokeRole(role, account);
    }

    /**
     * @inheritdoc IAccessControl
     */
    function hasRole(bytes32 role, address account) external view returns (bool) {
        return LibAccessControl.hasRole(role, account);
    }

    /**
     * @inheritdoc IAccessControl
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32) {
        return LibAccessControl.getRoleAdmin(role);
    }
}
