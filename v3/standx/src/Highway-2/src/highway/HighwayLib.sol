// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import {IERC20} from "../interface/IERC20.sol";

library HighwayLib {
    error CallerDisabled(); // 0x5da57e22
    error OutOfBuffer(); // 0x22052599
    error InvalidMessage(); // 0x6eca2e4b
    error DuplicateMessage(); // 2ad4ae2e
    error TransferFailed(); // 90b8ec18
    error InvalidSignature(); // 8baa579f
    error InvalidChainId(); // 7a47c9a2
    error InvalidCaller(); // 48f5c3ed
    error InvalidAddress(); // e6c4247b
    error InvalidStatus(); // f525e320
    error InvalidNonce(); // 756688fe
    error Timeout(); // 2af0c7f8
    error InvalidContract();

    struct State {
        IERC20 dusd;
        address validator;
        address messageSigner;
    }

    struct Message {
        IERC20 token;
        uint256 amount;
        uint64 nonce;
    }

    enum MessageStatus {
        Ok,
        Pending,
        RemoteError,
        TokenError
    }

    struct MessageSignature {
        uint256 expiredAt;
        uint256 chainId;
        address caller;
        address contractAddress;
        bytes signature;
    }

    struct MessageAckParams {
        address caller;
        uint8 messageIndex;
        Message message;
        MessageStatus status;
    }

    struct WithdrawMessage {
        MessageStatus status;
        uint256 callAt;
        uint256 responseAt;
        Message message;
        // NOTE: intentionally reserved for future use
        uint256 _reserved;
    }
}
