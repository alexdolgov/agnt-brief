// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import '@cryptoalgebra/integral-core/contracts/interfaces/pool/IAlgebraPoolState.sol';
import '@cryptoalgebra/integral-base-plugin/contracts/libraries/AdaptiveFee.sol';
import './IThenaFarmingPluginFactory.sol';
import '../../AlgebraPlugin/Farming/ThenaBasePlugin.sol';

/// @title Thena - Algebra Integral Farming Plugin Factory 
/// @notice This contract creates a Thena Farming Plugin
/// @dev This plugin factory can only be used for Algebra base pools integral v1.2
contract FarmingPluginFactory is IThenaFarmingPluginFactory {

  /// @inheritdoc IThenaFarmingPluginFactory
  bytes32 public constant ALGEBRA_BASE_PLUGIN_FACTORY_ADMINISTRATOR = keccak256('ALGEBRA_BASE_PLUGIN_FACTORY_ADMINISTRATOR');
  /// @inheritdoc IThenaFarmingPluginFactory
  AlgebraFeeConfiguration public defaultFeeConfiguration; // values of constants for sigmoids in fee calculation formula
  /// @notice default Community Fee For CustomPool
  uint16 public defaultCommunityFeeForCustomPool = 200;
  /// @inheritdoc IThenaFarmingPluginFactory
  address public algebraFactory;
  /// @inheritdoc IThenaFarmingPluginFactory
  address public farmingAddress;
  /// @inheritdoc IThenaFarmingPluginFactory
  mapping(address poolAddress => address pluginAddress) public pluginByPool;

  /// @notice Deploy the contract
  /// @param _algebraFactory  the algebra pool factory integral 1.2
  /// @param _farmingCenter  the farming center address
  constructor(address _algebraFactory, address _farmingCenter) {
    _zeroAddress(_algebraFactory);
    _zeroAddress(_farmingCenter);

    algebraFactory = _algebraFactory;
    farmingAddress = _farmingCenter;

    defaultFeeConfiguration = AdaptiveFee.initialFeeConfiguration();
    emit DefaultFeeConfiguration(defaultFeeConfiguration);
  }



  /// @inheritdoc IThenaFarmingPluginFactory
  function createCustomPoolAndInitialize(uint160 sqrtX96price, address token0, address token1) external returns (address) {
    address pool = IAlgebraFactory(algebraFactory).createCustomPool(address(this), msg.sender, token0, token1, "");
    if(sqrtX96price != 0) IAlgebraPool(pool).initialize(sqrtX96price);
    IAlgebraPool(pool).setCommunityFee(defaultCommunityFeeForCustomPool); 
    return pool;
  }

  /// @inheritdoc IThenaFarmingPluginFactory
  function createPlugin(address pool, address , address ) external returns (address) {
    if(msg.sender != algebraFactory) revert NotFactory();
    return _createPlugin(pool);
  }

  /// @dev see IThenaFarmingPluginFactory::createPlugin
  function _createPlugin(address pool) internal returns (address) {
    if(pluginByPool[pool] != address(0)) revert PluginExists();
    ThenaBasePlugin _plugin = new ThenaBasePlugin(pool, algebraFactory, address(this));
    _plugin.changeFeeConfiguration(defaultFeeConfiguration);
    pluginByPool[pool] = address(_plugin);
    return address(_plugin);
  }


  /// @inheritdoc IThenaFarmingPluginFactory
  function beforeCreatePoolHook(address pool, address, address, address, address, bytes calldata) external returns (address) {
    _onlyAdministrator();
    return _createPlugin(pool);
  }

  /// @inheritdoc IThenaFarmingPluginFactory
  function afterCreatePoolHook(address, address, address) external view {
    _onlyAdministrator();
  }


  /// @inheritdoc IThenaFarmingPluginFactory
  function setDefaultCommunityFeeForCustomPool(uint16 _defaultCommunityFeeForCustomPool) external {
    _onlyAdministrator();
    if(_defaultCommunityFeeForCustomPool > 1e3) revert CommunityFeeAmount();
    defaultCommunityFeeForCustomPool = _defaultCommunityFeeForCustomPool;
  }
    
  /// @inheritdoc IThenaFarmingPluginFactory
  function setDefaultFeeConfiguration(AlgebraFeeConfiguration calldata newConfig) external override {
    _onlyAdministrator();
    AdaptiveFee.validateFeeConfiguration(newConfig);
    defaultFeeConfiguration = newConfig;
    emit DefaultFeeConfiguration(newConfig);
  }

  /// @inheritdoc IThenaFarmingPluginFactory
  function updatePluginForPool(address[] calldata _pools) external override  {
    _onlyAdministrator();
    for(uint256 i = 0; i < _pools.length; i++){
      pluginByPool[_pools[i]] = IAlgebraPoolState(_pools[i]).plugin();
    }
  }

  /// @inheritdoc IThenaFarmingPluginFactory
  function pausePlugin(address[] calldata plugins) external {
    _onlyAdministrator();
    for(uint256 i = 0; i < plugins.length; i++) {
      IThenaBasePlugin(plugins[i]).pause();
    }
  }

  /// @inheritdoc IThenaFarmingPluginFactory
  function unpausePlugin(address[] calldata plugins) external {
    _onlyAdministrator(); 
    for(uint256 i = 0; i < plugins.length; i++) {
      IThenaBasePlugin(plugins[i]).unpause();
    }
  }

  /// @inheritdoc IThenaFarmingPluginFactory
  function setFeeType(address[] calldata plugins, bool feeType) external {
    _onlyAdministrator();
    for(uint256 i = 0; i < plugins.length; i++) {
      IThenaBasePlugin(plugins[i]).setFeeType(feeType);
    }
  }

  /// @notice Check if msg.sender is the admin or owner
  function _onlyAdministrator() private view {
    if(!IAlgebraFactory(algebraFactory).hasRoleOrOwner(ALGEBRA_BASE_PLUGIN_FACTORY_ADMINISTRATOR, msg.sender)) revert NotAdministrator();
  }
 
  /// @notice Check if input is address(0)
  /// @param _address The address to check
  /// @dev This function reverts if the input address is the zero address
  function _zeroAddress(address _address) private pure {
    if(_address == address(0)) revert ZeroAddress();
  }


 
}