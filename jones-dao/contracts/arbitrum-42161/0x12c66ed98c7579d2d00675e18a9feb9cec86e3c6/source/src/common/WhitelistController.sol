// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {UpgradeableGovernable, AccessControlUpgradeable} from "src/common/UpgradeableGovernable.sol";
import {IWhitelistController} from "src/interfaces/IWhitelistController.sol";

contract WhitelistController is IWhitelistController, UpgradeableGovernable {
    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    address private constant gov = 0xc8ce0aC725f914dBf1D743D51B6e222b79F479f1;

    mapping(bytes32 => IWhitelistController.RoleInfo) public roleInfo;
    mapping(address => bytes32) public userInfo;
    mapping(bytes32 => bool) public roleExists;

    bytes32 private constant WHITELISTED = bytes32("WHITELISTED");

    /* -------------------------------------------------------------------------- */
    /*                                 INITIALIZE                                 */
    /* -------------------------------------------------------------------------- */

    function initialize() external initializer {
        if (msg.sender != gov) {
            revert NotRightCaller();
        }
        __Governable_init(msg.sender);

        IWhitelistController.RoleInfo memory DEFAULT_ROLE = IWhitelistController.RoleInfo(false, 97e8);

        bytes32 defaultRole = bytes32(0);
        createRole(defaultRole, DEFAULT_ROLE);
    }

    /* -------------------------------------------------------------------------- */
    /*                                   GOVERNOR                                 */
    /* -------------------------------------------------------------------------- */

    function updateDefaultRole(uint256 _jusdcRetention) public onlyGovernor {
        IWhitelistController.RoleInfo memory NEW_DEFAULT_ROLE = IWhitelistController.RoleInfo(false, _jusdcRetention);

        bytes32 defaultRole = bytes32(0);
        createRole(defaultRole, NEW_DEFAULT_ROLE);
    }

    function createRole(bytes32 _roleName, IWhitelistController.RoleInfo memory _roleInfo) public onlyGovernor {
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

    function addToWhitelist(address _account) public onlyGovernor {
        _grantRole(WHITELISTED, _account);
    }

    function removeFromWhitelist(address _account) public onlyGovernor {
        _revokeRole(WHITELISTED, _account);
    }

    function bulkAddToWhitelist(address[] calldata _accounts) public onlyGovernor {
        uint256 length = _accounts.length;
        for (uint8 i = 0; i < length;) {
            _grantRole(WHITELISTED, _accounts[i]);
            unchecked {
                ++i;
            }
        }
    }

    function bulkRemoveFromWhitelist(address[] calldata _accounts) public onlyGovernor {
        uint256 length = _accounts.length;
        for (uint8 i = 0; i < length;) {
            _revokeRole(WHITELISTED, _accounts[i]);
            unchecked {
                ++i;
            }
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                    VIEW                                    */
    /* -------------------------------------------------------------------------- */

    function hasRole(bytes32 role, address account)
        public
        view
        override(IWhitelistController, AccessControlUpgradeable)
        returns (bool)
    {
        return super.hasRole(role, account);
    }

    function getUserRole(address _user) public view returns (bytes32) {
        return userInfo[_user];
    }

    function getDefaultRole() public view returns (IWhitelistController.RoleInfo memory) {
        bytes32 defaultRole = bytes32(0);
        return getRoleInfo(defaultRole);
    }

    function getRoleInfo(bytes32 _role) public view returns (IWhitelistController.RoleInfo memory) {
        return roleInfo[_role];
    }

    function getUserInfo(address _user) public view returns (IWhitelistController.RoleInfo memory) {
        return roleInfo[userInfo[_user]];
    }

    function isWhitelistedContract(address _account) public view returns (bool) {
        return hasRole(WHITELISTED, _account);
    }

    /* -------------------------------------------------------------------------- */
    /*                                INTERNAL                                    */
    /* -------------------------------------------------------------------------- */

    function _addRoleUser(bytes32 _role, address _user) internal {
        userInfo[_user] = _role;
    }

    modifier validRole(bytes32 _role) {
        if (!roleExists[_role]) {
            revert RoleNotExits();
        }
        _;
    }
}
