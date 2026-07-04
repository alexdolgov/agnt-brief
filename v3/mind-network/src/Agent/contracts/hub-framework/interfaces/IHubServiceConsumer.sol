// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IHubServiceConsumer {
    function onRequestCompleted(uint256 requestId, uint256 hubId, bytes32 serviceId, bytes calldata outputs) external;
}
