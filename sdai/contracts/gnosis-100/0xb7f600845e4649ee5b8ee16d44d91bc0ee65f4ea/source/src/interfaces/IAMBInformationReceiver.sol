// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

interface IAMBInformationReceiver {
    function onInformationReceived(bytes32 messageId, bool status, bytes calldata result) external;
}
