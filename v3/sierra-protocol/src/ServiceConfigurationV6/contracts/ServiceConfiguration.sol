//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "./interfaces/IServiceConfiguration.sol";

import "./factories/interfaces/IPoolFactory.sol";
import "./factories/interfaces/IPoolFactoryFlex.sol";
import "./upgrades/DeployerUUPSUpgradeable.sol";

/**
 * @title The ServiceConfiguration contract
 * @dev Implementation of the {IServiceConfiguration} interface.
 */

contract ServiceConfiguration is IServiceConfiguration, AccessControlUpgradeable, DeployerUUPSUpgradeable {
  /**
   * @dev The Operator Role
   */
  bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

  /**
   * @dev The Pauser Role
   */
  bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

  /**
   * @dev The Deployer Role
   */
  bytes32 public constant DEPLOYER_ROLE = keccak256("DEPLOYER_ROLE");

  /**
   * @dev The Deployer Role
   */
  bytes32 public constant POOL_ADMIN_ROLE = keccak256("POOL_ADMIN_ROLE");

  /**
   * @dev The Deployer Role
   */
  bytes32 public constant BORROWER_ROLE = keccak256("BORROWER_ROLE");

  /**
   * @inheritdoc IServiceConfiguration
   */
  bool public paused;

  /**
   * @inheritdoc IServiceConfiguration
   */
  mapping(address => bool) public isLiquidityAsset;
  address[] public liquidityAssetKeys;

  /**
   * @inheritdoc IServiceConfiguration
   */
  address public tosAcceptanceRegistry;

  address public loanFactory;

  address public poolFactory;

  address public queryLib;

  address public loanLib;

  address public poolLib;
  address public poolAdminWallet;

  /**
   * @dev Modifier that checks that the caller account has the Operator role.
   */
  modifier onlyOperator() {
    require(hasRole(OPERATOR_ROLE, msg.sender), "ServiceConfiguration: caller is not an operator");
    _;
  }
  modifier onlyPoolAdmin() {
    require(hasRole(POOL_ADMIN_ROLE, msg.sender), "ServiceConfiguration: caller is not a Pool Admin");
    _;
  }
  modifier onlyBorrower() {
    require(hasRole(BORROWER_ROLE, msg.sender), "ServiceConfiguration: caller is not a Borrower");
    _;
  }
  /**
   * @dev Require the caller be the pauser
   */
  modifier onlyPauser() {
    require(hasRole(PAUSER_ROLE, msg.sender), "ServiceConfiguration: caller is not a pauser");
    _;
  }

  /**
   * @dev Constructor for the contract, which sets up the default roles and
   * owners.
   */
  function initialize() public initializer {
    // Initialize values
    paused = false;

    _serviceConfiguration = IServiceConfigurationV5(address(this));

    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  /**
   * @dev Set a liquidity asset as valid or not.
   */
  function setLiquidityAsset(address addr, bool value) public override onlyOperator {
    isLiquidityAsset[addr] = value;
    if (value) {
      liquidityAssetKeys.push(addr);
    }
    emit LiquidityAssetSet(addr, value);
  }

  /**
   * @dev Pause/unpause the protocol.
   */
  function setPaused(bool paused_) public onlyPauser {
    paused = paused_;
    emit ProtocolPaused(paused);
  }

  /**
   * @inheritdoc IServiceConfiguration
   */
  function isPoolAdmin(address addr) external view returns (bool) {
    return hasRole(POOL_ADMIN_ROLE, addr);
  }

  /**
   * @inheritdoc IServiceConfiguration
   */
  function isBorrower(address addr) external view returns (bool) {
    return hasRole(BORROWER_ROLE, addr);
  }

  /**
   * @inheritdoc IServiceConfiguration
   */
  function isOperator(address addr) external view returns (bool) {
    return hasRole(OPERATOR_ROLE, addr);
  }

  /**
   * @inheritdoc IServiceConfiguration
   */
  function isDeployer(address addr) external view returns (bool) {
    return hasRole(DEPLOYER_ROLE, addr);
  }

  /**
   * @inheritdoc IServiceConfiguration
   */
  function setLoanFactory(address addr) external virtual override onlyOperator {
    loanFactory = addr;
    emit LoanFactorySet(addr);
  }

  /**
   * @inheritdoc IServiceConfiguration
   */
  function setPoolFactory(address addr) external virtual override onlyOperator {
    poolFactory = addr;
    emit PoolFactorySet(addr);
  }

  /**
   * @inheritdoc IServiceConfiguration
   */
  function setQueryLib(address addr) external override onlyOperator {
    queryLib = addr;
    emit QueryLibSet(addr);
  }

  function setPoolLib(address addr) external override onlyOperator {
    poolLib = addr;
    emit PoolLibSet(addr);
  }

  function setLoanLib(address addr) external override onlyOperator {
    loanLib = addr;
    emit LoanLibSet(addr);
  }

  function setPoolAdminWallet(address addr) external override onlyOperator {
    poolAdminWallet = addr;
    emit PoolAdminWalletSet(addr);
  }

  /**
   * @inheritdoc IServiceConfiguration
   */
  function setToSAcceptanceRegistry(address addr) external override onlyOperator {
    tosAcceptanceRegistry = addr;
    emit TermsOfServiceRegistrySet(addr);
  }

  function getPoolAdminWallet() external view returns (address) {
    return poolAdminWallet;
  }

  function getLoanFactory() external view returns (address) {
    return loanFactory;
  }

  function getPoolFactory() external view returns (address) {
    return poolFactory;
  }

  function getQueryLib() external view returns (address) {
    return queryLib;
  }

  function getPoolLib() external view returns (address) {
    return poolLib;
  }

  function getLoanLib() external view returns (address) {
    return loanLib;
  }

  function getServiceAddressList() external view override returns (SerivceAddressList memory addressList) {
    return (
      SerivceAddressList(
        liquidityAssetKeys,
        tosAcceptanceRegistry,
        loanFactory,
        poolFactory,
        queryLib,
        poolLib,
        loanLib,
        IPoolFactory(poolFactory).getPoolControllerFactory(),
        IPoolFactory(poolFactory).getWithdrawControllerFactory(),
        IPoolFactory(poolFactory).getVaultFactory(),
        IPoolFactory(poolFactory).getPoolAccessControlFactory()
      )
    );
  }
}
