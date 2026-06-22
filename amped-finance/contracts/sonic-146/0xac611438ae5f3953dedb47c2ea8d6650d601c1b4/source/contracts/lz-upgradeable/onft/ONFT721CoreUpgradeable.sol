// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

import { OAppUpgradeable, Origin } from "../oapp/OAppUpgradeable.sol";
import { OAppOptionsType3Upgradeable } from "../oapp/libs/OAppOptionsType3Upgradeable.sol";
import { OAppPreCrimeSimulatorUpgradeable } from "../precrime/OAppPreCrimeSimulatorUpgradeable.sol";

import { IOAppMsgInspector } from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppMsgInspector.sol";
import { IONFT721, MessagingFee, MessagingReceipt, SendParam } from "@layerzerolabs/onft-evm/contracts/onft721/interfaces/IONFT721.sol";
import { ONFT721MsgCodec } from "@layerzerolabs/onft-evm/contracts/onft721/libs/ONFT721MsgCodec.sol";
import { ONFTComposeMsgCodec } from "@layerzerolabs/onft-evm/contracts/libs/ONFTComposeMsgCodec.sol";

/**
 * @title ONFT721Core
 * @dev Abstract contract for an ONFT721 token.
 */
abstract contract ONFT721CoreUpgradeable is
    IONFT721,
    OAppUpgradeable,
    OAppPreCrimeSimulatorUpgradeable,
    OAppOptionsType3Upgradeable
{
    using ONFT721MsgCodec for bytes;
    using ONFT721MsgCodec for bytes32;

    // @notice Msg types that are used to identify the various OFT operations.
    // @dev This can be extended in child contracts for non-default oft operations
    // @dev These values are used in things like combineOptions() in OAppOptionsType3.sol.
    uint16 public constant SEND = 1;
    uint16 public constant SEND_AND_COMPOSE = 2;

    event MsgInspectorSet(address inspector);

    /// @custom:storage-location erc7201:lightlink.storage.ONFT721Core
    struct ONFT721CoreStorage {
        // Address of an optional contract to inspect both 'message' and 'options'
        address msgInspector;
    }

    // keccak256(abi.encode(uint256(keccak256("lightlink.storage.ONFT721Core")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ONFT721CoreStorageLocation =
        0x778a8cf91502ae75b94022eed23c5123a0110b6bc7f306322728368dfc045300;

    function _getONFT721CoreStorage() private pure returns (ONFT721CoreStorage storage $) {
        assembly {
            $.slot := ONFT721CoreStorageLocation
        }
    }

    //     __ONFT721Core_init_unchained();
    //     __OAppCore_init(_lzEndpoint, _delegate);
    //     __Ownable_init(_delegate);
    function __ONFT721Core_init() internal onlyInitializing {
        __ONFT721Core_init_unchained();
    }

    function __ONFT721Core_init_unchained() internal onlyInitializing {}

    /**
     * @notice Retrieves interfaceID and the version of the ONFT.
     * @return interfaceId The interface ID (0x23e18da6).
     * @return version The version.
     * @dev version: Indicates a cross-chain compatible msg encoding with other ONFTs.
     * @dev If a new feature is added to the ONFT cross-chain msg encoding, the version will be incremented.
     * @dev ie. localONFT version(x,1) CAN send messages to remoteONFT version(x,1)
     */
    function onftVersion() external pure virtual returns (bytes4 interfaceId, uint64 version) {
        return (type(IONFT721).interfaceId, 1);
    }

    /**
     * @notice Sets the message inspector address for the OFT.
     * @param _msgInspector The address of the message inspector.
     * @dev This is an optional contract that can be used to inspect both 'message' and 'options'.
     * @dev Set it to address(0) to disable it, or set it to a contract address to enable it.
     */
    function setMsgInspector(address _msgInspector) public virtual onlyOwner {
        ONFT721CoreStorage storage $ = _getONFT721CoreStorage();
        $.msgInspector = _msgInspector;
        emit MsgInspectorSet(_msgInspector);
    }

    function quoteSend(
        SendParam calldata _sendParam,
        bool _payInLzToken
    ) external view virtual returns (MessagingFee memory msgFee) {
        (bytes memory message, bytes memory options) = _buildMsgAndOptions(_sendParam);
        return _quote(_sendParam.dstEid, message, options, _payInLzToken);
    }

    function send(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee,
        address _refundAddress
    ) external payable virtual returns (MessagingReceipt memory msgReceipt) {
        _debit(msg.sender, _sendParam.tokenId, _sendParam.dstEid);

        (bytes memory message, bytes memory options) = _buildMsgAndOptions(_sendParam);

        // @dev Sends the message to the LayerZero Endpoint, returning the MessagingReceipt.
        msgReceipt = _lzSend(_sendParam.dstEid, message, options, _fee, _refundAddress);
        emit ONFTSent(msgReceipt.guid, _sendParam.dstEid, msg.sender, _sendParam.tokenId);
    }

    /**
     * @dev Internal function to build the message and options.
     * @param _sendParam The parameters for the send() operation.
     * @return message The encoded message.
     * @return options The encoded options.
     */
    function _buildMsgAndOptions(
        SendParam calldata _sendParam
    ) internal view virtual returns (bytes memory message, bytes memory options) {
        if (_sendParam.to == bytes32(0)) revert InvalidReceiver();
        bool hasCompose;
        (message, hasCompose) = ONFT721MsgCodec.encode(_sendParam.to, _sendParam.tokenId, _sendParam.composeMsg);
        uint16 msgType = hasCompose ? SEND_AND_COMPOSE : SEND;

        options = combineOptions(_sendParam.dstEid, msgType, _sendParam.extraOptions);

        // @dev Optionally inspect the message and options depending if the OApp owner has set a msg inspector.
        // @dev If it fails inspection, needs to revert in the implementation. ie. does not rely on return boolean
        address inspector = msgInspector(); // caches the msgInspector to avoid potential double storage read
        if (inspector != address(0)) IOAppMsgInspector(inspector).inspect(message, options);
    }

    /**
     * @dev Internal function to handle the receive on the LayerZero endpoint.
     * @param _origin The origin information.
     *  - srcEid: The source chain endpoint ID.
     *  - sender: The sender address from the src chain.
     *  - nonce: The nonce of the LayerZero message.
     * @param _guid The unique identifier for the received LayerZero message.
     * @param _message The encoded message.
     * @dev _executor The address of the executor.
     * @dev _extraData Additional data.
     */
    function _lzReceive(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address /*_executor*/, // @dev unused in the default implementation.
        bytes calldata /*_extraData*/ // @dev unused in the default implementation.
    ) internal virtual override {
        address toAddress = _message.sendTo().bytes32ToAddress();
        uint256 tokenId = _message.tokenId();

        _credit(toAddress, tokenId, _origin.srcEid);

        if (_message.isComposed()) {
            bytes memory composeMsg = ONFTComposeMsgCodec.encode(_origin.nonce, _origin.srcEid, _message.composeMsg());
            // @dev As batching is not implemented, the compose index is always 0.
            // @dev If batching is added, the index will need to be tracked.
            endpoint().sendCompose(toAddress, _guid, 0 /* the index of composed message*/, composeMsg);
        }

        emit ONFTReceived(_guid, _origin.srcEid, toAddress, tokenId);
    }

    /*
     * @dev Internal function to handle the OAppPreCrimeSimulator simulated receive.
     * @param _origin The origin information.
     *  - srcEid: The source chain endpoint ID.
     *  - sender: The sender address from the src chain.
     *  - nonce: The nonce of the LayerZero message.
     * @param _guid The unique identifier for the received LayerZero message.
     * @param _message The LayerZero message.
     * @param _executor The address of the off-chain executor.
     * @param _extraData Arbitrary data passed by the msg executor.
     * @dev Enables the preCrime simulator to mock sending lzReceive() messages,
     * routes the msg down from the OAppPreCrimeSimulator, and back up to the OAppReceiver.
     */
    function _lzReceiveSimulate(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address _executor,
        bytes calldata _extraData
    ) internal virtual override {
        _lzReceive(_origin, _guid, _message, _executor, _extraData);
    }

    /**
     * @dev Check if the peer is considered 'trusted' by the OApp.
     * @param _eid The endpoint ID to check.
     * @param _peer The peer to check.
     * @return Whether the peer passed is considered 'trusted' by the OApp.
     * @dev Enables OAppPreCrimeSimulator to check whether a potential Inbound Packet is from a trusted source.
     */
    function isPeer(uint32 _eid, bytes32 _peer) public view virtual override returns (bool) {
        return peers(_eid) == _peer;
    }

    function _debit(address /*_from*/, uint256 /*_tokenId*/, uint32 /*_dstEid*/) internal virtual;

    function _credit(address /*_to*/, uint256 /*_tokenId*/, uint32 /*_srcEid*/) internal virtual;

    function msgInspector() public view virtual returns (address) {
        ONFT721CoreStorage storage $ = _getONFT721CoreStorage();
        return $.msgInspector;
    }
}
