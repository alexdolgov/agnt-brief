// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.23;

import { ILayerZeroEndpoint } from "../interfaces/ICrossChainMsg/ILayerZeroEndpoint.sol";
import { IPMsgReceiverApp } from "../interfaces/ICrossChainMsg/IPMsgReceiverApp.sol";
import { ILayerZeroReceiver } from "../interfaces/ICrossChainMsg/ILayerZeroReceiver.sol";

import { LayerZeroHelper } from "./libraries/LayerZeroHelper.sol";
import { ExcessivelySafeCall } from "./libraries/ExcessivelySafeCall.sol";
import { Errors } from "../libraries/Errors.sol";

import { OwnableUpgradeable, Initializable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

/**
 * @dev Initially, currently we will use layer zero's default send and receive version (which is most updated)
 * So we can leave the configuration unset.
 */

/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
contract MsgReceiveEndpointUpg is ILayerZeroReceiver, Initializable, OwnableUpgradeable {
    using ExcessivelySafeCall for address;

    mapping(uint16 => uint256) public lzChainIdToChainId;
    address public lzEndpoint;
    address public sendEndpointAddr;
    uint64 public sendEndpointChainId;

    uint256[50] private __gap;

    event MessageFailed(uint16 _srcChainId, bytes _path, uint64 _nonce, bytes _payload, bytes _reason);
    event ReceiveVersionUpdated(uint16 _newVersion);

    modifier onlyLzEndpoint() {
        if (msg.sender != address(lzEndpoint)) revert Errors.OnlyLayerZeroEndpoint();
        _;
    }

    /**
     * @dev Lz has a built-in feature for trusted receive and send endpoint
     * But in order to aim for flexibility in switching to other crosschain messaging protocol, there
     * is no harm to keep our current whitelisting mechanism.
     */
    modifier mustOriginateFromSendEndpoint(uint16 srcChainId, bytes memory path) {
        if (sendEndpointAddr != LayerZeroHelper._getFirstAddressFromPath(path) || sendEndpointChainId != lzChainIdToChainId[srcChainId])
            revert Errors.MsgNotFromSendEndpoint(srcChainId, path);
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    // by default we will use LZ's default version (most updated version). Hence, it's not necessary
    // to call setLzReceiveVersion

    function initialize(address _lzEndpoint, address _sendEndpointAddr, uint64 _sendEndpointChainId) external initializer {
        lzEndpoint = _lzEndpoint;
        sendEndpointAddr = _sendEndpointAddr;
        sendEndpointChainId = _sendEndpointChainId;

        lzChainIdToChainId[101] = 1;

        __Ownable_init(msg.sender);
    }

    //@note in case sender is not from mainnet, we need to add the chainId
    function setLzChainId(uint16 _lzChainId, uint256 _chainId) external onlyOwner {
        lzChainIdToChainId[_lzChainId] = _chainId;
    }

    function lzReceive(
        uint16 _srcChainId,
        bytes calldata _path,
        uint64 _nonce,
        bytes calldata _payload
    ) external onlyLzEndpoint mustOriginateFromSendEndpoint(_srcChainId, _path) {
        (address receiver, bytes memory message) = abi.decode(_payload, (address, bytes));

        (bool success, bytes memory reason) = address(receiver).excessivelySafeCall(
            gasleft(),
            150,
            abi.encodeWithSelector(IPMsgReceiverApp.executeMessage.selector, message)
        );

        if (!success) {
            emit MessageFailed(_srcChainId, _path, _nonce, _payload, reason);
        }
    }

    function govExecuteMessage(address receiver, bytes calldata message) external payable onlyOwner {
        IPMsgReceiverApp(receiver).executeMessage(message);
    }

    function setLzReceiveVersion(uint16 _newVersion) external onlyOwner {
        ILayerZeroEndpoint(lzEndpoint).setReceiveVersion(_newVersion);
        emit ReceiveVersionUpdated(_newVersion);
    }
}
