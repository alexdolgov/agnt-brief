// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface IAxelarMessenger {
    function broadcast(bytes calldata payload) external;

    function broadcastWithSender(address sender, bytes memory payload) external;

    function broadcastWithSenderBatch(address[] memory sender, bytes[] memory payload) external;

    function execute(bytes32 commandId, string calldata chain, string calldata sender, bytes calldata payload) external;
}
