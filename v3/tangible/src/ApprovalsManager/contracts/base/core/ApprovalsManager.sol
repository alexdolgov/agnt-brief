// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "./ApprovalsManagerStorage.sol";
import "../../interfaces/IApprovalsManager.sol";
import "../../interfaces/ICompanyManager.sol";

/// @notice Manager approvers and delegates
///         CompanyManager supports approvers by nature, i.e. head can approve requests of his workers.
///         This contract provides possibility to set approvers for workers manually.
///         Any wallet can be set as approver of the worker.
///         Assigned approver is able to delegate has approving permission to any other wallet - delegate.
///         The delegate is able to approve requests instead of original approver
///         until the approver doesn't revoke his permission back.
/// @author dvpublic
contract ApprovalsManager is ApprovalsManagerStorage {

  // *****************************************************
  // *********** Initialization **************************
  // *****************************************************
  function initialize(
    address controller_
  ) external initializer {
    Controllable.__Controllable_init(controller_);
  }

  // ****************************************************
  // *********** Add/remove approvers *******************
  // ****************************************************

  /// @notice Add some arbitrary account as approver for the worker
  ///         The account will be allowed to approve requests of the worker
  function addApprover(address approver_, WorkerUid worker_)
  external {
    ICompanyManager cm = ICompanyManager(IController(_controller()).companyManager());
    _onlyGovernanceOrDepartmentHead(worker_);

    ApproverPair aid = getApproverPair(approver_, worker_);

    if (approvers[aid].kind != ApprovePermissionKind.Unknown_0) {
      revert ErrorActionIsAlreadyDone();
    }
    if (!cm.isWorkerValid(worker_)) {
      revert ErrorWorkerNotFound(worker_);
    }
    if (_equals(cm.getWorkerByWallet(approver_), worker_)) {
      revert ErrorWorkerCannotBeApprover();
    }

    // add new ApproverEntry
    approvers[aid].kind = ApprovePermissionKind.Permanent_1;

    // add new approver to the list of worker approvers
    workersToPermanentApprovers[worker_].push(approver_);

    // add new worker to the list of approver's workers
    approverToWorkers[approver_].push(worker_);

    emit OnAddApprover(worker_, approver_);
  }

  /// @notice Remove the approver from the list of approvers of the worker
  function removeApprover(address approver_, WorkerUid worker_)
  external {
    _onlyGovernanceOrDepartmentHead(worker_);

    ApproverPair aid = getApproverPair(approver_, worker_);
    ApproverEntry storage ae = approvers[aid];

    if (ae.kind == ApprovePermissionKind.Unknown_0) {
      revert ErrorNotApprover(approver_, worker_);
    }
    if (ae.kind != ApprovePermissionKind.Permanent_1) {
      revert ErrorCannotRemoveNotPermanentApprover();
    }

    // delete the approver from listApprovers and put last added approver on the place of the removed item
    _deleteApproverFromListApprovers(worker_, approver_);

    // delete the worker from approverToWorkers and put last added worker on the place of the removed item
    _deleteWorkerFromApproversToWorkers(approver_, worker_);

    delete approvers[aid];
    emit OnRemoveApprover(worker_, approver_);
  }

  /// @notice delete the approver from listApprovers and put last added approver on the place of the removed item
  function _deleteApproverFromListApprovers(WorkerUid worker_, address approver_) internal {
    address[] storage listApprovers = workersToPermanentApprovers[worker_];

    uint len = listApprovers.length;
    for (uint i = 0; i < len; i = _uncheckedInc(i)) {
      if (listApprovers[i] == approver_) {
        if (i < len - 1) {
          listApprovers[i] = listApprovers[len - 1];
        }
        listApprovers.pop();
        break;
      }
    }
  }

  /// @notice delete the worker from approverToWorkers and put last added worker on the place of the removed item
  function _deleteWorkerFromApproversToWorkers(address approver_, WorkerUid worker_) internal {
    WorkerUid[] storage listWorkers = approverToWorkers[approver_];

    uint len = listWorkers.length;
    for (uint i = 0; i < len; i = _uncheckedInc(i)) {
      if (_equals(listWorkers[i], worker_)) {
        if (i < len - 1) {
          listWorkers[i] = listWorkers[len - 1];
        }
        listWorkers.pop();
        break;
      }
    }
  }

  // *****************************************************
  // ***************** Is approver ***********************
  // *****************************************************

  /// @notice Check if the approver has right to approve requests of the worker
  ///         Take into account all explicit and implicit cases:
  ///         permanent and delegated rights, approver WorkerRole and so on.
  function _getApproverKind(address approver_, WorkerUid worker_) internal view returns (ApproverKind) {
    ApproverEntry storage ae = approvers[getApproverPair(approver_, worker_)];

    if (ae.kind != ApprovePermissionKind.Unknown_0) {
      // there is permission (permanent or temporary) and it isn't delegated
      if (ae.delegatedTo == address(0)) {
        return ae.kind == ApprovePermissionKind.Permanent_1
          ? APPROVER_PERMANENT
          : APPROVER_DELEGATE;
      } else {
        return NOT_APPROVER_DELEGATED;
      }
    }

    ICompanyManager cm = ICompanyManager(IController(_controller()).companyManager());
    return cm.isNatureApprover(approver_, worker_);
 }

  /// @notice Check if the approver has right to approve requests of the worker
  ///         Take into account all explicit and implicit cases:
  ///         permanent and delegated rights, approver WorkerRole and so on.
  function getApproverKind(address approver_, WorkerUid worker_) external view override returns (ApproverKind) {
    return _getApproverKind(approver_, worker_);
  }

  function isApprover(address approver_, WorkerUid worker_) external view returns (bool) {
    return (
    ApproverKind.unwrap(_getApproverKind(approver_, worker_))
    & FLAG_IS_APPROVER // FLAG_IS_APPROVER indicates that this is a valid approver, see the comment to ApproverKind
    ) != 0;
  }

  /// @notice Check if the approver_ is registered approver for the worker_
  ///         it returns true even if the approver has temporary delegated his permission to some delegate
  function isRegisteredApprover(address approver_, WorkerUid worker_) external view returns (bool) {
    ApproverPair aid = getApproverPair(approver_, worker_);
    return approvers[aid].kind != ApprovePermissionKind.Unknown_0;
  }


  // *****************************************************
  // *********** Delegation of approving permissions *****
  // *****************************************************

  /// @notice Approver delegates permanent permission to approve worker requests to the delegate.
  ///         The delegate receives temporary permission to approve worker requests.
  ///         The approver temporary looses a permission to approve the requests of the worker
  ///         until he revokes his permission back from the delegate
  function addDelegation(address approver_, WorkerUid worker_, address delegate_)
  external {
    ICompanyManager cm = ICompanyManager(IController(_controller()).companyManager());
    _onlyPermanentApproverGovernanceOrDepartmentHead(approver_, worker_);

    ApproverPair approverAid = getApproverPair(approver_, worker_);
    ApproverEntry storage ae = approvers[approverAid];

    // this is valid approver
    if (ae.kind == ApprovePermissionKind.Unknown_0) {
      revert ErrorNotApprover(approver_, worker_);
    }
    // he hasn't delegated his permission yet
    if (ae.kind != ApprovePermissionKind.Permanent_1) {
      revert ErrorApprovingReDelegationIsNotAllowed();
    }
    // the delegate still hasn't that permission
    if (ae.delegatedTo != address(0)) {
      revert ErrorThePermissionIsAlreadyDelegated(); // the permission is already delegated
    }

    /// the delegate is not equal to worker or approver
    WorkerUid delegateUid = cm.getWorkerByWallet(delegate_);
    WorkerUid approverUid = cm.getWorkerByWallet(approver_);
    if (!_equalTo(delegateUid, 0)) {
      if (
        _equals(approverUid, delegateUid)  // the delegate is approver
        || _equals(delegateUid, worker_) // the delegate is worker
      ) {
        revert ErrorIncorrectDelegate();
      }
    }

    // the delegate hasn't such permission
    ApproverPair delegateAid = getApproverPair(delegate_, worker_);
    if (approvers[delegateAid].kind != ApprovePermissionKind.Unknown_0) {
      revert ErrorTheDelegateHasSamePermission();
    }

    // register new temporary permission for the delegate
    approvers[delegateAid].kind = ApprovePermissionKind.Delegated_2;

    // we don't need to add new item to _permanentApprovers, we add new temporary item to approvers instead
    // the approver temporary looses has permission to approve worker requests
    ae.delegatedTo = delegate_;

    approverToWorkers[delegate_].push(worker_);
    _deleteWorkerFromApproversToWorkers(approver_, worker_);

    emit OnAddDelegate(worker_, approver_, delegate_);
  }

  /// @notice Approver revokes his permanent permission to approve worker requests from the delegate.
  function revokeDelegation(address approver_, WorkerUid worker_, address delegate_)
  external {
    _onlyPermanentApproverGovernanceOrDepartmentHead(approver_, worker_);

    ApproverPair delegateAid = getApproverPair(delegate_, worker_);
    ApproverEntry storage ae = approvers[getApproverPair(approver_, worker_)];

    // this is valid approver
    if (ae.kind == ApprovePermissionKind.Unknown_0) {
      revert ErrorNotApprover(approver_, worker_);
    }

    // the approver has delegated his permission to the delegate
    if (
      ae.delegatedTo != delegate_
      || approvers[delegateAid].kind == ApprovePermissionKind.Unknown_0
    ) {
      revert ErrorNotDelegated(delegate_, worker_);
    }

    // unregister the temporary permission
    delete approvers[delegateAid];
    // restore back permissions of the approver
    ae.delegatedTo = address(0);

    approverToWorkers[approver_].push(worker_);
    _deleteWorkerFromApproversToWorkers(delegate_, worker_);

    emit OnRevokeDelegate(worker_, approver_, delegate_);
  }

  // *****************************************************
  // ********* Helper function for WorkerUid *************
  // *****************************************************

  function _equals(WorkerUid uid1, WorkerUid uid2) internal pure returns (bool) {
    return WorkerUid.unwrap(uid1) == WorkerUid.unwrap(uid2);
  }
  function _equalTo(WorkerUid uid1, uint64 uid2) internal pure returns (bool) {
    return WorkerUid.unwrap(uid1) == uid2;
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
  // ******* Helper function for ApproverPair/Kind *******
  // *****************************************************
  function getApproverPair(address approver, WorkerUid worker_) public pure returns (ApproverPair) {
    return ApproverPair.wrap(uint(keccak256(abi.encodePacked(approver, worker_))));
  }

  // *****************************************************
  // *********** Functions instead of modifiers **********
  // Hardhat sometime doesn't parse correctly custom errors,
  // generated inside modifiers.
  // To reproduce the problem see
  //      git: ac9e9769ea2263dfbb741df7c11b8b5e96b03a4b (31.05.2022)
  // So, modifiers are replaced by ordinal functions
  // *****************************************************
  function _onlyPermanentApproverGovernanceOrDepartmentHead(address approver_, WorkerUid workerUid) internal view {
    if (! _isGovernance(msg.sender)
        && !ICompanyManager(IController(_controller()).companyManager()).isDepartmentHead(msg.sender, workerUid)
    ) {
      if (approver_ != msg.sender) {
        revert ErrorAccessDenied(); // you cannot delegate other approver's rights
      }
      ApproverPair aid = getApproverPair(msg.sender, workerUid);
      if (approvers[aid].kind != ApprovePermissionKind.Permanent_1) {
        revert ErrorApproverOrHeadOrGovOnly();
      }
    }
  }

  function _onlyGovernanceOrDepartmentHead(WorkerUid workerUid) internal view {
    if (! _isGovernance(msg.sender)
        && !ICompanyManager(IController(_controller()).companyManager()).isDepartmentHead(msg.sender, workerUid)
    ) {
      revert ErrorGovernanceOrDepartmentHeadOnly();
    }
  }

}
