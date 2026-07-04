//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./interfaces/IServiceConfigurationV5.sol";

import "./factories/interfaces/IPoolFactory.sol";
import "./factories/interfaces/IPoolFactoryFlex.sol";
import "./factories/interfaces/IPoolFactoryDynamic.sol";

import "./ServiceConfigurationV3.sol";

/**
 * @title The ServiceConfiguration contract
 * @dev Implementation of the {IServiceConfiguration} interface.
 */

contract ServiceConfigurationV5 is ServiceConfigurationV3, IServiceConfigurationV5 {
  address public poolFactoryDynamic;

  /**
   * @dev The Deployer Role
   */
  bytes32 public constant FIAT_GATEWAY = keccak256("FIAT_GATEWAY");
  bytes32 public constant FEE_COLLECTOR = keccak256("FEE_COLLECTOR");
  function isFiatGateway(address addr) external view returns (bool) {
    return hasRole(FIAT_GATEWAY, addr);
  }

  function isFeeCollector(address addr) external view returns (bool) {
    return hasRole(FEE_COLLECTOR, addr);
  }

  function setPoolFactoryDynamic(address addr) external override onlyOperator {
    if (poolFactoryDynamic != address(0)) {
      legacyFactories.push(LegacyFactoryStruct(IFactoryType.PoolFactoryDynamic, poolFactoryDynamic));
    }
    poolFactoryDynamic = addr;
    emit PoolFactoryDynamicSet(addr);
  }

  function getPoolFactoryDynamic() external view override returns (address) {
    return poolFactoryDynamic;
  }

  function getServiceAddressListV5()
    external
    view
    override
    returns (SerivceAddressListV5 memory setLoanFactoryerivceAddressList)
  {
    address poolControllerFactoryFlex = address(0);
    if (poolFactoryFlex != address(0)) {
      poolControllerFactoryFlex = IPoolFactoryFlex(poolFactoryFlex).getPoolControllerFactoryFlex();
    }
    address withdrawDepositControllerFactoryFlex;
    if (poolFactoryFlex != address(0)) {
      withdrawDepositControllerFactoryFlex = IPoolFactoryFlex(poolFactoryFlex)
        .getWithdrawDepositControllerFactoryFlex();
    }

    address poolControllerFactoryDyanmic = address(0);
    if (poolFactoryDynamic != address(0)) {
      poolControllerFactoryDyanmic = IPoolFactoryDynamic(poolFactoryDynamic).getPoolControllerFactoryDynamic();
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
      SerivceAddressListV5(
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
        poolControllerFactoryDyanmic
      )
    );
  }
}
