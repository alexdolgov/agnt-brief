// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "./EggBase.sol";

import "../interfaces/ISocket.sol";
import "../interfaces/ITransmitManager.sol";
import "../interfaces/IExecutionManager.sol";

contract FindTheSign is EggBase {
    ISocket public immutable socket__;
    ITransmitManager public immutable transmitter__;
    IExecutionManager public immutable executeManager__;

    uint32 public immutable chainSlug;

    constructor(
        address socket_,
        address transmitter_,
        address executeManager_
    ) {
        socket__ = ISocket(socket_);

        transmitter__ = ITransmitManager(transmitter_);
        executeManager__ = IExecutionManager(executeManager_);

        chainSlug = uint32(block.chainid);
    }

    function egg(
        address msgSender,
        bytes calldata data
    ) external view override returns (bool) {
        (
            bytes32 packetId,
            uint32 srcSlug,
            bytes32 proposeDigest,
            bytes memory proposeSig,
            bytes32 executeDigest,
            bytes memory executeSig
        ) = abi.decode(data, (bytes32, uint32, bytes32, bytes, bytes32, bytes));

        bytes32 root = socket__.packetIdRoots(packetId);
        bytes32 expectedProposeDigest = keccak256(
            abi.encode(chainSlug, packetId, root)
        );

        if (expectedProposeDigest != proposeDigest) return false;
        if (root != executeDigest) return false;

        // propose digest match
        (, bool isTransmitter) = transmitter__.checkTransmitter(
            srcSlug,
            proposeDigest,
            proposeSig
        );

        if (!isTransmitter) return false;
        (, bool isExecutor) = executeManager__.isExecutor(
            executeDigest,
            executeSig
        );
        if (!isExecutor) return false;

        return true;
    }
}
