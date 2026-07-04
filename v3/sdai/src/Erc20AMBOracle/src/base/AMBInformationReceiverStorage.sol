// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "../interfaces/IHomeAMB.sol";

contract AMBInformationReceiverStorage {  
    IHomeAMB immutable bridge;
    
    enum Status {
        Unknown,
        Pending,
        Ok,
        Failed
    }
    
    mapping(bytes32 => Status) public status;
    bytes32 public lastMessageId;
    
    constructor(IHomeAMB _bridge) {
        bridge = _bridge;
    }
    
}