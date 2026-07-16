// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import { ERC7201Utils } from '@mito-mainnet/lib/ERC7201Utils.sol';
import { StdError } from '@mito-mainnet/lib/StdError.sol';

import { IERC20Metadata } from '@oz/interfaces/IERC20Metadata.sol';
import { EnumerableSet } from '@oz/utils/structs/EnumerableSet.sol';

import { ExtensibleVaultWithExtraData } from './ExtensibleVaultWithExtraData.sol';

contract ExtensibleVaultTemp is ExtensibleVaultWithExtraData {
  using ERC7201Utils for string;
  using EnumerableSet for EnumerableSet.AddressSet;

  //==============================================================================//
  //=========================== NOTE: TEMPORARY STORAGE =========================//

  struct TempDepositRestrictionStorage {
    EnumerableSet.AddressSet allowedAccounts;
  }

  function _getTempDepositRestrictionStorage()
    private
    pure
    returns (TempDepositRestrictionStorage storage $)
  {
    bytes32 slot = string('mitosis.temp.storage.restriction').storageSlot();
    // slither-disable-next-line assembly
    assembly {
      $.slot := slot
    }
  }

  //==============================================================================//

  constructor() ExtensibleVaultWithExtraData() { }

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

  function setAllowedAccounts(address[] calldata accounts, bool allowed)
    public
    onlyRole(DEFAULT_ADMIN_ROLE)
  {
    TempDepositRestrictionStorage storage $ = _getTempDepositRestrictionStorage();
    for (uint256 i = 0; i < accounts.length; i++) {
      bool has = $.allowedAccounts.contains(accounts[i]);

      // allowed, but not in the set -> add
      if (allowed && !has) $.allowedAccounts.add(accounts[i]);
      // not allowed, but in the set -> remove
      else if (!allowed && has) $.allowedAccounts.remove(accounts[i]);
    }
  }

  function isAllowedAccount(address account) public view returns (bool) {
    TempDepositRestrictionStorage storage $ = _getTempDepositRestrictionStorage();
    return $.allowedAccounts.contains(account);
  }

  function getAllowedAccounts() public view returns (address[] memory) {
    TempDepositRestrictionStorage storage $ = _getTempDepositRestrictionStorage();
    return $.allowedAccounts.values();
  }

  function deposit(uint256 assets, address receiver) public override returns (uint256 shares) {
    TempDepositRestrictionStorage storage $ = _getTempDepositRestrictionStorage();
    require($.allowedAccounts.contains(receiver), StdError.Unauthorized());
    return super.deposit(assets, receiver);
  }

  function depositWithExtraData(uint256 assets, address receiver, bytes calldata extraData)
    public
    override
    returns (uint256 shares)
  {
    TempDepositRestrictionStorage storage $ = _getTempDepositRestrictionStorage();
    require($.allowedAccounts.contains(receiver), StdError.Unauthorized());
    return super.depositWithExtraData(assets, receiver, extraData);
  }

  function mint(uint256 shares, address receiver) public override returns (uint256 assets) {
    TempDepositRestrictionStorage storage $ = _getTempDepositRestrictionStorage();
    require($.allowedAccounts.contains(receiver), StdError.Unauthorized());
    return super.mint(shares, receiver);
  }

  function mintWithExtraData(uint256 shares, address receiver, bytes calldata extraData)
    public
    override
    returns (uint256 assets)
  {
    TempDepositRestrictionStorage storage $ = _getTempDepositRestrictionStorage();
    require($.allowedAccounts.contains(receiver), StdError.Unauthorized());
    return super.mintWithExtraData(shares, receiver, extraData);
  }
}
