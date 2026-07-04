//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./interfaces/IServiceConfigurationV5.sol";
import "./interfaces/IServiceConfigurationV6.sol";
import "./interfaces/IDepositAddressRegistry.sol";

import "./ServiceConfigurationV5.sol";

/**
 * @title The ServiceConfiguration contract
 * @dev Implementation of the {IServiceConfiguration} interface.
 */

contract ServiceConfigurationV6 is ServiceConfigurationV5, IServiceConfigurationV6 {
  address public depositAddressRegistry;

  error ZeroAddress();

  function setDepositAddressRegistry(address addr) external override onlyOperator {
    if (addr == address(0)) {
      revert ZeroAddress();
    }
    depositAddressRegistry = addr;
    emit DepositAddressRegistrySet(addr);
  }

  function getDepositAddressRegistry() external view override returns (address) {
    return depositAddressRegistry;
  }

  function getServiceAddressListV6() external view override returns (ServiceAddressListV6 memory) {
    address poolControllerFactoryFlex = address(0);
    if (poolFactoryFlex != address(0)) {
      poolControllerFactoryFlex = IPoolFactoryFlex(poolFactoryFlex).getPoolControllerFactoryFlex();
    }
    address withdrawDepositControllerFactoryFlex;
    if (poolFactoryFlex != address(0)) {
      withdrawDepositControllerFactoryFlex = IPoolFactoryFlex(poolFactoryFlex)
        .getWithdrawDepositControllerFactoryFlex();
    }

    address poolControllerFactoryDynamic = address(0);
    if (poolFactoryDynamic != address(0)) {
      poolControllerFactoryDynamic = IPoolFactoryDynamic(poolFactoryDynamic).getPoolControllerFactoryDynamic();
    }
    address getPoolControllerFactory = address(0);
    if (poolFactory != address(0)) {
      getPoolControllerFactory = IPoolFactory(poolFactory).getPoolControllerFactory();
    }
    address getWithdrawControllerFactory = address(0);
    if (poolFactory != address(0)) {
      getWithdrawControllerFactory = IPoolFactory(poolFactory).getWithdrawControllerFactory();
    }
    address getVaultFactory = address(0);
    if (poolFactory != address(0)) {
      getVaultFactory = IPoolFactory(poolFactory).getVaultFactory();
    }
    address getPoolAccessControlFactory = address(0);
    if (poolFactory != address(0)) {
      getPoolAccessControlFactory = IPoolFactory(poolFactory).getPoolAccessControlFactory();
    }

    return (
      ServiceAddressListV6(
        liquidityAssetKeys,
        tosAcceptanceRegistry,
        loanFactory,
        poolFactory,
        poolFactoryFlex,
        queryLib,
        poolLib,
        poolLibFlex,
        loanLib,
        getPoolControllerFactory,
        getWithdrawControllerFactory,
        getVaultFactory,
        getPoolAccessControlFactory,
        poolControllerFactoryFlex,
        withdrawDepositControllerFactoryFlex,
        poolRegistry,
        poolFactoryDynamic,
        poolControllerFactoryDynamic,
        depositAddressRegistry
      )
    );
  }
}
