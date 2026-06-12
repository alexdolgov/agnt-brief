// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.12;

interface ISteerGovernance {
    event CancelledByInternalGovernance(
        address[] targets,
        uint256[] values,
        bytes[] calldatas,
        bytes32 descriptionHash
    );

    function setInternalGovernanceTimeLockOnce(
        address _internalGovernanceTimeLock
    ) external;

    function cancelByInternalGovernance(
        address[] memory targets,
        uint256[] memory values,
        bytes[] memory calldatas,
        bytes32 descriptionHash
    ) external;
}
