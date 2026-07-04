// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IFDNServiceSpecs {
    struct DecryptionRequest {
        bytes32 taskId;
        bytes32 fheKeySetId;
        bytes encrypted;
    }

    struct DecryptionResult {
        bytes decrypted;
    }
}
