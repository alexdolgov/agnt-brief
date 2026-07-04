// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.25;

contract DelegateCaller {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function execute(address target) public returns (bytes memory) {
        require(msg.sender == owner, "DelegateCaller/not-owner");

        (bool success, bytes memory result) = target.delegatecall(abi.encodeWithSignature("execute()"));
        require(success, "DelegateCaller/delegatecall-failure");

        return result;
    }

}
