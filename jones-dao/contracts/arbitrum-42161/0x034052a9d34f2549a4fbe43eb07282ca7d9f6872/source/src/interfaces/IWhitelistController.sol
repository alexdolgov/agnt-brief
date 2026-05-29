// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IWhitelistController {
    struct RoleInfo {
        bool BYPASS_COOLDOWN;
        uint256 INCENTIVE_RETENTION;
    }

    function addToWhitelist(address _account) external;
    function removeFromWhitelist(address _account) external;
    function bulkAddToWhitelist(address[] calldata _accounts) external;
    function bulkRemoveFromWhitelist(address[] calldata _accounts) external;

    function hasRole(bytes32 role, address account) external view returns (bool);
    function getUserRole(address _user) external view returns (bytes32);
    function getRoleInfo(bytes32 _role) external view returns (RoleInfo memory);
    function getDefaultRole() external view returns (RoleInfo memory);
    function getUserInfo(address _user) external view returns (RoleInfo memory);
    function isWhitelistedContract(address _account) external view returns (bool);

    error NotRightCaller();
    error RoleNotExits();
}
