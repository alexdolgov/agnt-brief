// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "../controller/Controllable.sol";
import "../../interfaces/IBatchReader.sol";
import "../../interfaces/ICompanyManager.sol";
import "../../interfaces/IApprovalsManager.sol";
import "../../interfaces/IRequestsManager.sol";
import "../../interfaces/IDebtsManager.sol";

/// @notice Provide set of read-only functions
///         to read multiple data from chain using single call.
///
///         This is (mostly) state-less contract.
/// @author dvpublic
contract BatchReader is IBatchReader, Initializable, Controllable {

  string constant public VERSION = "1.0.0";

  // *****************************************************
  // *********** Initialization **************************
  // *****************************************************
  function initialize(
    address controller_
  ) external initializer {
    Controllable.__Controllable_init(controller_);
  }

  // *****************************************************
  // *********** Read data of Company manager ************
  // *****************************************************
  function getWorkerInfoBatch(WorkerUid[] calldata workers_) external view override returns (
    HourRate[] memory outHourRates,
    RoleUid[] memory outRoles,
    DepartmentUid[] memory outDepartmentUids,
    string[] memory outNames,
    address[] memory outWallets
  ) {
    uint lenWorkers = workers_.length;

    outHourRates = new HourRate[](lenWorkers);
    outRoles = new RoleUid[](lenWorkers);
    outDepartmentUids = new DepartmentUid[](lenWorkers);
    outNames = new string[](lenWorkers);
    outWallets = new address[](lenWorkers);

    for (uint i = 0; i < lenWorkers; i = _uncheckedInc(i)) {
      WorkerUid uid;
      WorkerFlags workerFlags;
      (uid,
        outHourRates[i],
        outRoles[i],
        workerFlags,
        outWallets[i],
        outNames[i]
      ) = ICompanyManager(IController(_controller()).companyManager()).workersData(workers_[i]);

      if (_equalTo(uid, 0)) {
        revert ErrorWorkerNotFound(workers_[i]);
      }
      outDepartmentUids[i] = ICompanyManager(IController(_controller()).companyManager()).workerToDepartment(workers_[i]);
    }
  }

  /// @notice Get full list of registered workers (both active and inactive)
  function getAllWorkers() external view override returns (WorkerUid[] memory) {
    ICompanyManager cm = ICompanyManager(IController(_controller()).companyManager());
    uint len = cm.lengthWorkers();
    WorkerUid[] memory dest = new WorkerUid[](len);
    for (uint i = 0; i < len; i = _uncheckedInc(i)) {
      dest[i] = cm.workers(i);
    }
    return dest;
  }

  function getDepartments(uint startFromIndex0_, uint count_) external view override returns (
    uint outCount,
    DepartmentUid[] memory outUids,
    address[] memory outHeads,
    string[] memory outTitles
  ) {
    ICompanyManager cm = ICompanyManager(IController(_controller()).companyManager());
    uint lenDepartments = cm.lengthDepartments();

    uint len = lenDepartments >= startFromIndex0_ + count_
      ? startFromIndex0_ + count_
      : lenDepartments;
    outCount = len - startFromIndex0_;

    outUids = new DepartmentUid[](outCount);
    outHeads = new address[](outCount);
    outTitles = new string[](outCount);

    for (uint i = 0; i < outCount; i = _uncheckedInc(i)) {
      DepartmentUid departmentUid = cm.departments(i + startFromIndex0_);
      (outUids[i], outHeads[i], outTitles[i]) = cm.departmentsData(departmentUid);
    }
  }

  function getRoles(uint16 startFromIndex0_, uint16 count_) external view override returns (
    uint16 outCount,
    RoleUid[] memory outUids,
    string[] memory outTitles,
    CountApprovals[] memory outCountApprovals
  ) {
    ICompanyManager cm = ICompanyManager(IController(_controller()).companyManager());
    uint16 lenRoles = cm.countRoles();

    uint16 len = lenRoles >= startFromIndex0_ + count_
      ? startFromIndex0_ + count_
      : lenRoles;
    outCount = len - startFromIndex0_;

    outUids = new RoleUid[](outCount);
    outCountApprovals = new CountApprovals[](outCount);
    outTitles = new string[](outCount);

    for (uint16 i = 0; i < outCount; i = _uncheckedInc16(i)) {
      RoleUid roleUid = cm.getRoleByIndex(i + startFromIndex0_);
      (outUids[i], outCountApprovals[i], outTitles[i]) = cm.rolesData(roleUid);
    }
  }

  function workersOfDepartment(DepartmentUid departmentId) external view returns (WorkerUid[] memory outWorkerUids) {
    ICompanyManager cm = ICompanyManager(IController(_controller()).companyManager());
    uint lenWorkers = cm.lengthDepartmentToWorkers(departmentId);

    outWorkerUids = new WorkerUid[](lenWorkers);

    for (uint i = 0; i < lenWorkers; i = _uncheckedInc(i)) {
      outWorkerUids[i] = cm.departmentToWorkers(departmentId, i);
    }
  }

  // *****************************************************
  // *********** Read data of Approvals manager **********
  // *****************************************************
  function isApproverBatch(address approver_, WorkerUid[] calldata workers_) external view override returns (
    bool[] memory
  ) {
    IApprovalsManager am = IApprovalsManager(IController(_controller()).approvalsManager());

    uint lenWorkers = workers_.length;
    bool[] memory dest = new bool[](lenWorkers);
    for (uint i = 0; i < lenWorkers; i = _uncheckedInc(i)) {
      dest[i] = am.isApprover(approver_, workers_[i]);
    }
    return dest;
  }

  function approverToWorkersBatch(address approver_) external view returns (WorkerUid[] memory outWorkerUids) {
    IApprovalsManager am = IApprovalsManager(IController(_controller()).approvalsManager());
    uint len = am.lengthApproverToWorkers(approver_);

    outWorkerUids = new WorkerUid[](len);
    for (uint i = 0; i < len; i = _uncheckedInc(i)) {
      outWorkerUids[i] = am.approverToWorkers(approver_, i);
    }
  }

  // *****************************************************
  // *********** Read data of Requests manager ***********
  // *****************************************************

  function getRequestUidBatch(EpochType epoch_, WorkerUid[] calldata workers_) external view returns (
    RequestUid[] memory dest
  ) {
    IRequestsManager rm = IRequestsManager(IController(_controller()).requestsManager());

    uint lenWorkers = workers_.length;
    dest = new RequestUid[](lenWorkers);
    for (uint i = 0; i < lenWorkers; i = _uncheckedInc(i)) {
      dest[i] = rm.getRequestUid(epoch_, workers_[i]);
    }
  }

  /// @notice Get info about specified approvals
  function getRequestStatuses(EpochType epoch_, WorkerUid[] memory workers_) external view override returns (
    RequestStatus[] memory outStatuses
  ) {
    IRequestsManager rm = IRequestsManager(IController(_controller()).requestsManager());

    uint lenWorkers = workers_.length;
    outStatuses = new RequestStatus[](lenWorkers);
    for (uint i = 0; i < lenWorkers; i = _uncheckedInc(i)) {
      RequestUid requestUid = rm.getRequestUid(epoch_, workers_[i]);
      outStatuses[i] = rm.extractRequestStatus(rm.requestsStatusValues(requestUid));
    }
  }

  function getRejectionReasons(EpochType epoch_, WorkerUid[] memory workers_) external view returns (
    string[] memory outReasons
  ) {
    IRequestsManager rm = IRequestsManager(IController(_controller()).requestsManager());

    uint lenWorkers = workers_.length;
    outReasons = new string[](lenWorkers);
    for (uint i = 0; i < lenWorkers; i = _uncheckedInc(i)) {
      RequestUid requestUid = rm.getRequestUid(epoch_, workers_[i]);
      ApprovalUid approvalUid = rm.getApprovalUid(msg.sender, requestUid);
      outReasons[i] = rm.approvalExplanations(approvalUid);
    }
  }

  function getApprovals(ApprovalUid[] calldata approvalUids) external view override returns (
    address[] memory approvers,
    uint[] memory approvedValues,
    string[] memory explanations
  ) {
    IRequestsManager rm = IRequestsManager(IController(_controller()).requestsManager());
    uint lenApprovals = approvalUids.length;

    approvers = new address[](lenApprovals);
    approvedValues = new uint[](lenApprovals);
    explanations = new string[](lenApprovals);

    for (uint i = 0; i < lenApprovals; i = _uncheckedInc(i)) {
      (approvers[i], approvedValues[i]) = rm.approverRequests(approvalUids[i]);
      explanations[i] = rm.approvalExplanations(approvalUids[i]);
    }
  }

  /// @notice Get an approvals provided by the signer to the requests of the given workers in the given epoch
  /// @return outApprovedValues Values of flags APPROVAL_XXX
  function getApprovalsMadeBySigner(EpochType epoch_, WorkerUid[] memory workerUids) external view returns (
    uint64[] memory outApprovedValues
  ) {
    IRequestsManager rm = IRequestsManager(IController(_controller()).requestsManager());

    uint lenWorkers = workerUids.length;
    outApprovedValues = new uint64[](lenWorkers);
    for (uint i = 0; i < lenWorkers; i = _uncheckedInc(i)) {
      RequestUid requestUid = rm.getRequestUid(epoch_, workerUids[i]);
      (, outApprovedValues[i]) = rm.approverRequests(rm.getApprovalUid(msg.sender, requestUid));
    }
  }

  /// @notice Get info about all approvals created for the request
  function getApprovalsMadeForRequest(RequestUid requestUid) external view returns (
    address[] memory outApprovers,
    uint[] memory outApprovedValues,
    string[] memory outExplanations
  ) {
    IRequestsManager rm = IRequestsManager(IController(_controller()).requestsManager());

    uint lenApprovals = rm.lengthRequestApprovals(requestUid);

    outApprovers = new address[](lenApprovals);
    outApprovedValues = new uint[](lenApprovals);
    outExplanations = new string[](lenApprovals);

    for (uint i = 0; i < lenApprovals; i = _uncheckedInc(i)) {
      address approver = rm.requestApprovals(requestUid, i);
      ApprovalUid approvalUid = rm.getApprovalUid(approver, requestUid);
      (outApprovers[i], outApprovedValues[i]) = rm.approverRequests(approvalUid);
      if ( (outApprovedValues[i] & 0x2) != 0 ) { //0x2 is APPROVAL_NEGATIVE
        outExplanations[i] = rm.approvalExplanations(approvalUid);
      }
    }
  }

  // *****************************************************
  // *********** Read data of Debts manager **************
  // *****************************************************
  function getRequests(RequestUid[] calldata requestUids_) external view returns (
    WorkerUid[] memory outWorkerUids,
    DepartmentUid[] memory outDepartmentUids,
    RoleUid[] memory outWorkerRoles,
    uint32[] memory outCountHours,
    string[] memory outDescriptionUrls,
    HourRate[] memory outHourRates,
    EpochType[] memory outEpochTypes
  ) {
    {
      uint lenRequests = requestUids_.length;

      outWorkerUids = new WorkerUid[](lenRequests);
      outDepartmentUids = new DepartmentUid[](lenRequests);
      outWorkerRoles = new RoleUid[](lenRequests);
      outCountHours = new uint32[](lenRequests);
      outDescriptionUrls = new string[](lenRequests);
      outHourRates = new HourRate[](lenRequests);
      outEpochTypes = new EpochType[](lenRequests);
    }

    for (uint i = 0; i < requestUids_.length; i = _uncheckedInc(i)) {
      // There are two calls below
      // to workaround "Stack too deep, try removing local variables"
      {
        (outWorkerUids[i],
          outWorkerRoles[i],
          outDepartmentUids[i],
          outHourRates[i],
          outCountHours[i],
          outEpochTypes[i],
        ) = IDebtsManager(IController(_controller()).debtsManager()).requestsData(requestUids_[i]);
      }
      {
        (,,,,,, outDescriptionUrls[i]) = IDebtsManager(
          IController(_controller()
        ).debtsManager()).requestsData(requestUids_[i]);
      }
    }
  }

  /// @notice Get all fully or partly unpaid requests
  ///         You can get limited number of requests at once
  ///         To get all items, call this function multiple times,
  ///         increasing startIndex0 += countItemsInArrays on each step
  ///         until countItemsInArrays != 0
  /// @param bufferSize Max allowed length of requestIds and amountsUSD
  /// @param startIndex0 How many items should be skipped before starting to write found items to result arrays
  /// @return countItemsInArrays How many items were saved to requestIds and amountsUSD
  /// @dev If a request is not found (canceled), outWorkers and outAmountsUSD will contain 0 for the request
  function getUnpaidDebts(
    DepartmentUid departmentUid,
    RoleUid roleUid,
    uint bufferSize,
    uint startIndex0
  ) external view override returns (
    uint countItemsInArrays,
    RequestUid[] memory outRequestIds,
    WorkerUid[] memory outWorkers,
    AmountUSD[] memory outAmountsUSD,
    DebtUid[] memory outDebtUids
  ) {
    outRequestIds = new RequestUid[](bufferSize);
    outWorkers = new WorkerUid[](bufferSize);
    outAmountsUSD = new AmountUSD[](bufferSize);
    outDebtUids = new DebtUid[](bufferSize);

    uint totalSkippedItems = 0;
    IDebtsManager dm = IDebtsManager(IController(_controller()).debtsManager());

    (uint64 totalCountDebts, uint64 firstUnpaidDebtIndex0,) = dm.roleDebts(departmentUid, roleUid);
    for (uint64 j = firstUnpaidDebtIndex0; j < totalCountDebts; j = _uncheckedInc64(j)) {
      if (totalSkippedItems == startIndex0) {
        outDebtUids[countItemsInArrays] = dm.roleDebtsList(departmentUid, roleUid, dm.wrapToNullableValue64(j));
        outRequestIds[countItemsInArrays] = dm.debtsToRequests(outDebtUids[countItemsInArrays]);
        (WorkerUid workerUid,,,,,,) = dm.requestsData(outRequestIds[countItemsInArrays]);
        outWorkers[countItemsInArrays] = workerUid; // 0 is allowed
        outAmountsUSD[countItemsInArrays] = dm.unpaidAmountsUSD(outDebtUids[countItemsInArrays]);

        countItemsInArrays = _uncheckedInc(countItemsInArrays);
        if (countItemsInArrays == bufferSize) break;
      } else {
        ++totalSkippedItems;
      }
    }

    return (countItemsInArrays, outRequestIds, outWorkers, outAmountsUSD, outDebtUids);
  }

  function getEpochAndStatusBatch(RequestUid[] calldata requests_) external view returns (
    RequestStatus[] memory outStatuses,
    EpochType[] memory outEpochs
  ) {
    IDebtsManager dm = IDebtsManager(IController(_controller()).debtsManager());
    IRequestsManager rm = IRequestsManager(IController(_controller()).requestsManager());

    uint lenRequests = requests_.length;
    outStatuses = new RequestStatus[](lenRequests);
    outEpochs = new EpochType[](lenRequests);

    for (uint i = 0; i < lenRequests; i = _uncheckedInc(i)) {
      (,,,,, outEpochs[i],) = dm.requestsData(requests_[i]);
      outStatuses[i] = rm.extractRequestStatus(rm.requestsStatusValues(requests_[i]));
    }
  }

  function getDebtDepartmentsInfo() external view returns (
    DepartmentUid[] memory outDepartmentUids,
    AmountST[] memory outBudgetAmountST
  ) {
    IDebtsManager dm = IDebtsManager(IController(_controller()).debtsManager());
    uint lenDepartments = dm.lengthDepartments();
    EpochType currentEpoch = dm.currentEpoch();

    outDepartmentUids = new DepartmentUid[](lenDepartments);
    outBudgetAmountST = new AmountST[](lenDepartments);

    for (uint i = 0; i < lenDepartments; i = _uncheckedInc(i)) {
      DepartmentUid departmentUid = dm.departments(i);
      outDepartmentUids[i] = departmentUid;
      if (_equals(currentEpoch, dm.weekDepartmentUidsToPay(departmentUid))) {
        outBudgetAmountST[i] = dm.weekBudgetST(departmentUid);
      }
    }
  }

  function getWeekBudgetLimitsForRolesST(DepartmentUid departmentUid) external view returns (
    AmountST[] memory outAmounts
  ) {
    IDebtsManager dm = IDebtsManager(IController(_controller()).debtsManager());
    uint lenRoles = dm.lengthWeekBudgetLimitsForRolesST(departmentUid);

    outAmounts = new AmountST[](lenRoles);

    for (uint i = 0; i < lenRoles; i = _uncheckedInc(i)) {
      outAmounts[i] = dm.weekBudgetLimitsForRolesST(departmentUid, i);
    }
  }

  function getUnpaidAmountsForDepartment(DepartmentUid departmentUid) external view returns (
    AmountUSD[] memory outUnpaidAmountUSD
  ) {
    IDebtsManager dm = IDebtsManager(IController(_controller()).debtsManager());

    uint16 countRoles = RoleUid.unwrap(dm.maxRoleValueInAllTimes());
    outUnpaidAmountUSD = new AmountUSD[](countRoles);

    for (uint16 i = 0; i < countRoles; i = _uncheckedInc16(i)) {
      (,, outUnpaidAmountUSD[i]) = dm.roleDebts(departmentUid, _getRoleByIndex(i) );
    }
  }


  // *****************************************************
  // ********** Optimization - unchecked *****************
  // *****************************************************

  function _uncheckedInc(uint i) internal pure returns (uint) {
    unchecked {
      return i + 1;
    }
  }

  function _uncheckedInc64(uint64 i) internal pure returns (uint64) {
    unchecked {
      return i + 1;
    }
  }

  function _uncheckedInc16(uint16 i) internal pure returns (uint16) {
    unchecked {
      return i + 1;
    }
  }

  // *****************************************************
  // *********  Helper function for WorkerUid ************
  // *****************************************************

  function _equalTo(WorkerUid uid1, uint64 uid2) internal pure returns (bool) {
    return WorkerUid.unwrap(uid1) == uid2;
  }

  // *****************************************************
  // ******* Helper function for EpochType ***************
  // *****************************************************

  function _equals(EpochType uid1, EpochType uid2) internal pure returns (bool) {
    return EpochType.unwrap(uid1) == EpochType.unwrap(uid2);
  }

  function _getRoleByIndex(uint16 index0) internal pure returns (RoleUid){
    return RoleUid.wrap(index0 + 1);
  }
}