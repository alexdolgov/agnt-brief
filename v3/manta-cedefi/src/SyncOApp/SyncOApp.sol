// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {ILayerZeroEndpointV2, MessagingFee, MessagingReceipt, Origin} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";

import {OApp} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/OApp.sol";
import {OptionsBuilder} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/libs/OptionsBuilder.sol";
import {OAppPreCrimeSimulator} from "@layerzerolabs/lz-evm-oapp-v2/contracts/precrime/OAppPreCrimeSimulator.sol";
import {IMessageReceiver} from "./interfaces/IMessageReceiver.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// @dev declared as abstract to provide backwards compatibility with Oz5/Oz4
contract SyncOApp is OApp, Pausable {
    using OptionsBuilder for bytes;
    using SafeERC20 for IERC20;

    uint32 public eid;

    mapping(uint32 srcEid => mapping(bytes32 sender => uint64 nonce))
        private maxReceivedNonce;
    bool private orderedNonce;

    address private _messageSender;
    IMessageReceiver private _messageReceiver;

    // for global assertions
    mapping(uint32 srcEid => uint256 count) public inboundCount;
    mapping(uint32 dstEid => uint256 count) public outboundCount;

    // event when message sender changes
    event MessageSenderChanged(address indexed sender);

    // event when message receiver changes
    event MessageReceiverChanged(IMessageReceiver indexed receiver);

    constructor(
        address _endpoint,
        address _delegate
    ) OApp(_endpoint, _delegate) Ownable(msg.sender) {
        eid = ILayerZeroEndpointV2(_endpoint).eid();
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    // modifier: only sender
    modifier onlyMessageSender() {
        require(
            msg.sender == _messageSender,
            "SyncOApp: caller is not the sender"
        );
        _;
    }

    // get sender
    function getMessageSender() public view returns (address) {
        return _messageSender;
    }

    // get receiver
    function getMessageReceiver() public view returns (IMessageReceiver) {
        return _messageReceiver;
    }

    // -------------------------------
    // Send
    function send(
        uint32 _eid,
        bytes memory _message,
        bytes calldata _options
    )
        external
        payable
        onlyMessageSender
        returns (MessagingReceipt memory receipt)
    {
        receipt = _lzSend(
            _eid,
            _message,
            _options,
            MessagingFee(msg.value, 0),
            payable(msg.sender)
        );
        _incrementOutbound(_eid);

        return receipt;
    }

    function quote(
        uint32 _eid,
        bytes memory _message,
        bytes calldata _options
    ) public view returns (uint256 nativeFee, uint256 lzTokenFee) {
        //        bytes memory options = combineOptions(_eid, _type, _options);
        MessagingFee memory fee = _quote(_eid, _message, _options, false);
        return (fee.nativeFee, fee.lzTokenFee);
    }

    // -------------------------------
    function _lzReceive(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address /*_executor*/,
        bytes calldata /*_extraData*/
    ) internal override {
        bool success = getMessageReceiver().receiveXCM(_message, _guid);

        // require success
        require(success, "SyncOApp: failed to receive message");

        _incrementInbound(_origin.srcEid);
    }

    function _incrementInbound(uint32 _srcEid) internal {
        inboundCount[_srcEid]++;
    }

    function _incrementOutbound(uint32 _dstEid) internal {
        outboundCount[_dstEid]++;
    }

    // -------------------------------
    // Ordered OApp
    // this demonstrates how to build an app that requires execution nonce ordering
    // normally an app should decide ordered or not on contract construction
    // this is just a demo
    function setOrderedNonce(bool _orderedNonce) external onlyOwner {
        orderedNonce = _orderedNonce;
    }

    // TODO should override oApp version with added ordered nonce increment
    // a governance function to skip nonce
    function skipInboundNonce(
        uint32 _srcEid,
        bytes32 _sender,
        uint64 _nonce
    ) public virtual onlyOwner {
        endpoint.skip(address(this), _srcEid, _sender, _nonce);
        if (orderedNonce) {
            maxReceivedNonce[_srcEid][_sender]++;
        }
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

    // set message sender
    function setMessageSender(address _sender) public onlyOwner {
        _messageSender = _sender;
        emit MessageSenderChanged(_sender);
    }

    // set message receiver
    function setMessageReceiver(IMessageReceiver _receiver) public onlyOwner {
        _messageReceiver = _receiver;
        emit MessageReceiverChanged(_receiver);
    }

    // be able to receive ether
    receive() external payable virtual {}

    fallback() external payable {}
}
