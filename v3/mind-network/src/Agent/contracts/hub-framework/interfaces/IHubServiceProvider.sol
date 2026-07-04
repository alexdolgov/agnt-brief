// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IHubServiceProvider {
    function onServiceRequested(
        uint256 requestId,
        address requester,
        bytes32 serviceId,
        bytes calldata inputs,
        uint256 callbackGasLimit
    ) external;

    function onRequestCancelled(uint256 requestId, address requester, bytes32 serviceId) external;

    function onFeeReceived(uint256 requestId, uint256 serviceFee, uint256 gasFee) external payable;
}
