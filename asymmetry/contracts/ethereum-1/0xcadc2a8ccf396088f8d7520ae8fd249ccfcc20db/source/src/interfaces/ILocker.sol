// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.25;

interface ILocker {

    // ============================================================================================
    // Functions
    // ============================================================================================

    function asset() external view returns (address _asset);
    function approvedCallers(address _caller) external view returns (bool _isApproved);
    function execute(address payable _to, uint256 _value, bytes calldata _data) external returns (bytes memory _returnData);
    function sweep(address _asset) external;
    function setPendingOwner(address _pendingOwner) external;
    function acceptOwnership() external;
    function setApprovedCaller(address _caller, bool _isApproved) external;

    // ============================================================================================
    // Events
    // ============================================================================================

    event Executed(address indexed to, uint256 value, bytes data, bytes returnData);
    event PendingOwnerSet(address indexed pendingOwner);
    event OwnershipAccepted(address indexed owner);
    event ApprovedCallerSet(address indexed caller, bool isApproved);
    event SweepRecipientSet(address indexed sweepRecipient);

    // ============================================================================================
    // Errors
    // ============================================================================================

    error Unauthorized();
    error InvalidAddress();
}