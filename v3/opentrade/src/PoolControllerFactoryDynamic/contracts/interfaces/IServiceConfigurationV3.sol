//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./IServiceConfiguration.sol";

struct SerivceAddressListV3 {
  address[] liquidityAssets;
  address tosAcceptanceRegistry;
  address loanFactory;
  address poolFactoryAddress;
  address poolFactoryFlexAddress;
  address queryLibAddress;
  address poolLibAddress;
  address poolLibFlexAddress;
  address loanLibAddress;
  address poolControllerFactoryAddress;
  address withdrawControllerFactoryAddress;
  address vaultFactoryAddress;
  address poolAccessControlFactoryAddress;
  address poolControllerFactoryFlexAddress;
  address withdrawDepositControllerFactoryFlexAddress;
  address poolRegistryAddress;
}

enum IFactoryType {
  PoolFactory,
  LoanFactory,
  VaultFactory,
  PoolFactoryFlex,
  PoolControllerFactory,
  PoolLibFlex,
  PoolControllerFactoryFlex,
  WithdrawDepositControllerFactoryFlex,
  WithdrawControllerFactory,
  PoolAccessControlFactory,
  PoolFactoryDynamic,
  FeeCollector
}
struct LegacyFactoryStruct {
  IFactoryType factoryType;
  address factoryAddress;
}

/**
 * @title The protocol global Service Configuration
 */
interface IServiceConfigurationV3 is IServiceConfiguration {
  event PoolFactoryFlexSet(address indexed factory);

  event PoolLibFlexSet(address indexed factory);

  event PoolRegistrySet(address indexed factory);

  function version() external pure returns (uint16);

  function isAutomation(address addr) external view returns (bool);

  function setPoolFactoryFlex(address addr) external;

  function setPoolLibFlex(address addr) external;

  function setPoolRegistry(address addr) external;

  function getPoolRegistry() external view returns (address);

  function getPoolFactoryFlex() external view returns (address);

  function getPoolLibFlex() external view returns (address);

  function getLegacyFactories() external view returns (LegacyFactoryStruct[] memory legacyFactories);

  function getServiceAddressListV3() external view returns (SerivceAddressListV3 memory addressList);
}
