// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { IOFT, SendParam, MessagingFee, MessagingReceipt, OFTReceipt } from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import { OptionsBuilder } from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OptionsBuilder.sol";
import { IOFTCore } from "@layerzerolabs/solidity-examples/contracts/token/oft/v1/interfaces/IOFTCore.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

using OptionsBuilder for bytes;

contract BridgeOFT {
  uint16 public dstEidV1;
  uint32 public dstEid;

  constructor(uint16 _dstEidV1, uint32 _dstEid) {
    dstEidV1 = _dstEidV1;
    dstEid = _dstEid;
  }

  function getQuoteV1(IOFTCore oft, address recipient, uint256 amountLD) external view returns (uint256) {
    bytes memory sendParams = mkSendParamsV1(recipient);
    (uint nativeFee, ) = oft.estimateSendFee(dstEidV1, abi.encode(uint256(uint160(recipient))), amountLD, false, sendParams);
    return nativeFee;
  }

  function sendFrom(IOFTCore oft, address recipient, uint256 amountLD, address payable refund, bool includeParams) external payable {
    IERC20 token = IERC20(oft.token());

    token.transferFrom(msg.sender, address(this), amountLD);
    token.approve(address(oft), amountLD);

    bytes memory sendParams = includeParams ? mkSendParamsV1(recipient) : new bytes(0);
    oft.sendFrom{value: msg.value}(address(this), dstEidV1, abi.encode(recipient), amountLD, payable(refund), address(0), sendParams);

    token.approve(address(oft), 0);
  }

  function mkSendParamsV1(address recipient) public pure returns (bytes memory) {
    uint16 VERSION = 2;
    uint256 GAS_LIMIT = 200000;
    uint256 AMOUNT = 0;
    return abi.encodePacked(VERSION, GAS_LIMIT, AMOUNT, recipient);
  }

  function getQuote(IOFT oft, address recipient, uint256 amountLD) external view returns (uint256) {
    SendParam memory params = mkSendParam(recipient, amountLD);
    MessagingFee memory fee = oft.quoteSend(params, false);
    return fee.nativeFee;
  }

  function send(IOFT oft, address recipient, uint256 amountLD, address payable refund) external payable returns (MessagingReceipt memory, OFTReceipt memory) {
    IERC20 token = IERC20(oft.token());

    token.transferFrom(msg.sender, address(this), amountLD);
    token.approve(address(oft), amountLD);

    SendParam memory params = mkSendParam(recipient, amountLD);
    (MessagingReceipt memory msgReceipt, OFTReceipt memory oftReceipt) = oft.send{value: msg.value}(params, MessagingFee(msg.value, 0), refund);
    
    token.approve(address(oft), 0);
    return (msgReceipt, oftReceipt);
  }

  function mkSendParam(address recipient, uint256 amountLD) public view returns (SendParam memory) {
    bytes memory options = OptionsBuilder.newOptions().addExecutorLzReceiveOption(65000, 0);
    SendParam memory params = SendParam(dstEid, bytes32(uint256(uint160(recipient))), amountLD, amountLD, options, new bytes(0), new bytes(0));
    return params;
  }
}
