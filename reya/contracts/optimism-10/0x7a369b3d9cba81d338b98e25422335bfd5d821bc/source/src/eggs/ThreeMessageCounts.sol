// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "./EggBase.sol";
import "../interfaces/ISocket.sol";

contract ThreeMessageCounts is EggBase {
    ISocket public immutable socket__;

    constructor(address socket_) {
        socket__ = ISocket(socket_);
    }

    function egg(
        address,
        bytes calldata data
    ) external view override returns (bool) {
        (bytes32 msgId1, bytes32 msgId2, bytes32 msgId3) = abi.decode(
            data,
            (bytes32, bytes32, bytes32)
        );

        if (
            !socket__.messageExecuted(msgId1) ||
            !socket__.messageExecuted(msgId2) ||
            !socket__.messageExecuted(msgId3)
        ) return false;

        if (
            uint64(uint256(msgId1)) != uint64(uint256(msgId2)) ||
            uint64(uint256(msgId2)) != uint64(uint256(msgId3))
        ) return false;

        if (
            uint256(msgId1) >> 64 == uint256(msgId2) >> 64 ||
            uint256(msgId2) >> 64 == uint256(msgId3) >> 64
        ) return false;

        return true;
    }
}
