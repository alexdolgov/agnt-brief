// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.8;

interface IReferrersData {
    function registry() external view returns (address);

    function parentOf(address) external view returns (address);

    function parentsOf(address user_) external view returns (address parent, address grandparent);

    function parentsOfUsers(address[] calldata users_) external view returns (address[] memory parents);

    function migrateUsers(address[] calldata users_, address[] calldata parents_) external;

    function addUser(address user_, address parent_) external;

    event MigrateUser(address indexed user, address parent);

    event AddUser(address sender, address indexed user, address parent);
}
