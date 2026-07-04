// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

abstract contract Ownable {
    address public owner;
    address public ownerCandidate;

    error InvalidCaller();
    error NotCandidate();

    /// @notice Emitted when the owner of the factory is changed
    /// @param oldOwner The owner before the owner was changed
    /// @param newOwner The owner after the owner was changed
    event OwnerChanged(address indexed oldOwner, address indexed newOwner);

    event Candidate(address indexed newOwner);

    modifier onlyOwner() {
        if (msg.sender != owner) revert InvalidCaller();
        _;
    }

    constructor() {
        owner = msg.sender;
        emit OwnerChanged(address(0), msg.sender);
    }

    function setOwnerCandidate(address _candidate) external onlyOwner {
        ownerCandidate = _candidate;
        emit Candidate(_candidate);
    }

    function candidateConfirm() external {
        if (msg.sender != ownerCandidate) revert NotCandidate();
        emit OwnerChanged(owner, ownerCandidate);
        owner = ownerCandidate;
        ownerCandidate = address(0);
    }
}
