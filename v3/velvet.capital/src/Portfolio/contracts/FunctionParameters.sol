// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;

library FunctionParameters {
  /**
   * @notice Data structure for initializing the Portfolio Factory
   * @dev Contains addresses of core contracts needed for portfolio and Gnosis Safe setup
   * @param _basePortfolioAddress Address of the base Portfolio implementation contract
   * @param _baseVelvetGnosisSafeModuleAddress Address of the base Velvet Gnosis Safe module implementation
   * @param _gnosisSingleton Address of the Gnosis Safe singleton contract
   * @param _gnosisFallbackLibrary Address of the Gnosis Safe fallback handler library
   * @param _gnosisMultisendLibrary Address of the Gnosis Safe multi-send library
   * @param _gnosisSafeProxyFactory Address of the Gnosis Safe proxy factory
   * @param _deBridgeGate Address of the DeBridge Gate contract.
   */
  struct PortfolioFactoryInitData {
    address _basePortfolioAddress;
    address _baseVelvetGnosisSafeModuleAddress;
    address _gnosisSingleton;
    address _gnosisFallbackLibrary;
    address _gnosisMultisendLibrary;
    address _gnosisSafeProxyFactory;
    address _deBridgeGate;
  }
  
  /**
   * @notice Data structure for initializing the Satellite Factory
   * @dev Contains addresses of core contracts needed for portfolio and Gnosis Safe setup
   * @param _baseVelvetGnosisSafeModuleAddress Address of the base Velvet Gnosis Safe module implementation
   * @param _gnosisSingleton Address of the Gnosis Safe singleton contract
   * @param _gnosisFallbackLibrary Address of the Gnosis Safe fallback handler library
   * @param _gnosisMultisendLibrary Address of the Gnosis Safe multi-send library
   * @param _gnosisSafeProxyFactory Address of the Gnosis Safe proxy factory
   * @param _deBridgeGate Address of the DeBridge Gate contract.
   */
  struct SatelliteFactoryInitData {
    address _baseVelvetGnosisSafeModuleAddress;
    address _gnosisSingleton;
    address _gnosisFallbackLibrary;
    address _gnosisMultisendLibrary;
    address _gnosisSafeProxyFactory;
    address _deBridgeGate;
  }

  /**
   * @notice Data structure for setting up roles during Portfolio Fund creation
   * @dev Used for assigning roles to various components of the Portfolio Fund ecosystem.
   * @param _portfolio Portfolio contract address
   * @param _portfolioCreator Address of the portfolio creator
   */
  struct AccessSetup {
    address _portfolio;
    address _portfolioCreator;
  }

  /**
   * @notice Data for initializing a new Portfolio Fund via the Factory
   * @dev Encapsulates settings and configurations for a newly created Portfolio Fund.
   * @param _assetManagerTreasury Treasury address for asset manager fee accumulation
   * @param _depositToken Deposit token address associated with the Portfolio Fund
   * @param _minDepositAmount Minimum deposit amount for the fund
   * @param _maxDepositAmount Maximum deposit amount for the fund
   * @param _fundRaisingPeriod Fund raising period in seconds
   * @param _fundLockPeriod Fund lock period in seconds
   * @param _public Indicates if the fund is open to the public
   * @param _transferable Indicates if the fund's tokens are transferable
   * @param _transferableToPublic Indicates if the fund's tokens are transferable to the public
   * @param _name Name of the Portfolio Fund
   * @param _symbol Symbol of the Portfolio Fund
   */
  struct PortfolioCreationInitData {
    address _assetManagerTreasury;
    address _depositToken;
    uint256 _minDepositAmount;
    uint256 _maxDepositAmount;
    uint256 _fundRaisingPeriod;
    uint256 _fundLockPeriod;
    bool _public;
    bool _transferable;
    bool _transferableToPublic;
    string _name;
    string _symbol;
  }

  /**
   * @notice Data for initializing the Portfolio module
   * @dev Used when setting up a new Portfolio instance.
   * @param _name Name of the Portfolio Fund
   * @param _symbol Symbol of the Portfolio Fund
   * @param _vault Vault address associated with the Portfolio Fund
   * @param _module Safe module address associated with the Portfolio Fund
   * @param _depositToken Deposit token address associated with the Portfolio Fund
   * @param _accessController Access Controller address for managing roles
   * @param _deBridgeGate DeBridge Gate address
   * @param _owners Array of addresses to be designated as owners of the Safe
   * @param _threshold Number of owner signatures required to execute a transaction in the Safe
   * @param _minDepositAmount Minimum deposit amount for the fund
   * @param _maxDepositAmount Maximum deposit amount for the fund
   * @param _fundRaisingPeriod Fund raising period in seconds
   * @param _fundLockPeriod Fund lock period in seconds
   * @param _threshold Number of owner signatures required to execute a transaction in the Safe
   * @param _isCustodial Indicates if the fund is custodial
   */
  struct PortfolioInitData {
    string _name;
    string _symbol;
    address _vault;
    address _module;
    address _depositToken;
    address _accessController;
    address _deBridgeGate;
    address[] _owners;
    uint256 _minDepositAmount;
    uint256 _maxDepositAmount;
    uint256 _fundRaisingPeriod;
    uint256 _fundLockPeriod;
    uint256 _threshold;
    bool _isCustodial;
  }

  /**
   * @dev Struct to encapsulate the parameters required for deploying a Safe and its associated modules.
   * @param _gnosisSingleton Address of the Safe singleton contract.
   * @param _gnosisSafeProxyFactory Address of the Safe Proxy Factory contract.
   * @param _gnosisMultisendLibrary Address of the Multisend library contract.
   * @param _gnosisFallbackLibrary Address of the Fallback library contract.
   * @param _baseGnosisModule Address of the base module to be used.
   * @param _owners Array of addresses to be designated as owners of the Safe.
   * @param _threshold Number of owner signatures required to execute a transaction in the Safe.
   */
  struct SafeAndModuleDeploymentParams {
    address _gnosisSingleton;
    address _gnosisSafeProxyFactory;
    address _gnosisMultisendLibrary;
    address _gnosisFallbackLibrary;
    address _baseGnosisModule;
    address[] _owners;
    uint256 _threshold;
  }

  /**
   * @notice Data for initializing a new Portfolio Fund via the Factory
   * @dev Encapsulates settings and configurations for a newly created Portfolio Fund.
   * @param _user User address
   * @param _isCustodial Indicates if the fund is custodial
   * @param _threshold Number of owner signatures required to execute a transaction in the Safe
   */
  struct UserVaultDetails {
    address _user;
    bool _isCustodial;
    uint256 _threshold;
  }
}
