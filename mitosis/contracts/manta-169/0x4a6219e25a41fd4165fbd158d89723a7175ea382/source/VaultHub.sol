// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

import {Address} from '@oz/utils/Address.sol';
import {Ownable2StepUpgradeable} from '@ozu/access/Ownable2StepUpgradeable.sol';

import {Error} from '@src/lib/Error.sol';
import {LibVaultType} from '@src/lib/VaultType.sol';
import {IBasicVaultFactory} from '@src/interfaces/vault/IBasicVaultFactory.sol';
import {VaultType, IVault} from '@src/interfaces/vault/IVault.sol';
import {IVaultFactory} from '@src/interfaces/vault/IVaultFactory.sol';

import {VaultHubStorageV1} from '@src/vault/storage/VaultHubStorageV1.sol';

contract VaultHub is Ownable2StepUpgradeable, VaultHubStorageV1 {
  using LibVaultType for VaultType;

  event FactorySet(VaultType vaultType, address factory);
  event FactoryDeleted(VaultType vaultType);

  constructor() initializer {}

  function initialize(address owner) public initializer {
    __Ownable_init();
    _transferOwnership(owner);
  }

  // Modifiers

  modifier checkVaultType(VaultType vaultType) {
    if (!vaultType.includes()) revert Error.InvalidVaultType(uint8(vaultType));

    _;
  }

  // View Functions

  function factory(VaultType vaultType) public view checkVaultType(vaultType) returns (IVaultFactory) {
    return IVaultFactory(_getStorageV1().factories[vaultType]);
  }

  function isVault(address vault) public view returns (bool) {
    VaultType[] memory types = LibVaultType.list();

    for (uint256 i; i < types.length; ) {
      if (factory(types[i]).isVault(vault)) return true;
      unchecked {
        i += 1;
      }
    }
    return false;
  }

  function isVault(VaultType vaultType, address vault) public view checkVaultType(vaultType) returns (bool) {
    return factory(vaultType).isVault(vault);
  }

  // Mutative Functions

  function setFactory(VaultType vaultType, address factory_) external onlyOwner {
    _setFactory(vaultType, factory_);
  }

  function delFactory(VaultType vaultType) external onlyOwner {
    _delFactory(vaultType);
  }

  function createBasicVault(
    address asset,
    string memory name,
    string memory symbol
  ) external onlyOwner returns (address) {
    IBasicVaultFactory factory_ = IBasicVaultFactory(address(factory(VaultType.Basic)));
    return factory_.createVault(asset, name, symbol);
  }

  // You can add more functions to create other types of vaults
  // function createRebaseVault() {}

  // Internal Functions

  function _setFactory(VaultType vaultType, address factory_) internal checkVaultType(vaultType) {
    if (!Address.isContract(factory_)) revert Error.InvalidAddress(vaultType.toString('factory'));

    StorageV1 storage $ = _getStorageV1();

    $.factories[vaultType] = factory_;

    emit FactorySet(vaultType, factory_);
  }

  function _delFactory(VaultType vaultType) internal checkVaultType(vaultType) {
    StorageV1 storage $ = _getStorageV1();

    delete $.factories[vaultType];

    emit FactoryDeleted(vaultType);
  }
}
