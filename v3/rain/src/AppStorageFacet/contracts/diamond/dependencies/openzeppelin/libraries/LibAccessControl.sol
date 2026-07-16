// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IAccessControl } from "@openzeppelin/contracts/access/IAccessControl.sol";

import { LibUtilsRevert } from "../../../libraries/LibUtilsRevert.sol";

/**
 * @title LibAccessControl
 * @author Rain Team
 * @notice Diamond compatible library to interact with AccessControl storage.
 * @dev Uses the same ERC-7201 storage that was initialized during deployment.
 */
library LibAccessControl {
    /* ========================== TYPES ========================== */

    /// @dev Represents role membership and administrative hierarchy.
    struct RoleData {
        /// @custom:member hasRole Mapping of accounts to role membership status.
        mapping(address account => bool) hasRole;
        /// @custom:member adminRole Role that controls granting and revoking this role.
        bytes32 adminRole;
    }

    /* ========================== ERC7201 STORAGE ========================== */

    /// @dev Namespaced storage location as per ERC-7201 (openzeppelin.storage.AccessControl).
    struct AccessControlStorage {
        mapping(bytes32 role => RoleData) _roles;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.AccessControl")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant AccessControlStorageLocation =
        0x02dd7bc7dec4dceedda775e58dd541e08a116c6c53815c0bd028192f7b626800;

    function _getAccessControlStorage() private pure returns (AccessControlStorage storage $) {
        assembly {
            $.slot := AccessControlStorageLocation
        }
    }

    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev See {IAccessControl-grantRole}.
     */
    function grantRole(bytes32 role, address account) internal returns (bool) {
        AccessControlStorage storage $ = _getAccessControlStorage();

        if (!hasRole(role, account)) {
            $._roles[role].hasRole[account] = true;

            emit IAccessControl.RoleGranted({ role: role, account: account, sender: msg.sender });

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev See {IAccessControl-revokeRole}.
     */
    function revokeRole(bytes32 role, address account) internal returns (bool) {
        AccessControlStorage storage $ = _getAccessControlStorage();

        if (hasRole(role, account)) {
            $._roles[role].hasRole[account] = false;

            emit IAccessControl.RoleRevoked({ role: role, account: account, sender: msg.sender });

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev See {IAccessControl-hasRole}.
     */
    function hasRole(bytes32 role, address account) internal view returns (bool) {
        AccessControlStorage storage $ = _getAccessControlStorage();

        return $._roles[role].hasRole[account];
    }

    /**
     * @dev See {IAccessControl-getRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) internal view returns (bytes32) {
        AccessControlStorage storage $ = _getAccessControlStorage();

        return $._roles[role].adminRole;
    }

    /**
     * @dev Enforces that the caller has the specified role.
     * @param role Identifier of the role to enforce.
     */
    function enforceRole(bytes32 role) internal view {
        if (!hasRole(role, msg.sender)) {
            LibUtilsRevert.revertWithData(
                abi.encodeWithSelector(IAccessControl.AccessControlUnauthorizedAccount.selector, msg.sender, role)
            );
        }
    }
}
