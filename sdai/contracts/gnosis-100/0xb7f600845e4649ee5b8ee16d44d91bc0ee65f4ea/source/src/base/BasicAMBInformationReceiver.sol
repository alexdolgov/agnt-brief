// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "../interfaces/IAMBInformationReceiver.sol";
import "./AMBInformationReceiverStorage.sol";

abstract contract BasicAMBInformationReceiver is IAMBInformationReceiver, AMBInformationReceiverStorage {
    function onInformationReceived(bytes32 _messageId, bool _status, bytes memory _result) external override {
        require(msg.sender == address(bridge));
        if (_status) {
            onResultReceived(_messageId, _result);
        }
        status[_messageId] = _status ? Status.Ok : Status.Failed;
    }
    
    function onResultReceived(bytes32 _messageId, bytes memory _result) virtual internal;
}
