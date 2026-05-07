// ============================================================
// FILE: lib/devtools/packages/oapp-evm/contracts/oapp/interfaces/IOAppCore.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { ILayerZeroEndpointV2 } from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";

/**
 * @title IOAppCore
 */
interface IOAppCore {
    // Custom error messages
    error OnlyPeer(uint32 eid, bytes32 sender);
    error NoPeer(uint32 eid);
    error InvalidEndpointCall();
    error InvalidDelegate();

    // Event emitted when a peer (OApp) is set for a corresponding endpoint
    event PeerSet(uint32 eid, bytes32 peer);

    /**
     * @notice Retrieves the OApp version information.
     * @return senderVersion The version of the OAppSender.sol contract.
     * @return receiverVersion The version of the OAppReceiver.sol contract.
     */
    function oAppVersion() external view returns (uint64 senderVersion, uint64 receiverVersion);

    /**
     * @notice Retrieves the LayerZero endpoint associated with the OApp.
     * @return iEndpoint The LayerZero endpoint as an interface.
     */
    function endpoint() external view returns (ILayerZeroEndpointV2 iEndpoint);

    /**
     * @notice Retrieves the peer (OApp) associated with a corresponding endpoint.
     * @param _eid The endpoint ID.
     * @return peer The peer address (OApp instance) associated with the corresponding endpoint.
     */
    function peers(uint32 _eid) external view returns (bytes32 peer);

    /**
     * @notice Sets the peer address (OApp instance) for a corresponding endpoint.
     * @param _eid The endpoint ID.
     * @param _peer The address of the peer to be associated with the corresponding endpoint.
     */
    function setPeer(uint32 _eid, bytes32 _peer) external;

    /**
     * @notice Sets the delegate address for the OApp Core.
     * @param _delegate The address of the delegate to be set.
     */
    function setDelegate(address _delegate) external;
}

// ============================================================
// FILE: lib/devtools/packages/oapp-evm/contracts/oapp/OAppCore.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IOAppCore, ILayerZeroEndpointV2 } from "./interfaces/IOAppCore.sol";

/**
 * @title OAppCore
 * @dev Abstract contract implementing the IOAppCore interface with basic OApp configurations.
 */
abstract contract OAppCore is IOAppCore, Ownable {
    // The LayerZero endpoint associated with the given OApp
    ILayerZeroEndpointV2 public immutable endpoint;

    // Mapping to store peers associated with corresponding endpoints
    mapping(uint32 eid => bytes32 peer) public peers;

    /**
     * @dev Constructor to initialize the OAppCore with the provided endpoint and delegate.
     * @param _endpoint The address of the LOCAL Layer Zero endpoint.
     * @param _delegate The delegate capable of making OApp configurations inside of the endpoint.
     *
     * @dev The delegate typically should be set as the owner of the contract.
     */
    constructor(address _endpoint, address _delegate) {
        endpoint = ILayerZeroEndpointV2(_endpoint);

        if (_delegate == address(0)) revert InvalidDelegate();
        endpoint.setDelegate(_delegate);
    }

    /**
     * @notice Sets the peer address (OApp instance) for a corresponding endpoint.
     * @param _eid The endpoint ID.
     * @param _peer The address of the peer to be associated with the corresponding endpoint.
     *
     * @dev Only the owner/admin of the OApp can call this function.
     * @dev Indicates that the peer is trusted to send LayerZero messages to this OApp.
     * @dev Set this to bytes32(0) to remove the peer address.
     * @dev Peer is a bytes32 to accommodate non-evm chains.
     */
    function setPeer(uint32 _eid, bytes32 _peer) public virtual onlyOwner {
        _setPeer(_eid, _peer);
    }

    /**
     * @notice Sets the peer address (OApp instance) for a corresponding endpoint.
     * @param _eid The endpoint ID.
     * @param _peer The address of the peer to be associated with the corresponding endpoint.
     *
     * @dev Indicates that the peer is trusted to send LayerZero messages to this OApp.
     * @dev Set this to bytes32(0) to remove the peer address.
     * @dev Peer is a bytes32 to accommodate non-evm chains.
     */
    function _setPeer(uint32 _eid, bytes32 _peer) internal virtual {
        peers[_eid] = _peer;
        emit PeerSet(_eid, _peer);
    }

    /**
     * @notice Internal function to get the peer address associated with a specific endpoint; reverts if NOT set.
     * ie. the peer is set to bytes32(0).
     * @param _eid The endpoint ID.
     * @return peer The address of the peer associated with the specified endpoint.
     */
    function _getPeerOrRevert(uint32 _eid) internal view virtual returns (bytes32) {
        bytes32 peer = peers[_eid];
        if (peer == bytes32(0)) revert NoPeer(_eid);
        return peer;
    }

    /**
     * @notice Sets the delegate address for the OApp.
     * @param _delegate The address of the delegate to be set.
     *
     * @dev Only the owner/admin of the OApp can call this function.
     * @dev Provides the ability for a delegate to set configs, on behalf of the OApp, directly on the Endpoint contract.
     */
    function setDelegate(address _delegate) public onlyOwner {
        endpoint.setDelegate(_delegate);
    }
}

// ============================================================
// FILE: lib/devtools/packages/oapp-evm/contracts/oapp/OAppSender.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { MessagingParams, MessagingFee, MessagingReceipt } from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import { OAppCore } from "./OAppCore.sol";

/**
 * @title OAppSender
 * @dev Abstract contract implementing the OAppSender functionality for sending messages to a LayerZero endpoint.
 */
abstract contract OAppSender is OAppCore {
    using SafeERC20 for IERC20;

    // Custom error messages
    error NotEnoughNative(uint256 msgValue);
    error LzTokenUnavailable();

    // @dev The version of the OAppSender implementation.
    // @dev Version is bumped when changes are made to this contract.
    uint64 internal constant SENDER_VERSION = 1;

    /**
     * @notice Retrieves the OApp version information.
     * @return senderVersion The version of the OAppSender.sol contract.
     * @return receiverVersion The version of the OAppReceiver.sol contract.
     *
     * @dev Providing 0 as the default for OAppReceiver version. Indicates that the OAppReceiver is not implemented.
     * ie. this is a SEND only OApp.
     * @dev If the OApp uses both OAppSender and OAppReceiver, then this needs to be override returning the correct versions
     */
    function oAppVersion() public view virtual returns (uint64 senderVersion, uint64 receiverVersion) {
        return (SENDER_VERSION, 0);
    }

    /**
     * @dev Internal function to interact with the LayerZero EndpointV2.quote() for fee calculation.
     * @param _dstEid The destination endpoint ID.
     * @param _message The message payload.
     * @param _options Additional options for the message.
     * @param _payInLzToken Flag indicating whether to pay the fee in LZ tokens.
     * @return fee The calculated MessagingFee for the message.
     *      - nativeFee: The native fee for the message.
     *      - lzTokenFee: The LZ token fee for the message.
     */
    function _quote(
        uint32 _dstEid,
        bytes memory _message,
        bytes memory _options,
        bool _payInLzToken
    ) internal view virtual returns (MessagingFee memory fee) {
        return
            endpoint.quote(
                MessagingParams(_dstEid, _getPeerOrRevert(_dstEid), _message, _options, _payInLzToken),
                address(this)
            );
    }

    /**
     * @dev Internal function to interact with the LayerZero EndpointV2.send() for sending a message.
     * @param _dstEid The destination endpoint ID.
     * @param _message The message payload.
     * @param _options Additional options for the message.
     * @param _fee The calculated LayerZero fee for the message.
     *      - nativeFee: The native fee.
     *      - lzTokenFee: The lzToken fee.
     * @param _refundAddress The address to receive any excess fee values sent to the endpoint.
     * @return receipt The receipt for the sent message.
     *      - guid: The unique identifier for the sent message.
     *      - nonce: The nonce of the sent message.
     *      - fee: The LayerZero fee incurred for the message.
     */
    function _lzSend(
        uint32 _dstEid,
        bytes memory _message,
        bytes memory _options,
        MessagingFee memory _fee,
        address _refundAddress
    ) internal virtual returns (MessagingReceipt memory receipt) {
        // @dev Push corresponding fees to the endpoint, any excess is sent back to the _refundAddress from the endpoint.
        uint256 messageValue = _payNative(_fee.nativeFee);
        if (_fee.lzTokenFee > 0) _payLzToken(_fee.lzTokenFee);

        return
            // solhint-disable-next-line check-send-result
            endpoint.send{ value: messageValue }(
                MessagingParams(_dstEid, _getPeerOrRevert(_dstEid), _message, _options, _fee.lzTokenFee > 0),
                _refundAddress
            );
    }

    /**
     * @dev Internal function to pay the native fee associated with the message.
     * @param _nativeFee The native fee to be paid.
     * @return nativeFee The amount of native currency paid.
     *
     * @dev If the OApp needs to initiate MULTIPLE LayerZero messages in a single transaction,
     * this will need to be overridden because msg.value would contain multiple lzFees.
     * @dev Should be overridden in the event the LayerZero endpoint requires a different native currency.
     * @dev Some EVMs use an ERC20 as a method for paying transactions/gasFees.
     * @dev The endpoint is EITHER/OR, ie. it will NOT support both types of native payment at a time.
     */
    function _payNative(uint256 _nativeFee) internal virtual returns (uint256 nativeFee) {
        if (msg.value != _nativeFee) revert NotEnoughNative(msg.value);
        return _nativeFee;
    }

    /**
     * @dev Internal function to pay the LZ token fee associated with the message.
     * @param _lzTokenFee The LZ token fee to be paid.
     *
     * @dev If the caller is trying to pay in the specified lzToken, then the lzTokenFee is passed to the endpoint.
     * @dev Any excess sent, is passed back to the specified _refundAddress in the _lzSend().
     */
    function _payLzToken(uint256 _lzTokenFee) internal virtual {
        // @dev Cannot cache the token because it is not immutable in the endpoint.
        address lzToken = endpoint.lzToken();
        if (lzToken == address(0)) revert LzTokenUnavailable();

        // Pay LZ token fee by sending tokens to the endpoint.
        IERC20(lzToken).safeTransferFrom(msg.sender, address(endpoint), _lzTokenFee);
    }
}

// ============================================================
// FILE: lib/devtools/packages/oft-evm/contracts/interfaces/IOFT.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { MessagingReceipt, MessagingFee } from "@layerzerolabs/oapp-evm/contracts/oapp/OAppSender.sol";

/**
 * @dev Struct representing token parameters for the OFT send() operation.
 */
struct SendParam {
    uint32 dstEid; // Destination endpoint ID.
    bytes32 to; // Recipient address.
    uint256 amountLD; // Amount to send in local decimals.
    uint256 minAmountLD; // Minimum amount to send in local decimals.
    bytes extraOptions; // Additional options supplied by the caller to be used in the LayerZero message.
    bytes composeMsg; // The composed message for the send() operation.
    bytes oftCmd; // The OFT command to be executed, unused in default OFT implementations.
}

/**
 * @dev Struct representing OFT limit information.
 * @dev These amounts can change dynamically and are up the specific oft implementation.
 */
struct OFTLimit {
    uint256 minAmountLD; // Minimum amount in local decimals that can be sent to the recipient.
    uint256 maxAmountLD; // Maximum amount in local decimals that can be sent to the recipient.
}

/**
 * @dev Struct representing OFT receipt information.
 */
struct OFTReceipt {
    uint256 amountSentLD; // Amount of tokens ACTUALLY debited from the sender in local decimals.
    // @dev In non-default implementations, the amountReceivedLD COULD differ from this value.
    uint256 amountReceivedLD; // Amount of tokens to be received on the remote side.
}

