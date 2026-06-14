// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {
    OApp,
    Origin,
    MessagingFee
} from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import { OAppOptionsType3 } from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OAppOptionsType3.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

import { BaseFactory } from "./BaseFactory.sol";
import { ProxyRegistryLib } from "./ProxyRegistryLib.sol";
import { Errors } from "../../common/Errors.sol";
import { ContractType, ProxyInfo } from "../../common/Types.sol";

/// @title OAppFactory
/// @notice BaseFactory extension that synchronizes proxy deployments across chains via LayerZero OApp v2.
/// @dev
/// - Extends {BaseFactory} for deterministic deployments/registry bookkeeping and {OApp} for messaging.
/// - Maintains a list of subscribed endpoint IDs (`listedEids`) that receive proxy registration broadcasts.
/// - Uses the `_sync` hook from {BaseFactory} to broadcast after every local deployment and
///   `_registerRemote` to persist remote deployments received over LayerZero.
abstract contract OAppFactory is BaseFactory, OApp, OAppOptionsType3 {
    using EnumerableSet for EnumerableSet.UintSet;

    /// @notice LayerZero message type identifier for proxy registrations.
    uint16 internal constant MSG_REGISTER_PROXY = 0;
    /// @notice Tracks processed LayerZero message GUIDs to prevent replays.
    mapping(bytes32 => bool) private processedGuid;
    /// @notice Set of destination endpoint IDs that should receive broadcasts.
    EnumerableSet.UintSet private listedEids;
    /// @notice LayerZero endpoint ID for the local deployment environment.
    uint32 private immutable localEid;

    /// @notice Initializes the OApp factory with LayerZero endpoint details and ownership data.
    /// @param _lzEndpoint Address of the LayerZero endpoint contract on this chain.
    /// @param _oAppOwner Account that will own the OApp and control peer configuration.
    /// @param _oAppDelegate Delegate allowed to manage endpoint configuration on LayerZero.
    constructor(
        address _lzEndpoint,
        address _oAppOwner,
        address _oAppDelegate
    ) OApp(_lzEndpoint, _oAppDelegate) Ownable(_oAppOwner) {
        localEid = endpoint.eid();
    }

    /// @notice Registers or clears a remote peer application for a given endpoint ID.
    /// @dev
    /// - Enforces one-to-one mapping between endpoint ID and peer address via {OApp.setPeer}.
    /// - Keeps the local `listedEids` cache in sync so broadcasts iterate deterministic destinations.
    /// @param _eid Destination LayerZero endpoint ID.
    /// @param _peer Encoded remote peer address or zero to unset.
    function setPeer(uint32 _eid, bytes32 _peer) public override onlyOwner {
        bytes32 prev = peers[_eid];

        bool wasSet = prev != bytes32(0);
        bool willBeSet = _peer != bytes32(0);

        if (wasSet != willBeSet) {
            if (willBeSet) {
                listedEids.add(uint256(_eid)); // unset → set
            } else {
                listedEids.remove(uint256(_eid)); // set → unset
            }
        }
        super.setPeer(_eid, _peer);
    }

    /// @notice Lists endpoint IDs currently configured to receive deployment broadcasts.
    /// @return eids Array of endpoint IDs in insertion order.
    function getListedEids() public view returns (uint32[] memory eids) {
        uint256 len = listedEids.length();
        eids = new uint32[](len);
        for (uint256 i = 0; i < len; i++) eids[i] = uint32(listedEids.at(i));
    }

    /// @notice Quotes LayerZero fees required to broadcast a deployment registration to all peers.
    /// @param _clusterName Cluster identifier tied to the deployment.
    /// @param _underlyingSymbol Underlying asset symbol tied to the deployment.
    /// @return fees Array of LayerZero fee quotations, one per `listedEids` entry (ordered consistently).
    function quoteBroadcast(
        string calldata _clusterName,
        string calldata _underlyingSymbol
    ) external view returns (MessagingFee[] memory fees) {
        bytes memory payload = abi.encode(
            ContractType.PLACEHOLDER, // just as a placeholder
            bytes32(0),
            _clusterName,
            _underlyingSymbol,
            uint32(0)
        );
        bytes memory message = abi.encodePacked(
            uint16(MSG_REGISTER_PROXY),
            payload
        );

        uint256 len = listedEids.length();
        fees = new MessagingFee[](len);
        bytes calldata options = msg.data[0:0];
        for (uint256 i = 0; i < len; i++) {
            uint32 dstEid = uint32(listedEids.at(i));
            fees[i] = _quote(
                dstEid,
                message,
                combineOptions(dstEid, MSG_REGISTER_PROXY, options),
                false
            );
        }
    }

    /// @inheritdoc BaseFactory
    function _getEid() internal view override returns (uint32) {
        return localEid;
    }

    /// @inheritdoc BaseFactory
    function _sync(
        ContractType _contractType,
        bytes32 _proxyAddress,
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        uint32 _eid,
        MessagingFee[] calldata _fees
    ) internal override {
        _broadcast(
            _contractType,
            _proxyAddress,
            _clusterName,
            _underlyingSymbol,
            _eid,
            _fees,
            getListedEids()
        );
    }

    /// @notice Broadcasts existing proxy registration to specific destination EIDs.
    /// @param _contractType Logical contract type whose proxy is being synchronized.
    /// @param _clusterName Cluster identifier used during deterministic deployment.
    /// @param _underlyingSymbol Underlying asset symbol used during deterministic deployment.
    /// @param _eid LayerZero endpoint ID of the chain where the proxy is deployed.
    /// @param _fees LayerZero fee quotes aligned with `_dstEids` order.
    /// @param _dstEids Destination LayerZero endpoint IDs to receive the registration message.
    function sync(
        ContractType _contractType,
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        uint32 _eid,
        MessagingFee[] calldata _fees,
        uint32[] memory _dstEids
    ) public payable onlyRole(SETTER_ROLE) {
        (bytes32 proxyAddress, ) = getDeployedOrRevert(
            _contractType,
            _clusterName,
            _underlyingSymbol,
            _eid
        );

        _broadcast(
            _contractType,
            proxyAddress,
            _clusterName,
            _underlyingSymbol,
            _eid,
            _fees,
            _dstEids
        );
    }

    /// @notice Broadcasts a proxy registration message to each specified destination endpoint.
    /// @dev
    /// - Caller is expected to fund LayerZero fees using the supplied `_fees` data.
    /// - Validates that `_fees.length` matches the number of destinations in `_dstEids`.
    /// @param _contractType Contract type associated with the deployed proxy.
    /// @param _proxyAddress Bytes32 proxy address to broadcast.
    /// @param _clusterName Cluster identifier used for deterministic deployment.
    /// @param _underlyingSymbol Underlying asset symbol used for deterministic deployment.
    /// @param _eid Endpoint ID where the proxy was deployed.
    /// @param _fees LayerZero fee quotes for each destination endpoint in `_dstEids` order.
    /// @param _dstEids LayerZero destination endpoint IDs.
    function _broadcast(
        ContractType _contractType,
        bytes32 _proxyAddress,
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        uint32 _eid,
        MessagingFee[] calldata _fees,
        uint32[] memory _dstEids
    ) internal {
        bytes memory payload = abi.encode(
            _contractType,
            _clusterName,
            _underlyingSymbol,
            _proxyAddress,
            _eid
        );

        bytes memory message = abi.encodePacked(
            uint16(MSG_REGISTER_PROXY),
            payload
        );

        uint256 len = _dstEids.length;
        if (len == 0) return;
        if (_fees.length != len) revert Errors.LengthMismatch();

        bytes calldata options = msg.data[0:0];

        uint256 totalFees = 0;
        for (uint256 i = 0; i < len; i++) totalFees += _fees[i].nativeFee;
        if (totalFees != msg.value) revert Errors.NotEnoughValueToPayFees();

        for (uint256 i = 0; i < len; i++) {
            uint32 dstEid = _dstEids[i];
            _lzSend(
                dstEid,
                message,
                combineOptions(dstEid, MSG_REGISTER_PROXY, options),
                _fees[i],
                payable(msg.sender)
            );
        }
    }

    /// @notice Handles inbound LayerZero messages and records remote proxy deployments.
    /// @dev
    /// - Rejects duplicate GUIDs and unsupported message types.
    /// - Decodes the payload and persists it via {_registerRemote} so local lookups include remote peers.
    /// @param _guid Unique LayerZero message identifier used for replay protection.
    /// @param _message ABI-encoded message payload prefixed with the message type.
    function _lzReceive(
        Origin calldata /*_origin*/,
        bytes32 _guid,
        bytes calldata _message,
        address /*_executor*/,
        bytes calldata /*_extraData*/
    ) internal override {
        if (processedGuid[_guid]) revert Errors.GuidAlreadyProcessed(_guid);
        processedGuid[_guid] = true;

        (uint16 msgType, bytes calldata message) = _decodeMessage(_message);
        if (msgType != MSG_REGISTER_PROXY)
            revert Errors.MessageTypeNotSupported();

        (
            ContractType contractType,
            string memory clusterName,
            string memory underlyingSymbol,
            bytes32 proxyAddress,
            uint32 eid
        ) = abi.decode(
                message,
                (ContractType, string, string, bytes32, uint32)
            );

        ProxyInfo memory info = ProxyInfo({
            proxyAddress: proxyAddress,
            eid: eid,
            clusterName: clusterName,
            symbol: underlyingSymbol
        });

        _registerRemote(contractType, info);
    }

    /// @notice Splits a LayerZero message into the type prefix and payload.
    /// @dev Reverts when the message is shorter or equal to two bytes.
    /// @param _message Raw message emitted by LayerZero.
    /// @return msgType Message type identifier.
    /// @return message Raw payload following the type prefix.
    function _decodeMessage(
        bytes calldata _message
    ) private pure returns (uint16 msgType, bytes calldata message) {
        if (_message.length <= 2) revert Errors.InvalidMessageLength();
        msgType = uint16(bytes2(_message[0:2]));
        message = _message[2:];
    }

    function _payNative(
        uint256 _nativeFee
    ) internal override returns (uint256 nativeFee) {
        if (msg.value < _nativeFee) revert NotEnoughNative(msg.value);
        return _nativeFee;
    }
}
