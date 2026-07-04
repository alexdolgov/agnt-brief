// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "./EggBase.sol";
import "../interfaces/ISocket.sol";

contract PacketSearch is EggBase {
    ISocket public immutable socket__;
    uint256 public immutable modulo__;

    constructor(address socket_, uint256 modulo_) {
        socket__ = ISocket(socket_);
        modulo__ = modulo_;
    }

    function egg(
        address,
        bytes calldata data
    ) external view override returns (bool) {
        bytes32 packetId = bytes32(data);
        uint64 packetCount = uint64(uint256(packetId));

        if (
            socket__.packetIdRoots(packetId) == bytes32(0) ||
            packetCount % modulo__ != 0
        ) return false;

        return true;
    }
}
