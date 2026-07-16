// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;


import "../controller/Controllable.sol";
import "../../interfaces/IApprovalsManager.sol";

/// @notice Storage for any ApprovalsManager variables
/// @author dvpublic
abstract contract ApprovalsManagerStorage is Initializable
, Controllable
, IApprovalsManager {

  // don't change names or ordering!

  // *****************************************************
  // ******************** Constants **********************
  // *****************************************************

  /// @notice Version of the contract
  /// @dev Should be incremented when contract changed
  string constant public VERSION = "1.0.0";

  /// @notice All flags APPROVER_XXX contains this flag
  ///         to indicate that this approver kind is positive (this is approver)
  ///         Any flags NOT_APPROVER_XXX shouldn't contain 0x1
  uint constant public FLAG_IS_APPROVER = 0x1;
  /// @notice Approver is valid because he is a permanent approver
  ApproverKind constant public APPROVER_PERMANENT = ApproverKind.wrap(FLAG_IS_APPROVER | 0x200000);
  /// @notice Approver is valid because he has delegated permission
  ApproverKind constant public APPROVER_DELEGATE = ApproverKind.wrap(FLAG_IS_APPROVER | 0x400000);
  /// @notice Not approver, because he has delegated his approving permission to some delegate
  ApproverKind constant public NOT_APPROVER_DELEGATED = ApproverKind.wrap(0x800000);


  // *****************************************************
  // ********************* Members ***********************
  // *****************************************************

  /// @notice List of permanent (not temporary!) approvers for the worker
  /// @dev Removing items from the array is inefficient... but that lists should be very short.
  mapping(WorkerUid => address[]) public workersToPermanentApprovers;

  /// @notice All approving permissions: permanent and delegated
  ///         A wallet cannot have both kinds of permissions at the same time.
  ///         IF a permission is delegate, ApproverEntry has reference to the
  ///         approver to whom that permission was delegated.
  mapping(ApproverPair => ApproverEntry) public approvers;

  /// @notice List of all workers
  ///         for which the approver has got explicit permanent or temporary permission
  ///         to approve worker requests.
  mapping(address => WorkerUid[]) public approverToWorkers;


  // *****************************************************
  // ********************* Events ************************
  // *****************************************************

  event OnAddApprover(WorkerUid indexed worker, address approver_);
  event OnRemoveApprover(WorkerUid indexed worker, address approver_);
  event OnAddDelegate(WorkerUid indexed worker, address approver_, address delegate);
  event OnRevokeDelegate(WorkerUid indexed worker, address approver_, address delegate);


  // *****************************************************
  // ************* Lengths for reading mappings **********
  // *****************************************************
  function lengthWorkersToPermanentApprovers(WorkerUid workerUid) external view returns (uint) {
    return workersToPermanentApprovers[workerUid].length;
  }
  function lengthApproverToWorkers(address approver_) external view returns (uint) {
    return approverToWorkers[approver_].length;
  }

  //slither-disable-next-line unused-state
  uint[50] private ______gap;

}
