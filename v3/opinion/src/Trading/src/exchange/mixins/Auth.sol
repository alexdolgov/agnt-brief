// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import { IAuth } from "../interfaces/IAuth.sol";

/// @title Auth
/// @notice Provides admin and operator roles and access control modifiers
abstract contract Auth is IAuth {
    /// @dev The set of addresses authorized as Admins
    mapping(address => uint256) public admins;

    /// @dev The set of addresses authorized as OperatorAdmins, who can grant operator role to specific address.
    mapping(address => uint256) public operatorAdmins;

    /// @dev The set of addresses authorized as Operators
    mapping(address => uint256) public operators;

    modifier onlyAdmin() {
        if (admins[msg.sender] != 1) revert NotAdmin();
        _;
    }

    modifier onlyOperatorAdmin() {
        if (operatorAdmins[msg.sender] != 1) revert NotOperatorAdmin();
        _;
    }

    modifier onlyOperator() {
        if (operators[msg.sender] != 1) revert NotOperator();
        _;
    }

    constructor() {
        admins[msg.sender] = 1;
        operatorAdmins[msg.sender] = 1;
        operators[msg.sender] = 1;
    }

    function isAdmin(address usr) external view returns (bool) {
        return admins[usr] == 1;
    }

    function isOperatorAdmin(address usr) external view returns (bool) {
        return operatorAdmins[usr] == 1;
    }

    function isOperator(address usr) external view returns (bool) {
        return operators[usr] == 1;
    }

    /// @notice Adds a new admin
    /// Can only be called by a current admin
    /// @param admin_ - The new admin
    function addAdmin(address admin_) external onlyAdmin {
        admins[admin_] = 1;
        emit NewAdmin(admin_, msg.sender);
    }

    /// @notice Adds a new operator admin
    /// Can only be called by a current admin
    /// @param operatorAdmin_ - The new operator admin
    function addOperatorAdmin(address operatorAdmin_) external onlyAdmin {
        operatorAdmins[operatorAdmin_] = 1;
        emit NewOperatorAdmin(operatorAdmin_, msg.sender);
    }

    /// @notice Adds a new operator
    /// Can only be called by a current operator admin
    /// @param operator_ - The new operator
    function addOperator(address operator_) external onlyOperatorAdmin {
        operators[operator_] = 1;
        emit NewOperator(operator_, msg.sender);
    }

    /// @notice Removes an existing Admin
    /// Can only be called by a current admin
    /// @param admin - The admin to be removed
    function removeAdmin(address admin) external onlyAdmin {
        if (admins[admin] != 1) {
            revert NotAdmin();
        }
        admins[admin] = 0;
        emit RemovedAdmin(admin, msg.sender);
    }

    /// @notice Removes an existing operator admin
    /// Can only be called by a current operator admin
    /// @param operatorAdmin - The operator admin to be removed
    function removeOperatorAdmin(address operatorAdmin) external onlyAdmin {
        if (operatorAdmins[operatorAdmin] != 1) {
            revert NotOperatorAdmin();
        }
        operatorAdmins[operatorAdmin] = 0;
        emit RemovedOperatorAdmin(operatorAdmin, msg.sender);
    }

    /// @notice Removes an existing operator
    /// Can only be called by a current admin
    /// @param operator - The operator to be removed
    function removeOperator(address operator) external onlyOperatorAdmin {
        if(operators[operator] != 1) {
            revert NotOperator();
        }
        operators[operator] = 0;
        emit RemovedOperator(operator, msg.sender);
    }

    /// @notice Removes the admin role for the caller
    /// Can only be called by an existing admin
    function renounceAdminRole() external onlyAdmin {
        admins[msg.sender] = 0;
        emit RemovedAdmin(msg.sender, msg.sender);
    }

    /// @notice Removes the operator admin role for the caller
    /// Can only be called by an exiting operator admin
    function renounceOperatorAdminRole() external onlyOperatorAdmin {
        operatorAdmins[msg.sender] = 0;
        emit RemovedOperatorAdmin(msg.sender, msg.sender);
    }

    /// @notice Removes the operator role for the caller
    /// Can only be called by an exiting operator
    function renounceOperatorRole() external onlyOperator {
        operators[msg.sender] = 0;
        emit RemovedOperator(msg.sender, msg.sender);
    }
}
