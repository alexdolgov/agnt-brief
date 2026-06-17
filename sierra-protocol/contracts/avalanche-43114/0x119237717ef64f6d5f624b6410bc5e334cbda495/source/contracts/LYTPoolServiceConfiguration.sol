//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./interfaces/ILYTPoolServiceConfiguration.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "./upgrades/DeployerUUPSUpgradeable.sol";
import "./Blacklistable.sol";

import "./factories/interfaces/ILYTPoolFactory.sol";

/**
 * @title The ServiceConfiguration contract
 * @dev Implementation of the {IServiceConfiguration} interface.
 */

enum IFactoryType {
  LYTPoolAccessControlFactory,
  LYTPoolFactory,
  LYTPoolControllerFactory
}
struct LegacyFactoryStruct {
  IFactoryType factoryType;
  address factoryAddress;
}
contract LYTPoolServiceConfiguration is AccessControlUpgradeable, DeployerUUPSUpgradeable, Blacklistable, ILYTPoolServiceConfiguration {
  error UpgradeRevert();
  error LiquidityAssetNoOp();
  bytes32 public constant AUTOMATION_ROLE = keccak256("AUTOMATION_ROLE");
  bytes32 public constant FIAT_GATEWAY = keccak256("FIAT_GATEWAY");
  bytes32 public constant FEE_COLLECTOR = keccak256("FEE_COLLECTOR");
  bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
  bytes32 public constant DEPLOYER_ROLE = keccak256("DEPLOYER_ROLE");
  bytes32 public constant PROTOCOL_ADMIN = keccak256("PROTOCOL_ADMIN");
  bytes32 public constant ISSUER_ROLE = keccak256("ISSUER_ROLE");

  bool public paused;
  mapping(address => bool) public isLiquidityAsset;
  address[] public liquidityAssetKeys;

  address public lytPoolFactory;
  address public poolRegistry;
  LegacyFactoryStruct[] public legacyFactories;

  /**
   * @dev Modifier that checks that the caller account has the Operator role.
   */
  modifier onlyOperator() override {
    require(hasRole(OPERATOR_ROLE, msg.sender), "ServiceConfiguration: caller is not an operator");
    _;
  }

  /**
   * @dev Constructor for the contract, which sets up the default roles and
   * owners.
   */
  function initialize() public initializer {
    // Initialize values
    paused = false;
    _serviceConfiguration = ILYTPoolServiceConfiguration(address(this));

    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  /**
   * @dev Set a liquidity asset as valid or not.
   */
  function setLiquidityAsset(address addr, bool value) public override onlyOperator {
    if (value == isLiquidityAsset[addr]) {
      revert LiquidityAssetNoOp();
    }

    isLiquidityAsset[addr] = value;
    if (value) {
      liquidityAssetKeys.push(addr);
    } else {
      // Remove from keys array
      for (uint256 i = 0; i < liquidityAssetKeys.length; i++) {
        if (liquidityAssetKeys[i] == addr) {
          liquidityAssetKeys[i] = liquidityAssetKeys[liquidityAssetKeys.length - 1];
          liquidityAssetKeys.pop();
          break;
        }
      }
    }
    emit LiquidityAssetSet(addr, value);
  }

  /**
   * @dev Pause/unpause the protocol.
   */
  function setPaused(bool paused_) public onlyOperator {
    paused = paused_;
    emit ProtocolPaused(paused);
  }

  function isProtocolAdmin(address addr) external view returns (bool) {
    return hasRole(PROTOCOL_ADMIN, addr);
  }

  function isIssuer(address addr) external view returns (bool) {
    return hasRole(ISSUER_ROLE, addr);
  }

  function isOperator(address addr) external view returns (bool) {
    return hasRole(OPERATOR_ROLE, addr);
  }

  function isDeployer(address addr) external view returns (bool) {
    return hasRole(DEPLOYER_ROLE, addr);
  }

  function getLegacyFactories() external view returns (LegacyFactoryStruct[] memory) {
    return legacyFactories;
  }

  function getPoolRegistry() external view returns (address) {
    return poolRegistry;
  }

  function setPoolRegistry(address addr) external override onlyOperator {
    poolRegistry = addr;
    emit PoolRegistrySet(addr);
  }

  function isAutomation(address addr) external view returns (bool) {
    return hasRole(AUTOMATION_ROLE, addr);
  }

  function isFiatGateway(address addr) external view returns (bool) {
    return hasRole(FIAT_GATEWAY, addr);
  }

  function isFeeCollector(address addr) external view returns (bool) {
    return hasRole(FEE_COLLECTOR, addr);
  }

  function getLYTPoolFactory() external view override returns (address) {
    return lytPoolFactory;
  }

  function setLYTPoolFactory(address addr) external override onlyOperator {
    if (lytPoolFactory != address(0)) {
      legacyFactories.push(LegacyFactoryStruct(IFactoryType.LYTPoolFactory, lytPoolFactory));
    }
    lytPoolFactory = addr;
    emit LYTPoolFactorySet(addr);
  }

  /**
   * @dev Override isBlacklisted function to implement interface
   */
  function isBlacklisted(address addr) external view override(Blacklistable, ILYTPoolServiceConfiguration) returns (bool) {
    return _isBlacklisted(addr);
  }

  function getServiceAddressListV5()
    external
    view
    override
    returns (ServiceAddressListV5 memory serviceAddressList)
  {
    address lytPoolControllerFactory = address(0);
    if (lytPoolFactory != address(0)) {
      lytPoolControllerFactory = ILYTPoolFactory(lytPoolFactory).getLYTPoolControllerFactory();
    }
    address getLYTPoolAccessControlFactory = address(0);
    if (lytPoolFactory != address(0)) {
      getLYTPoolAccessControlFactory = ILYTPoolFactory(lytPoolFactory).getLYTPoolAccessControlFactory();
    }
    return
      ServiceAddressListV5(
        liquidityAssetKeys,
        getLYTPoolAccessControlFactory,
        poolRegistry,
        lytPoolFactory,
        lytPoolControllerFactory
      );
  }
}
