// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./EggBase.sol";
import "../interfaces/ISocket.sol";

contract Miner is EggBase {
    ISocket public immutable socket__;

    // example 
    // bytes32 public filter = 0x00000000000000000000000000000000000000000000000000000000000000ff; 
    // bytes32 public expected = 0x00000000000000000000000000000000000000000000000000000000000000aa; 
    bytes32 public immutable filter;
    bytes32 public immutable expected;

    constructor(address socket_, bytes32 filter_, bytes32 expected_) {
        socket__ = ISocket(socket_);
        filter = filter_;
        expected = expected_;
    }

    function egg(
        address msgSender,
        bytes calldata data
    ) external view override returns (bool) {
        (bytes32 packetId) = abi.decode(data, (bytes32));
        bytes32 packetRoot = socket__.packetIdRoots(packetId);
        if (packetRoot == bytes32(0)) return false;

        return (packetRoot & filter) == expected;
        return true;
    }
}
