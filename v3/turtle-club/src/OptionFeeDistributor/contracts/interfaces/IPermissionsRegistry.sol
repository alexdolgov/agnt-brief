// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IPermissionsRegistry {
    function emergencyCouncil() external view returns(address);
    function lynexTeamMultisig() external view returns(address);
    function hasRole(bytes memory role, address caller) external view returns(bool);
}
