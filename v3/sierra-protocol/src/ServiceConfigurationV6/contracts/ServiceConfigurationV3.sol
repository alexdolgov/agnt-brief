//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "./interfaces/IServiceConfiguration.sol";

import "./factories/interfaces/IPoolFactory.sol";
import "./factories/interfaces/IPoolFactoryFlex.sol";
import "./upgrades/DeployerUUPSUpgradeable.sol";
import "./ServiceConfiguration.sol";

/**
 * @title The ServiceConfiguration contract
 * @dev Implementation of the {IServiceConfiguration} interface.
 */

contract ServiceConfigurationV3 is ServiceConfiguration, IServiceConfigurationV3 {
  error UpgradeRevert();
  bytes32 public constant AUTOMATION_ROLE = keccak256("AUTOMATION_ROLE");

  address public poolRegistry;
  address public poolFactoryFlex;
  address public poolLibFlex;

  LegacyFactoryStruct[] public legacyFactories;

  function version() public pure returns (uint16) {
    return 256 * 1 + 1;
  }

  function isAutomation(address addr) external view returns (bool) {
    return hasRole(AUTOMATION_ROLE, addr);
  }

  function setPoolRegistry(address addr) external override onlyOperator {
    poolRegistry = addr;
    emit PoolRegistrySet(addr);
  }

  function setPoolFactoryFlex(address addr) external override onlyOperator {
    if (poolFactoryFlex != address(0)) {
      legacyFactories.push(LegacyFactoryStruct(IFactoryType.PoolFactoryFlex, poolFactoryFlex));
    }
    poolFactoryFlex = addr;
    emit PoolFactoryFlexSet(addr);
  }

  function setLoanFactory(address addr) external override(ServiceConfiguration, IServiceConfiguration) onlyOperator {
    if (loanFactory != address(0)) {
      legacyFactories.push(LegacyFactoryStruct(IFactoryType.LoanFactory, loanFactory));
    }
    loanFactory = addr;
    emit LoanFactorySet(addr);
  }

  function setPoolFactory(address addr) external override(ServiceConfiguration, IServiceConfiguration) onlyOperator {
    if (poolFactory != address(0)) {
      legacyFactories.push(LegacyFactoryStruct(IFactoryType.PoolFactory, poolFactory));
    }
    poolFactory = addr;
    emit PoolFactorySet(addr);
  }

  function setPoolLibFlex(address addr) external override onlyOperator {
    poolLibFlex = addr;
    emit PoolLibFlexSet(addr);
  }

  function getPoolRegistry() external view returns (address) {
    return poolRegistry;
  }

  function getPoolFactoryFlex() external view returns (address) {
    return poolFactoryFlex;
  }

  function getPoolLibFlex() external view returns (address) {
    return poolLibFlex;
  }

  function getLegacyFactories() external view returns (LegacyFactoryStruct[] memory) {
    return legacyFactories;
  }

  function getServiceAddressListV3()
    external
    view
    override
    returns (SerivceAddressListV3 memory setLoanFactoryerivceAddressList)
  {
    address poolControllerFactoryFlex;
    if (poolFactoryFlex != address(0)) {
      poolControllerFactoryFlex = IPoolFactoryFlex(poolFactoryFlex).getPoolControllerFactoryFlex();
    }
    address withdrawDepositControllerFactoryFlex;
    if (poolFactoryFlex != address(0)) {
      withdrawDepositControllerFactoryFlex = IPoolFactoryFlex(poolFactoryFlex)
        .getWithdrawDepositControllerFactoryFlex();
    }
    return (
      SerivceAddressListV3(
        liquidityAssetKeys,
        tosAcceptanceRegistry,
        loanFactory,
        poolFactory,
        poolFactoryFlex,
        queryLib,
        poolLib,
        poolLibFlex,
        loanLib,
        IPoolFactory(poolFactory).getPoolControllerFactory(),
        IPoolFactory(poolFactory).getWithdrawControllerFactory(),
        IPoolFactory(poolFactory).getVaultFactory(),
        IPoolFactory(poolFactory).getPoolAccessControlFactory(),
        poolControllerFactoryFlex,
        withdrawDepositControllerFactoryFlex,
        poolRegistry
      )
    );
  }
}
