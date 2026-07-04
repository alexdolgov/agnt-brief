// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/// @title Permissions interface
/// @author Fei Protocol
interface IPermissions {
    // ----------- Governor only state changing api -----------

    function createRole(bytes32 role, bytes32 adminRole) external;

    function grantGovernor(address governor) external;

    function grantGuardian(address guardian) external;

    function revokeGovernor(address governor) external;

    function revokeGuardian(address guardian) external;

    // ----------- Revoker only state changing api -----------

    function revokeOverride(bytes32 role, address account) external;

    // ----------- Getters -----------

    function isGovernor(address _address) external view returns (bool);

    function isGuardian(address _address) external view returns (bool);
}
