// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "./ICompanyManagerBase.sol";
import "./IApprovalsManagerBase.sol";
import "./IDebtsManagerBase.sol";
import "./IRequestsManagerBase.sol";

/// @notice Provide set of read-only functions
///         to read multiple data from chain using single call.
interface IBatchReader is
IClerkTypes
, ICompanyManagerBase
, IApprovalsManagerBase
, IRequestsManagerBase
, IDebtsManagerBase
{
  function getWorkerInfoBatch(WorkerUid[] calldata workers_)
  external
  view
  returns (
    HourRate[] memory outHourRates,
    RoleUid[] memory outRoles,
    DepartmentUid[] memory outDepartmentUids,
    string[] memory outNames,
    address[] memory outWallets
  );

  function getDepartments(uint startFromIndex0_, uint count_) external view returns (
    uint outCount
    , DepartmentUid[] memory outUids
    , address[] memory outHeads
    , string[] memory outTitles
  );

  function getRoles(uint16 startFromIndex0_, uint16 count_) external view returns (
    uint16 outCount
    , RoleUid[] memory outUids
    , string[] memory outTitles
    , CountApprovals[] memory outCountApprovals
  );

  function workersOfDepartment(DepartmentUid departmentId) external view returns (WorkerUid[] memory);

  function isApproverBatch(address approver_, WorkerUid[] calldata workers_) external view returns (bool[] memory);

  function getRequestUidBatch(EpochType epoch_, WorkerUid[] calldata ids_) external view returns (RequestUid[] memory);

  /// @notice Get statuses of specified requests
  function getRequestStatuses(EpochType epoch_, WorkerUid[] memory workers_)
  external
  view
  returns (RequestStatus[] memory statuses);

  function getRejectionReasons(EpochType epoch_, WorkerUid[] memory workers_)
  external
  view
  returns (string[] memory outReasons);

  /// @notice Get info about specified approvals
  function getApprovals(ApprovalUid[] calldata approvalUids)
  external
  view
  returns (
      address[] memory approvers
    , uint[] memory approvedValues
    , string[] memory explanations
  );

  /// @notice Get info about all approvals created for the request
  function getApprovalsMadeForRequest(RequestUid requestUid)
  external
  view
  returns (
    address[] memory approvers
  , uint[] memory approvedValues
  , string[] memory explanations
  );

  /// @notice Get an approvals provided by the signer to the requests of the given workers in the given epoch
  /// @return outApprovedValues Values of flags APPROVAL_XXX
  function getApprovalsMadeBySigner(EpochType epoch_, WorkerUid[] memory workerUids)
  external
  view
  returns (uint64[] memory outApprovedValues);

  function getRequests(RequestUid[] calldata requestUids_) external view returns (
      WorkerUid[] memory outWorkerUids
    , DepartmentUid[] memory outDepartmentUids
    , RoleUid[] memory outWorkerRoles
    , uint32[] memory outCountHours
    , string[] memory outDescriptionUrls
    , HourRate[] memory outHourRates
    , EpochType[] memory outEpochTypes
  );

  function approverToWorkersBatch(address approver_) external view returns (WorkerUid[] memory);

  /// @notice Get all fully or partly unpaid requests
  ///         You can get limited number of requests at once
  ///         To get all items, call this function multiple times,
  ///         increasing startIndex0 += countItemsInArrays on each step
  ///         until countItemsInArrays != 0
  /// @param bufferSize Max allowed length of requestIds and amountsUSD
  /// @param startIndex0 How many items should be skipped before starting to write found items to result arrays
  /// @return countItemsInArrays How many items were saved to requestIds and amountsUSD
  function getUnpaidDebts(DepartmentUid departmentUid, RoleUid roleUid, uint bufferSize, uint startIndex0)
  external
  view
  returns (uint countItemsInArrays
    , RequestUid[] memory outRequestIds
    , WorkerUid[] memory outWorkers
    , AmountUSD[] memory outAmountsUSD
    , DebtUid[] memory outDebtUids
  );

  function getEpochAndStatusBatch(RequestUid[] calldata requests_)
  external
  view
  returns (RequestStatus[] memory outStatuses, EpochType[] memory outEpochs);

  /// @notice Get a list of departments for which debts have ever been registered + info about debts
  ///         All unused departments will have zero budgets
  /// @return outDepartmentUids This array has a length of DebtsManager.departments
  /// @return outBudgetAmountST Remain week budgets for the current epoch
  function getDebtDepartmentsInfo()
  external
  view
  returns (
    DepartmentUid[] memory outDepartmentUids
    , AmountST[] memory outBudgetAmountST
  );

  function getWeekBudgetLimitsForRolesST(DepartmentUid departmentUid)
  external
  view
  returns (AmountST[] memory outAmounts);

  /// @return outUnpaidAmountUSD Size of array is DebtsManager.maxRoleValueInAllTimes
  function getUnpaidAmountsForDepartment(DepartmentUid departmentUid)
  external
  view
  returns (
    AmountUSD[] memory outUnpaidAmountUSD
  );
}