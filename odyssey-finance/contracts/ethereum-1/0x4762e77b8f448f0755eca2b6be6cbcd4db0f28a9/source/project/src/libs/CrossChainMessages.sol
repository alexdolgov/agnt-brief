// SPDX-License-Identifier: MIT

pragma solidity 0.8.29;

import {MSG_DEPOSIT_REQUEST, MSG_REDEEM_REQUEST, MSG_REQUEST_FULFILL, MSG_REQUEST_UNDO} from "src/types/Constants.sol";

library CrossChainMessages {
    uint256 private constant MSG_TYPE_OFFSET = 1;

    function msgType(bytes memory msg_) internal pure returns (uint8) {
        return uint8(msg_[0]);
    }

    function requestId(bytes memory msg_) internal pure returns (uint256 _reqId) {
        assembly {
            _reqId := mload(add(msg_, add(32, MSG_TYPE_OFFSET)))
        }
    }

    function encodeDepositRequest(uint256 requestId_) internal pure returns (bytes memory _msg) {
        return abi.encodePacked(MSG_DEPOSIT_REQUEST, requestId_);
    }

    function decodeDepositRequest(bytes memory msg_) internal pure returns (uint256 _reqId) {
        assembly {
            _reqId := mload(add(msg_, add(32, MSG_TYPE_OFFSET)))
        }
    }

    function encodeRedeemRequest(uint256 requestId_, address tokenOut_) internal pure returns (bytes memory _msg) {
        return abi.encodePacked(MSG_REDEEM_REQUEST, requestId_, abi.encode(tokenOut_));
    }

    function decodeRedeemRequest(bytes memory msg_) internal pure returns (uint256 _reqId, address _tokenOut) {
        assembly {
            _reqId := mload(add(msg_, add(32, MSG_TYPE_OFFSET)))
            _tokenOut := mload(add(msg_, add(64, MSG_TYPE_OFFSET)))
        }
    }

    function encodeRequestFulfillment(uint256 requestId_) internal pure returns (bytes memory _msg) {
        return abi.encodePacked(MSG_REQUEST_FULFILL, requestId_);
    }

    function decodeRequestFulfillment(bytes memory msg_) internal pure returns (uint256 _reqId) {
        assembly {
            _reqId := mload(add(msg_, add(32, MSG_TYPE_OFFSET)))
        }
    }

    function encodeRequestUndo(uint256 requestId_) internal pure returns (bytes memory _msg) {
        return abi.encodePacked(MSG_REQUEST_UNDO, requestId_);
    }

    function decodeRequestUndo(bytes memory msg_) internal pure returns (uint256 _reqId) {
        assembly {
            _reqId := mload(add(msg_, add(32, MSG_TYPE_OFFSET)))
        }
    }
}
