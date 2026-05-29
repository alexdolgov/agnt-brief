// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IRoleController {
    struct RoleInfo {
        bool BYPASS_COOLDOWN;
        uint256 INCENTIVE_RETENTION;
    }

    function hasRole(bytes32 role, address account) external view returns (bool);
    function getUserRole(address _user) external view returns (bytes32);
    function getRoleInfo(bytes32 _role) external view returns (RoleInfo memory);
    function getDefaultRole() external view returns (RoleInfo memory);
    function getUserInfo(address _user) external view returns (RoleInfo memory);
}
