// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable2Step.sol";

/// @title Base contract that implements executor related functions
/// @author IntoTheBlock Corp
/// @dev Abstract
abstract contract Executable is Ownable2Step {
    mapping(address => bool) public executors;

    event ExecutorUpdated(address indexed executor, bool enabled);

    /// @param _executors Initial whitelisted executor addresses
    constructor(address[] memory _executors) {
        for (uint256 i = 0; i < _executors.length; i++) {
            addExecutor(_executors[i]);
        }
    }

    /// @notice Revert if call is not being made from the owner or an executor
    modifier onlyExecutor() {
        require(owner() == msg.sender || executors[msg.sender], "Executable: caller is not the executor");
        _;
    }

    /// @notice Only owner. Add an executor
    /// @param _executor New executor address
    function addExecutor(address _executor) public onlyOwner {
        emit ExecutorUpdated(_executor, true);
        executors[_executor] = true;
    }

    /// @notice Only owner. Remove an executor
    /// @param _executor Executor address to remove
    function removeExecutor(address _executor) external onlyOwner {
        emit ExecutorUpdated(_executor, false);
        executors[_executor] = false;
    }
}
