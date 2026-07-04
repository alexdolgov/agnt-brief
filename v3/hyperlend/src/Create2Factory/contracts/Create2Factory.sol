//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Create2Factory {
    function deploy(bytes memory code, bytes32 salt) public returns (address addr) {
        assembly {
            addr := create2(0, add(code, 0x20), mload(code), salt)
            if iszero(extcodesize(addr)) { revert(0, 0) }
        }
    }
}