/**
 * @dev Struct representing OFT fee details.
 * @dev Future proof mechanism to provide a standardized way to communicate fees to things like a UI.
 */
struct OFTFeeDetail {
    int256 feeAmountLD; // Amount of the fee in local decimals.
    string description; // Description of the fee.
}

/**
 * @title IOFT
 * @dev Interface for the OftChain (OFT) token.
 * @dev Does not inherit ERC20 to accommodate usage by OFTAdapter as well.
 * @dev This specific interface ID is '0x02e49c2c'.
 */
interface IOFT {
    // Custom error messages
    error InvalidLocalDecimals();
    error SlippageExceeded(uint256 amountLD, uint256 minAmountLD);

    // Events
    event OFTSent(
        bytes32 indexed guid, // GUID of the OFT message.
        uint32 dstEid, // Destination Endpoint ID.
        address indexed fromAddress, // Address of the sender on the src chain.
        uint256 amountSentLD, // Amount of tokens sent in local decimals.
        uint256 amountReceivedLD // Amount of tokens received in local decimals.
    );
    event OFTReceived(
        bytes32 indexed guid, // GUID of the OFT message.
        uint32 srcEid, // Source Endpoint ID.
        address indexed toAddress, // Address of the recipient on the dst chain.
        uint256 amountReceivedLD // Amount of tokens received in local decimals.
    );

    /**
     * @notice Retrieves interfaceID and the version of the OFT.
     * @return interfaceId The interface ID.
     * @return version The version.
     *
     * @dev interfaceId: This specific interface ID is '0x02e49c2c'.
     * @dev version: Indicates a cross-chain compatible msg encoding with other OFTs.
     * @dev If a new feature is added to the OFT cross-chain msg encoding, the version will be incremented.
     * ie. localOFT version(x,1) CAN send messages to remoteOFT version(x,1)
     */
    function oftVersion() external view returns (bytes4 interfaceId, uint64 version);

    /**
     * @notice Retrieves the address of the token associated with the OFT.
     * @return token The address of the ERC20 token implementation.
     */
    function token() external view returns (address);

    /**
     * @notice Indicates whether the OFT contract requires approval of the 'token()' to send.
     * @return requiresApproval Needs approval of the underlying token implementation.
     *
     * @dev Allows things like wallet implementers to determine integration requirements,
     * without understanding the underlying token implementation.
     */
    function approvalRequired() external view returns (bool);

    /**
     * @notice Retrieves the shared decimals of the OFT.
     * @return sharedDecimals The shared decimals of the OFT.
     */
    function sharedDecimals() external view returns (uint8);

    /**
     * @notice Provides the fee breakdown and settings data for an OFT. Unused in the default implementation.
     * @param _sendParam The parameters for the send operation.
     * @return limit The OFT limit information.
     * @return oftFeeDetails The details of OFT fees.
     * @return receipt The OFT receipt information.
     */
    function quoteOFT(
        SendParam calldata _sendParam
    ) external view returns (OFTLimit memory, OFTFeeDetail[] memory oftFeeDetails, OFTReceipt memory);

    /**
     * @notice Provides a quote for the send() operation.
     * @param _sendParam The parameters for the send() operation.
     * @param _payInLzToken Flag indicating whether the caller is paying in the LZ token.
     * @return fee The calculated LayerZero messaging fee from the send() operation.
     *
     * @dev MessagingFee: LayerZero msg fee
     *  - nativeFee: The native fee.
     *  - lzTokenFee: The lzToken fee.
     */
    function quoteSend(SendParam calldata _sendParam, bool _payInLzToken) external view returns (MessagingFee memory);

    /**
     * @notice Executes the send() operation.
     * @param _sendParam The parameters for the send operation.
     * @param _fee The fee information supplied by the caller.
     *      - nativeFee: The native fee.
     *      - lzTokenFee: The lzToken fee.
     * @param _refundAddress The address to receive any excess funds from fees etc. on the src.
     * @return receipt The LayerZero messaging receipt from the send() operation.
     * @return oftReceipt The OFT receipt information.
     *
     * @dev MessagingReceipt: LayerZero msg receipt
     *  - guid: The unique identifier for the sent message.
     *  - nonce: The nonce of the sent message.
     *  - fee: The LayerZero fee incurred for the message.
     */
    function send(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee,
        address _refundAddress
    ) external payable returns (MessagingReceipt memory, OFTReceipt memory);
}

// ============================================================
// FILE: lib/layerzero-v2/packages/layerzero-v2/evm/protocol/contracts/interfaces/ILayerZeroEndpointV2.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

import { IMessageLibManager } from "./IMessageLibManager.sol";
import { IMessagingComposer } from "./IMessagingComposer.sol";
import { IMessagingChannel } from "./IMessagingChannel.sol";
import { IMessagingContext } from "./IMessagingContext.sol";

struct MessagingParams {
    uint32 dstEid;
    bytes32 receiver;
    bytes message;
    bytes options;
    bool payInLzToken;
}

struct MessagingReceipt {
    bytes32 guid;
    uint64 nonce;
    MessagingFee fee;
}

struct MessagingFee {
    uint256 nativeFee;
    uint256 lzTokenFee;
}

struct Origin {
    uint32 srcEid;
    bytes32 sender;
    uint64 nonce;
}

interface ILayerZeroEndpointV2 is IMessageLibManager, IMessagingComposer, IMessagingChannel, IMessagingContext {
    event PacketSent(bytes encodedPayload, bytes options, address sendLibrary);

    event PacketVerified(Origin origin, address receiver, bytes32 payloadHash);

    event PacketDelivered(Origin origin, address receiver);

    event LzReceiveAlert(
        address indexed receiver,
        address indexed executor,
        Origin origin,
        bytes32 guid,
        uint256 gas,
        uint256 value,
        bytes message,
        bytes extraData,
        bytes reason
    );

    event LzTokenSet(address token);

    event DelegateSet(address sender, address delegate);

    function quote(MessagingParams calldata _params, address _sender) external view returns (MessagingFee memory);

    function send(
        MessagingParams calldata _params,
        address _refundAddress
    ) external payable returns (MessagingReceipt memory);

    function verify(Origin calldata _origin, address _receiver, bytes32 _payloadHash) external;

    function verifiable(Origin calldata _origin, address _receiver) external view returns (bool);

    function initializable(Origin calldata _origin, address _receiver) external view returns (bool);

    function lzReceive(
        Origin calldata _origin,
        address _receiver,
        bytes32 _guid,
        bytes calldata _message,
        bytes calldata _extraData
    ) external payable;

    // oapp can burn messages partially by calling this function with its own business logic if messages are verified in order
    function clear(address _oapp, Origin calldata _origin, bytes32 _guid, bytes calldata _message) external;

    function setLzToken(address _lzToken) external;

    function lzToken() external view returns (address);

    function nativeToken() external view returns (address);

    function setDelegate(address _delegate) external;
}

// ============================================================
// FILE: lib/layerzero-v2/packages/layerzero-v2/evm/protocol/contracts/interfaces/IMessageLibManager.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

struct SetConfigParam {
    uint32 eid;
    uint32 configType;
    bytes config;
}

interface IMessageLibManager {
    struct Timeout {
        address lib;
        uint256 expiry;
    }

    event LibraryRegistered(address newLib);
    event DefaultSendLibrarySet(uint32 eid, address newLib);
    event DefaultReceiveLibrarySet(uint32 eid, address newLib);
    event DefaultReceiveLibraryTimeoutSet(uint32 eid, address oldLib, uint256 expiry);
    event SendLibrarySet(address sender, uint32 eid, address newLib);
    event ReceiveLibrarySet(address receiver, uint32 eid, address newLib);
    event ReceiveLibraryTimeoutSet(address receiver, uint32 eid, address oldLib, uint256 timeout);

    function registerLibrary(address _lib) external;

    function isRegisteredLibrary(address _lib) external view returns (bool);

    function getRegisteredLibraries() external view returns (address[] memory);

    function setDefaultSendLibrary(uint32 _eid, address _newLib) external;

    function defaultSendLibrary(uint32 _eid) external view returns (address);

    function setDefaultReceiveLibrary(uint32 _eid, address _newLib, uint256 _timeout) external;

    function defaultReceiveLibrary(uint32 _eid) external view returns (address);

    function setDefaultReceiveLibraryTimeout(uint32 _eid, address _lib, uint256 _expiry) external;

    function defaultReceiveLibraryTimeout(uint32 _eid) external view returns (address lib, uint256 expiry);

    function isSupportedEid(uint32 _eid) external view returns (bool);

    function isValidReceiveLibrary(address _receiver, uint32 _eid, address _lib) external view returns (bool);

    /// ------------------- OApp interfaces -------------------
    function setSendLibrary(address _oapp, uint32 _eid, address _newLib) external;

    function getSendLibrary(address _sender, uint32 _eid) external view returns (address lib);

    function isDefaultSendLibrary(address _sender, uint32 _eid) external view returns (bool);

    function setReceiveLibrary(address _oapp, uint32 _eid, address _newLib, uint256 _gracePeriod) external;

    function getReceiveLibrary(address _receiver, uint32 _eid) external view returns (address lib, bool isDefault);

    function setReceiveLibraryTimeout(address _oapp, uint32 _eid, address _lib, uint256 _gracePeriod) external;

    function receiveLibraryTimeout(address _receiver, uint32 _eid) external view returns (address lib, uint256 expiry);

    function setConfig(address _oapp, address _lib, SetConfigParam[] calldata _params) external;

    function getConfig(
        address _oapp,
        address _lib,
        uint32 _eid,
        uint32 _configType
    ) external view returns (bytes memory config);
}

// ============================================================
// FILE: lib/layerzero-v2/packages/layerzero-v2/evm/protocol/contracts/interfaces/IMessagingChannel.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

interface IMessagingChannel {
    event InboundNonceSkipped(uint32 srcEid, bytes32 sender, address receiver, uint64 nonce);
    event PacketNilified(uint32 srcEid, bytes32 sender, address receiver, uint64 nonce, bytes32 payloadHash);
    event PacketBurnt(uint32 srcEid, bytes32 sender, address receiver, uint64 nonce, bytes32 payloadHash);

    function eid() external view returns (uint32);

    // this is an emergency function if a message cannot be verified for some reasons
    // required to provide _nextNonce to avoid race condition
    function skip(address _oapp, uint32 _srcEid, bytes32 _sender, uint64 _nonce) external;

    function nilify(address _oapp, uint32 _srcEid, bytes32 _sender, uint64 _nonce, bytes32 _payloadHash) external;

    function burn(address _oapp, uint32 _srcEid, bytes32 _sender, uint64 _nonce, bytes32 _payloadHash) external;

    function nextGuid(address _sender, uint32 _dstEid, bytes32 _receiver) external view returns (bytes32);

    function inboundNonce(address _receiver, uint32 _srcEid, bytes32 _sender) external view returns (uint64);

    function outboundNonce(address _sender, uint32 _dstEid, bytes32 _receiver) external view returns (uint64);

    function inboundPayloadHash(
        address _receiver,
        uint32 _srcEid,
        bytes32 _sender,
        uint64 _nonce
    ) external view returns (bytes32);

    function lazyInboundNonce(address _receiver, uint32 _srcEid, bytes32 _sender) external view returns (uint64);
}

// ============================================================
// FILE: lib/layerzero-v2/packages/layerzero-v2/evm/protocol/contracts/interfaces/IMessagingComposer.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

