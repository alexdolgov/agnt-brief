// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {Router} from '@hpl/client/Router.sol';
import {IMessageRecipient} from '@hpl/interfaces/IMessageRecipient.sol';
import {EnumerableMapExtended} from '@hpl/libs/EnumerableMapExtended.sol';

import {Address} from '@oz/utils/Address.sol';
import {IERC20} from '@oz/token/ERC20/IERC20.sol';
import {IERC20Permit} from '@oz/token/ERC20/extensions/IERC20Permit.sol';
import {SafeERC20} from '@oz/token/ERC20/utils/SafeERC20.sol';
import {OwnableUpgradeable} from '@ozu/access/OwnableUpgradeable.sol';
import {Ownable2StepUpgradeable} from '@ozu/access/Ownable2StepUpgradeable.sol';

import {Conv} from '@src/lib/Conv.sol';
import {Error} from '@src/lib/Error.sol';
import {LibPermit} from '@src/lib/Permit.sol';
import {ICCDMHost} from '@src/interfaces/ICCDMHost.sol';
import {IBridgeAdapter} from '@src/interfaces/bridge/IBridgeAdapter.sol';
import {MsgDeposit, MsgRefund, MsgBridge, MsgType, Message} from '@src/helpers/ccdm/Message.sol';

import {CCDMHostStorageV1} from '@src/helpers/ccdm/CCDMHostStorageV1.sol';

