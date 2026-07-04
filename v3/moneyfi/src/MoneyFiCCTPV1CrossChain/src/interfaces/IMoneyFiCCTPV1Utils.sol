// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.20;

interface IMoneyFiCCTPV1Utils {
    struct DecodeMessage {
        uint32 msgVersion;
        uint32 msgSourceDomain;
        uint32 msgDestinationDomain;
        uint64 msgNonce;
        bytes32 msgSender;
        bytes32 msgRecipient;
        bytes32 msgDestinationCaller;
        bytes32 msgDestinationSender; 
        bytes msgRawBody;
    }

    function decodeMessage(bytes memory message) external view returns (DecodeMessage memory decodeMessage);
}
