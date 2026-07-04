// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {UpgraderBase} from "src/upgraders/UpgraderBase.sol";

contract AgentUpgrader is UpgraderBase {
    constructor(address initialOwner) UpgraderBase(initialOwner) {}

    function _calls() internal pure override returns (bytes[] memory calls) {
        calls = new bytes[](7);
        calls[0] = abi.encodeWithSignature("owner()");
        calls[1] = abi.encodeWithSignature("pendingOwner()");
        calls[2] = abi.encodeWithSignature("lzEndpoint()");
        calls[3] = abi.encodeWithSignature("peerEid()");
        calls[4] = abi.encodeWithSignature("peerAddress()");
        calls[5] = abi.encodeWithSignature("lzPeerReceiveGas()");
        calls[6] = abi.encodeWithSignature("lzPeerComposeGas()");
    }
}
