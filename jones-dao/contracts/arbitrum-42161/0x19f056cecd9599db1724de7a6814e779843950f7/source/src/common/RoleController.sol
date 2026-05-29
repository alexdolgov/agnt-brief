// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {UpgradeableGovernable, AccessControlUpgradeable} from "src/common/UpgradeableGovernable.sol";
import {IRoleController} from "../interfaces/IRoleController.sol";

contract RoleController is IRoleController, UpgradeableGovernable {
    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    mapping(bytes32 => IRoleController.RoleInfo) public roleInfo;
    mapping(address => bytes32) public userInfo;
    mapping(bytes32 => bool) public roleExists;

    /* -------------------------------------------------------------------------- */
    /*                                 INITIALIZE                                 */
    /* -------------------------------------------------------------------------- */

    function initialize() external initializer {
        __Governable_init(msg.sender);

        IRoleController.RoleInfo memory DEFAULT_ROLE = IRoleController.RoleInfo(false, 97e8);

        bytes32 defaultRole = bytes32(0);
        createRole(defaultRole, DEFAULT_ROLE);
    }

    /* -------------------------------------------------------------------------- */
    /*                                   GOVERNOR                                 */
    /* -------------------------------------------------------------------------- */

    function updateDefaultRole(uint256 _jusdcRetention) public onlyGovernor {
        IRoleController.RoleInfo memory NEW_DEFAULT_ROLE = IRoleController.RoleInfo(false, _jusdcRetention);

        bytes32 defaultRole = bytes32(0);
        createRole(defaultRole, NEW_DEFAULT_ROLE);
    }

    function createRole(bytes32 _roleName, IRoleController.RoleInfo memory _roleInfo) public onlyGovernor {
        roleExists[_roleName] = true;
        roleInfo[_roleName] = _roleInfo;
    }

    function addToRole(bytes32 ROLE, address _account) public onlyGovernor validRole(ROLE) {
        _addRoleUser(ROLE, _account);
    }

    function removeUserFromRole(address _user) public onlyGovernor {
        bytes32 zeroRole = bytes32(0x0);
        userInfo[_user] = zeroRole;
    }

    /* -------------------------------------------------------------------------- */
    /*                                    VIEW                                    */
    /* -------------------------------------------------------------------------- */

    function hasRole(bytes32 role, address account)
        public
        view
        override(IRoleController, AccessControlUpgradeable)
        returns (bool)
    {
        return super.hasRole(role, account);
    }

    function getUserRole(address _user) public view returns (bytes32) {
        return userInfo[_user];
    }

    function getDefaultRole() public view returns (IRoleController.RoleInfo memory) {
        bytes32 defaultRole = bytes32(0);
        return getRoleInfo(defaultRole);
    }

    function getRoleInfo(bytes32 _role) public view returns (IRoleController.RoleInfo memory) {
        return roleInfo[_role];
    }

    function getUserInfo(address _user) public view returns (IRoleController.RoleInfo memory) {
        return roleInfo[userInfo[_user]];
    }

    /* -------------------------------------------------------------------------- */
    /*                                INTERNAL                                    */
    /* -------------------------------------------------------------------------- */

    function _addRoleUser(bytes32 _role, address _user) internal {
        userInfo[_user] = _role;
    }

    modifier validRole(bytes32 _role) {
        require(roleExists[_role], "Role does not exist!");
        _;
    }
}
