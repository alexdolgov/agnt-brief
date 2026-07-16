// SPDX-License-Identifier: MIT

pragma solidity 0.8.29;

import {MSG_DEPOSIT_REQUEST, MSG_REDEEM_REQUEST, MSG_REQUEST_FULFILL, MSG_REQUEST_CANCEL} from "src/types/Constants.sol";

/// @title CrossChainMessages
/// @notice Library for encoding and decoding the four message types passed alongside LayerZero OFT transfers.
library CrossChainMessages {
    uint256 private constant MSG_TYPE_OFFSET = 1;

    // MSG_TYPE(1) | requestId(32) | caller(20) | operator(20) | remoteShare(20) | amountOutMin(32)
    uint256 private constant DEPOSIT_REQUEST_LENGTH = 125;
    // MSG_TYPE(1) | requestId(32) | caller(20) | operator(20) | tokenOut(20) | amountOutMin(32) | isInstant(1)
    uint256 private constant REDEEM_REQUEST_LENGTH = 126;
    // MSG_TYPE(1) | requestId(32)
    uint256 private constant FULFILL_CANCEL_LENGTH = 33;

    error InvalidMessageLength(uint256 actual, uint256 expected);

    /// @notice Reads the message type byte from an encoded cross-chain message.
    /// @param msg_ The encoded message bytes.
    /// @return The message type identifier.
    function msgType(bytes memory msg_) internal pure returns (uint8) {
        return uint8(msg_[0]);
    }

    /// @notice Reads the request ID from an encoded cross-chain message.
    /// @param msg_ The encoded message bytes.
    /// @return _requestId The request ID.
    function requestId(bytes memory msg_) internal pure returns (uint256 _requestId) {
        assembly {
            _requestId := mload(add(msg_, add(32, MSG_TYPE_OFFSET)))
        }
    }

    /// @notice Reads the original caller address from a deposit or redeem request message.
    /// @param msg_ The encoded deposit or redeem request message bytes.
    /// @return _caller The original caller address.
    function caller(bytes memory msg_) internal pure returns (address _caller) {
        assembly {
            _caller := shr(96, mload(add(msg_, 65)))
        }
    }

    /// @notice Reads the operator address from a deposit or redeem request message.
    /// @param msg_ The encoded deposit or redeem request message bytes.
    /// @return _operator The operator address authorized to call cancel() on the remote chain.
    function operator(bytes memory msg_) internal pure returns (address _operator) {
        assembly {
            _operator := shr(96, mload(add(msg_, 85)))
        }
    }

    /// @notice Encodes a deposit request message.
    /// @dev Layout: MSG_TYPE(1) | requestId(32) | caller(20) | operator(20) | remoteShare(20) | amountOutMin(32)
    /// @param requestId_ The request ID assigned by the Router.
    /// @param caller_ The address that submitted the deposit (used for per-caller whitelists).
    /// @param operator_ The address authorized to call cancel() on the remote chain.
    /// @param remoteShare_ The staking vault (sVetToken) address on the remote chain.
    /// @param amountOutMin_ Minimum shares expected from the Vetro vault.
    /// @return _msg The encoded message bytes.
    function encodeDepositRequest(
        uint256 requestId_,
        address caller_,
        address operator_,
        address remoteShare_,
        uint256 amountOutMin_
    ) internal pure returns (bytes memory _msg) {
        return abi.encodePacked(MSG_DEPOSIT_REQUEST, requestId_, caller_, operator_, remoteShare_, amountOutMin_);
    }

    /// @notice Decodes a deposit request message.
    /// @dev Layout: MSG_TYPE(1) | requestId(32) | caller(20) | operator(20) | remoteShare(20) | amountOutMin(32)
    /// @param msg_ The encoded deposit request message bytes.
    /// @return _requestId The request ID.
    /// @return _caller The address that submitted the deposit.
    /// @return _operator The address authorized to call cancel() on the remote chain.
    /// @return _remoteShare The staking vault (sVetToken) address on the remote chain.
    /// @return _amountOutMin Minimum shares expected from the Vetro vault.
    function decodeDepositRequest(
        bytes memory msg_
    )
        internal
        pure
        returns (uint256 _requestId, address _caller, address _operator, address _remoteShare, uint256 _amountOutMin)
    {
        if (msg_.length < DEPOSIT_REQUEST_LENGTH) revert InvalidMessageLength(msg_.length, DEPOSIT_REQUEST_LENGTH);
        // layout: MSG_TYPE(1) | requestId(32) | caller(20) | operator(20) | remoteShare(20) | amountOutMin(32)
        assembly {
            _requestId := mload(add(msg_, 33))
            _caller := shr(96, mload(add(msg_, 65)))
            _operator := shr(96, mload(add(msg_, 85)))
            _remoteShare := shr(96, mload(add(msg_, 105)))
            _amountOutMin := mload(add(msg_, 125))
        }
    }

    /// @notice Encodes a redeem request message.
    /// @dev Layout: MSG_TYPE(1) | requestId(32) | caller(20) | operator(20) | tokenOut(20) | amountOutMin(32) | isInstant(1)
    /// @param requestId_ The request ID assigned by the Router.
    /// @param caller_ The address that submitted the redeem (used for instantWithdrawWhitelist check).
    /// @param operator_ The address authorized to call cancel() on the remote chain.
    /// @param tokenOut_ The target underlying asset to redeem into on the remote chain.
    /// @param amountOutMin_ Minimum underlying assets expected from the Vetro gateway.
    /// @param isInstant_ Whether the caller expects to be whitelisted for instant withdrawal on the remote chain.
    /// @return _msg The encoded message bytes.
    function encodeRedeemRequest(
        uint256 requestId_,
        address caller_,
        address operator_,
        address tokenOut_,
        uint256 amountOutMin_,
        bool isInstant_
    ) internal pure returns (bytes memory _msg) {
        return abi.encodePacked(MSG_REDEEM_REQUEST, requestId_, caller_, operator_, tokenOut_, amountOutMin_, isInstant_);
    }

    /// @notice Decodes a redeem request message.
    /// @dev Layout: MSG_TYPE(1) | requestId(32) | caller(20) | operator(20) | tokenOut(20) | amountOutMin(32) | isInstant(1)
    /// @param msg_ The encoded redeem request message bytes.
    /// @return _requestId The request ID.
    /// @return _caller The address that submitted the redeem.
    /// @return _operator The address authorized to call cancel() on the remote chain.
    /// @return _tokenOut The target underlying asset to redeem into.
    /// @return _amountOutMin Minimum underlying assets expected from the Vetro gateway.
    /// @return _isInstant Whether the caller expected to be whitelisted for instant withdrawal.
    function decodeRedeemRequest(
        bytes memory msg_
    )
        internal
        pure
        returns (
            uint256 _requestId,
            address _caller,
            address _operator,
            address _tokenOut,
            uint256 _amountOutMin,
            bool _isInstant
        )
    {
        if (msg_.length < REDEEM_REQUEST_LENGTH) revert InvalidMessageLength(msg_.length, REDEEM_REQUEST_LENGTH);
        // layout: MSG_TYPE(1) | requestId(32) | caller(20) | operator(20) | tokenOut(20) | amountOutMin(32) | isInstant(1)
        assembly {
            _requestId := mload(add(msg_, 33))
            _caller := shr(96, mload(add(msg_, 65)))
            _operator := shr(96, mload(add(msg_, 85)))
            _tokenOut := shr(96, mload(add(msg_, 105)))
            _amountOutMin := mload(add(msg_, 125))
            _isInstant := byte(0, mload(add(msg_, 157)))
        }
    }

    /// @notice Encodes a request fulfillment acknowledgement sent from Agent to Router.
    /// @param requestId_ The ID of the request that was successfully fulfilled.
    /// @return _msg The encoded message bytes.
    function encodeRequestFulfillment(uint256 requestId_) internal pure returns (bytes memory _msg) {
        return abi.encodePacked(MSG_REQUEST_FULFILL, requestId_);
    }

    /// @notice Decodes a request fulfillment acknowledgement.
    /// @param msg_ The encoded fulfillment message bytes.
    /// @return _requestId The fulfilled request ID.
    function decodeRequestFulfillment(bytes memory msg_) internal pure returns (uint256 _requestId) {
        if (msg_.length < FULFILL_CANCEL_LENGTH) revert InvalidMessageLength(msg_.length, FULFILL_CANCEL_LENGTH);
        assembly {
            _requestId := mload(add(msg_, add(32, MSG_TYPE_OFFSET)))
        }
    }

    /// @notice Encodes a request cancel message sent from Agent to Router when reversing a failed request.
    /// @param requestId_ The ID of the request being cancelled.
    /// @return _msg The encoded message bytes.
    function encodeRequestCancel(uint256 requestId_) internal pure returns (bytes memory _msg) {
        return abi.encodePacked(MSG_REQUEST_CANCEL, requestId_);
    }

    /// @notice Decodes a request cancel message.
    /// @param msg_ The encoded cancel message bytes.
    /// @return _requestId The cancelled request ID.
    function decodeRequestCancel(bytes memory msg_) internal pure returns (uint256 _requestId) {
        if (msg_.length < FULFILL_CANCEL_LENGTH) revert InvalidMessageLength(msg_.length, FULFILL_CANCEL_LENGTH);
        assembly {
            _requestId := mload(add(msg_, add(32, MSG_TYPE_OFFSET)))
        }
    }
}
