// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {ILayerZeroComposer} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroComposer.sol";
import {IOFT, SendParam, OFTReceipt} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import {MessagingFee} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import {OFTComposeMsgCodec} from "@layerzerolabs/oft-evm/contracts/libs/OFTComposeMsgCodec.sol";
import {OptionsBuilder} from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OptionsBuilder.sol";
import {AddressCast} from "@layerzerolabs/lz-evm-protocol-v2/contracts/libs/AddressCast.sol";
import {IStargateV2} from "src/interfaces/IStargateV2.sol";

/// @title UsingLZ
/// @notice Abstract base contract providing LayerZero OFT cross-chain messaging for Router and Agent.
/// @dev Implements ILayerZeroComposer to receive incoming composed OFT messages and exposes internal
///      helpers for quoting and sending OFT transfers with compose payloads.
abstract contract UsingLZ is ILayerZeroComposer, Ownable2StepUpgradeable, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;
    using Address for address payable;
    using OptionsBuilder for bytes;
    using AddressCast for address;

    /// @notice The LayerZero OFT variant used to bridge a given token.
    enum OAppType {
        OFT,
        OFT_ADAPTER,
        STARGATE
    }

    /// @notice Associates a token with its OFT bridging contract and variant.
    struct OAppData {
        OAppType oappType;
        address oapp;
    }

    /// @custom:storage-location erc7201:hemi-earn.UsingLZ
    struct UsingLZStorage {
        bytes32 peerAddress;
        uint128 lzPeerReceiveGas;
        mapping(address token => OAppData) oapps;
    }

    // keccak256(abi.encode(uint256(keccak256("hemi-earn.UsingLZ")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant _USING_LZ_STORAGE_LOCATION =
        0xf6bd23729f03ff3c141eb19373fff9f38fac5c2170c8b70f5a4b52d404302e00;

    /// @notice The LayerZero endpoint address on this chain.
    address public immutable lzEndpoint;

    /// @notice The LayerZero endpoint ID of the peer chain.
    uint32 public immutable peerEid;

    /// @notice Emitted when the LZ executor receive gas limit is updated.
    /// @param receiveGas New gas limit for the lzReceive executor option.
    event LzReceiveGasUpdated(uint128 receiveGas);

    /// @notice Emitted when the OApp bridging contract for a token is registered or updated.
    /// @param token The token whose OApp data changed.
    /// @param oldType Previous OApp type.
    /// @param oldOapp Previous OApp address.
    /// @param newType New OApp type.
    /// @param newOapp New OApp address.
    event OAppDataUpdated(address indexed token, OAppType oldType, address oldOapp, OAppType newType, address newOapp);

    /// @notice Emitted when the peer contract address is set.
    /// @param peer The address of the peer contract on the remote chain.
    event PeerSet(address peer);

    /// @notice Thrown when the native fee provided is less than the amount required.
    /// @param provided The fee supplied by the caller.
    /// @param required The fee quoted by the OFT.
    error InsufficientFee(uint256 provided, uint256 required);

    /// @notice Thrown when a composed message arrives from an unexpected sender.
    /// @param actual The sender address extracted from the message.
    /// @param expected The registered peer address.
    error InvalidComposeSender(bytes32 actual, bytes32 expected);

    /// @notice Thrown when the OFT `from` address doesn't match the registered OApp for the token.
    error InvalidFrom(address from);

    /// @notice Thrown when the OApp for a token is misconfigured.
    error InvalidOApp(address token, address oapp);

    /// @notice Thrown when a composed message arrives from an unexpected source endpoint ID.
    /// @param srcEid The source endpoint ID extracted from the message.
    error InvalidSourceEid(uint32 srcEid);

    /// @notice Thrown when lzCompose is called by an address other than the LZ endpoint.
    error NotEndpoint(address caller);

    /// @notice Thrown when a function restricted to address(this) is called externally.
    /// @param caller The caller address.
    error NotSelf(address caller);

    /// @notice Thrown when a zero address is provided where one is not allowed.
    error NullAddress();

    /// @notice Thrown when setPeer is called after the peer has already been set.
    error PeerAlreadySet();

    /// @dev Restricts a function to calls originating from address(this) (used for try/catch patterns).
    modifier onlySelf() {
        if (msg.sender != address(this)) revert NotSelf(msg.sender);
        _;
    }

    constructor(address lzEndpoint_, uint32 peerEid_) {
        if (lzEndpoint_ == address(0)) revert NullAddress();
        lzEndpoint = lzEndpoint_;
        peerEid = peerEid_;
    }

    /// @dev Initializes ownership. Must be called from the child contract's initializer.
    function __UsingLZ_init(address owner_) internal onlyInitializing {
        __Ownable_init(owner_);
    }

    function _getUsingLZStorage() internal pure returns (UsingLZStorage storage $) {
        assembly {
            $.slot := _USING_LZ_STORAGE_LOCATION
        }
    }

    /// @notice Receives a LayerZero composed message. Called by the LZ endpoint after an OFT transfer.
    /// @dev Validates the source chain, peer address, and OApp registration before dispatching to `_receive`.
    /// @param from_ The OFT contract that delivered the tokens.
    function lzCompose(
        address from_,
        bytes32 /*guid_*/,
        bytes calldata message_,
        address /*executor_*/,
        bytes calldata /*extraData_*/
    ) external payable nonReentrant {
        if (msg.sender != lzEndpoint) revert NotEndpoint(msg.sender);

        uint32 _srcEid = OFTComposeMsgCodec.srcEid(message_);
        if (_srcEid != peerEid) revert InvalidSourceEid(_srcEid);

        UsingLZStorage storage $ = _getUsingLZStorage();

        bytes32 _sender = OFTComposeMsgCodec.composeFrom(message_);
        if (_sender != $.peerAddress) revert InvalidComposeSender(_sender, $.peerAddress);

        address _tokenIn = IOFT(from_).token();
        if ($.oapps[_tokenIn].oapp != from_) revert InvalidFrom(from_);

        uint256 _amountIn = OFTComposeMsgCodec.amountLD(message_);
        bytes memory _composeMsg = OFTComposeMsgCodec.composeMsg(message_);

        _receive(_tokenIn, _amountIn, _composeMsg, msg.value);
    }

    /// @dev Quotes the native fee for sending `amount_` of `token_` cross-chain with the given compose message.
    /// @param token_ The token to send.
    /// @param amount_ The token amount (used to calculate OFT slippage).
    /// @param msg_ The compose message payload.
    /// @param composeValue_ Native value to forward to the lzCompose executor on the remote chain.
    /// @param composeGas_ Gas limit for the lzCompose executor option on the remote chain.
    /// @return The native fee in wei.
    function _quote(
        address token_,
        uint256 amount_,
        bytes memory msg_,
        uint128 composeValue_,
        uint128 composeGas_
    ) internal view virtual returns (uint256) {
        IOFT _oapp = IOFT(oapps(token_).oapp);
        SendParam memory _sendParam = _buildSendParam(_oapp, amount_, msg_, composeValue_, composeGas_);
        return _oapp.quoteSend({_sendParam: _sendParam, _payInLzToken: false}).nativeFee;
    }

    /// @dev Sends `amount_` of `token_` cross-chain with an attached compose message.
    ///      Excess native fee beyond the quoted amount is refunded to `refundAddress_`.
    /// @param token_ The token to send.
    /// @param amount_ The token amount.
    /// @param msg_ The compose message payload.
    /// @param composeValue_ Native value to forward to the lzCompose executor on the remote chain.
    /// @param nativeFee_ Total native fee provided by the caller.
    /// @param refundAddress_ Address to receive any excess native fee.
    /// @param composeGas_ Gas limit for the lzCompose executor option on the remote chain.
    function _send(
        address token_,
        uint256 amount_,
        bytes memory msg_,
        uint128 composeValue_,
        uint256 nativeFee_,
        address refundAddress_,
        uint128 composeGas_
    ) internal virtual {
        OAppData memory _oappData = oapps(token_);
        IOFT _oapp = IOFT(_oappData.oapp);

        SendParam memory _sendParam = _buildSendParam(_oapp, amount_, msg_, composeValue_, composeGas_);
        MessagingFee memory _fee = _oapp.quoteSend({_sendParam: _sendParam, _payInLzToken: false});
        if (nativeFee_ < _fee.nativeFee) revert InsufficientFee(nativeFee_, _fee.nativeFee);

        bool _approvalRequired = _oapp.approvalRequired();

        if (_approvalRequired) IERC20(token_).forceApprove(address(_oapp), _sendParam.amountLD);

        if (_oappData.oappType == OAppType.STARGATE) {
            IStargateV2(address(_oapp)).sendToken{value: _fee.nativeFee}(_sendParam, _fee, refundAddress_);
        } else {
            _oapp.send{value: _fee.nativeFee}(_sendParam, _fee, refundAddress_);
        }

        if (_approvalRequired) IERC20(token_).forceApprove(address(_oapp), 0);

        uint256 _excessFee = nativeFee_ - _fee.nativeFee;
        if (_excessFee > 0) {
            payable(refundAddress_).sendValue(_excessFee);
        }
    }

    /// @dev Builds a LayerZero SendParam with executor options and OFT slippage derived from `quoteOFT`.
    /// @param oapp_ The OFT contract to send through.
    /// @param amount_ The requested send amount before slippage.
    /// @param composeMsg_ The compose message payload.
    /// @param composeValue_ Native value to forward to the lzCompose executor on the remote chain.
    /// @param composeGas_ Gas limit for the lzCompose executor option on the remote chain.
    /// @return _sendParam The fully populated SendParam struct.
    function _buildSendParam(
        IOFT oapp_,
        uint256 amount_,
        bytes memory composeMsg_,
        uint128 composeValue_,
        uint128 composeGas_
    ) internal view returns (SendParam memory _sendParam) {
        UsingLZStorage storage $ = _getUsingLZStorage();

        bytes memory _extraOptions = OptionsBuilder
            .newOptions()
            .addExecutorLzReceiveOption({_gas: $.lzPeerReceiveGas, _value: 0})
            .addExecutorLzComposeOption({_index: 0, _gas: composeGas_, _value: composeValue_});

        _sendParam = SendParam({
            dstEid: peerEid,
            to: $.peerAddress,
            amountLD: amount_,
            minAmountLD: 0,
            extraOptions: _extraOptions,
            composeMsg: composeMsg_,
            oftCmd: ""
        });

        (, , OFTReceipt memory _receipt) = oapp_.quoteOFT(_sendParam);
        _sendParam.amountLD = _receipt.amountSentLD;
        _sendParam.minAmountLD = _receipt.amountReceivedLD;
    }

    /// @dev Called by `lzCompose` after decoding the incoming OFT transfer. Must be implemented by subclasses.
    /// @param tokenIn_ The token received from the remote chain.
    /// @param amountIn_ The token amount received.
    /// @param msg_ The decoded compose message payload.
    /// @param ethValue_ The native value forwarded by the LZ executor.
    function _receive(address tokenIn_, uint256 amountIn_, bytes memory msg_, uint256 ethValue_) internal virtual;

    /// @notice Sets the peer contract address. Can only be called once.
    /// @param peerAddress_ The address of the peer contract on the remote chain.
    function setPeer(address peerAddress_) external onlyOwner {
        if (peerAddress_ == address(0)) revert NullAddress();

        UsingLZStorage storage $ = _getUsingLZStorage();
        if ($.peerAddress != bytes32(0x0)) revert PeerAlreadySet();
        $.peerAddress = peerAddress_.toBytes32();
        emit PeerSet(peerAddress_);
    }

    /// @notice Updates the gas limits used for the LZ executor options on outgoing messages.
    /// @param receiveGas_ Gas limit for the lzReceive executor option on the peer chain.
    function updateLzReceiveGas(uint128 receiveGas_) external onlyOwner {
        _getUsingLZStorage().lzPeerReceiveGas = receiveGas_;
        emit LzReceiveGasUpdated(receiveGas_);
    }

    /// @notice Registers or updates the OFT bridging contract for a token.
    /// @param token_ The token address on this chain.
    /// @param oappType_ The OFT variant used to bridge the token.
    /// @param oapp_ The OFT/adapter/Stargate contract address.
    function updateOappData(address token_, OAppType oappType_, address oapp_) external onlyOwner {
        if (token_ == address(0)) revert NullAddress();
        if (oapp_ == address(0)) revert NullAddress();

        UsingLZStorage storage $ = _getUsingLZStorage();
        OAppData memory _oappData = $.oapps[token_];

        if (IOFT(oapp_).token() != token_) revert InvalidOApp(token_, oapp_);
        if (oappType_ == OAppType.OFT && oapp_ != token_) revert InvalidOApp(token_, oapp_);
        if (oappType_ != OAppType.OFT && oapp_ == token_) revert InvalidOApp(token_, oapp_);

        emit OAppDataUpdated(token_, _oappData.oappType, _oappData.oapp, oappType_, oapp_);
        $.oapps[token_] = OAppData(oappType_, oapp_);
    }

    /// @notice Returns the bytes32-encoded address of the peer contract on the remote chain.
    function peerAddress() public view returns (bytes32) {
        return _getUsingLZStorage().peerAddress;
    }

    /// @notice Returns the gas limit allocated for lzReceive on the peer chain.
    function lzPeerReceiveGas() public view returns (uint128) {
        return _getUsingLZStorage().lzPeerReceiveGas;
    }

    /// @notice Returns the OApp bridging data registered for a token.
    /// @param token The token address to query.
    /// @return The corresponding OAppData struct.
    function oapps(address token) public view returns (OAppData memory) {
        return _getUsingLZStorage().oapps[token];
    }

    receive() external payable {
        payable(owner()).sendValue(msg.value);
    }
}
