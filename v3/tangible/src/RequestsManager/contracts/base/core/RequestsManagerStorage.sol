// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;


import "../../openzeppelin/Initializable.sol";
import "../../interfaces/IRequestsManager.sol";
import "../controller/Controllable.sol";

/// @title Storage for any RequestsManager variables
/// @author dvpublic
abstract contract RequestsManagerStorage
is Initializable
, Controllable
, IRequestsManager
{
  // don't change names or ordering!

  // *****************************************************
  // *************** Constants ***************************
  // *****************************************************

  /// @notice Version of the contract
  /// @dev Should be incremented when contract changed
  string public constant VERSION = "1.0.0";

  /// @notice Max allowed count of hours in a request
  uint constant public MAX_ALLOWED_HOURS = 12*7*4; // max delay of sending request is 4 weeks
  /// @notice Max length of a URL in request
  uint constant public MAX_URL_LENGTH = 100;
  /// @notice Max length of a explanation in approval
  uint constant public MAX_EXPLANATION_LENGTH = 100;

  /// @notice there is no approval for the request
  uint64 constant public APPROVAL_UNKNOWN = 0;
  /// @notice the request was approved
  uint64 constant public APPROVAL_POSITIVE = 0x1;
  /// @notice the request was disapproved
  uint64 constant public APPROVAL_NEGATIVE = 0x2;
  /// @notice the request was canceled, so re-approving is allowed
  uint64 constant public APPROVAL_CANCELED = 0x4;

  // *****************************************************
  // **************** Members ****************************
  // *****************************************************

  // currently this mapping is not used in the code
  // it will be used by approvers to get list of requests that should be approved
  // probably we need smth else structure here
  mapping(EpochType => WorkerUid[]) public requestsForEpoch;

  /// @notice Map request:[approver address]
  ///         Full list of approvers who has approved or disapproved the request.
  ///         An approver can make several approvals for the same request,
  ///         but we store his address only once here.
  mapping(RequestUid => address[]) public requestApprovals;

  /// @dev A map to check if the given approver has already given an approve to the specified request
  mapping(ApprovalUid => Approval) public approverRequests;

  /// @notice Current statuses of requests
  ///         Each RequestStatusValue contains (RequestStatus, countPositiveApprovals, countNegativeApprovals)
  ///         encoded to single uint.
  mapping(RequestUid => RequestStatusValue) public requestsStatusValues;

  /// @notice Optional explanation, i.e. why the request was rejected
  ///         We need to store explanation for negative-approvals only
  mapping(ApprovalUid => string) public approvalExplanations;


  // *****************************************************
  // **************** Events *****************************
  // *****************************************************

  event RequestStatusChanged(RequestUid requestUid, RequestStatus status);
  event OnRequestApproved(RequestUid requestUid, ApprovalUid approvalUid);


  function lengthRequestsForEpoch(EpochType epoch) external view returns (uint256) {
    return requestsForEpoch[epoch].length;
  }
  function lengthRequestApprovals(RequestUid requestUid) external view returns (uint256) {
    return requestApprovals[requestUid].length;
  }

  //slither-disable-next-line unused-state
  uint[50] private ______gap;
}
