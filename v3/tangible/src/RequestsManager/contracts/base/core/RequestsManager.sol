// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "../../interfaces/IDebtsManager.sol";
import "../../interfaces/IRequestsManager.sol";
import "../../interfaces/ICompanyManager.sol";
import "../../interfaces/IApprovalsManager.sol";
import "./RequestsManagerStorage.sol";

/// @notice Manage the list of requests.
///         Collect approvals and update approve-statuses of the requests on the fly
///         Convert approved requests to debts through DebtManager.
/// @author dvpublic
contract RequestsManager is RequestsManagerStorage {

  // *****************************************************
  // *********** Initialization **************************
  // *****************************************************

  function initialize(address controller_) external initializer {
    Controllable.__Controllable_init(controller_);
  }

  // *****************************************************
  // ************* Requests ******************************
  // *****************************************************

  /// @notice Register new request for the current epoch with initial status "registered"
  /// @param countHours_ Count of requested hours, max value should be less then MAX_ALLOWED_HOURS
  /// @param descriptionUrl_ Obligatory URL of the document with description of the hours.
  ///                        Max allowed length is MAX_URL_LENGTH chars.
  function createRequest(
    uint32 countHours_
    , string calldata descriptionUrl_
  ) external override {
    WorkerUid worker = _getOnlyValidWorkerSigned();

    if (countHours_ == 0) {
      revert ErrorZeroValueNotAllowed(0);
    }
    if (countHours_ >= MAX_ALLOWED_HOURS) {
      revert ErrorTooManyHours(countHours_, MAX_ALLOWED_HOURS);
    }
    _validateString(bytes(descriptionUrl_).length, MAX_URL_LENGTH, true);

    IDebtsManager dm = IDebtsManager(IController(_controller()).debtsManager());
    RequestUid requestUid = _getRequestUid(dm.currentEpoch(), worker);

    if (_extractRequestStatus(requestsStatusValues[requestUid]) == RequestStatus.Unknown_0) {
      // this is first attempt to send the request
      requestsForEpoch[dm.currentEpoch()].push(worker);
    }

    dm.addRequest(
      requestUid
    , worker
    , countHours_
    , descriptionUrl_
    );
    requestsStatusValues[requestUid] = encodeRequestStatusValue(RequestStatus.New_1, 0, 0);
    emit RequestStatusChanged(requestUid, RequestStatus.New_1);
  }

  /// @notice Cancel last request for the current epoch, created by the signer;
  ///        revoke related debt if it was already created
  function cancelRequest() external override {
    WorkerUid worker = _getOnlyValidWorkerSigned();

    IDebtsManager dm = IDebtsManager(IController(_controller()).debtsManager());

    RequestUid requestUid = _getRequestUid(dm.currentEpoch(), worker);
    RequestStatus status = _extractRequestStatus(requestsStatusValues[requestUid]);
    assert (status != RequestStatus.Unknown_0);

    if (status == RequestStatus.Canceled_4) {
      revert ErrorRequestIsCanceled();
    }

    // revoke the debt if it's already exist
    if (status == RequestStatus.Approved_2) {
      dm.revokeDebtForRequest(requestUid);
    }

    // mark all received approvals as canceled, so the won't be taken into account anymore
    uint len = requestApprovals[requestUid].length;
    for (uint i = 0; i < len; i = _uncheckedInc(i)) {
      approverRequests[_getApprovalUid(requestApprovals[requestUid][i], requestUid)].approvedValue |= APPROVAL_CANCELED;
    }

    requestsStatusValues[requestUid] = encodeRequestStatusValue(RequestStatus.Canceled_4, 0, 0);
    emit RequestStatusChanged(requestUid, RequestStatus.Canceled_4);
  }

  // *****************************************************
  // ************* Approve *******************************
  // *****************************************************

  /// @notice Approve or disapprove the given request
  ///         Table below shows how positive/negative approves change statuses of the requests:
  ///         approve
  ///         value /
  ///               current   New                       Approved                Rejected        Canceled
  ///               status
  ///         Positive        Set status "approved"     no changes              Status can      Set status "canceled"
  ///                         if countApprovals                                 be changed      The request can be
  ///                         is reached. Create                                if all          re-registered.
  ///                         a debt for the request                            approvals
  ///                                                                           are positive
  ///                                                                           now
  ///
  ///         Negative        Set status "rejected"     Set status "rejected"   no changes      Set status "canceled"
  ///                                                   Delete the debt                         The request can be
  ///                                                   for the request                         re-registered.
  /// @param approveValue_ True - approved, False - disapproved.
  function _approve(
    RequestUid requestUid_
  , bool approveValue_
  , string memory explanation_
  ) internal {
    (RequestStatus requestStatus, uint32 countPositive, uint32 countNegative)
      = decodeRequestStatusValue(requestsStatusValues[requestUid_]);

    if (requestStatus == RequestStatus.Unknown_0) {
      revert ErrorUnknownRequest(requestUid_);
    }
    if (requestStatus == RequestStatus.Canceled_4) {
      revert ErrorRequestIsCanceled();
    }

    uint lenExplanation = bytes(explanation_).length;
    _validateString(lenExplanation, MAX_EXPLANATION_LENGTH, false);

    IController c = IController(_controller());
    (WorkerUid workerUid, RoleUid role) = IDebtsManager(c.debtsManager()).getRequestWorkerAndRole(requestUid_);
    //Request is checked above, we don't need to check workerUid here
    if (!IApprovalsManager(c.approvalsManager()).isApprover(msg.sender, workerUid)) {
      revert ErrorNotApprover(msg.sender, workerUid);
    }

    ApprovalUid approvalUid = _getApprovalUid(msg.sender, requestUid_);
    uint64 newApprovedValue = (approveValue_ ? APPROVAL_POSITIVE : APPROVAL_NEGATIVE);
    // An approver can send several approvals for the requests
    // Only most recent one will be stored and used
    uint64 prevApprovedValue = approverRequests[approvalUid].approvedValue;
    if (prevApprovedValue == APPROVAL_UNKNOWN
      || ((prevApprovedValue & APPROVAL_CANCELED) != 0)
    ) {
      // this is first approval for the request from the approver
      requestApprovals[requestUid_].push(msg.sender);
      if (approveValue_) {
        countPositive++;
      } else {
        countNegative++;
      }
    } else {
      // the approver has approved/disapproved the request before...
      if (newApprovedValue != prevApprovedValue) {
        // ...and now he has changed his mind
        if (newApprovedValue == APPROVAL_POSITIVE) {
          countPositive +=1;
          countNegative -=1;
        } else {
          countPositive -=1;
          countNegative +=1;
        }
      }
    }

    approverRequests[approvalUid] = Approval({
      approver: msg.sender
    , approvedValue: newApprovedValue
    });
    if (lenExplanation > 0) {
      approvalExplanations[approvalUid] = explanation_;
    }

    _refreshRequestStatus(requestUid_, requestStatus, countPositive, countNegative, role);

    emit OnRequestApproved(requestUid_, approvalUid);
  }

  function approve(
    RequestUid requestUid
  , bool approveValue_
  , string calldata explanation_
  ) external override {
    _approve(requestUid, approveValue_, explanation_);
  }

  /// @notice Make batch approving
  function approveBatch(RequestUid[] calldata requestUids) external override {
    uint lenRequests = requestUids.length;
    for (uint i = 0; i < lenRequests; i = _uncheckedInc(i)) {
      _approve(requestUids[i], true, "");
    }
  }

  /// @notice Make batch disapproving
  function disapproveBatch(
    RequestUid[] calldata requestUids
  , string[] calldata explanations
  ) external override {
    uint lenRequests = requestUids.length;
    if (lenRequests != explanations.length) {
      revert ErrorArraysHaveDifferentLengths();
    }

    for (uint i = 0; i < lenRequests; i = _uncheckedInc(i)) {
      _approve(requestUids[i], false, explanations[i]);
    }
  }

  /// @notice Update current status of the request
  ///         Create / revoke a debt if necessary
  /// @param newCountPositive_ New count of positive not-canceled approvals
  /// @param newCountNegative_ New count of negative not-canceled approvals
  function _refreshRequestStatus(RequestUid requestUid_
    , RequestStatus currentStatus
    , uint32 newCountPositive_
    , uint32 newCountNegative_
    , RoleUid role
  ) internal {
    // the request is rejected if there is at least one negative approval
    // the request is approved, if count of positive approvals >= threshold
    // otherwise the state is Registered.
    IController c = IController(_controller());
    IDebtsManager dm = IDebtsManager(c.debtsManager());

    CountApprovals requiredCountApprovals = ICompanyManager(c.companyManager()).getCountRequiredApprovals(role);

    RequestStatus newStatus = newCountNegative_ > 0
      ? RequestStatus.Rejected_3
      : newCountPositive_ >= CountApprovals.unwrap(requiredCountApprovals)
        ? RequestStatus.Approved_2
        : RequestStatus.New_1;

    requestsStatusValues[requestUid_] = encodeRequestStatusValue(newStatus, newCountPositive_, newCountNegative_);

    if (currentStatus != newStatus) {
      emit RequestStatusChanged(requestUid_, newStatus);

      if (currentStatus == RequestStatus.Approved_2) {
        dm.revokeDebtForRequest(requestUid_);
      } else if (newStatus == RequestStatus.Approved_2) {
        dm.addDebt(requestUid_);
      }
    }
  }

  // *****************************************************
  // ********** Helper function for RequestUid ***********
  // *****************************************************

  function getRequestUid(EpochType epoch_, WorkerUid worker_) external pure returns (RequestUid) {
    return _getRequestUid(epoch_, worker_);
  }

  function _getRequestUid(EpochType epoch_, WorkerUid worker_) internal pure returns (RequestUid) {
    return RequestUid.wrap(uint(keccak256(abi.encodePacked(epoch_, worker_))));
  }

  // *****************************************************
  // ********** Helper function for WorkerUid ************
  // *****************************************************

  function _equalTo(WorkerUid uid1, uint64 uid2) internal pure returns (bool) {
    return WorkerUid.unwrap(uid1) == uid2;
  }

  // *****************************************************
  // ****************** Helper function for ApprovalUid **
  // *****************************************************
  function getApprovalUid(address approver_, RequestUid requestUid_) public pure returns (ApprovalUid){
    return _getApprovalUid(approver_, requestUid_);
  }
  function _getApprovalUid(address approver_, RequestUid requestUid_) internal pure returns (ApprovalUid){
    return ApprovalUid.wrap(uint(keccak256(abi.encodePacked(approver_, requestUid_))));
  }

  // *****************************************************
  // ****************** Optimization - unchecked *********
  // *****************************************************

  function _uncheckedInc(uint i) internal pure returns (uint) {
    unchecked {
      return i + 1;
    }
  }

  // *****************************************************
  // *********** Functions instead of modifiers **********
  // Hardhat sometime doesn't parse correctly custom errors,
  // generated inside modifiers.
  // To reproduce the problem see
  //      git: ac9e9769ea2263dfbb741df7c11b8b5e96b03a4b (31.05.2022)
  // So, modifiers are replaced by ordinal functions
  // *****************************************************
  function _getOnlyValidWorkerSigned() internal view returns (WorkerUid destWorkerUid) {
    destWorkerUid = ICompanyManager(IController(_controller()).companyManager()).getWorkerByWallet(msg.sender);
    if (_equalTo(destWorkerUid, 0)) {
      revert ErrorAccessDenied();
    }
  }

  // *****************************************************
  // ********* Helper function for string ****************
  // *****************************************************
  /// @notice Ensure that len is not 0 and len doesn't exceed max allowed value
  function _validateString(uint len, uint maxLen, bool notEmpty) internal pure {
    if (len >= maxLen) {
      revert ErrorTooLongString(len, maxLen);
    }
    if (notEmpty && len == 0) {
      revert ErrorEmptyString();
    }
  }

  // *****************************************************
  // **********  Helper function for RequestStatus *******
  // *****************************************************
  function decodeRequestStatusValue(RequestStatusValue status)
  public
  pure
  returns (RequestStatus requestStatus, uint32 countPositive, uint32 countNegative) {
    countNegative = uint32(RequestStatusValue.unwrap(status) >> 64);
    countPositive = uint32(RequestStatusValue.unwrap(status) >> 32);
    requestStatus = RequestStatus(uint256(uint32(RequestStatusValue.unwrap(status))));
  }

  function extractRequestStatus(RequestStatusValue status)
  external
  pure
  returns (RequestStatus requestStatus) {
    return _extractRequestStatus(status);
  }

  function _extractRequestStatus(RequestStatusValue status)
  internal
  pure
  returns (RequestStatus requestStatus) {
    requestStatus = RequestStatus(uint256(uint32(RequestStatusValue.unwrap(status))));
  }

  function encodeRequestStatusValue(RequestStatus requestStatus, uint32 countPositive, uint32 countNegative)
  public
  pure
  returns (RequestStatusValue status) {
    uint256 encoded;
    encoded |= uint256(countNegative) << 64;
    encoded |= uint256(countPositive) << 32;
    encoded |= uint256(requestStatus);

    return RequestStatusValue.wrap(encoded);
  }

  function getRequestStatus(RequestUid requestUid_) public view returns (RequestStatus) {
    return _extractRequestStatus(requestsStatusValues[requestUid_]);
  }
}

