// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {ILayerZeroEndpointV2, MessagingFee, MessagingReceipt, Origin} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";

import {OApp} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/OApp.sol";
import {OptionsBuilder} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/libs/OptionsBuilder.sol";
import {OAppPreCrimeSimulator} from "@layerzerolabs/lz-evm-oapp-v2/contracts/precrime/OAppPreCrimeSimulator.sol";
import {IMessageReceiverV2} from "./interfaces/IMessageReceiverV2.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ISyncOAppV2} from "./interfaces/ISyncOAppV2.sol";

// @dev declared as abstract to provide backwards compatibility with Oz5/Oz4
contract SyncOAppV2 is ISyncOAppV2, OApp, Pausable {
    using SafeERC20 for IERC20;

    uint32 public eid;
    bool public orderedNonce;

    mapping(uint32 srcEndId => mapping(bytes32 xcmSender => mapping(bytes32 xcmReceiver => Path path)))
        public inboundXcmPath;

    mapping(uint32 desEndId => mapping(bytes32 xcmSender => mapping(bytes32 xcmReceiver => Path path)))
        public outboundXcmPath;

    // for global assertions
    mapping(uint32 srcEid => uint256 count) public inboundCount;
    mapping(uint32 dstEid => uint256 count) public outboundCount;

    mapping(uint32 srcEid => mapping(bytes32 sender => uint64 nonce))
        public maxReceivedNonce;

    constructor(
        address _endpoint,
        address _delegate
    ) OApp(_endpoint, _delegate) Ownable(msg.sender) {
        eid = ILayerZeroEndpointV2(_endpoint).eid();

        pause();
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    // set inbound path
    function setInboundPathStatus(
        uint32 _srcEndId,
        bytes32 _xcmSender,
        bytes32 _xcmReceiver,
        bool _status
    ) external onlyOwner {
        // require status differs
        require(
            inboundXcmPath[_srcEndId][_xcmSender][_xcmReceiver].registered !=
                _status,
            "SyncOApp: status already set"
        );

        inboundXcmPath[_srcEndId][_xcmSender][_xcmReceiver]
            .registered = _status;

        emit UpdateInboundPath(_srcEndId, _xcmSender, _xcmReceiver, _status);
    }

    // set outbound path
    function setOutboundPathStatus(
        uint32 _desEndId,
        bytes32 _xcmSender,
        bytes32 _xcmReceiver,
        bool _status
    ) external onlyOwner {
        // require status differs
        require(
            outboundXcmPath[_desEndId][_xcmSender][_xcmReceiver].registered !=
                _status,
            "SyncOApp: status already set"
        );

        outboundXcmPath[_desEndId][_xcmSender][_xcmReceiver]
            .registered = _status;

        emit UpdateOutboundPath(_desEndId, _xcmSender, _xcmReceiver, _status);
    }

    // Send
    function send(
        uint32 _desEndId,
        bytes32 _xcmReceiver,
        bytes memory _oappMessage,
        bytes calldata _options
    ) external payable whenNotPaused returns (MessagingReceipt memory receipt) {
        bytes32 xcmSender = _addressToBytes32(msg.sender);

        // check if the path is registered
        require(
            outboundXcmPath[_desEndId][xcmSender][_xcmReceiver].registered,
            "SyncOApp: path not registered"
        );

        // encode _xcmSender, _xcmReceiver and _message
        bytes memory xcm = _encodeXcm(xcmSender, _xcmReceiver, _oappMessage);

        receipt = _lzSend(
            _desEndId,
            xcm,
            _options,
            MessagingFee(msg.value, 0),
            payable(msg.sender)
        );

        _incrementOutbound(_desEndId);
        _incrementOutboundDetail(_desEndId, xcmSender, _xcmReceiver);

        emit OutboundMessage(_desEndId, xcmSender, _xcmReceiver, _oappMessage);

        return receipt;
    }

    // encode xcm
    function _encodeXcm(
        bytes32 _xcmSender,
        bytes32 _xcmReceiver,
        bytes memory _oappMessage
    ) internal pure returns (bytes memory) {
        return abi.encode(_xcmSender, _xcmReceiver, _oappMessage);
    }

    // decode xcm
    function _decodeXcm(
        bytes memory _xcm
    )
        internal
        pure
        returns (bytes32 xcmSender, bytes32 xcmReceiver, bytes memory message)
    {
        return abi.decode(_xcm, (bytes32, bytes32, bytes));
    }

    function quote(
        uint32 _desEndId,
        bytes32 _xcmSender,
        bytes32 _xcmReceiver,
        bytes memory _oappMessage,
        bytes calldata _options
    ) public view returns (uint256 nativeFee, uint256 lzTokenFee) {
        // check registered
        require(
            outboundXcmPath[_desEndId][_xcmSender][_xcmReceiver].registered,
            "SyncOApp: path not registered"
        );

        // encode _xcmSender, _xcmReceiver and _message
        bytes memory xcm = _encodeXcm(_xcmSender, _xcmReceiver, _oappMessage);

        MessagingFee memory fee = _quote(_desEndId, xcm, _options, false);
        return (fee.nativeFee, fee.lzTokenFee);
    }

    function _lzReceive(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address /*_executor*/,
        bytes calldata /*_extraData*/
    ) internal override whenNotPaused {
        _acceptNonce(_origin.srcEid, _origin.sender, _origin.nonce);

        // decode xcm
        (
            bytes32 xcmSender,
            bytes32 xcmReceiver,
            bytes memory oappMessage
        ) = _decodeXcm(_message);

        // check path registered
        require(
            inboundXcmPath[_origin.srcEid][xcmSender][xcmReceiver].registered,
            "SyncOApp: path not registered"
        );

        address xcmReceiverAddr = _bytes32ToAddress(xcmReceiver);

        bool success = IMessageReceiverV2(xcmReceiverAddr).receiveXCM(
            _origin.srcEid,
            xcmSender,
            oappMessage,
            _guid
        );

        // require success
        require(success, "SyncOApp: failed to receive message");

        _incrementInbound(_origin.srcEid);
        _incrementInboundDetail(_origin.srcEid, xcmSender, xcmReceiver);

        emit InboundMessage(
            _origin.srcEid,
            xcmSender,
            xcmReceiver,
            oappMessage
        );
    }

    function _incrementInbound(uint32 _srcEid) internal {
        inboundCount[_srcEid]++;
    }

    function _incrementOutbound(uint32 _dstEid) internal {
        outboundCount[_dstEid]++;
    }

    function _incrementInboundDetail(
        uint32 _srcEid,
        bytes32 _xcmSender,
        bytes32 _xcmReceiver
    ) internal {
        inboundXcmPath[_srcEid][_xcmSender][_xcmReceiver].count++;
    }

    function _incrementOutboundDetail(
        uint32 _dstEid,
        bytes32 _xcmSender,
        bytes32 _xcmReceiver
    ) internal {
        outboundXcmPath[_dstEid][_xcmSender][_xcmReceiver].count++;
    }

    // Ordered OApp
    // this demonstrates how to build an app that requires execution nonce ordering
    // normally an app should decide ordered or not on contract construction
    // this is just a demo
    function setOrderedNonce(bool _orderedNonce) external onlyOwner {
        orderedNonce = _orderedNonce;
    }

    // token rescue
    function rescueToken(
        address _token,
        uint256 _amount,
        address _receiver
    ) public onlyOwner {
        if (_token == address(0)) {
            Address.sendValue(payable(_receiver), _amount);
        } else {
            IERC20(_token).safeTransfer(_receiver, _amount);
        }
    }

    function _addressToBytes32(address addr) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(addr)));
    }

    // bytes32 to address
    function _bytes32ToAddress(bytes32 addr) internal pure returns (address) {
        return address(uint160(uint256(addr)));
    }

    /**
     * @dev Public function to get the next expected nonce for a given source endpoint and sender.
     * @param _srcEid Source endpoint ID.
     * @param _sender Sender's address in bytes32 format.
     * @return uint64 Next expected nonce.
     */
    function nextNonce(
        uint32 _srcEid,
        bytes32 _sender
    ) public view virtual override returns (uint64) {
        return maxReceivedNonce[_srcEid][_sender] + 1;
    }

    /**
     * @dev Internal function to accept nonce from the specified source endpoint and sender.
     * @param _srcEid Source endpoint ID.
     * @param _sender Sender's address in bytes32 format.
     * @param _nonce The nonce to be accepted.
     */
    function _acceptNonce(
        uint32 _srcEid,
        bytes32 _sender,
        uint64 _nonce
    ) internal virtual {
        if (orderedNonce) {
            require(
                _nonce == maxReceivedNonce[_srcEid][_sender] + 1,
                "OApp: invalid nonce"
            );
        }

        if (_nonce > maxReceivedNonce[_srcEid][_sender]) {
            maxReceivedNonce[_srcEid][_sender] = _nonce;
        }
    }
}
