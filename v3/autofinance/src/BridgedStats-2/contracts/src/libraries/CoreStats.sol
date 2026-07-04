// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

/// @title Contains some common errors, events, structs, functionality for cross chain comms.
library CoreStats {
    /// =====================================================
    /// Constants
    /// =====================================================

    /// @notice Message struct version
    uint256 public constant VERSION = 1;

    /// @notice LST Base APR snapshots
    bytes32 public constant LST_SNAPSHOT_MESSAGE_TYPE = keccak256("LST_SNAPSHOT");

    /// @notice LST Eth Per Token changes
    bytes32 public constant LST_BACKING_MESSAGE_TYPE = keccak256("LST_BACKING");

    /// =====================================================
    /// Errors
    /// =====================================================

    /// @notice Thrown when chain selector is not supported
    error ChainNotSupported(uint64 chainId);

    /// @notice Thrown when stored and supplied message hashes don't match in resend functions.
    error MismatchMessageHash(bytes32 storedHash, bytes32 currentHash);

    /// =====================================================
    /// Structs
    /// =====================================================

    /// @notice Message struct.  Encoded and sent across chain.
    struct Message {
        address messageOrigin;
        uint256 version;
        uint256 messageNonce;
        bytes32 messageType;
        bytes message;
    }

    /// @notice Message structure for `LST_BACKING_MESSAGE_TYPE`
    struct LstBackingMessage {
        address token;
        uint208 ethPerToken;
        uint48 timestamp;
    }

    /// @notice Used to transfer LST snapshot data to other chain.
    struct LSTDestinationInfo {
        uint256 snapshotTimestamp;
        uint256 newBaseApr;
        uint256 currentEthPerToken;
    }

    /// =====================================================
    /// External Functions
    /// =====================================================

    /// @notice Returns current version of Message struct.
    function getVersion() external pure returns (uint256) {
        return VERSION;
    }

    /// @notice Encodes message to be sent to receiving chain
    /// @param sender Message sender
    /// @param messageNonce Nonce of message to be sent
    /// @param messageType message type to be sent
    /// @param message Bytes message to be processed on receiving chain
    function encodeMessage(address sender, uint256 messageNonce, bytes32 messageType, bytes memory message)
        internal
        pure
        returns (bytes memory)
    {
        return abi.encode(
            Message({
                messageOrigin: sender,
                version: VERSION,
                messageNonce: messageNonce,
                messageType: messageType,
                message: message
            })
        );
    }
}
