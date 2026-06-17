//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

struct ServiceAddressListV5 {
  address[] liquidityAssets;
  // address poolControllerFactoryAddress;
  address poolAccessControlFactoryAddress;
  address poolRegistryAddress;
  address lytPoolFactoryAddress;
  address lytPoolControllerFactoryAddress;
}

/**
 * @title The protocol global Service Configuration
 */
interface ILYTPoolServiceConfiguration {
  event LYTPoolFactorySet(address indexed factory);
  event PoolRegistrySet(address indexed factory);
  event LiquidityAssetSet(address addr, bool value);
  event ProtocolPaused(bool paused);
  event ParameterSet(bytes32, uint256 value);

  function isOperator(address addr) external view returns (bool);
  function isDeployer(address addr) external view returns (bool);
  function isProtocolAdmin(address addr) external view returns (bool);
  function isIssuer(address addr) external view returns (bool);
  function paused() external view returns (bool);
  function isLiquidityAsset(address addr) external view returns (bool);
  function isBlacklisted(address addr) external view returns (bool);
  function isAutomation(address addr) external view returns (bool);
  function setPoolRegistry(address addr) external;
  function getPoolRegistry() external view returns (address);
  function isFeeCollector(address addr) external view returns (bool);
  function isFiatGateway(address addr) external view returns (bool);
  function getLYTPoolFactory() external view returns (address);
  function setLYTPoolFactory(address addr) external;
  function setLiquidityAsset(address addr, bool value) external;
  function getServiceAddressListV5()
    external
    view
    returns (ServiceAddressListV5 memory serviceAddressList);
}
