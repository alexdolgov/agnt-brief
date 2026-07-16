// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

interface IMessageTransmitterV2 {
    // Sends a generic message to another domain
    function sendMessage(
        uint32 destinationDomain,
        bytes32 recipient,      // the address on destination domain that will receive the payload
        bytes calldata messageBody,
        uint256 minimumGasLimit
    ) external returns (uint64 sequence);

    // Called by recipients to process attested messages
    function receiveMessage(
        bytes calldata message,
        bytes calldata attestation
    ) external;
}
