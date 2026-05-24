// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

interface IManageable {

    function executiveManager() external view returns (address);
    function isManager(address account) external view returns (bool);
    function managementIsLocked() external view returns (bool);
    function timeToManagementUnlock() external view returns (uint256);   
    function addManager(address newManager) external returns (bool);
    function removeManager(address managerToRemove) external returns (bool);
    function changeExecutiveManager(address newExecutiveManager) external returns (bool);
    function lockManagement(uint256 lockDuration) external returns (bool);
    function unlockManagement() external returns (bool);
    function renounceManagement() external returns (bool);

    event ManagerAdded(address addedManager);
    event ManagerRemoved(address removedManager);
    event ExecutiveManagerChanged(address indexed previousExecutiveManager, address indexed newExecutiveManager);
    event ManagementLocked(uint256 lockDuration);
    event ManagementUnlocked();
    event ManagementRenounced();

}