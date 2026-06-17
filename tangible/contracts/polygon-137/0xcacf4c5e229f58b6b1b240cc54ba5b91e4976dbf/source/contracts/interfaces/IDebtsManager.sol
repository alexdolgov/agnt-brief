// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "./IClerkTypes.sol";
import "./IDebtsManagerBase.sol";

/// @notice Manage list of epochs and company-debts
interface IDebtsManager is IDebtsManagerBase {

    /// @notice Register new request with status "Registered"
    ///         It's allowed to register same request several times
    ///         (user makes several attempts to send request)
    ///         but only most recent version is stored.
    function addRequest(
        RequestUid requestUid_
        , WorkerUid workerUid_
        , uint32 countHours
        , string calldata descriptionUrl
    ) external;

    /// @notice Convert salary-amount of accepted request to company-debt
    ///         Amount of the debt is auto calculated using requests properties: countHours * hourRate
    function addDebt(
        RequestUid requestUid_
    ) external;

    /// @notice Revoke previously created debt
    ///         As result, we can have holes in the sequence of registered debts
    function revokeDebtForRequest(RequestUid requestUid_) external;

    /// @notice Increment epoch counter.
    ///         Initialize week budget available for the payment of all exist debts.
    ///         After that it's possible to make payments for debts registered in the previous epochs
    /// @param paySalaryImmediately If true then call pay() immediately after starting new epoch
    function startEpoch(bool paySalaryImmediately) external;

    function payForRole(DepartmentUid departmentUid, RoleUid role) external;
    function payForDepartment(DepartmentUid departmentUid) external;
    function pay() external;
    function payDebt(DepartmentUid departmentUid, RoleUid role, uint64 indexDebt0) external;

// Functions for Readers
    function lengthDepartments() external view returns (uint);
    function lengthWeekBudgetLimitsForRolesST(DepartmentUid departmentUid) external view returns (uint);
    function wrapToNullableValue64(uint64 value) external pure returns (NullableValue64);

    /// @notice get worker and role for request, don't make any checks (return zeros if the request is not known)
    /// @dev we need this function to make approve-call more gas-efficient
    function getRequestWorkerAndRole(RequestUid requestUid_) external view returns (WorkerUid worker, RoleUid role);

    /// ************************************************************
    /// * Direct access to public mapping for BatchReader-purposes *
    /// * All functions below were generated from artifact jsons   *
    /// * using https://gnidan.github.io/abi-to-sol/               *
    /// ************************************************************

    /// @dev Access to the mapping {requestsData}
    function requestsData(RequestUid)
    external
    view
    returns (
        WorkerUid worker,
        RoleUid role,
        DepartmentUid department,
        HourRate hourRate,
        uint32 countHours,
        EpochType epoch,
        string memory descriptionUrl
    );

    /// @dev Access to the mapping {requestsToDebts}
    function requestsToDebts(RequestUid) external view returns (DebtUid);

    /// @dev Access to the mapping {statForWorkers}
    function statForWorkers(WorkerUid)
    external
    view
    returns (uint32 workedHours, AmountUSD earnedDollars);

    /// @dev Access to the mapping {weekBudgetST}
    function weekBudgetST(DepartmentUid) external view returns (AmountST);

    /// @dev Access to the mapping {weekBudgetLimitsForRolesST}
    function weekBudgetLimitsForRolesST(DepartmentUid, uint256)
    external
    view
    returns (AmountST);

    /// @dev Access to the public variable {weekSalaryToken}
    function weekSalaryToken() external view returns (address);

    /// @dev Access to the mapping {roleDebts}
    function roleDebts(DepartmentUid, RoleUid)
    external
    view
    returns (
        uint64 totalCountDebts,
        uint64 firstUnpaidDebtIndex0,
        AmountUSD amountUnpaidTotalUSD
    );

    /// @dev Access to the mapping {roleDebtsList}
    function roleDebtsList(
        DepartmentUid,
        RoleUid,
        NullableValue64
    ) external view returns (DebtUid);

    /// @dev Access to the public variable {maxRoleValueInAllTimes}
    function maxRoleValueInAllTimes() external view returns (RoleUid);

    /// @dev Access to the public variable {currentEpoch}
    function currentEpoch() external view returns (EpochType);

    /// @dev Access to the public variable {firstEpoch}
    function firstEpoch() external view returns (EpochType);

    function debtsToRequests(DebtUid) external view returns (RequestUid);
    function unpaidAmountsUSD(DebtUid) external view returns (AmountUSD);
    function departments(uint) external view returns (DepartmentUid);

    function weekDepartmentUidsToPay(DepartmentUid) external view returns (EpochType);
}