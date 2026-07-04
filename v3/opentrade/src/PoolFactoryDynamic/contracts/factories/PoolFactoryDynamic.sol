//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../PoolDynamic.sol";
import "../interfaces/IServiceConfigurationV5.sol";
import "./interfaces/IPoolFactoryDynamic.sol";
import "../interfaces/IPoolRegistry.sol";

import { BeaconProxy } from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "../upgrades/BeaconProxyFactory.sol";

/**
 * @title A factory that emits Pool contracts.
 * @dev Acts as a beacon contract, emitting beacon proxies and holding a reference
 * to their implementation contract.
 */

contract PoolFactoryDynamic is IPoolFactoryDynamic, BeaconProxyFactory {
  address private _poolAccessControlFactory;
  address internal _poolControllerFactoryDynamic;

  error NotAdmin();
  error PoolSettingsInvalid();

  modifier onlyVerifiedPoolAdmin() {
    if (!IServiceConfigurationV5(address(_serviceConfiguration)).isPoolAdmin(msg.sender)) {
      revert NotAdmin();
    }
    _;
  }

  constructor(address serviceConfiguration, address poolControllerFactoryDynamic, address poolAccessControlFactory) {
    _serviceConfiguration = IServiceConfigurationV5(serviceConfiguration);
    _poolControllerFactoryDynamic = poolControllerFactoryDynamic;

    _poolAccessControlFactory = poolAccessControlFactory;
  }

  function getPoolControllerFactoryDynamic() external view returns (address) {
    return _poolControllerFactoryDynamic;
  }

  function getPoolAccessControlFactory() external view returns (address) {
    return _poolAccessControlFactory;
  }
  function createPool(
    address liquidityAsset,
    IPoolConfigurableSettingsDynamic calldata settings,
    string calldata tokenName,
    string calldata tokenSymbol
  ) public onlyVerifiedPoolAdmin returns (address poolAddress) {
    if (
      implementation == address(0) ||
      _serviceConfiguration.paused() ||
      (!_serviceConfiguration.isLiquidityAsset(liquidityAsset)) ||
      _serviceConfiguration.getPoolFactoryDynamic() != address(this)
    ) {
      revert PoolSettingsInvalid();
    }

    // Create the pool
    address addr = initializePool(liquidityAsset, settings, tokenName, tokenSymbol);

    IPoolRegistry(_serviceConfiguration.getPoolRegistry()).addPool(addr);

    emit PoolCreated(addr);
    return addr;
  }

  function initializePool(
    address liquidityAsset,
    IPoolConfigurableSettingsDynamic calldata settings,
    string calldata tokenName,
    string calldata tokenSymbol
  ) internal virtual returns (address) {
    PoolAddressListDynamic memory poolAddressList = PoolAddressListDynamic(
      liquidityAsset,
      msg.sender,
      address(_serviceConfiguration),
      _poolControllerFactoryDynamic,
      _poolAccessControlFactory
    );

    // Create beacon proxy
    BeaconProxy proxy = new BeaconProxy(
      address(this),
      abi.encodeWithSelector(PoolDynamic.initialize.selector, poolAddressList, settings, tokenName, tokenSymbol)
    );
    return address(proxy);
  }
}
