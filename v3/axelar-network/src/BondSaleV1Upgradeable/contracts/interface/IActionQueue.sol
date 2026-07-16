// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface IActionQueue {

    // function nextQueueId() external view returns (uint256);
    // function caller() external view returns (address);
    function queues(uint256 queueId) external view returns (
        address executor,
        uint256 requestId,
        uint24 action_id,
        uint40 startTime,
        uint40 deadline,
        uint256 amount
    );
    function actions(uint24 actionId) external view returns (
        uint40 duration,
        uint40 cooldown
    );
    function lastQueue(address executor, uint256 requestId) external view returns (uint256);

    // function updateCaller(address _caller) external;
    function updateQueue(
        address _executor,
        uint256 _requestId,
        uint24 actionId,
        uint256 _amount,
        bytes32 referenceNo
    ) external;
}
