// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {IMessageRecipient} from '@hpl/interfaces/IMessageRecipient.sol';
import {MailboxClient} from '@hpl/client/MailboxClient.sol';

import {Address} from '@oz/utils/Address.sol';
import {OwnableUpgradeable} from '@ozu/access/OwnableUpgradeable.sol';
import {Ownable2StepUpgradeable} from '@ozu/access/Ownable2StepUpgradeable.sol';

import {Conv} from '@src/lib/Conv.sol';
import {Error} from '@src/lib/Error.sol';
import {MsgDeposit, MsgRefund, MsgBridge, Message} from '@src/helpers/ccdm/Message.sol';
import {ISudoVault} from '@src/interfaces/vault/IVault.sol';
import {IATM} from '@src/interfaces/IATM.sol';

import {CCDMClientStorageV1} from '@src/helpers/ccdm/CCDMClientStorageV1.sol';

/// @title Client contract of Cross Chain Deposit Manager
/// @author Eddy <hong@manythings.xyz>
contract CCDMClient is IMessageRecipient, MailboxClient, Ownable2StepUpgradeable, CCDMClientStorageV1 {
  using Conv for address;
  using Conv for bytes32;
  using Message for MsgBridge;
  using Message for MsgDeposit;
  using Message for MsgRefund;
  using Message for bytes;

  event Adjusted(address indexed executor, bytes32 indexed l1Asset, address indexed l2Asset, uint256 resolved);
  event DepositSuccess(address indexed receiver, bytes32 indexed l1Asset, address indexed l2Asset, uint256 amount);
  event DepositFailure(address indexed refundTo, bytes32 indexed l1Asset, address indexed l2Asset, uint256 amount);
  event DispatchRefund(address indexed refundTo, bytes32 indexed l1Asset, uint256 amount);

  event ATMSet(IATM atm);
  event CCDMHostSet(uint32 domain, bytes32 addr);
  event VaultConnected(
    ISudoVault indexed vault,
    bytes32 indexed l1Asset,
    address indexed l2Asset,
    CCDMClientStorageV1.Threshold threshold
  );
  event VaultThresholdSet(ISudoVault indexed vault, CCDMClientStorageV1.Threshold threshold);
  event VaultDisconnected(ISudoVault indexed vault);

  constructor(address mailbox) MailboxClient(mailbox) initializer {}

  //=========== merge OwnableUpgradeable & Ownable2StepUpgradeable

  function transferOwnership(address owner) public override(Ownable2StepUpgradeable, OwnableUpgradeable) {
    Ownable2StepUpgradeable.transferOwnership(owner);
  }

  function _transferOwnership(address owner) internal override(Ownable2StepUpgradeable, OwnableUpgradeable) {
    Ownable2StepUpgradeable._transferOwnership(owner);
  }

  //===========

  function initialize(
    address owner,
    address hook,
    address ism,
    CCDMClientStorageV1.ExtAddr memory ccdmHost_,
    IATM atm_
  ) public initializer {
    _MailboxClient_initialize(hook, ism, owner);
    __Ownable2Step_init();
    _transferOwnership(owner);

    _setCCDMHost(ccdmHost_);
    _setATM(atm_);
  }

  receive() external payable {}

  // Query Functions

  function atm() external view returns (IATM) {
    return _getStorageV1().atm;
  }

  function ccdmHost() external view returns (CCDMClientStorageV1.ExtAddr memory) {
    return _getStorageV1().ccdmHost;
  }

  function vaultInfo(address vault_) external view returns (CCDMClientStorageV1.VaultInfo memory) {
    StorageV1 storage $ = _getStorageV1();
    return $.vaults[$.vaultIdxByAddr[vault_]];
  }

  function vaultInfoByL1Asset(bytes32 l1Asset) external view returns (CCDMClientStorageV1.VaultInfo memory) {
    StorageV1 storage $ = _getStorageV1();
    return $.vaults[$.vaultIdxByL1Asset[l1Asset]];
  }

  function vaultInfoByL2Asset(address l2Asset) external view returns (CCDMClientStorageV1.VaultInfo memory) {
    StorageV1 storage $ = _getStorageV1();
    return $.vaults[$.vaultIdxByL2Asset[l2Asset]];
  }

  struct PreviewAdjustElem {
    address vault;
    uint256 resolved;
    uint256 fee;
  }

  function previewAdjust() external view returns (PreviewAdjustElem[] memory, uint256) {
    StorageV1 storage $ = _getStorageV1();

    CCDMClientStorageV1.ExtAddr storage ccdmHost_ = $.ccdmHost;
    PreviewAdjustElem[] memory arr = new PreviewAdjustElem[]($.vaults.length);
    uint256 totalFee = 0;

    for (uint256 i = 0; i < $.vaults.length; i++) {
      // check unresolved amount & connection status
      CCDMClientStorageV1.VaultInfo storage info = $.vaults[i];
      if (info.unresolved == 0 || !info.connected) continue;

      // check threshold
      uint256 totalSupply = info.vault.totalSupply();
      if (checkThreshold(info.unresolved, totalSupply, info.threshold)) continue;

      MsgBridge memory bridgeMsg = MsgBridge({
        receiver: address(info.vault).toBytes32(),
        token: info.l1Asset,
        amount: info.unresolved
      });

      uint256 fee = _quoteDispatch(ccdmHost_.domain, ccdmHost_.addr, bridgeMsg.encode());

      arr[i] = PreviewAdjustElem({vault: address(info.vault), resolved: info.unresolved, fee: fee});
      totalFee += fee;
    }

    return (arr, totalFee);
  }

  // Mutative functions

  function adjust() external payable {
    StorageV1 storage $ = _getStorageV1();

    CCDMClientStorageV1.ExtAddr storage ccdmHost_ = $.ccdmHost;

    uint256 totalFee = 0;

    for (uint256 i = 0; i < $.vaults.length; i++) {
      // check unresolved amount & connection status
      CCDMClientStorageV1.VaultInfo storage info = $.vaults[i];
      if (info.unresolved == 0 || !info.connected) continue;

      // check threshold
      uint256 totalSupply = info.vault.totalSupply();
      if (checkThreshold(info.unresolved, totalSupply, info.threshold)) continue;

      uint256 unresolved = info.unresolved;
      info.unresolved = 0;

      MsgBridge memory bridgeMsg = MsgBridge({
        receiver: address(info.vault).toBytes32(),
        token: info.l1Asset,
        amount: unresolved
      });

      bytes memory enc = bridgeMsg.encode();

      emit Adjusted(_msgSender(), info.l1Asset, info.l2Asset, unresolved);

      uint256 fee = _quoteDispatch(ccdmHost_.domain, ccdmHost_.addr, enc);
      _dispatch(ccdmHost_.domain, ccdmHost_.addr, fee, enc);

      totalFee += fee;
    }

    uint256 refund = msg.value - totalFee;
    if (refund > 0) {
      (bool ok, bytes memory ret) = _msgSender().call{value: refund}('');
      if (!ok) {
        revert Error.EthTransferFailed(refund, ret);
      }
    }
  }

  function handle(uint32 origin, bytes32 sender, bytes calldata message) external payable onlyMailbox {
    CCDMClientStorageV1.ExtAddr memory ccdmHost_ = _getStorageV1().ccdmHost;

    if (origin != ccdmHost_.domain || sender != ccdmHost_.addr) {
      revert Error.Unauthorized();
    }
    _handle(origin, sender, message);
  }

  function connectVault(
    ISudoVault vault,
    bytes32 l1Asset,
    address l2Asset,
    CCDMClientStorageV1.Threshold memory threshold
  ) external onlyOwner {
    if (!Address.isContract(address(vault))) revert Error.InvalidAddress('vault');
    if (threshold.ratio > 1 ether) revert Error.InvalidThreshold('ratio');

    StorageV1 storage $ = _getStorageV1();

    uint256 index = $.vaults.length;

    CCDMClientStorageV1.VaultInfo memory info = CCDMClientStorageV1.VaultInfo({
      l1Asset: l1Asset,
      l2Asset: l2Asset,
      unresolved: 0,
      vault: vault,
      threshold: threshold,
      connected: true
    });

    $.vaults.push(info);
    $.vaultIdxByAddr[address(info.vault)] = index;
    $.vaultIdxByL1Asset[info.l1Asset] = index;
    $.vaultIdxByL2Asset[info.l2Asset] = index;

    emit VaultConnected(info.vault, info.l1Asset, info.l2Asset, info.threshold);
  }

  function configureVaultThreshold(
    ISudoVault vault,
    CCDMClientStorageV1.Threshold memory threshold
  ) external onlyOwner {
    if (threshold.ratio > 1 ether) revert Error.InvalidThreshold('ratio');

    StorageV1 storage $ = _getStorageV1();

    uint256 index = $.vaultIdxByAddr[address(vault)];
    $.vaults[index].threshold = threshold;

    emit VaultThresholdSet(vault, threshold);
  }

  function disconnectVault(ISudoVault vault) external onlyOwner {
    StorageV1 storage $ = _getStorageV1();

    uint256 index = $.vaultIdxByAddr[address(vault)];
    CCDMClientStorageV1.VaultInfo memory vaultInfo_ = $.vaults[index];

    if (index == 0 && address(vaultInfo_.vault) != address(vault)) {
      revert Error.InvalidAddress('vault');
    }
    if (!vaultInfo_.connected) {
      revert Error.VaultAlreadyDisconnected(address(vault));
    }

    $.vaults[index].connected = false;
    delete $.vaultIdxByAddr[address(vault)];
    delete $.vaultIdxByL1Asset[vaultInfo_.l1Asset];
    delete $.vaultIdxByL2Asset[vaultInfo_.l2Asset];

    emit VaultDisconnected(vaultInfo_.vault);
  }

  function setATM(IATM atm_) external onlyOwner {
    _setATM(atm_);
  }

  function setCCDMHost(CCDMClientStorageV1.ExtAddr memory ccdmHost_) external onlyOwner {
    _setCCDMHost(ccdmHost_);
  }

  // Internal functions

  function checkThreshold(
    uint256 unresolved,
    uint256 totalSupply,
    CCDMClientStorageV1.Threshold memory threshold
  ) internal pure returns (bool) {
    return (unresolved < threshold.amount) && (unresolved < ((totalSupply * threshold.ratio) / 1e18));
  }

  function _handle(uint32, bytes32, bytes calldata rawMsg) internal {
    MsgDeposit memory msg_ = rawMsg.decodeDeposit();

    StorageV1 storage $ = _getStorageV1();

    CCDMClientStorageV1.VaultInfo storage info = $.vaults[$.vaultIdxByL1Asset[msg_.token]];

    try info.vault.manualDeposit(msg_.amount, msg_.receiver.toAddress()) returns (uint256 spent) {
      if (spent < msg_.amount) {
        unchecked {
          _processRefund($, msg_.refundTo, msg_.token, msg_.amount - spent);
        }
      }
      _processSpent($, msg_.receiver, msg_.token, spent);
      emit DepositSuccess(msg_.receiver.toAddress(), info.l1Asset, info.l2Asset, spent);
    } catch {
      _processRefund($, msg_.refundTo, msg_.token, msg_.amount);
      emit DepositFailure(msg_.refundTo.toAddress(), info.l1Asset, info.l2Asset, msg_.amount);
    }
  }

  function _processSpent(StorageV1 storage $, bytes32, bytes32 token, uint256 amount) internal {
    $.vaults[$.vaultIdxByL1Asset[token]].unresolved += amount;
  }

  function _processRefund(StorageV1 storage $, bytes32 receiver, bytes32 token, uint256 amount) internal {
    bytes memory enc = MsgRefund({receiver: receiver, token: token, amount: amount}).encode();

    uint256 fee = _quoteDispatch($.ccdmHost.domain, $.ccdmHost.addr, enc);

    $.atm.borrow(fee);

    _dispatch($.ccdmHost.domain, $.ccdmHost.addr, fee, enc);

    emit DispatchRefund(receiver.toAddress(), token, amount);
  }

  function _setATM(IATM atm_) internal {
    if (!Address.isContract(address(atm_))) revert Error.InvalidAddress('atm');
    _getStorageV1().atm = atm_;

    emit ATMSet(atm_);
  }

  function _setCCDMHost(CCDMClientStorageV1.ExtAddr memory ccdmHost_) internal {
    _getStorageV1().ccdmHost = ccdmHost_;

    emit CCDMHostSet(ccdmHost_.domain, ccdmHost_.addr);
  }
}
