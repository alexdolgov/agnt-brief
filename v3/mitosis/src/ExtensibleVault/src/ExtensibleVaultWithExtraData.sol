// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

import { IERC20Metadata } from '@oz/interfaces/IERC20Metadata.sol';

import { ExtensibleVault } from './ExtensibleVault.sol';
import { IExtensibleVault } from './interfaces/IExtensibleVault.sol';

contract ExtensibleVaultWithExtraData is ExtensibleVault {
  event DepositWithExtraData(
    address indexed sender, address indexed owner, uint256 assets, uint256 shares, bytes extraData
  );

  constructor() ExtensibleVault() { }

  function initialize(
    address admin,
    address liquidityManager_,
    address operator_,
    address redeemQueue_,
    IERC20Metadata asset_,
    string memory name_,
    string memory symbol_,
    uint256 cap_
  ) public override initializer {
    super.initialize(
      admin, liquidityManager_, operator_, redeemQueue_, asset_, name_, symbol_, cap_
    );
  }

  function depositWithExtraData(uint256 assets, address receiver, bytes calldata extraData)
    public
    virtual
    returns (uint256 shares)
  {
    shares = deposit(assets, receiver);
    emit DepositWithExtraData(_msgSender(), receiver, assets, shares, extraData);
  }

  function mintWithExtraData(uint256 shares, address receiver, bytes calldata extraData)
    public
    virtual
    returns (uint256 assets)
  {
    assets = mint(shares, receiver);
    emit DepositWithExtraData(_msgSender(), receiver, assets, shares, extraData);
  }
}