/// @title Host contract of Cross Chain Deposit Manager
/// @author Eddy <hong@manythings.xyz>
contract CCDMHost is ICCDMHost, IMessageRecipient, Router, Ownable2StepUpgradeable, CCDMHostStorageV1 {
  using Conv for address;
  using Conv for bytes32;
  using LibPermit for bytes;
  using LibPermit for IERC20Permit;
  using SafeERC20 for IERC20;
  using SafeERC20 for IERC20Permit;
  using Message for bytes;
  using Message for MsgDeposit;
  using EnumerableMapExtended for EnumerableMapExtended.UintToBytes32Map;

  event DispatchDeposit(uint32 indexed domain, address indexed receiver, address indexed token, uint256 amount);
  event RefundSuccess(address indexed receiver, address indexed token, uint256 amount);
  event ExecuteBridge(uint32 indexed domain, address indexed l1Asset, bytes32 indexed l2Asset, uint256 amount);

  event BridgeSet(uint32 indexed domain, IBridgeAdapter indexed bridgeAdapter);
  event BridgeAssetMapped(uint32 indexed domain, address indexed l1Asset, bytes32 indexed l2Asset);
  event FeeInfoSet(address indexed receiver, uint256 gas, uint256 adjustment);

  address public constant ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

  constructor(address mailbox) Router(mailbox) initializer {}

  function initialize(address owner, address hook, address ism) public initializer {
    _MailboxClient_initialize(hook, ism, owner);
    __Ownable2Step_init();
    _transferOwnership(owner);
  }

  // Modifiers

  modifier nonZero(uint256 amount) {
    if (amount <= 0) {
      revert Error.ZeroAmount();
    }
    _;
  }

  //=========== merge OwnableUpgradeable & Ownable2StepUpgradeable

  function transferOwnership(address owner) public override(Ownable2StepUpgradeable, OwnableUpgradeable) {
    Ownable2StepUpgradeable.transferOwnership(owner);
  }

  function _transferOwnership(address owner) internal override(Ownable2StepUpgradeable, OwnableUpgradeable) {
    Ownable2StepUpgradeable._transferOwnership(owner);
  }

  //===========

  // Query Functions

  function bridgeOf(uint32 domain) external view returns (IBridgeAdapter) {
    return _getStorageV1().bridges[domain];
  }

  function assetL1L2Map(uint32 domain, address l1Asset) external view returns (bytes32) {
    return _getStorageV1().assetL1L2Map[domain][l1Asset];
  }

  function feeInfo() external view returns (CCDMHostStorageV1.FeeInfo memory) {
    return _getStorageV1().fee;
  }

  function previewDeposit(
    uint32 domain,
    address token,
    address receiver,
    address refundTo,
    uint256 amount,
    uint256 baseFee
  ) public view nonZero(amount) returns (uint256) {
    StorageV1 storage $ = _getStorageV1();

    bytes memory enc = MsgDeposit(receiver.toBytes32(), refundTo.toBytes32(), token.toBytes32(), amount).encode();

    uint256 hplFee = _quoteDispatch(domain, enc);
    uint256 userFee = _calcFee($.fee.gas, $.fee.adjustment, baseFee);

    return hplFee + userFee;
  }

  // Mutative Functions

  function deposit(
    uint32 domain,
    address token,
    address receiver,
    address refundTo,
    uint256 amount
  ) external payable nonZero(amount) {
    _deposit(domain, token, receiver, refundTo, amount);
  }

  function deposit(
    uint32 domain,
    address token,
    address receiver,
    address refundTo,
    uint256 amount,
    bytes calldata permitData
  ) external payable nonZero(amount) {
    (uint256 deadline, uint8 v, bytes32 r, bytes32 s) = permitData.decodeData();

    // to avoid stack too deep error
    IERC20Permit erc20Permit = IERC20Permit(token);

    erc20Permit.trustlessPermit(_msgSender(), address(this), amount, deadline, v, r, s);

    _deposit(domain, token, receiver, refundTo, amount);
  }

  // Owner Functions

  function setBridge(uint32 domain, IBridgeAdapter adapter) external onlyOwner {
    if (!Address.isContract(address(adapter))) revert Error.InvalidAddress('adapter');

    _getStorageV1().bridges[domain] = adapter;

    emit BridgeSet(domain, adapter);
  }

  function mapBridgeAsset(uint32 domain, address l1Asset, bytes32 l2Asset) external onlyOwner {
    if (l1Asset != ETH && !Address.isContract(l1Asset)) revert Error.InvalidAddress('l1Asset');

    _getStorageV1().assetL1L2Map[domain][l1Asset] = l2Asset;

    emit BridgeAssetMapped(domain, l1Asset, l2Asset);
  }

  function setFee(address receiver, uint256 gas, uint256 adjustment) external onlyOwner {
    if (!Address.isContract(receiver)) revert Error.InvalidAddress('receiver');

    _getStorageV1().fee = FeeInfo(receiver, gas, adjustment);

    emit FeeInfoSet(receiver, gas, adjustment);
  }

  // Internal functions

  function _calcFee(uint256 gas, uint256 adjustment, uint256 baseFee) internal view returns (uint256) {
    return gas > 0 ? ((baseFee == 0 ? block.basefee : baseFee) * gas * adjustment) / 1e18 : 0;
  }

  /// @dev emits MsgDeposit to CCDM Client
  function _deposit(uint32 domain, address token, address receiver, address refundTo, uint256 amount) internal {
    StorageV1 storage $ = _getStorageV1();

    if ($.assetL1L2Map[domain][token] == bytes32(0)) {
      revert Error.AssetNotSupportedForCrossChainDeposit(domain, token);
    }
    if (!$.bridges[domain].isOperational()) {
      revert Error.BridgeNotOperational(domain);
    }

    bytes memory enc = MsgDeposit({
      receiver: receiver.toBytes32(),
      refundTo: refundTo.toBytes32(),
      token: token.toBytes32(),
      amount: amount
    }).encode();

    uint256 hplFee = _quoteDispatch(domain, enc);
    uint256 userFee = _calcFee($.fee.gas, $.fee.adjustment, block.basefee);
    if (msg.value < hplFee + userFee) {
      revert Error.InsufficientFee((hplFee + userFee) - msg.value);
    }

    if (userFee > 0) {
      (bool ok, bytes memory ret) = payable($.fee.receiver).call{value: userFee}('');
      if (!ok) {
        revert Error.EthTransferFailed(userFee, ret);
      }
    }

    _dispatch(domain, hplFee, enc);

    unchecked {
      uint256 refund = msg.value - hplFee - userFee;

      if (refund > 0) {
        (bool ok, bytes memory ret) = payable(_msgSender()).call{value: refund}('');
        if (!ok) {
          revert Error.EthTransferFailed(refund, ret);
        }
      }
    }

    IERC20(token).safeTransferFrom(_msgSender(), address(this), amount);
    emit DispatchDeposit(domain, receiver, token, amount);
  }

  /// @dev must receives MsgRefund, MsgBridge
  function _handle(uint32 origin, bytes32, bytes calldata rawMsg) internal override {
    MsgType msgType = rawMsg.msgType();

    if (msgType == MsgType.Deposit) {
      revert Error.InvalidMsgType(uint8(msgType));
    }

    if (msgType == MsgType.Refund) {
      MsgRefund memory msgRefund = rawMsg.decodeRefund();

      IERC20(msgRefund.token.toAddress()).safeTransfer(msgRefund.receiver.toAddress(), msgRefund.amount);
      emit RefundSuccess(msgRefund.receiver.toAddress(), msgRefund.token.toAddress(), msgRefund.amount);
      return;
    }

    if (msgType == MsgType.Bridge) {
      MsgBridge memory msgBridge = rawMsg.decodeBridge();

      StorageV1 storage $ = _getStorageV1();

      address l1Asset = msgBridge.token.toAddress();
      bytes32 l2Asset = $.assetL1L2Map[origin][l1Asset];

      IBridgeAdapter bridge = $.bridges[origin];

      IERC20(l1Asset).forceApprove(address(bridge), msgBridge.amount);

      bridge.bridgeAsset(msgBridge.receiver.toAddress(), l1Asset, l2Asset, msgBridge.amount);

      emit ExecuteBridge(origin, l1Asset, l2Asset, msgBridge.amount);
      return;
    }
  }
}
