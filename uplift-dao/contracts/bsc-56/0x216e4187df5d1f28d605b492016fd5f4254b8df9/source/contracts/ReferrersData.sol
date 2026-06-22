// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "./interfaces/IReferrersData.sol";

contract ReferrersData is IReferrersData, UUPSUpgradeable, ReentrancyGuardUpgradeable {
    
    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;
    bytes32 public constant ADD_USER_ROLE = keccak256("ADD_USER_ROLE");

    address public override registry;
    mapping(address => address) public override parentOf;

    function initialize(address _registry) initializer external {
        __ReentrancyGuard_init();
        require(_registry != address(0), "ReferrersData: ZERO");
        registry = _registry;
    }

    function parentsOf(address _user) external override view returns (address parent, address grandparent) {
        parent = parentOf[_user];
        grandparent = parentOf[parent];
    }

    function parentsOfUsers(address[] calldata _users) external override view returns (address[] memory parents) {
        parents = new address[](_users.length);
        for (uint i; i < _users.length; ++i) {
            parents[i] = parentOf[_users[i]];
        }
    }

    function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function migrateUsers(address[] calldata _users, address[] calldata _parents) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_users.length == _parents.length, "ReferrersData: INVALID_LENGTH");
        for (uint i; i < _users.length; ++i) {
            address user = _users[i];
            address parent = _parents[i];
            parentOf[user] = parent;
            emit MigrateUser(user, parent);
        }
    }

    function addUser(address _user, address _parent) external override nonReentrant onlyRole(ADD_USER_ROLE) {
        require(parentOf[_user] == address(0), "ReferrersData: PARENT_ALREADY_EXIST");
        require(_user != _parent, "ReferrersData: MISMATCH");
        parentOf[_user] = _parent;
        emit AddUser(msg.sender, _user, _parent);
    }

    modifier onlyRole(bytes32 role) {
        require(IAccessControl(registry).hasRole(role, msg.sender), "ReferrersData: FORBIDDEN");
        _;
    }
} 