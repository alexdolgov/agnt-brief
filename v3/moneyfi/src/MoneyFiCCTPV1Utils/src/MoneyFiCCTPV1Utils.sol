// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
pragma abicoder v2;

import "../src/messages/Message.sol";
import "../src/messages/BurnMessage.sol";

contract MoneyFiCCTPV1Utils {
    using TypedMemView for bytes;
    using TypedMemView for bytes29;
    using Message for bytes29;
    using BurnMessage for bytes29;
    using BurnMessage for bytes;

    struct DecodeMessage {
        uint32 msgVersion;
        uint32 msgSourceDomain;
        uint32 msgDestinationDomain;
        uint64 msgNonce;
        bytes32 msgSender;
        bytes32 msgRecipient;
        bytes32 msgDestinationCaller;
        bytes msgRawBody;
    }

    function decodeMessage(bytes memory message) external returns (DecodeMessage memory decodeMessage) {
        bytes29 _m = message.ref(0);
        // assertEq(uint256(_m._version()), uint256(_version));
        // assertEq(uint256(_m._sourceDomain()), uint256(_sourceDomain));
        // assertEq(uint256(_m._destinationDomain()), uint256(_destinationDomain));
        // assertEq(_m._nonce(), uint256(_nonce));
        // assertEq(_m._sender(), _sender);
        // assertEq(_m._recipient(), _recipient);
        // assertEq(_m._destinationCaller(), _destinationCaller);
        // assertEq(_m._messageBody().clone(), _messageBody);

        // bytes29 _msg = message.ref(0);
        // _msg._sourceDomain();
        // _msg._destinationDomain();
        // _msg._nonce();
        // _msg._sender();
        // _msg._recipient();
        // _msg._destinationCaller();

        // bytes32 _mintRecipient = _msg._recipient();
        // address receiver = Message.bytes32ToAddress(_mintRecipient);

        // // bytes29 _msg = message.ref(0);
        // bytes memory _messageBody = _msg._messageBody().clone();
        // bytes29 _msg1 = _messageBody.ref(0);
        // _mintRecipient = _msg1._getMintRecipient();
        // receiver = Message.bytes32ToAddress(_mintRecipient);

        decodeMessage = DecodeMessage({
            msgVersion: _m._version(),
            msgSourceDomain: _m._sourceDomain(),
            msgDestinationDomain: _m._destinationDomain(),
            msgNonce: _m._nonce(),
            msgSender: _m._sender(),
            msgRecipient: _m._recipient(),
            msgDestinationCaller: _m._destinationCaller(),
            msgRawBody: _m._messageBody().clone()
        });
    }
}
