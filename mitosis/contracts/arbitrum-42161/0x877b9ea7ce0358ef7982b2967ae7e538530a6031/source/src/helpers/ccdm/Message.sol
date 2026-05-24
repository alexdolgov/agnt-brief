// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {Error} from '@src/lib/Error.sol';

enum MsgType {
  Deposit,
  Refund,
  Bridge
}

/// @notice step 1. request deposit from CCDM Host
/// @dev This message must processed by CCDM Client
/// @dev You need to modify `Message` library to add more fields
struct MsgDeposit {
  bytes32 receiver;
  bytes32 refundTo;
  bytes32 token;
  uint256 amount;
}

/// @notice step 2. request refund from CCDM Client
/// @dev This message must processed by CCDM Host
/// @dev You need to modify `Message` library to add more fields
struct MsgRefund {
  bytes32 receiver;
  bytes32 token;
  uint256 amount;
}

/// @notice step 3. request bridge for adjust provisioned token amount
/// @dev This message must processed by CCDM Host
/// @dev You need to modify `Message` library to add more fields
struct MsgBridge {
  bytes32 receiver;
  bytes32 token;
  uint256 amount;
}

library Message {
  uint256 public constant LEN_MSG_DEPOSIT = 129;
  uint256 public constant LEN_MSG_REFUND = 97;
  uint256 public constant LEN_MSG_BRIDGE = 97;

  function msgType(bytes calldata msg_) internal pure returns (MsgType) {
    return MsgType(uint8(msg_[0]));
  }

  // MsgDeposit

  function decodeDeposit(bytes calldata msg_) internal pure returns (MsgDeposit memory depositMsg) {
    if (msg_.length != LEN_MSG_DEPOSIT) {
      revert Error.InvalidMsgLength(LEN_MSG_DEPOSIT, msg_.length);
    }

    if (msgType(msg_) != MsgType.Deposit) {
      revert Error.InvalidMsgType(uint8(msg_[0]));
    }

    depositMsg.receiver = bytes32(msg_[1:33]);
    depositMsg.refundTo = bytes32(msg_[33:65]);
    depositMsg.token = bytes32(msg_[65:97]);
    depositMsg.amount = uint256(bytes32(msg_[97:]));

    return depositMsg;
  }

  function encode(MsgDeposit memory msg_) internal pure returns (bytes memory) {
    return abi.encodePacked(MsgType.Deposit, msg_.receiver, msg_.refundTo, msg_.token, msg_.amount);
  }

  // MsgRefund

  function decodeRefund(bytes calldata msg_) internal pure returns (MsgRefund memory refundMsg) {
    if (msg_.length != LEN_MSG_REFUND) {
      revert Error.InvalidMsgLength(LEN_MSG_REFUND, msg_.length);
    }

    if (msgType(msg_) != MsgType.Refund) {
      revert Error.InvalidMsgType(uint8(msg_[0]));
    }

    refundMsg.receiver = bytes32(msg_[1:33]);
    refundMsg.token = bytes32(msg_[33:65]);
    refundMsg.amount = uint256(bytes32(msg_[65:]));

    return refundMsg;
  }

  function encode(MsgRefund memory msg_) internal pure returns (bytes memory) {
    return abi.encodePacked(MsgType.Refund, msg_.receiver, msg_.token, msg_.amount);
  }

  // MsgBridge

  function decodeBridge(bytes calldata msg_) internal pure returns (MsgBridge memory bridgeMsg) {
    if (msg_.length != LEN_MSG_BRIDGE) {
      revert Error.InvalidMsgLength(LEN_MSG_BRIDGE, msg_.length);
    }

    if (msgType(msg_) != MsgType.Bridge) {
      revert Error.InvalidMsgType(uint8(msg_[0]));
    }

    bridgeMsg.receiver = bytes32(msg_[1:33]);
    bridgeMsg.token = bytes32(msg_[33:65]);
    bridgeMsg.amount = uint256(bytes32(msg_[65:]));

    return bridgeMsg;
  }

  function encode(MsgBridge memory msg_) internal pure returns (bytes memory) {
    return abi.encodePacked(MsgType.Bridge, msg_.receiver, msg_.token, msg_.amount);
  }
}
