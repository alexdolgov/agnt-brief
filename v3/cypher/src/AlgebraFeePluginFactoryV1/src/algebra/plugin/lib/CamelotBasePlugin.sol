// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.20;

import {console} from "forge-std/console.sol";

import '@cryptoalgebra/integral-core/contracts/libraries/Plugins.sol';
import '@cryptoalgebra/integral-core/contracts/interfaces/plugin/IAlgebraPlugin.sol';

import './camelot/plugins/DynamicFeePlugin.sol';
import './camelot/plugins/VolatilityOraclePlugin.sol';
import './camelot/plugins/SlidingFeePlugin.sol';
import './camelot/plugins/SecurityPlugin.sol';

interface IBCToken {
  function isLPd() external view returns (bool);
}

/// @title Algebra Integral 1.2.1 plugin. Contains adaptive + sliding fee, safety switch and twap oracle
contract CamelotBasePlugin is DynamicFeePlugin, VolatilityOraclePlugin, SlidingFeePlugin, SecurityPlugin {
  using Plugins for uint8;

  address public immutable WETH;
  address public immutable token0;
  address public immutable token1;

  error NotLPd();

  modifier onlyLPd() {
    address coin = token0 == WETH ? token1 : token0;
    bool isLPd = IBCToken(coin).isLPd();
    if(!isLPd) revert NotLPd();
    _;
  }

  /// @inheritdoc IAlgebraPlugin
  uint8 public constant override defaultPluginConfig =
    uint8(
      Plugins.BEFORE_POSITION_MODIFY_FLAG |
        Plugins.AFTER_INIT_FLAG |
        Plugins.BEFORE_SWAP_FLAG |
        Plugins.AFTER_SWAP_FLAG |
        Plugins.DYNAMIC_FEE |
        Plugins.BEFORE_FLASH_FLAG
    );

  constructor(
    address _pool,
    address _factory,
    address _pluginFactory,
    AlgebraFeeConfiguration memory _config,
    uint16 _baseFee,
    address _weth,
    address _token0,
    address _token1
  ) AlgebraBasePlugin(_pool, _factory, _pluginFactory) DynamicFeePlugin(_config) SlidingFeePlugin(_baseFee) {
    WETH = _weth;
    token0 = _token0;
    token1 = _token1;
  }

  // ###### HOOKS ######

  function beforeInitialize(address, uint160) external override onlyPool returns (bytes4) {
    _updatePluginConfigInPool(defaultPluginConfig);
    return IAlgebraPlugin.beforeInitialize.selector;
  }

  function afterInitialize(address, uint160, int24 tick) external override onlyPool returns (bytes4) {
    _initialize_TWAP(tick);
    return IAlgebraPlugin.afterInitialize.selector;
  }

  /// @dev unused
  function beforeModifyPosition(
    address,
    address,
    int24,
    int24,
    int128 liquidity,
    bytes calldata
  ) external override onlyPool returns (bytes4, uint24) {
    if (liquidity < 0) {
      _checkStatusOnBurn();
    } else {
      _checkStatus();
    }
    return (IAlgebraPlugin.beforeModifyPosition.selector, 0);
  }

  /// @dev unused
  function afterModifyPosition(address, address, int24, int24, int128, uint256, uint256, bytes calldata) external override onlyPool returns (bytes4) {
    _updatePluginConfigInPool(defaultPluginConfig); // should not be called, reset config
    return IAlgebraPlugin.afterModifyPosition.selector;
  }

  function beforeSwap(
    address,
    address,
    bool zeroToOne,
    int256,
    uint160,
    bool,
    bytes calldata
  ) external override onlyPool onlyLPd returns (bytes4, uint24, uint24) {
    uint16 newFee;
    bool _dynamicFeeEnabled = dynamicFeeEnabled;
    /// security plugin check
    _checkStatus();
    /// get ticks for slidiing fee calculation
    (, int24 currentTick, , ) = _getPoolState();
    int24 lastTick = _getLastTick();
    /// write timepoint to oracle
    _writeTimepoint();
    /// calculate volatility and dynamic fee if enabled
    if (_dynamicFeeEnabled) {
      uint88 volatilityAverage = _getAverageVolatilityLast();
      newFee = _getCurrentFee(volatilityAverage);
    }
    /// calcucalate sliding fee based on dynamic fee if enabled
    if (slidingFeeEnabled) {
      newFee = _getFeeAndUpdateFactors(zeroToOne, currentTick, lastTick, _dynamicFeeEnabled, newFee);
    }

    return (IAlgebraPlugin.beforeSwap.selector, 0, newFee);
  }

  function afterSwap(address, address, bool, int256, uint160, int256, int256, bytes calldata) external override onlyPool onlyLPd returns (bytes4) {
    _updatePluginConfigInPool(defaultPluginConfig);
    return IAlgebraPlugin.afterSwap.selector;
  }

  /// @dev unused
  function beforeFlash(address, address, uint256, uint256, bytes calldata) external override onlyPool returns (bytes4) {
    _checkStatus();
    return IAlgebraPlugin.beforeFlash.selector;
  }

  /// @dev unused
  function afterFlash(address, address, uint256, uint256, uint256, uint256, bytes calldata) external override onlyPool returns (bytes4) {
    _updatePluginConfigInPool(defaultPluginConfig); // should not be called, reset config
    return IAlgebraPlugin.afterFlash.selector;
  }

  function getCurrentFee() external view override returns (uint16 fee) {
    uint88 volatilityAverage = _getAverageVolatilityLast();
    fee = _getCurrentFee(volatilityAverage);
  }
}