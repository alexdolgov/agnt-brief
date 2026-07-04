// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface IAccountValuesRouterEx {
    // Per-user active risk modules (consulted by `accountValues`).
    function activateRiskModuleForUser(address pm, address user) external;
    function deactivateRiskModuleForUser(address pm, address user) external;
    function getActiveRiskModules(address pm, address user) external view returns (address[] memory);
}
