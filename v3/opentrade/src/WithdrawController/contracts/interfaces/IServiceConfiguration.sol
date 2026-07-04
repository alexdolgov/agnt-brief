//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

struct SerivceAddressList {
  address[] liquidityAssets;
  address tosAcceptanceRegistry;
  address loanFactory;
  address poolFactoryAddress;
  address queryLibAddress;
  address poolLibAddress;
  address loanLibAddress;
  address poolControllerFactoryAddress;
  address withdrawControllerFactoryAddress;
  address vaultFactoryAddress;
  address poolAccessControlFactoryAddress;
}

/**
 * @title The protocol global Service Configuration
 */
interface IServiceConfiguration {
  /**
   * @dev Emitted when an address is changed.
   */
  event AddressSet(bytes32 which, address addr);

  /**
   * @dev Emitted when a liquidity asset is set.
   */
  event LiquidityAssetSet(address addr, bool value);

  /**
   * @dev Emitted when a parameter is set.
   */
  event ParameterSet(bytes32, uint256 value);

  /**
   * @dev Emitted when the protocol is paused.
   */
  event ProtocolPaused(bool paused);

  /**
   * @dev Emitted when a loan factory is set
   */
  event LoanFactorySet(address indexed factory);
  event PoolFactorySet(address indexed factory);
  event QueryLibSet(address indexed factory);
  event LoanLibSet(address indexed factory);
  event PoolLibSet(address indexed factory);
  event PoolAdminWalletSet(address indexed factory);

  /**
   * @dev Emitted when the TermsOfServiceRegistry is set
   */
  event TermsOfServiceRegistrySet(address indexed registry);

  /**
   * @dev checks if a given address has the Operator role
   */
  function isOperator(address addr) external view returns (bool);

  /**
   * @dev checks if a given address has the Deployer role
   */
  function isDeployer(address addr) external view returns (bool);

  /**
   * @dev checks if a given address has the Deployer role
   */
  function isPoolAdmin(address addr) external view returns (bool);

  /**
   * @dev checks if a given address has the Deployer role
   */
  function isBorrower(address addr) external view returns (bool);

  /**
   * @dev Whether the protocol is paused.
   */
  function paused() external view returns (bool);

  /**
   * @dev Whether an address is supported as a liquidity asset.
   */
  function isLiquidityAsset(address addr) external view returns (bool);

  /**
   * @dev Address of the Terms of Service acceptance registry.
   */
  function tosAcceptanceRegistry() external view returns (address);

  /**
   * @dev Sets whether a loan factory is valid
   * @param addr Address of loan factory
   */
  function setLoanFactory(address addr) external;

  function setPoolFactory(address addr) external;

  function setQueryLib(address addr) external;

  function setPoolLib(address addr) external;

  function setLoanLib(address addr) external;

  function getLoanFactory() external view returns (address);

  function getPoolFactory() external view returns (address);

  function getQueryLib() external view returns (address);

  function getLoanLib() external view returns (address);

  function getPoolLib() external view returns (address);

  function setPoolAdminWallet(address addr) external;

  function getPoolAdminWallet() external view returns (address);

  /**
   * @dev Sets the ToSAcceptanceRegistry for the protocol
   * @param addr Address of registry
   */
  function setToSAcceptanceRegistry(address addr) external;

  /**
   * @dev Sets supported liquidity assets for the protocol. Callable by the operator.
   * @param addr Address of liquidity asset
   * @param value Whether supported or not
   */
  function setLiquidityAsset(address addr, bool value) external;

  function getServiceAddressList() external view returns (SerivceAddressList memory setLoanFactoryerivceAddressList);
}
