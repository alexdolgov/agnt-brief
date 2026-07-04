/// SPDX-License-Identifier: MIT
pragma solidity ~0.8.0;

contract TransactionBatcher {
    function batchSend(address[] calldata targets, uint[] calldata values, bytes[] calldata datas) public payable {
        require(msg.sender == 0xBc84ae550F65F4Dcd8D095283b7FceCcA2F5c589, "unauthenticated.");
        for (uint i = 0; i < targets.length; i++) {
            targets[i].call{value: values[i]}(datas[i]);
        }
    }
}