// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import {IERC20} from "../interface/IERC20.sol";

library HighwayLib {
    error CallerDisabled();
    error OutOfBuffer();
    error InvalidMessage();
    error DuplicateMessage();
    error TransferFailed();
    error InvalidSignature();
    error InvalidChainId();
    error InvalidCaller();
    error InvalidAddress();
    error InvalidStatus();
    error InvalidNonce();
    error Timeout();

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
