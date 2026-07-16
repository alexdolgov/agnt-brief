//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../interfaces/IServiceConfigurationV3.sol";
import "./interfaces/IVaultFactory.sol";
import "../upgrades/BeaconProxyFactory.sol";
import "../Vault.sol";

import { BeaconProxy } from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";

/**
 * @title A factory that emits Vault contracts.
 * @dev Acts as a beacon contract, emitting beacon proxies and holding a reference
 * to their implementation contract.
 */
contract VaultFactory is IVaultFactory, BeaconProxyFactory {
  /**
   * @dev Constructor
   * @param serviceConfiguration Reference to the global service configuration.
   */
  constructor(address serviceConfiguration) {
    _serviceConfiguration = IServiceConfigurationV3(serviceConfiguration);
  }

  /**
   * @inheritdoc IVaultFactory
   */
  function createVault(address owner, IVaultType vaultType) public override returns (address addr) {
    require(implementation != address(0), "VaultFactory: no implementation set");
    BeaconProxy proxy = new BeaconProxy(
      address(this),
      abi.encodeWithSelector(Vault.initialize.selector, owner, vaultType, _serviceConfiguration, msg.sender)
    );
    address proxyAddr = address(proxy);
    emit VaultCreated(proxyAddr);
    return proxyAddr;
  }
}