interface IMessagingComposer {
    event ComposeSent(address from, address to, bytes32 guid, uint16 index, bytes message);
    event ComposeDelivered(address from, address to, bytes32 guid, uint16 index);
    event LzComposeAlert(
        address indexed from,
        address indexed to,
        address indexed executor,
        bytes32 guid,
        uint16 index,
        uint256 gas,
        uint256 value,
        bytes message,
        bytes extraData,
        bytes reason
    );

    function composeQueue(
        address _from,
        address _to,
        bytes32 _guid,
        uint16 _index
    ) external view returns (bytes32 messageHash);

    function sendCompose(address _to, bytes32 _guid, uint16 _index, bytes calldata _message) external;

    function lzCompose(
        address _from,
        address _to,
        bytes32 _guid,
        uint16 _index,
        bytes calldata _message,
        bytes calldata _extraData
    ) external payable;
}

// ============================================================
// FILE: lib/layerzero-v2/packages/layerzero-v2/evm/protocol/contracts/interfaces/IMessagingContext.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

interface IMessagingContext {
    function isSendingMessage() external view returns (bool);

    function getSendContext() external view returns (uint32 dstEid, address sender);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/AccessControl.sol)

pragma solidity ^0.8.20;

import {IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";
import {ContextUpgradeable} from "../utils/ContextUpgradeable.sol";
import {ERC165Upgradeable} from "../utils/introspection/ERC165Upgradeable.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module that allows children to implement role-based access
 * control mechanisms. This is a lightweight version that doesn't allow enumerating role
 * members except through off-chain means by accessing the contract event logs. Some
 * applications may benefit from on-chain enumerability, for those cases see
 * {AccessControlEnumerable}.
 *
 * Roles are referred to by their `bytes32` identifier. These should be exposed
 * in the external API and be unique. The best way to achieve this is by
 * using `public constant` hash digests:
 *
 * ```solidity
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```solidity
 * function foo() public {
 *     require(hasRole(MY_ROLE, msg.sender));
 *     ...
 * }
 * ```
 *
 * Roles can be granted and revoked dynamically via the {grantRole} and
 * {revokeRole} functions. Each role has an associated admin role, and only
 * accounts that have a role's admin role can call {grantRole} and {revokeRole}.
 *
 * By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means
 * that only accounts with this role will be able to grant or revoke other
 * roles. More complex role relationships can be created by using
 * {_setRoleAdmin}.
 *
 * WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to
 * grant and revoke this role. Extra precautions should be taken to secure
 * accounts that have been granted it. We recommend using {AccessControlDefaultAdminRules}
 * to enforce additional security measures for this role.
 */
abstract contract AccessControlUpgradeable is Initializable, ContextUpgradeable, IAccessControl, ERC165Upgradeable {
    struct RoleData {
        mapping(address account => bool) hasRole;
        bytes32 adminRole;
    }

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;


    /// @custom:storage-location erc7201:openzeppelin.storage.AccessControl
    struct AccessControlStorage {
        mapping(bytes32 role => RoleData) _roles;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.AccessControl")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant AccessControlStorageLocation = 0x02dd7bc7dec4dceedda775e58dd541e08a116c6c53815c0bd028192f7b626800;

    function _getAccessControlStorage() private pure returns (AccessControlStorage storage $) {
        assembly {
            $.slot := AccessControlStorageLocation
        }
    }

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with an {AccessControlUnauthorizedAccount} error including the required role.
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    function __AccessControl_init() internal onlyInitializing {
    }

    function __AccessControl_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControl).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual returns (bool) {
        AccessControlStorage storage $ = _getAccessControlStorage();
        return $._roles[role].hasRole[account];
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `_msgSender()`
     * is missing `role`. Overriding this function changes the behavior of the {onlyRole} modifier.
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `account`
     * is missing `role`.
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert AccessControlUnauthorizedAccount(account, role);
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual returns (bytes32) {
        AccessControlStorage storage $ = _getAccessControlStorage();
        return $._roles[role].adminRole;
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleGranted} event.
     */
    function grantRole(bytes32 role, address account) public virtual onlyRole(getRoleAdmin(role)) {
        _grantRole(role, account);
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account) public virtual onlyRole(getRoleAdmin(role)) {
        _revokeRole(role, account);
    }

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been revoked `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `callerConfirmation`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address callerConfirmation) public virtual {
        if (callerConfirmation != _msgSender()) {
            revert AccessControlBadConfirmation();
        }

        _revokeRole(role, callerConfirmation);
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        AccessControlStorage storage $ = _getAccessControlStorage();
        bytes32 previousAdminRole = getRoleAdmin(role);
        $._roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Attempts to grant `role` to `account` and returns a boolean indicating if `role` was granted.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual returns (bool) {
        AccessControlStorage storage $ = _getAccessControlStorage();
        if (!hasRole(role, account)) {
            $._roles[role].hasRole[account] = true;
            emit RoleGranted(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Attempts to revoke `role` to `account` and returns a boolean indicating if `role` was revoked.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual returns (bool) {
        AccessControlStorage storage $ = _getAccessControlStorage();
        if (hasRole(role, account)) {
            $._roles[role].hasRole[account] = false;
            emit RoleRevoked(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.20;

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```solidity
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 *
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Storage of the initializable contract.
     *
     * It's implemented on a custom ERC-7201 namespace to reduce the risk of storage collisions
     * when using with upgradeable contracts.
     *
     * @custom:storage-location erc7201:openzeppelin.storage.Initializable
     */
    struct InitializableStorage {
        /**
         * @dev Indicates that the contract has been initialized.
         */
        uint64 _initialized;
        /**
         * @dev Indicates that the contract is in the process of being initialized.
         */
        bool _initializing;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Initializable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant INITIALIZABLE_STORAGE = 0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00;

    /**
     * @dev The contract is already initialized.
     */
    error InvalidInitialization();

    /**
     * @dev The contract is not initializing.
     */
    error NotInitializing();

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint64 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that in the context of a constructor an `initializer` may be invoked any
     * number of times. This behavior in the constructor can be useful during testing and is not expected to be used in
     * production.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        // Cache values to avoid duplicated sloads
        bool isTopLevelCall = !$._initializing;
        uint64 initialized = $._initialized;

        // Allowed calls:
        // - initialSetup: the contract is not in the initializing state and no previous version was
        //                 initialized
        // - construction: the contract is initialized at version 1 (no reininitialization) and the
        //                 current contract is just being deployed
        bool initialSetup = initialized == 0 && isTopLevelCall;
        bool construction = initialized == 1 && address(this).code.length == 0;

        if (!initialSetup && !construction) {
            revert InvalidInitialization();
        }
        $._initialized = 1;
        if (isTopLevelCall) {
            $._initializing = true;
        }
        _;
        if (isTopLevelCall) {
            $._initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: Setting the version to 2**64 - 1 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint64 version) {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing || $._initialized >= version) {
            revert InvalidInitialization();
        }
        $._initialized = version;
        $._initializing = true;
        _;
        $._initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        _checkInitializing();
        _;
    }

    /**
     * @dev Reverts if the contract is not in an initializing state. See {onlyInitializing}.
     */
    function _checkInitializing() internal view virtual {
        if (!_isInitializing()) {
            revert NotInitializing();
        }
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing) {
            revert InvalidInitialization();
        }
        if ($._initialized != type(uint64).max) {
            $._initialized = type(uint64).max;
            emit Initialized(type(uint64).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint64) {
        return _getInitializableStorage()._initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _getInitializableStorage()._initializing;
    }

    /**
     * @dev Returns a pointer to the storage namespace.
     */
    // solhint-disable-next-line var-name-mixedcase
    function _getInitializableStorage() private pure returns (InitializableStorage storage $) {
        assembly {
            $.slot := INITIALIZABLE_STORAGE
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/utils/UUPSUpgradeable.sol)

pragma solidity ^0.8.20;

import {IERC1822Proxiable} from "@openzeppelin/contracts/interfaces/draft-IERC1822.sol";
import {ERC1967Utils} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Utils.sol";
import {Initializable} from "./Initializable.sol";

/**
 * @dev An upgradeability mechanism designed for UUPS proxies. The functions included here can perform an upgrade of an
 * {ERC1967Proxy}, when this contract is set as the implementation behind such a proxy.
 *
 * A security mechanism ensures that an upgrade does not turn off upgradeability accidentally, although this risk is
 * reinstated if the upgrade retains upgradeability but removes the security mechanism, e.g. by replacing
 * `UUPSUpgradeable` with a custom implementation of upgrades.
 *
 * The {_authorizeUpgrade} function must be overridden to include access restriction to the upgrade mechanism.
 */
abstract contract UUPSUpgradeable is Initializable, IERC1822Proxiable {
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address private immutable __self = address(this);

    /**
     * @dev The version of the upgrade interface of the contract. If this getter is missing, both `upgradeTo(address)`
     * and `upgradeToAndCall(address,bytes)` are present, and `upgradeTo` must be used if no function should be called,
     * while `upgradeToAndCall` will invoke the `receive` function if the second argument is the empty byte string.
     * If the getter returns `"5.0.0"`, only `upgradeToAndCall(address,bytes)` is present, and the second argument must
     * be the empty byte string if no function should be called, making it impossible to invoke the `receive` function
     * during an upgrade.
     */
    string public constant UPGRADE_INTERFACE_VERSION = "5.0.0";

    /**
     * @dev The call is from an unauthorized context.
     */
    error UUPSUnauthorizedCallContext();

    /**
     * @dev The storage `slot` is unsupported as a UUID.
     */
    error UUPSUnsupportedProxiableUUID(bytes32 slot);

    /**
     * @dev Check that the execution is being performed through a delegatecall call and that the execution context is
     * a proxy contract with an implementation (as defined in ERC1967) pointing to self. This should only be the case
     * for UUPS and transparent proxies that are using the current contract as their implementation. Execution of a
     * function through ERC1167 minimal proxies (clones) would not normally pass this test, but is not guaranteed to
     * fail.
     */
    modifier onlyProxy() {
        _checkProxy();
        _;
    }

    /**
     * @dev Check that the execution is not being performed through a delegate call. This allows a function to be
     * callable on the implementing contract but not through proxies.
     */
    modifier notDelegated() {
        _checkNotDelegated();
        _;
    }

    function __UUPSUpgradeable_init() internal onlyInitializing {
    }

    function __UUPSUpgradeable_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev Implementation of the ERC1822 {proxiableUUID} function. This returns the storage slot used by the
     * implementation. It is used to validate the implementation's compatibility when performing an upgrade.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy. This is guaranteed by the `notDelegated` modifier.
     */
    function proxiableUUID() external view virtual notDelegated returns (bytes32) {
        return ERC1967Utils.IMPLEMENTATION_SLOT;
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`, and subsequently execute the function call
     * encoded in `data`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     *
     * @custom:oz-upgrades-unsafe-allow-reachable delegatecall
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) public payable virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, data);
    }

    /**
     * @dev Reverts if the execution is not performed via delegatecall or the execution
     * context is not of a proxy with an ERC1967-compliant implementation pointing to self.
     * See {_onlyProxy}.
     */
    function _checkProxy() internal view virtual {
        if (
            address(this) == __self || // Must be called through delegatecall
            ERC1967Utils.getImplementation() != __self // Must be called through an active proxy
        ) {
            revert UUPSUnauthorizedCallContext();
        }
    }

    /**
     * @dev Reverts if the execution is performed via delegatecall.
     * See {notDelegated}.
     */
    function _checkNotDelegated() internal view virtual {
        if (address(this) != __self) {
            // Must not be called through delegatecall
            revert UUPSUnauthorizedCallContext();
        }
    }

    /**
     * @dev Function that should revert when `msg.sender` is not authorized to upgrade the contract. Called by
     * {upgradeToAndCall}.
     *
     * Normally, this function will use an xref:access.adoc[access control] modifier such as {Ownable-onlyOwner}.
     *
     * ```solidity
     * function _authorizeUpgrade(address) internal onlyOwner {}
     * ```
     */
    function _authorizeUpgrade(address newImplementation) internal virtual;

    /**
     * @dev Performs an implementation upgrade with a security check for UUPS proxies, and additional setup call.
     *
     * As a security check, {proxiableUUID} is invoked in the new implementation, and the return value
     * is expected to be the implementation slot in ERC1967.
     *
     * Emits an {IERC1967-Upgraded} event.
     */
    function _upgradeToAndCallUUPS(address newImplementation, bytes memory data) private {
        try IERC1822Proxiable(newImplementation).proxiableUUID() returns (bytes32 slot) {
            if (slot != ERC1967Utils.IMPLEMENTATION_SLOT) {
                revert UUPSUnsupportedProxiableUUID(slot);
            }
            ERC1967Utils.upgradeToAndCall(newImplementation, data);
        } catch {
            // The implementation is not UUPS
            revert ERC1967Utils.ERC1967InvalidImplementation(newImplementation);
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/ContextUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract ContextUpgradeable is Initializable {
    function __Context_init() internal onlyInitializing {
    }

    function __Context_init_unchained() internal onlyInitializing {
    }
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/introspection/ERC165Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/ERC165.sol)

pragma solidity ^0.8.20;

import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {Initializable} from "../../proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 */
abstract contract ERC165Upgradeable is Initializable, IERC165 {
    function __ERC165_init() internal onlyInitializing {
    }

    function __ERC165_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/PausableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Pausable.sol)

pragma solidity ^0.8.20;

import {ContextUpgradeable} from "../utils/ContextUpgradeable.sol";
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract PausableUpgradeable is Initializable, ContextUpgradeable {
    /// @custom:storage-location erc7201:openzeppelin.storage.Pausable
    struct PausableStorage {
        bool _paused;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Pausable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant PausableStorageLocation = 0xcd5ed15c6e187e77e9aee88184c21f4f2182ab5827cb3b7e07fbedcd63f03300;

    function _getPausableStorage() private pure returns (PausableStorage storage $) {
        assembly {
            $.slot := PausableStorageLocation
        }
    }

    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    /**
     * @dev The operation failed because the contract is paused.
     */
    error EnforcedPause();

    /**
     * @dev The operation failed because the contract is not paused.
     */
    error ExpectedPause();

    /**
     * @dev Initializes the contract in unpaused state.
     */
    function __Pausable_init() internal onlyInitializing {
        __Pausable_init_unchained();
    }

    function __Pausable_init_unchained() internal onlyInitializing {
        PausableStorage storage $ = _getPausableStorage();
        $._paused = false;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        _requireNotPaused();
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        _requirePaused();
        _;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        PausableStorage storage $ = _getPausableStorage();
        return $._paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        if (paused()) {
            revert EnforcedPause();
        }
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        if (!paused()) {
            revert ExpectedPause();
        }
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        PausableStorage storage $ = _getPausableStorage();
        $._paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        PausableStorage storage $ = _getPausableStorage();
        $._paused = false;
        emit Unpaused(_msgSender());
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/ReentrancyGuardUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/ReentrancyGuard.sol)

pragma solidity ^0.8.20;
import {Initializable} from "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuardUpgradeable is Initializable {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant NOT_ENTERED = 1;
    uint256 private constant ENTERED = 2;

    /// @custom:storage-location erc7201:openzeppelin.storage.ReentrancyGuard
    struct ReentrancyGuardStorage {
        uint256 _status;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ReentrancyGuard")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ReentrancyGuardStorageLocation = 0x9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00;

    function _getReentrancyGuardStorage() private pure returns (ReentrancyGuardStorage storage $) {
        assembly {
            $.slot := ReentrancyGuardStorageLocation
        }
    }

    /**
     * @dev Unauthorized reentrant call.
     */
    error ReentrancyGuardReentrantCall();

    function __ReentrancyGuard_init() internal onlyInitializing {
        __ReentrancyGuard_init_unchained();
    }

    function __ReentrancyGuard_init_unchained() internal onlyInitializing {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        $._status = NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        // On the first call to nonReentrant, _status will be NOT_ENTERED
        if ($._status == ENTERED) {
            revert ReentrancyGuardReentrantCall();
        }

        // Any calls to nonReentrant after this point will fail
        $._status = ENTERED;
    }

    function _nonReentrantAfter() private {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        $._status = NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();
        return $._status == ENTERED;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/access/IAccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/IAccessControl.sol)

pragma solidity ^0.8.20;

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControl {
    /**
     * @dev The `account` is missing a role.
     */
    error AccessControlUnauthorizedAccount(address account, bytes32 neededRole);

    /**
     * @dev The caller of a function is not the expected one.
     *
     * NOTE: Don't confuse with {AccessControlUnauthorizedAccount}.
     */
    error AccessControlBadConfirmation();

    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted signaling this.
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call, an admin role
     * bearer except when using {AccessControl-_setupRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `callerConfirmation`.
     */
    function renounceRole(bytes32 role, address callerConfirmation) external;
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;

import {Context} from "../utils/Context.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    constructor(address initialOwner) {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/interfaces/draft-IERC1822.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/draft-IERC1822.sol)

pragma solidity ^0.8.20;

/**
 * @dev ERC1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
 * proxy whose upgrades are fully controlled by the current implementation.
 */
interface IERC1822Proxiable {
    /**
     * @dev Returns the storage slot that the proxiable contract assumes is being used to store the implementation
     * address.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy.
     */
    function proxiableUUID() external view returns (bytes32);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/proxy/beacon/IBeacon.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/beacon/IBeacon.sol)

pragma solidity ^0.8.20;

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeacon {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {UpgradeableBeacon} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Utils.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/ERC1967/ERC1967Utils.sol)

pragma solidity ^0.8.20;

import {IBeacon} from "../beacon/IBeacon.sol";
import {Address} from "../../utils/Address.sol";
import {StorageSlot} from "../../utils/StorageSlot.sol";

/**
 * @dev This abstract contract provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
 */
library ERC1967Utils {
    // We re-declare ERC-1967 events here because they can't be used directly from IERC1967.
    // This will be fixed in Solidity 0.8.21. At that point we should remove these events.
    /**
     * @dev Emitted when the implementation is upgraded.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Emitted when the admin account has changed.
     */
    event AdminChanged(address previousAdmin, address newAdmin);

    /**
     * @dev Emitted when the beacon is changed.
     */
    event BeaconUpgraded(address indexed beacon);

    /**
     * @dev Storage slot with the address of the current implementation.
     * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    /**
     * @dev The `implementation` of the proxy is invalid.
     */
    error ERC1967InvalidImplementation(address implementation);

    /**
     * @dev The `admin` of the proxy is invalid.
     */
    error ERC1967InvalidAdmin(address admin);

    /**
     * @dev The `beacon` of the proxy is invalid.
     */
    error ERC1967InvalidBeacon(address beacon);

    /**
     * @dev An upgrade function sees `msg.value > 0` that may be lost.
     */
    error ERC1967NonPayable();

    /**
     * @dev Returns the current implementation address.
     */
    function getImplementation() internal view returns (address) {
        return StorageSlot.getAddressSlot(IMPLEMENTATION_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 implementation slot.
     */
    function _setImplementation(address newImplementation) private {
        if (newImplementation.code.length == 0) {
            revert ERC1967InvalidImplementation(newImplementation);
        }
        StorageSlot.getAddressSlot(IMPLEMENTATION_SLOT).value = newImplementation;
    }

    /**
     * @dev Performs implementation upgrade with additional setup call if data is nonempty.
     * This function is payable only if the setup call is performed, otherwise `msg.value` is rejected
     * to avoid stuck value in the contract.
     *
     * Emits an {IERC1967-Upgraded} event.
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) internal {
        _setImplementation(newImplementation);
        emit Upgraded(newImplementation);

        if (data.length > 0) {
            Address.functionDelegateCall(newImplementation, data);
        } else {
            _checkNonPayable();
        }
    }

    /**
     * @dev Storage slot with the admin of the contract.
     * This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;

    /**
     * @dev Returns the current admin.
     *
     * TIP: To get this value clients can read directly from the storage slot shown below (specified by EIP1967) using
     * the https://eth.wiki/json-rpc/API#eth_getstorageat[`eth_getStorageAt`] RPC call.
     * `0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103`
     */
    function getAdmin() internal view returns (address) {
        return StorageSlot.getAddressSlot(ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 admin slot.
     */
    function _setAdmin(address newAdmin) private {
        if (newAdmin == address(0)) {
            revert ERC1967InvalidAdmin(address(0));
        }
        StorageSlot.getAddressSlot(ADMIN_SLOT).value = newAdmin;
    }

    /**
     * @dev Changes the admin of the proxy.
     *
     * Emits an {IERC1967-AdminChanged} event.
     */
    function changeAdmin(address newAdmin) internal {
        emit AdminChanged(getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    /**
     * @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
     * This is the keccak-256 hash of "eip1967.proxy.beacon" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    /**
     * @dev Returns the current beacon.
     */
    function getBeacon() internal view returns (address) {
        return StorageSlot.getAddressSlot(BEACON_SLOT).value;
    }

    /**
     * @dev Stores a new beacon in the EIP1967 beacon slot.
     */
    function _setBeacon(address newBeacon) private {
        if (newBeacon.code.length == 0) {
            revert ERC1967InvalidBeacon(newBeacon);
        }

        StorageSlot.getAddressSlot(BEACON_SLOT).value = newBeacon;

        address beaconImplementation = IBeacon(newBeacon).implementation();
        if (beaconImplementation.code.length == 0) {
            revert ERC1967InvalidImplementation(beaconImplementation);
        }
    }

    /**
     * @dev Change the beacon and trigger a setup call if data is nonempty.
     * This function is payable only if the setup call is performed, otherwise `msg.value` is rejected
     * to avoid stuck value in the contract.
     *
     * Emits an {IERC1967-BeaconUpgraded} event.
     *
     * CAUTION: Invoking this function has no effect on an instance of {BeaconProxy} since v5, since
     * it uses an immutable beacon without looking at the value of the ERC-1967 beacon slot for
     * efficiency.
     */
    function upgradeBeaconToAndCall(address newBeacon, bytes memory data) internal {
        _setBeacon(newBeacon);
        emit BeaconUpgraded(newBeacon);

        if (data.length > 0) {
            Address.functionDelegateCall(IBeacon(newBeacon).implementation(), data);
        } else {
            _checkNonPayable();
        }
    }

    /**
     * @dev Reverts if `msg.value` is not zero. It can be used to avoid `msg.value` stuck in the contract
     * if an upgrade doesn't perform an initialization call.
     */
    function _checkNonPayable() private {
        if (msg.value > 0) {
            revert ERC1967NonPayable();
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * ==== Security Considerations
 *
 * There are two important considerations concerning the use of `permit`. The first is that a valid permit signature
 * expresses an allowance, and it should not be assumed to convey additional meaning. In particular, it should not be
 * considered as an intention to spend the allowance in any specific way. The second is that because permits have
 * built-in replay protection and can be submitted by anyone, they can be frontrun. A protocol that uses permits should
 * take this into consideration and allow a `permit` call to fail. Combining these two aspects, a pattern that may be
 * generally recommended is:
 *
 * ```solidity
 * function doThingWithPermit(..., uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) public {
 *     try token.permit(msg.sender, address(this), value, deadline, v, r, s) {} catch {}
 *     doThing(..., value);
 * }
 *
 * function doThing(..., uint256 value) public {
 *     token.safeTransferFrom(msg.sender, address(this), value);
 *     ...
 * }
 * ```
 *
 * Observe that: 1) `msg.sender` is used as the owner, leaving no ambiguity as to the signer intent, and 2) the use of
 * `try/catch` allows the permit to fail and makes the code tolerant to frontrunning. (See also
 * {SafeERC20-safeTransferFrom}).
 *
 * Additionally, note that smart contract wallets (such as Argent or Safe) are not able to produce permit signatures, so
 * contracts should have entry points that don't rely on permit.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     *
     * CAUTION: See Security Considerations above.
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";
import {IERC20Permit} from "../extensions/IERC20Permit.sol";
import {Address} from "../../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    /**
     * @dev An operation with an ERC20 token failed.
     */
    error SafeERC20FailedOperation(address token);

    /**
     * @dev Indicates a failed `decreaseAllowance` request.
     */
    error SafeERC20FailedDecreaseAllowance(address spender, uint256 currentAllowance, uint256 requestedDecrease);

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transfer, (to, value)));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transferFrom, (from, to, value)));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 requestedDecrease) internal {
        unchecked {
            uint256 currentAllowance = token.allowance(address(this), spender);
            if (currentAllowance < requestedDecrease) {
                revert SafeERC20FailedDecreaseAllowance(spender, currentAllowance, requestedDecrease);
            }
            forceApprove(token, spender, currentAllowance - requestedDecrease);
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeCall(token.approve, (spender, value));

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeCall(token.approve, (spender, 0)));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data);
        if (returndata.length != 0 && !abi.decode(returndata, (bool))) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silents catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return success && (returndata.length == 0 || abi.decode(returndata, (bool))) && address(token).code.length > 0;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Address.sol)

pragma solidity ^0.8.20;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev The ETH balance of the account is not enough to perform the operation.
     */
    error AddressInsufficientBalance(address account);

    /**
     * @dev There's no code at `target` (it is not a contract).
     */
    error AddressEmptyCode(address target);

    /**
     * @dev A call to an address target failed. The target may have reverted.
     */
    error FailedInnerCall();

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.20/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        if (address(this).balance < amount) {
            revert AddressInsufficientBalance(address(this));
        }

        (bool success, ) = recipient.call{value: amount}("");
        if (!success) {
            revert FailedInnerCall();
        }
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason or custom error, it is bubbled
     * up by this function (like regular Solidity function calls). However, if
     * the call reverted with no returned reason, this function reverts with a
     * {FailedInnerCall} error.
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        if (address(this).balance < value) {
            revert AddressInsufficientBalance(address(this));
        }
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and reverts if the target
     * was not a contract or bubbling up the revert reason (falling back to {FailedInnerCall}) in case of an
     * unsuccessful call.
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata
    ) internal view returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            // only check if target is a contract if the call was successful and the return data is empty
            // otherwise we already know that it was a contract
            if (returndata.length == 0 && target.code.length == 0) {
                revert AddressEmptyCode(target);
            }
            return returndata;
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and reverts if it wasn't, either by bubbling the
     * revert reason or with a default {FailedInnerCall} error.
     */
    function verifyCallResult(bool success, bytes memory returndata) internal pure returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            return returndata;
        }
    }

    /**
     * @dev Reverts with returndata if present. Otherwise reverts with {FailedInnerCall}.
     */
    function _revert(bytes memory returndata) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert FailedInnerCall();
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/IERC165.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/utils/StorageSlot.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/StorageSlot.sol)
// This file was procedurally generated from scripts/generate/templates/StorageSlot.js.

pragma solidity ^0.8.20;

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC1967 implementation slot:
 * ```solidity
 * contract ERC1967 {
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(newImplementation.code.length > 0);
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 */
library StorageSlot {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    struct StringSlot {
        string value;
    }

    struct BytesSlot {
        bytes value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` with member `value` located at `slot`.
     */
    function getStringSlot(bytes32 slot) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` representation of the string storage pointer `store`.
     */
    function getStringSlot(string storage store) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` with member `value` located at `slot`.
     */
    function getBytesSlot(bytes32 slot) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` representation of the bytes storage pointer `store`.
     */
    function getBytesSlot(bytes storage store) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }
}

// ============================================================
// FILE: src/AsBnbMinter.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { SendParam, MessagingFee } from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import { IOFTAdapter } from "./interfaces/IOFTAdapter.sol";

import "./libraries/FullMath.sol";
import "./interfaces/IAsBnbMinter.sol";
import "./interfaces/IAsBNB.sol";
import "./interfaces/IYieldProxy.sol";
import "./interfaces/IListaStakeManager.sol";
import { YieldProxy } from "./YieldProxy.sol";

contract AsBnbMinter is
  IAsBnbMinter,
  Initializable,
  AccessControlUpgradeable,
  PausableUpgradeable,
  ReentrancyGuardUpgradeable,
  UUPSUpgradeable
{
  using SafeERC20 for IERC20;
  using SafeERC20 for IAsBNB;
  // pause role
  bytes32 public constant PAUSER = keccak256("PAUSER");
  // manager role
  bytes32 public constant MANAGER = keccak256("MANAGER");
  // bot role
  bytes32 public constant BOT = keccak256("BOT");
  // withdraw helper
  bytes32 public constant WITHDRAW_HELPER = keccak256("WITHDRAW_HELPER");
  // denominator
  uint256 public constant DENOMINATOR = 10000;
  // @dev update it via contract upgrade in case we are force to do so
  // withdrawal fee rate upper bound (10%)
  uint256 public constant WITHDRAWAL_FEE_RATE_UPPER_BOUND = 1000;

  /* ======================
        State Variables
   ====================== */
  // original token address
  IERC20 public token;
  // asBnb address
  IAsBNB public asBnb;
  // total tokens deposited
  uint256 public totalTokens;
  // fee will be charged when LaunchPool rewards are compounded
  uint256 public feeRate;
  // rewards available to withdraw
  uint256 public feeAvailable;
  // yield proxy
  address public yieldProxy;
  // mint queue, pending mint requests
  // @notice when there is activity on going, the mint request will be added to this queue
  mapping(uint256 => TokenMintReq) public tokenMintReqQueue;
  // when the req at queueFront is processed, queueFront will be incremented
  uint256 public queueFront;
  // when there is a new mint req, queueRear will be incremented
  uint256 public queueRear;
  // minimum amount of token to mint
  uint256 public minMintAmount;
  // can withdraw
  bool public canWithdraw;
  // can deposit
  bool public canDeposit;
  // asBnb OFT Adapters (LayerZero Endpoint ID => asBnbOFTAdapter Address)
  mapping(uint32 => address) public asBnbOFTAdapters;
  // withdrawal fee rate
  // @dev ratio to deduct from the amount of asBNB to burn
  uint256 public withdrawalFeeRate;
  // available withdrawal fee
  uint256 public withdrawalFeeAvailable;

  /* ======================
          Modifiers
   ====================== */
  modifier onlyYieldProxy() {
    require(msg.sender == yieldProxy, "Caller is not yieldProxy");
    _;
  }

  modifier depositEnabled() {
    require(canDeposit, "Deposit is disabled");
    _;
  }

  modifier withdrawalEnabled() {
    require(canWithdraw, "Withdrawal is disabled");
    _;
  }

  /* ======================
            Events
   ====================== */
  event RewardsCompounded(address indexed sender, uint256 amountIn, uint256 lockAmount, uint256 fee);
  event FeeRateUpdated(address indexed sender, uint256 oldFeeRate, uint256 newFeeRate);
  event FeeWithdrawn(address indexed sender, address recipient, uint256 amount);
  event AddToken(address indexed asBnb, address indexed token);
  event TokenMintReqQueued(uint256 indexed index, address indexed user, uint256 amountIn);
  event TokenMintReqProcessed(uint256 indexed index, address indexed user, uint256 amountIn, uint256 amountToMint);
  event TokenMintReqCancelled(uint256 indexed index, address indexed user, uint256 amountOut);
  event AsBnbMinted(address indexed user, uint256 amountIn, uint256 amountOut);
  event AsBnbBurned(address indexed user, uint256 amountToBurn, uint256 releaseTokenAmount);
  event MinMintAmountUpdated(address indexed sender, uint256 oldMinMintAmount, uint256 newMinMintAmount);
  event CanDepositUpdated(address indexed sender, bool canDeposit);
  event CanWithdrawUpdated(address indexed sender, bool canWithdraw);
  event AsBnbOFTAdapterUpdated(uint32 indexed eid, address adapter);
  event WithdrawalFeeRateUpdated(address indexed sender, uint256 oldWithdrawalFeeRate, uint256 newWithdrawalFeeRate);
  event WithdrawalFee(address indexed sender, address recipient, uint256 amount);

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /**
   * @dev initialize the contract
   * @param _admin - Address of the admin
   * @param _manager - Address of the manager
   * @param _pauser - Address of the pauser
   * @param _bot - Address of the bot
   * @param _token - Address of the token
   * @param _asBnb - Address of the asBnb
   * @param _yieldProxy - Address of the yieldProxy
   */
  function initialize(
    address _admin,
    address _manager,
    address _pauser,
    address _bot,
    address _token,
    address _asBnb,
    address _yieldProxy
  ) external initializer {
    require(_admin != address(0), "Invalid admin address");
    require(_manager != address(0), "Invalid manager address");
    require(_pauser != address(0), "Invalid pauser address");
    require(_bot != address(0), "Invalid bot address");
    require(_token != address(0), "Invalid token address");
    require(_asBnb != address(0), "Invalid AsBnb address");
    require(_yieldProxy != address(0), "Invalid yieldProxy address");

    __Pausable_init();
    __ReentrancyGuard_init();
    __AccessControl_init();
    __UUPSUpgradeable_init();

    _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    _grantRole(MANAGER, _manager);
    _grantRole(PAUSER, _pauser);
    _grantRole(BOT, _bot);

    feeRate = 0;
    token = IERC20(_token);
    asBnb = IAsBNB(_asBnb);
    yieldProxy = _yieldProxy;

    // all open by default
    canWithdraw = true;
    canDeposit = true;

    emit AddToken(_asBnb, _token);
  }

  /* ============================
          External Getters
  ============================ */
  /**
   * @dev convertToTokens  get token amount
   * @param asBnbAmt - amount of asBnb
   */
  function convertToTokens(uint256 asBnbAmt) public view returns (uint256) {
    uint256 totalSupply = asBnb.totalSupply();
    // Refer to ERC4626
    // https://docs.openzeppelin.com/contracts/4.x/erc4626#defending_with_a_virtual_offset
    return FullMath.mulDiv(asBnbAmt, totalTokens + 1, totalSupply + 1);
  }

  /**
   * @dev convertToAsBnb  get asBnb amount
   * @param tokens - amount of token
   */
  function convertToAsBnb(uint256 tokens) public view returns (uint256) {
    uint256 totalSupply = asBnb.totalSupply();
    // refer to ERC4626's standard
    return FullMath.mulDiv(tokens, totalSupply + 1, totalTokens + 1);
  }

  /* ============================
        External Functions
  ============================ */
  /**
   * @dev mint asBnb
   * @param amountIn - amount of token
   */
  function mintAsBnb(uint256 amountIn) external override whenNotPaused depositEnabled nonReentrant returns (uint256) {
    // transfer token from user to this contract
    token.safeTransferFrom(msg.sender, address(this), amountIn);
    return _mint(amountIn, msg.sender);
  }

  /**
   * @dev mint asBnb with BNB
   * @dev overload mintAsBnb
   */
  function mintAsBnb() external payable override whenNotPaused depositEnabled nonReentrant returns (uint256) {
    // get transferred native token amount
    uint256 nativeAmountIn = msg.value;
    require(nativeAmountIn > 0, "Invalid amount");
    uint256 amountIn = convertBnbToSlisBnb(nativeAmountIn);
    return _mint(amountIn, msg.sender);
  }

  /**
   * @dev mint asBnb for a user
   * @param amountIn - amount of token
   * @param forAddr - address of user
   */
  function mintAsBnbFor(
    uint256 amountIn,
    address forAddr
  ) external override whenNotPaused depositEnabled nonReentrant onlyRole(WITHDRAW_HELPER) returns (uint256) {
    // transfer token from user to this contract
    token.safeTransferFrom(msg.sender, address(this), amountIn);
    return _mint(amountIn, forAddr);
  }

  /**
   * @dev mint asBnb for a user
   * @dev overload mintAsBnbFor
   * @param forAddr - address of user
   */
  function mintAsBnbFor(
    address forAddr
  ) external payable override whenNotPaused depositEnabled nonReentrant onlyRole(WITHDRAW_HELPER) returns (uint256) {
    // get transferred native token amount
    uint256 nativeAmountIn = msg.value;
    require(nativeAmountIn > 0, "Invalid amount");
    uint256 amountIn = convertBnbToSlisBnb(nativeAmountIn);
    return _mint(amountIn, forAddr);
  }

  /**
   * @dev mint asBnb and send to specific receiver at another chain
   * @param amountIn - amount of token
   * @param sendParam - SendParam of OFT
   */
  function mintAsBnbToChain(
    uint256 amountIn,
    SendParam memory sendParam
  ) external payable override whenNotPaused depositEnabled nonReentrant returns (uint256) {
    // get cross chain fee and validate the existence of OFTAdapter
    MessagingFee memory fee = getCrossChainFee(sendParam);
    require(msg.value == fee.nativeFee, "Invalid fee");
    // transfer token from user to this contract
    token.safeTransferFrom(msg.sender, address(this), amountIn);

    return _mintToChain(amountIn, sendParam, fee);
  }

  /**
   * @dev mint asBnb and send to specific receiver at another chain
   * @dev overload mintAsBnbToChain
   * @param sendParam - SendParam of OFT
   */
  function mintAsBnbToChain(
    SendParam memory sendParam
  ) external payable override whenNotPaused depositEnabled nonReentrant returns (uint256) {
    // get cross chain fee and validate the existence of OFTAdapter
    MessagingFee memory fee = getCrossChainFee(sendParam);
    require(msg.value >= fee.nativeFee, "Invalid fee");
    // BNB left to mint slisBNB after fee is deducted
    uint256 tokenAmtLeft = msg.value - fee.nativeFee;
    // get amount in of slisBNB
    uint256 amountIn = convertBnbToSlisBnb(tokenAmtLeft);

    return _mintToChain(amountIn, sendParam, fee);
  }

  /**
   * @dev burn asBnb
   * @notice supports withdraw as slisBNB only
   * @param amountToBurn - amount of asBnb to burn
   */
  function burnAsBnb(
    uint256 amountToBurn
  ) external override whenNotPaused withdrawalEnabled nonReentrant returns (uint256) {
    require(amountToBurn > 0, "Invalid amount to burn");
    // transfer asBnb from user to this contract
    asBnb.safeTransferFrom(msg.sender, address(this), amountToBurn);

    // @dev [1] deduct asBNB as withdrawal fee
    // calculate withdrawal fee
    uint256 fee = (amountToBurn * withdrawalFeeRate) / DENOMINATOR;
    // deduct fee from amount to burn
    amountToBurn -= fee;
    // add up to withdrawalFeeAvailable
    withdrawalFeeAvailable += fee;

    // @dev process withdrawal after fee deduction
    // get amount of token can be released
    uint256 releaseTokenAmount = convertToTokens(amountToBurn);
    // record token amount decrement
    totalTokens -= releaseTokenAmount;
    // burn asBnb
    asBnb.burn(address(this), amountToBurn);
    // withdraw slisBNB
    IYieldProxy(yieldProxy).withdraw(releaseTokenAmount);
    // transfer token to user
    token.safeTransfer(msg.sender, releaseTokenAmount);

    emit AsBnbBurned(msg.sender, amountToBurn, releaseTokenAmount);
    return amountToBurn;
  }

  /**
   * @dev compoundRewards
   * @param amountIn - amount of token
   */
  function compoundRewards(uint256 amountIn) external override onlyYieldProxy whenNotPaused nonReentrant {
    require(amountIn > 0, "Invalid amount");
    // transfer token from YieldProxy
    token.safeTransferFrom(msg.sender, address(this), amountIn);

    // calculate fee and compound amount
    uint256 fee = (amountIn * feeRate) / DENOMINATOR;
    uint256 lockAmount = amountIn - fee;

    // add up fees and total deposited tokens
    feeAvailable += fee;
    totalTokens += lockAmount;

    // compound rewards
    token.safeIncreaseAllowance(yieldProxy, lockAmount);
    IYieldProxy(yieldProxy).deposit(lockAmount);

    emit RewardsCompounded(msg.sender, amountIn, lockAmount, fee);
  }

  /**
   * @dev process mint queue
   *      token has been transferred to YieldProxy before queued,
   *      the function will mint AsBNB to the defined recipient
   * @notice this can be executed if and only if there is no on going activity
   * @param batchSize - size of how much to process this time
   */
  function processMintQueue(uint256 batchSize) external whenNotPaused onlyRole(BOT) {
    require(!IYieldProxy(yieldProxy).activitiesOnGoing(), "Activity is on going");
    require(batchSize > 0, "Invalid batch size");
    require(queueFront != queueRear, "No pending mint request");
    for (uint256 i = 0; i < batchSize; ++i) {
      // stop when batchSize is greater than the remaining queue size
      // or reach to the end of the queue
      if (queueFront == queueRear) {
        break;
      }
      // get token mint req. from the queue
      TokenMintReq memory req = tokenMintReqQueue[queueFront];
      // mint asBnb only if user address is non-zero address
      if (req.user != address(0)) {
        uint256 amountToMint = convertToAsBnb(req.amountIn);
        // record token amount increment
        totalTokens += req.amountIn;
        // mint asBnb
        asBnb.mint(req.user, amountToMint);
        // remove request from the queue
        delete tokenMintReqQueue[queueFront];
        // emit event
        emit TokenMintReqProcessed(queueFront, req.user, req.amountIn, amountToMint);
      }
      // increase queueFront
      ++queueFront;
    }
  }

  /**
   * @dev cancel mint request
   * @param indexes - request indexes
   */
  function cancelMintRequests(
    uint256[] calldata indexes
  ) external override whenNotPaused withdrawalEnabled nonReentrant {
    require(IYieldProxy(yieldProxy).activitiesOnGoing(), "No activity is on going");
    require(indexes.length > 0, "Invalid indexes");
    for (uint256 i = 0; i < indexes.length; ++i) {
      // get index and validate
      uint256 index = indexes[i];
      require(index >= queueFront && index < queueRear, "Invalid index");
      // get request
      TokenMintReq memory req = tokenMintReqQueue[index];
      // non-zero address and sender must be the same as the user
      require(req.user != address(0) && req.user == msg.sender, "Invalid request");
      // withdraw slisBNB
      IYieldProxy(yieldProxy).withdraw(req.amountIn);
      // send it back to user
      token.safeTransfer(req.user, req.amountIn);
      // remove request from the queue
      delete tokenMintReqQueue[index];
      // emit event
      emit TokenMintReqCancelled(index, req.user, req.amountIn);
    }
  }

  /* ============================
          Admin Functions
  ============================ */
  /**
   * @dev Flips the pause state
   */
  function unpause() external onlyRole(MANAGER) {
    _unpause();
  }

  /**
   * @dev pause the contract
   */
  function pause() external onlyRole(PAUSER) {
    _pause();
  }

  /**
   * @dev toggle canDeposit
   */
  function toggleCanDeposit() external onlyRole(MANAGER) {
    canDeposit = !canDeposit;
    emit CanDepositUpdated(msg.sender, canDeposit);
  }

  /**
   * @dev toggle canWithdraw
   */
  function toggleCanWithdraw() external onlyRole(MANAGER) {
    canWithdraw = !canWithdraw;
    emit CanWithdrawUpdated(msg.sender, canWithdraw);
  }

  /**
   * @dev set fee rate
   * @param _feeRate - fee rate which can be zero
   */
  function setFeeRate(uint256 _feeRate) external onlyRole(MANAGER) {
    require(_feeRate >= 0 && _feeRate <= DENOMINATOR, "Invalid fee rate");
    require(_feeRate != feeRate, "_fee rate can't equals to old fee rate");

    uint256 oldFeeRate = feeRate;
    // update new fee rate
    feeRate = _feeRate;

    emit FeeRateUpdated(msg.sender, oldFeeRate, _feeRate);
  }

  /**
   * @dev set withdrawal fee rate
   * @param _withdrawalFeeRate - withdrawal fee rate which can be zero
   */
  function setWithdrawalFeeRate(uint256 _withdrawalFeeRate) external onlyRole(MANAGER) {
    require(_withdrawalFeeRate <= WITHDRAWAL_FEE_RATE_UPPER_BOUND, "Invalid withdrawal fee rate");
    require(_withdrawalFeeRate != withdrawalFeeRate, "same _withdrawalFeeRate");

    uint256 oldWithdrawalFeeRate = withdrawalFeeRate;
    // update new fee rate
    withdrawalFeeRate = _withdrawalFeeRate;

    emit WithdrawalFeeRateUpdated(msg.sender, oldWithdrawalFeeRate, _withdrawalFeeRate);
  }

  /**
   * @dev set min. amount to mint
   * @param _minMintAmount - minimum amount of token to mint
   */
  function setMinMintAmount(uint256 _minMintAmount) external onlyRole(MANAGER) {
    require(_minMintAmount > 0 && _minMintAmount != minMintAmount, "Invalid minMintAmount");
    uint256 oldMinMintAmount = minMintAmount;
    minMintAmount = _minMintAmount;
    emit MinMintAmountUpdated(msg.sender, oldMinMintAmount, _minMintAmount);
  }

  /**
   * @dev withdraw collected fee from launchpool profits
   * @param recipient - Address of the recipient
   * @param withdrawAmount - amount of token
   */
  function withdrawFee(address recipient, uint256 withdrawAmount) external nonReentrant onlyRole(MANAGER) {
    require(recipient != address(0), "Invalid recipient address");
    require(withdrawAmount > 0 && withdrawAmount <= feeAvailable, "Invalid withdrawAmount");

    feeAvailable -= withdrawAmount;
    token.safeTransfer(recipient, withdrawAmount);

    emit FeeWithdrawn(msg.sender, recipient, withdrawAmount);
  }

  /**
   * @dev withdraw collected fee from withdrawal
   * @param recipient - Address of the recipient
   * @param withdrawAmount - amount of token
   */
  function collectWithdrawalFee(address recipient, uint256 withdrawAmount) external nonReentrant onlyRole(MANAGER) {
    require(recipient != address(0), "Invalid recipient address");
    require(withdrawAmount > 0 && withdrawAmount <= withdrawalFeeAvailable, "Invalid withdrawAmount");

    withdrawalFeeAvailable -= withdrawAmount;
    asBnb.safeTransfer(recipient, withdrawAmount);

    emit WithdrawalFee(msg.sender, recipient, withdrawAmount);
  }

  function setAsBnbOFTAdapter(uint32 eid, address adapter) external onlyRole(MANAGER) {
    // check eid only, adapter can be zero address if we want to disable it
    require(eid > 0, "Invalid eid");
    asBnbOFTAdapters[eid] = adapter;
    emit AsBnbOFTAdapterUpdated(eid, adapter);
  }

  /* ============================
        Internal Functions
  ============================ */
  function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

  /**
   * @dev Converts native token(BNB) to slisBNB
   * @notice interacts with Lista's StakeManager
   * @param amount - amount of BNB
   */
  function convertBnbToSlisBnb(uint256 amount) private returns (uint256 net) {
    // get pre-balance of slisBNB
    uint256 preBalance = token.balanceOf(address(this));
    // get stake manager address from YieldProxy
    address _stakeManagerAddress = IYieldProxy(yieldProxy).stakeManager();
    // convert BNB to slisBNB
    IListaStakeManager(_stakeManagerAddress).deposit{ value: amount }();
    // get post-balance of slisBNB
    uint256 postBalance = token.balanceOf(address(this));
    // get amount of slisBNB minted
    net = postBalance - preBalance;
  }

  /**
   * @dev mint asBnb
   * @param amountIn - amount of token
   * @param forAddr - address of user
   */
  function _mint(uint256 amountIn, address forAddr) private returns (uint256) {
    require(amountIn >= minMintAmount, "amount is less than minMintAmount");
    // transfer slisBNB to yieldProxy
    token.safeIncreaseAllowance(yieldProxy, amountIn);
    IYieldProxy(yieldProxy).deposit(amountIn);

    // queue mint request if there is on going activity
    if (IYieldProxy(yieldProxy).activitiesOnGoing()) {
      // set queueFront tokenMintReq
      tokenMintReqQueue[queueRear] = TokenMintReq(forAddr, amountIn);
      // emit event
      emit TokenMintReqQueued(queueRear, forAddr, amountIn);
      // increment queueRear
      ++queueRear;
      return 0;
    } else {
      // calculate amount to mint
      uint256 amountToMint = convertToAsBnb(amountIn);
      // record token amount increment
      totalTokens += amountIn;
      // mint asBnb
      asBnb.mint(forAddr, amountToMint);
      // emit event
      emit AsBnbMinted(forAddr, amountIn, amountToMint);
      return amountToMint;
    }
  }

  /**
   * @dev mint asBnb and send to receiver at another chain
   * @param amountIn - amount of token to mint and send
   * @param sendParam - SendParam of OFT
   */
  function _mintToChain(
    uint256 amountIn,
    SendParam memory sendParam,
    MessagingFee memory fee
  ) private returns (uint256) {
    require(!IYieldProxy(yieldProxy).activitiesOnGoing(), "Activity is on going");
    require(amountIn >= minMintAmount, "amount is less than minMintAmount");

    // transfer slisBNB to yieldProxy
    token.safeIncreaseAllowance(yieldProxy, amountIn);
    IYieldProxy(yieldProxy).deposit(amountIn);

    // calculate amount to mint
    uint256 amountToMint = convertToAsBnb(amountIn);
    /**
      @dev referring to the _debitView() method in OFTCoreUpgradeable.sol,
      only 6 decimal places will be counted when cross-chain,

      so the actual minted amount will less than the amount to mint,
      for example, amountToMint = 0.123456789012345678
      but only 0.123456 will be mint and send across the chain

      user will mint less asBNB with the same amount of slisBNB
      but the loss is negligible (0.000000xxxx slisBNB)
    */
    // get decimal conversion rate
    uint256 decimalConversionRate = IOFTAdapter(asBnbOFTAdapters[sendParam.dstEid]).decimalConversionRate();
    // remove numbers after 6th decimal place
    uint256 actualAmountToMint = (amountToMint / decimalConversionRate) * decimalConversionRate;
    // ensure amount to mint is the same as the amount to cross-chain
    require(actualAmountToMint == sendParam.amountLD, "Amount to cross-chain is not the same as actual amount to mint");
    // record token amount increment
    totalTokens += amountIn;
    // mint asBnb
    asBnb.mint(address(this), actualAmountToMint);

    // request cross-chain
    asBnb.safeIncreaseAllowance(asBnbOFTAdapters[sendParam.dstEid], actualAmountToMint);
    IOFTAdapter(asBnbOFTAdapters[sendParam.dstEid]).send{ value: fee.nativeFee }(sendParam, fee, msg.sender);

    // emit event
    emit AsBnbMinted(msg.sender, amountIn, actualAmountToMint);

    return actualAmountToMint;
  }

  /**
   * @dev get cross chain fee
   * @param sendParam - SendParam of OFT
   * @return fee - cross chain fee (in BNB)
   */
  function getCrossChainFee(SendParam memory sendParam) private view returns (MessagingFee memory fee) {
    require(asBnbOFTAdapters[sendParam.dstEid] != address(0), "OFTAdapter not found");
    // get OFTAdapter
    IOFTAdapter oftAdapter = IOFTAdapter(asBnbOFTAdapters[sendParam.dstEid]);
    // quote fee
    fee = oftAdapter.quoteSend(sendParam, false);
  }
}

// ============================================================
// FILE: src/interfaces/IAsBNB.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title AsBNB interface
interface IAsBNB is IERC20 {
  function mint(address _account, uint256 _amount) external;
  function burn(address _account, uint256 _amount) external;
  function setMinter(address _address) external;
}

// ============================================================
// FILE: src/interfaces/IAsBnbMinter.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;
import { SendParam } from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";

/// @title Minter interface
interface IAsBnbMinter {
  struct TokenMintReq {
    address user; // user who made the request
    uint256 amountIn; // amount of token deposited
  }

  // mint with slisBNB
  function mintAsBnb(uint256 amountIn) external returns (uint256);
  // mint with BNB
  function mintAsBnb() external payable returns (uint256);
  // mint with slisBNB and send asBNB cross-chain
  function mintAsBnbToChain(uint256 amountIn, SendParam memory sendParam) external payable returns (uint256);
  // mint with BNB and send asBNB cross-chain
  function mintAsBnbToChain(SendParam memory sendParam) external payable returns (uint256);
  // compound rewards
  function compoundRewards(uint256 _amountIn) external;
  // internal use only, migrate v1's slisBNB as asBNB
  function mintAsBnbFor(uint256 amountIn, address forAddr) external returns (uint256);
  // internal use only, migrate v1's BNB as asBNB
  function mintAsBnbFor(address forAddr) external payable returns (uint256);
  // burn asBNB and get back slisBNB
  function burnAsBnb(uint256 amountToBurn) external returns (uint256);
  // cancel queued mint requests
  function cancelMintRequests(uint256[] calldata indexes) external;
  // read-only func.
  function convertToTokens(uint256 asBNBAmount) external view returns (uint256);
  function convertToAsBnb(uint256 tokenAmount) external view returns (uint256);
}

// ============================================================
// FILE: src/interfaces/IListaStakeManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/// @title ListaStakeManager Contract interface
/// @notice Stakes BNB and get slisBNB
interface IListaStakeManager {
  function deposit() external payable;
}

// ============================================================
// FILE: src/interfaces/IOFTAdapter.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { IOFT } from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";

/// @title OFTAdapter interface
/// @notice for exposing decimalConversionRate
interface IOFTAdapter is IOFT {
  function decimalConversionRate() external view returns (uint256);
}

// ============================================================
// FILE: src/interfaces/ISlisBNBProvider.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/// @title SlisBNBProvider Contract interface
/// @notice Convert slisBNB to ClisBNB
///         and allows holder to delegate clisBNB to Lista's MPC wallet
///         ,then participate LaunchPools
interface ISlisBNBProvider {
  function provide(uint256 _amount, address _delegateTo) external returns (uint256);
  function delegateAllTo(address _newDelegateTo) external;
  function release(address _recipient, uint256 _amount) external returns (uint256);
}

// ============================================================
// FILE: src/interfaces/IYieldProxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/// @title YieldProxy Proxy Contract interface
/// @notice Using for other protocols proxy call, for example: PancakeSwap, StakeDAO and etc.
interface IYieldProxy {
  // LaunchPool activity struct
  struct Activity {
    uint256 startTime;
    uint256 endTime;
    uint256 rewardedTime;
    string tokenName;
  }

  function deposit(uint256 amount) external;
  function withdraw(uint256 amount) external;
  function activitiesOnGoing() external returns (bool);
  function stakeManager() external view returns (address);
}

// ============================================================
// FILE: src/libraries/FullMath.sol
// ============================================================

// SPDX-License-Identifier: CC-BY-4.0
pragma solidity 0.8.28;

// taken from https://medium.com/coinmonks/math-in-solidity-part-3-percents-and-proportions-4db014e080b1
// license is CC-BY-4.0
library FullMath {
  function fullMul(uint256 x, uint256 y) internal pure returns (uint256 l, uint256 h) {
    unchecked {
      uint256 mm = mulmod(x, y, type(uint256).max);
      l = x * y;
      h = mm - l;
      if (mm < l) h -= 1;
    }
  }

  function fullDiv(uint256 l, uint256 h, uint256 d) private pure returns (uint256) {
    unchecked {
      uint256 pow2 = d & (~d + 1);
      d /= pow2;
      l /= pow2;
      l += h * ((~pow2 + 1) / pow2 + 1);
      uint256 r = 1;
      r *= 2 - d * r;
      r *= 2 - d * r;
      r *= 2 - d * r;
      r *= 2 - d * r;
      r *= 2 - d * r;
      r *= 2 - d * r;
      r *= 2 - d * r;
      r *= 2 - d * r;
      return l * r;
    }
  }

  function mulDiv(uint256 x, uint256 y, uint256 d) internal pure returns (uint256) {
    (uint256 l, uint256 h) = fullMul(x, y);

    unchecked {
      uint256 mm = mulmod(x, y, d);
      if (mm > l) h -= 1;
      l -= mm;

      if (h == 0) return l / d;

      require(h < d, "FullMath: FULLDIV_OVERFLOW");
      return fullDiv(l, h, d);
    }
  }
}

// ============================================================
// FILE: src/YieldProxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import "./interfaces/IAsBnbMinter.sol";
import "./interfaces/IYieldProxy.sol";
import "./interfaces/IAsBNB.sol";
import "./interfaces/ISlisBNBProvider.sol";
import "./interfaces/IListaStakeManager.sol";

contract YieldProxy is
  IYieldProxy,
  AccessControlUpgradeable,
  PausableUpgradeable,
  ReentrancyGuardUpgradeable,
  UUPSUpgradeable
{
  using SafeERC20 for IERC20;
  // pause role
  bytes32 public constant PAUSER = keccak256("PAUSER");
  // minter role
  bytes32 public constant MINTER = keccak256("MINTER");
  // bot role
  bytes32 public constant BOT = keccak256("BOT");
  // manager role
  bytes32 public constant MANAGER = keccak256("MANAGER");

  /* ======================
        State Variables
   ====================== */
  // token address
  IERC20 public token;
  // asBnb address
  IAsBNB public asBnb;

  // launchpool activities
  Activity[] public activities;
  uint256 public lastUpdatedActivityIdx;

  // minter
  IAsBnbMinter public minter;

  // @dev clisBNB related
  // the accumulated amount of token rewarded from the activity
  uint256 public rewardedAmount;
  // the address(from Lista) sends the rewards
  address public rewardsSender;

  // Lista Stake Manager - deposit BNB and get slisBNB
  address public stakeManager;
  // Lista slisBNB Provider - collateralize slisBNB and get clisBNB
  address public slisBNBProvider;
  // Lista MPC wallet - delegate to this wallet to participate in LaunchPools
  address public mpcWallet;

  /* ======================
            Events
   ====================== */
  event ActivityAdded(uint256 startTime, uint256 endTime, uint256 rewardedTime, string tokenName);
  event ActivitySettled(uint256 rewardedTime, uint256 compoundedAmount, string tokenName);
  event Received(address indexed sender, uint256 value);
  event MinterSet(address indexed oldMinter, address indexed newMinter);
  event SlisBNBProviderSet(address indexed oldSlisBNBProvider, address indexed newSlisBNBProvider);
  event MPCWalletSet(address indexed oldMpcWallet, address indexed newMpcWallet);
  event RewardsSenderSet(address indexed oldRewardsSender, address indexed newRewardsSender);
  event TokenDelegated(address indexed sender, uint256 amount, uint256 lpAmount);
  event NativeTokensWithdrawn(address indexed sender, uint256 amount);

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /**
   * @dev initialize the contract
   * @param _admin - Address of the admin
   * @param _manager - Address of the manager
   * @param _pauser - Address of the pauser
   * @param _bot - Address of the bot
   * @param _token - Address of token
   * @param _asBnb - Address of asBnb
   * @param _stakeManager - Address of Lista Stake Manager
   */
  function initialize(
    address _admin,
    address _manager,
    address _pauser,
    address _bot,
    address _token,
    address _asBnb,
    address _stakeManager,
    address _mpcWallet
  ) external initializer {
    require(_admin != address(0), "Invalid admin address");
    require(_manager != address(0), "Invalid manager address");
    require(_pauser != address(0), "Invalid pauser address");
    require(_bot != address(0), "Invalid bot address");
    require(_token != address(0), "Invalid token address");
    require(_asBnb != address(0), "Invalid asBnb address");
    require(_stakeManager != address(0), "Invalid stakeManager address");
    require(_mpcWallet != address(0), "Invalid MPC wallet address");

    __Pausable_init();
    __ReentrancyGuard_init();
    __AccessControl_init();
    __UUPSUpgradeable_init();

    _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    _grantRole(MANAGER, _manager);
    _grantRole(PAUSER, _pauser);
    _grantRole(BOT, _bot);

    token = IERC20(_token);
    asBnb = IAsBNB(_asBnb);
    stakeManager = _stakeManager;
    slisBNBProvider = address(0);
    mpcWallet = _mpcWallet;
  }

  /* ============================
          External Getters
  ============================ */
  /**
   * @dev check if there is any activity ongoing
   *      to save gas, searching from `lastUpdatedActivityIdx`
   *      as activities before that are already settled
   */
  function activitiesOnGoing() external view override returns (bool) {
    for (uint256 i = lastUpdatedActivityIdx; i < activities.length; ++i) {
      Activity memory activity = activities[i];
      // if it's started and not rewarded yet
      if (activity.startTime <= block.timestamp && activity.rewardedTime == 0) {
        return true;
      }
    }
    return false;
  }

  /* ============================
        External Functions
  ============================ */
  /**
   * @dev deposit slisBNB into this contract
   * @notice after transition period, clisBNBProvider will be set
   *         and the deposit will be converted to clisBNB
   * @param amount - amount of BNB
   */
  function deposit(uint256 amount) external override onlyRole(MINTER) whenNotPaused {
    require(amount > 0, "Invalid amount");
    token.safeTransferFrom(msg.sender, address(this), amount);

    // transition period
    if (slisBNBProvider != address(0)) {
      // convert to clisBNB and delegate to Lista's MPC
      token.safeIncreaseAllowance(slisBNBProvider, amount);
      uint256 lpAmount = ISlisBNBProvider(slisBNBProvider).provide(amount, mpcWallet);
      emit TokenDelegated(msg.sender, amount, lpAmount);
    }
  }

  /**
   * @dev allows user withdraw token with their asBnb
   * @param amount - amount of asBnb
   */
  function withdraw(uint256 amount) external override onlyRole(MINTER) nonReentrant whenNotPaused {
    require(slisBNBProvider != address(0), "slisBNBProvider not set");
    require(amount > 0, "Invalid amount");
    // pre balance of slisBNB
    uint256 preBalance = token.balanceOf(address(this));
    // withdraw tokens to minter
    ISlisBNBProvider(slisBNBProvider).release(address(this), amount);
    // post balance of slisBNB
    uint256 postBalance = token.balanceOf(address(this));
    if (postBalance - preBalance != amount) {
      // if there is a difference, revert
      revert("Invalid amount");
    }
    // send to minter
    token.safeTransfer(msg.sender, amount);
  }

  /**
   * @dev settle the activity
   * @notice only the bot can settle the activity
   *         also rewards from activity will be compounded
   */
  function settleActivity() external onlyRole(BOT) whenNotPaused {
    // only if there is active activity
    // and the rewarded amount is not 0
    require(address(minter) != address(0), "Minter not set");
    require(this.activitiesOnGoing(), "No active activity");
    require(rewardedAmount > 0, "No rewards to compound");

    // save rewarded time
    activities[lastUpdatedActivityIdx].rewardedTime = block.timestamp;
    // update last updated activity index
    ++lastUpdatedActivityIdx;

    // get pre-balance of slisBNB
    uint256 preBalance = token.balanceOf(address(this));
    // convert BNB to slisBNB
    IListaStakeManager(stakeManager).deposit{ value: rewardedAmount }();
    // get post-balance of slisBNB
    uint256 postBalance = token.balanceOf(address(this));
    uint256 netBalance = postBalance - preBalance;
    // compound rewards
    token.safeIncreaseAllowance(address(minter), netBalance);
    minter.compoundRewards(netBalance);
    // emit event
    emit ActivitySettled(block.timestamp, rewardedAmount, activities[lastUpdatedActivityIdx - 1].tokenName);
    // reset the rewarded amount
    rewardedAmount = 0;
  }

  /**
   * @dev admin withdraw native token (BNB)
   *      not including the rewarded amount
   * @param amount - amount of BNB
   */
  function withdrawNativeToken(uint256 amount) external onlyRole(MANAGER) {
    require(amount > 0, "Invalid amount");
    require(address(this).balance - rewardedAmount >= amount, "Insufficient balance");
    payable(msg.sender).transfer(amount);
    emit NativeTokensWithdrawn(msg.sender, amount);
  }

  // @dev records how much BNB was sent by the sender
  receive() external payable {
    // add up amounts determined by the sender
    if (msg.sender == rewardsSender) {
      rewardedAmount += msg.value;
    }
    emit Received(msg.sender, msg.value);
  }

  /* ============================
          Admin Functions
  ============================ */
  /**
   * @dev Flips the pause state
   */
  function unpause() external onlyRole(MANAGER) {
    _unpause();
  }

  /**
   * @dev pause the contract
   */
  function pause() external onlyRole(PAUSER) {
    _pause();
  }

  /**
   * @dev add an activity
   * @param _startTime - start time of the activity
   * @param _endTime - end time of the activity
   * @param _tokenName - name of the token
   */
  function addActivity(
    uint256 _startTime,
    uint256 _endTime,
    string memory _tokenName
  ) external onlyRole(MANAGER) whenNotPaused {
    require(_startTime > block.timestamp, "Invalid start time");
    require(_startTime < _endTime, "Invalid time range");
    require(bytes(_tokenName).length > 0, "Invalid token name");
    activities.push(Activity(_startTime, _endTime, 0, _tokenName));
    emit ActivityAdded(_startTime, _endTime, 0, _tokenName);
  }

  /**
   * @dev end one or more activities from the last updated activity idx
   * @param numberOfActivity - number of the activity to end
   */
  function endActivity(uint256 numberOfActivity) external onlyRole(MANAGER) whenNotPaused {
    require(numberOfActivity > 0, "Invalid number of activities");
    // cache the last updated activity index
    uint256 max = lastUpdatedActivityIdx + numberOfActivity;
    // starting from lastUpdatedActivityIdx
    for (uint256 i = lastUpdatedActivityIdx; i < max; ++i) {
      // break if reach to the end
      if (i >= activities.length) {
        break;
      }
      activities[i].rewardedTime = block.timestamp;
      // emit event, note that no reward is compounded
      emit ActivitySettled(block.timestamp, 0, activities[lastUpdatedActivityIdx].tokenName);
      // update last updated activity index
      ++lastUpdatedActivityIdx;
    }
  }

  /**
   * @dev convert all slisBNB to clisBNB
   */
  function convertAllSlisBNBToClisBNB() external onlyRole(MANAGER) whenNotPaused {
    require(slisBNBProvider != address(0), "slisBNBProvider not set");
    require(mpcWallet != address(0), "mpcWallet not set");
    uint256 balance = token.balanceOf(address(this));
    if (balance > 0) {
      token.safeIncreaseAllowance(slisBNBProvider, balance);
      ISlisBNBProvider(slisBNBProvider).provide(balance, mpcWallet);
    }
  }

  /**
   * @dev set slisBNBProvider address
   * @param _slisBNBProvider - address of the slisBNBProvider
   */
  function setSlisBNBProvider(address _slisBNBProvider) external onlyRole(MANAGER) {
    require(_slisBNBProvider != address(0) && _slisBNBProvider != slisBNBProvider, "Invalid slisBNBProvider address");
    address oldSlisBNBProvider = slisBNBProvider;
    slisBNBProvider = _slisBNBProvider;
    emit SlisBNBProviderSet(oldSlisBNBProvider, _slisBNBProvider);
  }

  /**
   * @dev set MPC wallet
   * @param _mpcWallet - address of the MPC wallet
   */
  function setMPCWallet(address _mpcWallet) external onlyRole(MANAGER) {
    require(_mpcWallet != address(0) && _mpcWallet != mpcWallet, "Invalid MPC wallet address");
    address oldMpcWallet = mpcWallet;
    // update mpc wallet
    mpcWallet = _mpcWallet;
    // delegate all to the new MPC wallet right after it's updated
    ISlisBNBProvider(slisBNBProvider).delegateAllTo(mpcWallet);
    emit MPCWalletSet(oldMpcWallet, _mpcWallet);
  }

  /**
   * @dev set rewards sender
   * @param _rewardsSender - address of the rewards sender
   */
  function setRewardsSender(address _rewardsSender) external onlyRole(MANAGER) {
    require(_rewardsSender != address(0) && _rewardsSender != rewardsSender, "Invalid rewards sender address");
    address oldRewardsSender = rewardsSender;
    rewardsSender = _rewardsSender;
    emit RewardsSenderSet(oldRewardsSender, _rewardsSender);
  }

  /**
   * @dev set minter
   * @param _minter - address of the minter
   */
  function setMinter(address _minter) external onlyRole(MANAGER) {
    require(_minter != address(0) && _minter != address(minter), "Invalid minter address");

    address oldMinter = address(minter);
    // revoke previous minter's MINTER ROLE
    _revokeRole(MINTER, oldMinter);
    // set new minter
    minter = IAsBnbMinter(_minter);
    // grant role and revoke previous minter's MINTER ROLE
    _grantRole(MINTER, _minter);

    emit MinterSet(oldMinter, _minter);
  }

  /* ============================
        Internal Functions
  ============================ */
  function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}
}
