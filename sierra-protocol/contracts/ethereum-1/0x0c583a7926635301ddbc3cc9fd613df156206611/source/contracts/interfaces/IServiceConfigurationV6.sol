//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./IServiceConfigurationV5.sol";

struct ServiceAddressListV6 {
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
  address depositAddressRegistryAddress;
}

/**
 * @title The protocol global Service Configuration
 * @author Open Trade Technology Ltd.
 * @notice This contract is used to configure the protocol global service addresses.
 * @dev This contract extends the IServiceConfigurationV5 interface to add a deposit address registry.
 */
interface IServiceConfigurationV6 is IServiceConfigurationV5 {
  /**
   * @notice Emitted when the deposit address registry is set.
   * @param registry The address of the deposit address registry.
   */
  event DepositAddressRegistrySet(address indexed registry);

  /**
   * @notice Returns the address of the deposit address registry.
   * @return The address of the deposit address registry.
   */
  function getDepositAddressRegistry() external view returns (address);

  /**
   * @notice Sets the address of the deposit address registry.
   * @param addr The address of the deposit address registry.
   */
  function setDepositAddressRegistry(address addr) external;

  /**
   * @notice Returns the service address list.
   * @return The service address list.
   */
  function getServiceAddressListV6() external view returns (ServiceAddressListV6 memory);
}
