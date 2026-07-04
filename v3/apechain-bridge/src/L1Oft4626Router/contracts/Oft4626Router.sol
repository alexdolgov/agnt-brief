// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.22;

import {OftERC4626} from "./OftERC4626.sol";
import {IOftRouter} from "./interfaces/IOftRouter.sol";
import {IDecimalConversionRate} from "./interfaces/IDecimalConversionRate.sol";
import {MessagingFee, SendParam} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import {OptionsBuilder} from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OptionsBuilder.sol";
import {OFTComposeMsgCodec} from "@layerzerolabs/oft-evm/contracts/libs/OFTComposeMsgCodec.sol";

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

abstract contract Oft4626Router is IOftRouter, Ownable {
    using OptionsBuilder for bytes;

    mapping(uint32 => address) public dstOft4626Router;

    OftERC4626 public immutable oft4626;

    bytes1 public constant COMMAND_WITHDRAW = bytes1(keccak256(bytes("WITHDRAW")));

    uint128 public gasLzReceive = 120_000;

    modifier onlyLzEndpoint() {
        if (address(oft4626.endpoint()) != msg.sender) revert OnlyLzEndpoint();
        _;
    }

    modifier onlyOft4626(address from) {
        if (from != address(oft4626)) revert OnlyOft4626();
        _;
    }

    function setPeerOftRouter(uint32 eid, address _l2OftRouter) public onlyOwner {
        dstOft4626Router[eid] = _l2OftRouter;
    }

    function updateGasLzReceive(uint128 _gasLzReceive) public onlyOwner {
        gasLzReceive = _gasLzReceive;
    }

    function getOft4626Router(uint32 eid) public view returns (address) {
        return dstOft4626Router[eid];
    }

    function getAmountSD(uint256 _amountLD) internal view returns (uint256 amountSD) {
        uint256 rate = IDecimalConversionRate(address(oft4626)).decimalConversionRate();
        amountSD = (_amountLD / rate) * rate;
    }

    // dust in shares
    function _refundDust(uint256 dustShares, address refundAddress) internal virtual {
        if (dustShares > 0) {
            oft4626.transferShares(refundAddress, dustShares);
        }
    }

    // bridgeCall.amount in shares
    function _sendOft(DecentBridgeCall memory bridgeCall) internal returns (uint256 amountSd){
        SendParam memory sendParam = _getCallParams(bridgeCall);
        if (sendParam.amountLD == 0) revert SharesTooLow();
        MessagingFee memory messagingFee = oft4626.quoteSend(sendParam, false);
        oft4626.send{value: msg.value}(sendParam, messagingFee, bridgeCall.refundAddress);
        amountSd = sendParam.amountLD;
    }

    // function _getCallParams(DecentBridgeCall memory bridgeCall) internal view virtual returns (SendParam memory sendParam);
    function _getCallParams(DecentBridgeCall memory bridgeCall) internal view returns (SendParam memory sendParam) {
        if (oft4626.enforcedOptions(bridgeCall.dstEid, oft4626.SEND_AND_CALL()).length == 0) revert InvalidLZOptions();

        // chop off dust
        uint256 amount = getAmountSD(bridgeCall.amount);

        bytes32 receiverBytes = OFTComposeMsgCodec.addressToBytes32(getOft4626Router(bridgeCall.dstEid));
        bytes memory payload = _createOftComposeMessage(bridgeCall);

        sendParam = SendParam({
            dstEid: bridgeCall.dstEid,
            to: receiverBytes,
            amountLD: amount,
            minAmountLD: amount,
            extraOptions: "",
            composeMsg: payload,
            oftCmd: ""
        });
    }

    function _createOftComposeMessage(DecentBridgeCall memory bridgeCall)
        internal
        view
        virtual
        returns (bytes memory payload);
}
