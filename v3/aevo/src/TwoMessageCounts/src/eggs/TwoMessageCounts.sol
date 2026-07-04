// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "./EggBase.sol";
import "../interfaces/ISocket.sol";

contract TwoMessageCounts is EggBase {
    ISocket public immutable socket__;

    constructor(address socket_) {
        socket__ = ISocket(socket_);
    }

    function egg(
        address,
        bytes calldata data
    ) external view override returns (bool) {
        (bytes32 msgId1, bytes32 msgId2) = abi.decode(
            data,
            (bytes32, bytes32)
        );

        if (
            !socket__.messageExecuted(msgId1) ||
            !socket__.messageExecuted(msgId2) 
        ) return false;

        if (
            uint64(uint256(msgId1)) != uint64(uint256(msgId2))
        ) return false;

        if (
            uint256(msgId1) >> 64 == uint256(msgId2) >> 64
        ) return false;

        return true;
    }
}
