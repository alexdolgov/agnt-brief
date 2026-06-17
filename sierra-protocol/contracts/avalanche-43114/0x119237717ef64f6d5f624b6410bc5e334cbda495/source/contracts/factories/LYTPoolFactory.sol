//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../LYTPool.sol";
import "../interfaces/ILYTPoolServiceConfiguration.sol";
import "./interfaces/ILYTPoolFactory.sol";

import "../interfaces/ILYTPoolRegistry.sol";
import { BeaconProxy } from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "../upgrades/BeaconProxyFactory.sol";

/**
 * @title A factory that emits Pool contracts.
 * @dev Acts as a beacon contract, emitting beacon proxies and holding a reference
 * to their implementation contract.
 */

contract LYTPoolFactory is ILYTPoolFactory, BeaconProxyFactory {
  /**
   * @dev Reference to the WithdrawControllerFactory contract
   */
  // address internal _withdrawControllerFactory;

  address private _lytPoolAccessControlFactory;

  /**
   * @dev Reference to the PoolControllerFactory contract
   */
  address internal _lytPoolControllerFactory;

  modifier onlyVerifiedProtocolAdmin() {
    require(ILYTPoolServiceConfiguration(address(_serviceConfiguration)).isProtocolAdmin(msg.sender), "CALLER_NOT_ADMIN");
    _;
  }

  /**
   * @dev Constructor
   * @param serviceConfiguration Reference to the global service configuration.
   * @param poolControllerFactory Reference to the pool controller factory.
   * @param poolAccessControlFactory Reference to the pool access control factory.
   */
  constructor(
    address serviceConfiguration,
    // address withdrawControllerFactory,
    address poolControllerFactory,
    // address vaultFactory,
    address poolAccessControlFactory
  ) {
    _serviceConfiguration = ILYTPoolServiceConfiguration(serviceConfiguration);
    // _withdrawControllerFactory = withdrawControllerFactory;
    _lytPoolControllerFactory = poolControllerFactory;
    // _vaultFactory = vaultFactory;
    _lytPoolAccessControlFactory = poolAccessControlFactory;
  }

  // function getWithdrawControllerFactory() external view returns (address) {
  //   return _withdrawControllerFactory;
  // }

  // function getVaultFactory() external view returns (address) {
  //   return _vaultFactory;
  // }

  function getLYTPoolAccessControlFactory() external view returns (address) {
    return _lytPoolAccessControlFactory;
  }

  function getLYTPoolControllerFactory() external view override returns (address) {
    return _lytPoolControllerFactory;
  }

  /**
   * @inheritdoc ILYTPoolFactory
   */
  function createPool(
    address liquidityAsset,
    ILYTPoolConfigurableSettings calldata settings,
    string calldata tokenName,
    string calldata tokenSymbol
  ) public onlyVerifiedProtocolAdmin returns (address poolAddress) {
    require(implementation != address(0), "LYTPoolFactory: no implementation set");
    require(_serviceConfiguration.paused() == false, "LYTPoolFactory: Protocol paused");

    require(_serviceConfiguration.isLiquidityAsset(liquidityAsset), "LYTPoolFactory: invalid asset");

    require(_serviceConfiguration.getLYTPoolFactory() == address(this), "LYTPoolFactory: not correct");
    // Create the pool
    address addr = initializePool(liquidityAsset, settings, tokenName, tokenSymbol);

    ILYTPoolRegistry(_serviceConfiguration.getPoolRegistry()).addPool(addr);

    emit PoolCreated(addr);
    return addr;
  }

  /**
   * @dev Creates the new Pool contract.
   */
  function initializePool(
    address liquidityAsset,
    ILYTPoolConfigurableSettings calldata settings,
    string calldata tokenName,
    string calldata tokenSymbol
  ) internal virtual returns (address) {
    LYTPoolAddressList memory poolAddressList = LYTPoolAddressList(
      liquidityAsset,
      msg.sender,
      address(_serviceConfiguration),
      _lytPoolControllerFactory,
      _lytPoolAccessControlFactory
    );

    // Create beacon proxy
    BeaconProxy proxy = new BeaconProxy(
      address(this),
      abi.encodeWithSelector(LYTPool.initialize.selector, poolAddressList, settings, tokenName, tokenSymbol)
    );
    return address(proxy);
  }
}
