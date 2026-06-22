// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

interface IReferrersData {
    event MigrateUser(address indexed user, address parent);
    event AddUser(address sender, address indexed user, address parent);

    function registry() external view returns (address);
    function parentOf(address) external view returns (address);

    function parentsOf(address _user) external view returns (address parent, address grandparent);
    function parentsOfUsers(address[] calldata _users) external view returns (address[] memory parents);

    function migrateUsers(address[] calldata _users, address[] calldata _parents) external;
    function addUser(address _user, address _parent) external;
}