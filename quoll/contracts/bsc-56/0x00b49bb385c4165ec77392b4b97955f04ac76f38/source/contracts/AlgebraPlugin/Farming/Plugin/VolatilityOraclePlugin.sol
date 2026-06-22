// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.20;

import '@cryptoalgebra/integral-core/contracts/libraries/Plugins.sol';
import '@cryptoalgebra/integral-base-plugin/contracts/interfaces/plugins/IVolatilityOracle.sol';
import '@cryptoalgebra/integral-base-plugin/contracts/libraries/VolatilityOracle.sol';

import '../Base/BasePlugin.sol';

/// @title Algebra Integral 1.2 VolatilityOraclePlugin plugin
/// @notice This contract stores timepoints and calculates adaptive fee and statistical averages
abstract contract VolatilityOraclePlugin is BasePlugin, IVolatilityOracle {

  uint256 internal constant UINT16_MODULO = 65536;

  using Plugins for uint8;
  using VolatilityOracle for VolatilityOracle.Timepoint[UINT16_MODULO];

  /// @inheritdoc IVolatilityOracle
  bool public override isInitialized;

  /// @notice Default plugin configuration flags to activate volatility oracle
  uint8 private constant defaultPluginConfig = uint8(Plugins.AFTER_INIT_FLAG | Plugins.BEFORE_SWAP_FLAG);
  
  /// @inheritdoc IVolatilityOracle
  uint16 public override timepointIndex;

  /// @inheritdoc IVolatilityOracle
  uint32 public override lastTimepointTimestamp;

  /// @inheritdoc IVolatilityOracle
  VolatilityOracle.Timepoint[UINT16_MODULO] public override timepoints;


  error NotInitialized();
  error AlreadyInitialized();
  error PluginNotAttached();
  error PriceNotInitialized();
  error InvalidAmount();

  /// @inheritdoc IVolatilityOracle
  function initialize() external override {
    if(isInitialized) revert AlreadyInitialized();
    if(_getPluginInPool() != address(this)) revert PluginNotAttached();
    (uint160 price, int24 tick, , ) = _getPoolState();
    if(price == 0) revert PriceNotInitialized();
    _initialize_TWAP(tick);
  }

  function _initialize_TWAP(int24 tick) internal {
    uint32 time = _blockTimestamp();
    timepoints.initialize(time, tick);
    lastTimepointTimestamp = time;
    isInitialized = true;

    _enablePluginFlags(defaultPluginConfig);
  }
  // ###### Volatility and TWAP oracle ######

  /// @inheritdoc IVolatilityOracle
  function getSingleTimepoint(uint32 secondsAgo) external view override returns (int56 tickCumulative, uint88 volatilityCumulative) {
    // `volatilityCumulative` values for timestamps after the last timepoint _should not_ be compared: they may differ due to interpolation errors
    (, int24 tick, , ) = _getPoolState();
    uint16 lastTimepointIndex = timepointIndex;
    uint16 oldestIndex = timepoints.getOldestIndex(lastTimepointIndex);
    VolatilityOracle.Timepoint memory result = timepoints.getSingleTimepoint(_blockTimestamp(), secondsAgo, tick, lastTimepointIndex, oldestIndex);
    (tickCumulative, volatilityCumulative) = (result.tickCumulative, result.volatilityCumulative);
  }

  /// @inheritdoc IVolatilityOracle
  function getTimepoints(
    uint32[] memory secondsAgos
  ) external view override returns (int56[] memory tickCumulatives, uint88[] memory volatilityCumulatives) {
    // `volatilityCumulative` values for timestamps after the last timepoint _should not_ be compared: they may differ due to interpolation errors
    (, int24 tick, , ) = _getPoolState();
    return timepoints.getTimepoints(_blockTimestamp(), secondsAgos, tick, timepointIndex);
  }

  /// @inheritdoc IVolatilityOracle
  function prepayTimepointsStorageSlots(uint16 startIndex, uint16 amount) external override {
    if(timepoints[startIndex].initialized) revert AlreadyInitialized();
    if(amount == 0 || type(uint16).max - startIndex < amount) revert InvalidAmount();

    unchecked {
      for (uint256 i = startIndex; i < startIndex + amount; ++i) {
        timepoints[i].blockTimestamp = 1; // will be overwritten
      }
    }
  }

  function _writeTimepoint() internal {
    // single SLOAD
    uint16 _lastIndex = timepointIndex;
    uint32 _lastTimepointTimestamp = lastTimepointTimestamp;

    bool _isInitialized = isInitialized;
    require(_isInitialized, 'Not initialized');

    uint32 currentTimestamp = _blockTimestamp();
    if (_lastTimepointTimestamp == currentTimestamp) return;

    (, int24 tick, , ) = _getPoolState();
    (uint16 newLastIndex, ) = timepoints.write(_lastIndex, currentTimestamp, tick);

    timepointIndex = newLastIndex;
    lastTimepointTimestamp = currentTimestamp;
  }

  function _getAverageVolatilityLast() internal view returns (uint88 volatilityAverage) {
    uint32 currentTimestamp = _blockTimestamp();
    (, int24 tick, , ) = _getPoolState();

    uint16 lastTimepointIndex = timepointIndex;
    uint16 oldestIndex = timepoints.getOldestIndex(lastTimepointIndex);

    volatilityAverage = timepoints.getAverageVolatility(currentTimestamp, tick, lastTimepointIndex, oldestIndex);
  }

  function _getLastTick() internal view returns (int24 lastTick) {
    VolatilityOracle.Timepoint memory lastTimepoint = timepoints[timepointIndex];
    return lastTimepoint.tick;
  }
}