// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "./EggBase.sol";
import "../interfaces/ISocket.sol";
import "../interfaces/ISwitchboard.sol";

contract PlayTime is EggBase {
    ISocket public immutable socket__;
    ISwitchboard public immutable optimisticSwitchboard__;

    constructor(address socket_, address optimisticSwitchboard_) {
        socket__ = ISocket(socket_);
        optimisticSwitchboard__ = ISwitchboard(optimisticSwitchboard_);
    }

    function egg(
        address msgSender,
        bytes calldata data
    ) external view override returns (bool) {
        (bytes32 packetId, uint32 srcChainSlug, uint256 timestamp) = abi.decode(
            data,
            (bytes32, uint32, uint256)
        );
        bytes32 root = socket__.packetIdRoots(packetId);
        uint256 proposeTime = socket__.rootProposedAt(packetId);
        if (root == bytes32(0)) return false;

        bool socketVerification = optimisticSwitchboard__.allowPacket(
            root,
            packetId,
            srcChainSlug,
            proposeTime
        );

        bool userVerification = optimisticSwitchboard__.allowPacket(
            root,
            packetId,
            srcChainSlug,
            timestamp
        );

        if (!socketVerification && userVerification) return true;
        return false;
    }
}
