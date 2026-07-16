// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "./IClerkTypes.sol";
import "./ICompanyManagerBudgets.sol";

/// @notice Provides info about workers, budgets, departments, roles
interface ICompanyManager is ICompanyManagerBudgets {
    function initRoles(
        string[] memory names_
    , CountApprovals[] memory countApprovals_
    ) external;

    /// @notice Check if approver is alloed to approve requests of the worker "by nature"
    ///         i.e. without any manually-set approving-permissions.
    ///         The approver is allowed to approve worker's request "by nature" if one of the following
    ///         conditions is true:
    ///         1) the approver is a head of the worker's department (and worker != approver)
    ///         2) if the option approve-low-by-high is enabled for the department
    ///            both approver and worker belong to the same department
    ///            and the approver has higher role then the worker
    function isNatureApprover(address approver_, WorkerUid worker_) external view returns (ApproverKind);
    function getCountRequiredApprovals(RoleUid role) external view returns (CountApprovals);
    function getRoleByIndex(uint16 index0) external pure returns (RoleUid);
    function lengthRoles() external view returns (uint);
    function lengthDepartmentToWorkers(DepartmentUid uid) external view returns (uint);
    function lengthRoleShares(DepartmentUid uid) external view returns (uint);

    /// ************************************************************
    /// * Direct access to public mapping for BatchReader-purposes *
    /// * All functions below were generated from artifact jsons   *
    /// * using https://gnidan.github.io/abi-to-sol/               *
    /// ************************************************************

    /// @dev Access to the mapping {workersData}
    function workersData(WorkerUid)
    external
    view
    returns (
        WorkerUid uid,
        HourRate hourRate,
        RoleUid role,
        WorkerFlags workerFlags,
        address wallet,
        string memory name
    );

    /// @dev Access to the mapping {workerToDepartment}
    function workerToDepartment(WorkerUid) external view returns (DepartmentUid);

    /// @dev Access to the mapping {departments}
    function departments(uint256) external view returns (DepartmentUid);

    /// @dev Access to the mapping {departmentsData}
    function departmentsData(DepartmentUid)
    external
    view
    returns (
        DepartmentUid uid,
        address head,
        string memory title
    );

    /// @dev Access to public variable {countRoles}
    function countRoles() external view returns (uint16);

    function rolesData(RoleUid)
    external
    view
    returns (
        RoleUid role,
        CountApprovals countApprovals,
        string memory title
    );

    /// @dev Access to the mapping {workers}
    function workers(uint256) external view returns (WorkerUid);

    /// @dev Access to the mapping {departmentToWorkers}
    function departmentToWorkers(DepartmentUid, uint256)
    external
    view
    returns (WorkerUid);

    /// @dev Access to the mapping {roleShares}
    function roleShares(DepartmentUid, uint256)
    external
    view
    returns (uint256);

    /// @dev Access to variable {weekBudgetST}
    function weekBudgetST()
    external
    view
    returns (AmountST);

    /// @dev Access to variable {salaryToken}
    function salaryToken()
    external
    view
    returns (address);
}