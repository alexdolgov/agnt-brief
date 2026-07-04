// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

library GatewayUtils {
    bytes4 internal constant NONCE_ATTRIBUTE = bytes4(keccak256("nonce(uint64)"));

    bytes4 internal constant CORRELATION_ID_ATTRIBUTE = bytes4(keccak256("correlationId(bytes32)"));

    bytes4 internal constant NONCE_KEY_ATTRIBUTE = bytes4(keccak256("nonceKey(uint256)"));

    error PayableCallsUnsupported();
}
