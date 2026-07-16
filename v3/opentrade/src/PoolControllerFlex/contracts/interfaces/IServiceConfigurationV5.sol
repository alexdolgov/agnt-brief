//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./IServiceConfigurationV3.sol";

struct SerivceAddressListV5 {
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
  address poolFactoryDynamicAddress;
  address poolControllerFactoryDynamicAddress;
}

/**
 * @title The protocol global Service Configuration
 */
interface IServiceConfigurationV5 is IServiceConfigurationV3 {
  event PoolFactoryDynamicSet(address indexed factory);

  function isFeeCollector(address addr) external view returns (bool);
  function isFiatGateway(address addr) external view returns (bool);
  function getPoolFactoryDynamic() external view returns (address);
  function setPoolFactoryDynamic(address addr) external;

  function getServiceAddressListV5()
    external
    view
    returns (SerivceAddressListV5 memory setLoanFactoryerivceAddressList);
}
