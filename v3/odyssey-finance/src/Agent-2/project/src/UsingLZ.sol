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

abstract contract UsingLZ is ILayerZeroComposer, Ownable2StepUpgradeable, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;
    using Address for address payable;
    using OptionsBuilder for bytes;
    using AddressCast for address;

    enum OAppType {
        OFT,
        OFT_ADAPTER,
        STARGATE
    }

    struct OAppData {
        OAppType oappType;
        address oapp;
    }

    /// @custom:storage-location erc7201:hemi-earn.UsingLZ
    struct UsingLZStorage {
        bytes32 peerAddress;
        uint128 lzPeerReceiveGas;
        uint128 lzPeerComposeGas;
        mapping(address token => OAppData) oapps;
    }

    // keccak256(abi.encode(uint256(keccak256("hemi-earn.UsingLZ")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant _USING_LZ_STORAGE_LOCATION =
        0xf6bd23729f03ff3c141eb19373fff9f38fac5c2170c8b70f5a4b52d404302e00;

    address public immutable lzEndpoint;
    uint32 public immutable peerEid;

    event LzGasLimitsUpdated(uint128 receiveGas, uint128 composeGas);
    event OAppDataUpdated(address indexed token, OAppType oldType, address oldOapp, OAppType newType, address newOapp);
    event PeerSet(bytes32 peer);

    error NullAddress();
    error InvalidFrom(address from);
    error InvalidComposeSender(bytes32 actual, bytes32 expected);
    error InvalidSourceEid(uint32 srcEid);
    error NotEndpoint(address caller);
    error InsufficientFee(uint256 provided, uint256 required);
    error InvalidOApp(address token, address oapp);
    error PeerAlreadySet(bytes32 current);

    constructor(address lzEndpoint_, uint32 peerEid_) {
        if (lzEndpoint_ == address(0)) revert NullAddress();
        lzEndpoint = lzEndpoint_;
        peerEid = peerEid_;
    }

    function __UsingLZ_init(address owner_) internal onlyInitializing {
        __Ownable_init(owner_);
    }

    function _getUsingLZStorage() internal pure returns (UsingLZStorage storage $) {
        assembly {
            $.slot := _USING_LZ_STORAGE_LOCATION
        }
    }

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

    function _quote(
        address token_,
        uint256 amount_,
        bytes memory msg_,
        uint128 composeValue_
    ) internal view virtual returns (uint256) {
        IOFT _oapp = IOFT(oapps(token_).oapp);
        SendParam memory _sendParam = _buildSendParam(_oapp, amount_, msg_, composeValue_);
        return _oapp.quoteSend({_sendParam: _sendParam, _payInLzToken: false}).nativeFee;
    }

    function _send(
        address token_,
        uint256 amount_,
        bytes memory msg_,
        uint128 composeValue_,
        uint256 nativeFee_,
        address refundAddress_
    ) internal virtual {
        UsingLZStorage storage $ = _getUsingLZStorage();
        OAppData memory _oappData = $.oapps[token_];
        IOFT _oapp = IOFT(_oappData.oapp);

        SendParam memory _sendParam = _buildSendParam(_oapp, amount_, msg_, composeValue_);
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

    function _buildSendParam(
        IOFT oapp_,
        uint256 amount_,
        bytes memory composeMsg_,
        uint128 composeValue_
    ) internal view returns (SendParam memory _sendParam) {
        UsingLZStorage storage $ = _getUsingLZStorage();

        bytes memory _extraOptions = OptionsBuilder
            .newOptions()
            .addExecutorLzReceiveOption({_gas: $.lzPeerReceiveGas, _value: 0})
            .addExecutorLzComposeOption({_index: 0, _gas: $.lzPeerComposeGas, _value: composeValue_});

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

    function _receive(address tokenIn_, uint256 amountIn_, bytes memory msg_, uint256 ethValue_) internal virtual;

    function updateLzGasLimits(uint128 receiveGas_, uint128 composeGas_) external onlyOwner {
        UsingLZStorage storage $ = _getUsingLZStorage();
        $.lzPeerReceiveGas = receiveGas_;
        $.lzPeerComposeGas = composeGas_;
        emit LzGasLimitsUpdated(receiveGas_, composeGas_);
    }

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

    function peerAddress() public view returns (bytes32) {
        return _getUsingLZStorage().peerAddress;
    }

    function lzPeerReceiveGas() public view returns (uint128) {
        return _getUsingLZStorage().lzPeerReceiveGas;
    }

    function lzPeerComposeGas() public view returns (uint128) {
        return _getUsingLZStorage().lzPeerComposeGas;
    }

    function oapps(address token) public view returns (OAppData memory) {
        return _getUsingLZStorage().oapps[token];
    }

    function setPeer(address peerAddress_) external onlyOwner {
        UsingLZStorage storage $ = _getUsingLZStorage();
        if ($.peerAddress != bytes32(0x0)) revert PeerAlreadySet($.peerAddress);
        $.peerAddress = peerAddress_.toBytes32();
        emit PeerSet($.peerAddress);
    }

    receive() external payable {
        payable(owner()).sendValue(msg.value);
    }
}
