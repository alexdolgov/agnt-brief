// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// ProxyCaller contract is deployed frequently, and in order to reduce gas
// it has to be as small as possible
contract ProxyCaller {
    address immutable _owner;

    constructor() {
        _owner = msg.sender;
    }

    function exec(
        bool delegate,
        address target,
        bytes calldata data
    ) external returns (bool success, bytes memory) {
        require(msg.sender == _owner, "O");
        if (delegate) {
            return target.delegatecall(data);
        }
        return target.call(data);
    }
}
