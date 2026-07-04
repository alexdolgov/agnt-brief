// SPDX-License-Identifier: BUSL-1.1
pragma solidity <0.9.0;

import '@cryptoalgebra/integral-core/contracts/base/common/Timestamp.sol';
import '@cryptoalgebra/integral-core/contracts/libraries/Plugins.sol';
import '@cryptoalgebra/integral-core/contracts/libraries/SafeTransfer.sol';
import '@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraFactory.sol';
import '@cryptoalgebra/integral-core/contracts/interfaces/pool/IAlgebraPoolState.sol';
import '@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol';
import '../interfaces/IThenaBasePlugin.sol';

/// @title Base plugin contract for Algebra Integral 1.2
/// @notice Abstract contract implementing core plugin functionality and hooks
/// @dev Provides base functionality for fee management and plugin configuration
abstract contract BasePlugin is IThenaBasePlugin, Timestamp {

    using Plugins for uint8;

    /// @notice Determines the fee calculation method
    /// @dev False for dynamic fee calculation, True for sliding fee calculation
    bool public feeType;

    /// @notice Default plugin configuration flags
    /// @dev Initialized to 0 (no flags set)
    uint8 private constant defaultPluginConfig = 0;

    /// @notice The address of the pool this plugin is attached to
    address public immutable pool;

    /// @notice The address of the Algebra factory
    address internal immutable factory;

    /// @notice The address of the plugin factory
    address internal immutable pluginFactory;

    /// @notice Role identifier for plugin management permissions
    /// @dev This role can be granted in AlgebraFactory
    bytes32 public constant ALGEBRA_BASE_PLUGIN_MANAGER = keccak256('ALGEBRA_BASE_PLUGIN_MANAGER');

    /// @notice Ensures function can only be called by the associated pool
    modifier onlyPool() {
        _checkIfFromPool();
        _;
    }

    /// @notice Initializes the plugin with required addresses
    /// @param _pool The address of the pool this plugin will be attached to
    /// @param _factory The address of the Algebra factory
    /// @param _pluginFactory The address of the plugin factory
    constructor(address _pool, address _factory, address _pluginFactory) {
        (factory, pool, pluginFactory) = (_factory, _pool, _pluginFactory);
    }

    /// @notice Validates that caller is the associated pool
    /// @dev Reverts if called by any address other than the pool
    function _checkIfFromPool() internal view {
        require(msg.sender == pool, 'Only pool can call this');
    }

    function getPoolState() external view returns (uint160 price, int24 tick, uint16 fee, uint8 pluginConfig) {
        return _getPoolState();
    }

    /// @notice Retrieves current pool state variables
    /// @return price The current sqrt price
    /// @return tick The current tick
    /// @return fee The current fee
    /// @return pluginConfig The current plugin configuration flags
    function _getPoolState() internal view returns (uint160 price, int24 tick, uint16 fee, uint8 pluginConfig) {
        (price, tick, fee, pluginConfig, , ) = IAlgebraPoolState(pool).globalState();
    }

    /// @notice Gets the address of the plugin currently attached to the pool
    /// @return plugin The address of the current plugin
    function _getPluginInPool() internal view returns (address plugin) {
        return IAlgebraPool(pool).plugin();
    }

    
    // ###### HOOKS ######

    /// @inheritdoc IThenaBasePlugin
    function collectPluginFee(address token, uint256 amount, address recipient) external override {
        require(msg.sender == pluginFactory || IAlgebraFactory(factory).hasRoleOrOwner(ALGEBRA_BASE_PLUGIN_MANAGER, msg.sender));
        SafeTransfer.safeTransfer(token, recipient, amount);
    }

    /// @inheritdoc IThenaBasePlugin
    function handlePluginFee(uint256, uint256) external view override onlyPool returns (bytes4) {
        return IThenaBasePlugin.handlePluginFee.selector;
    }

    /// @inheritdoc IThenaBasePlugin
    function beforeInitialize(address, uint160) external virtual override onlyPool returns (bytes4) {
        return IThenaBasePlugin.beforeInitialize.selector;
    }

    /// @inheritdoc IThenaBasePlugin
    function afterInitialize(address, uint160, int24) external virtual override onlyPool returns (bytes4) {
        return IThenaBasePlugin.afterInitialize.selector;
    }

    /// @inheritdoc IThenaBasePlugin
    function beforeModifyPosition(address, address, int24, int24, int128, bytes calldata) external virtual override onlyPool returns (bytes4, uint24) {
        return (IThenaBasePlugin.beforeModifyPosition.selector, 0);
    }

    /// @inheritdoc IThenaBasePlugin
    function afterModifyPosition(address, address, int24, int24, int128, uint256, uint256, bytes calldata) external virtual override onlyPool returns (bytes4) {
        return IThenaBasePlugin.afterModifyPosition.selector;
    }

    /// @inheritdoc IThenaBasePlugin
    function beforeSwap(address, address, bool, int256, uint160, bool, bytes calldata) external virtual override onlyPool returns (bytes4, uint24, uint24) {
        return (IThenaBasePlugin.beforeSwap.selector, 0, 0);
    }

    /// @inheritdoc IThenaBasePlugin
    function afterSwap(address, address, bool, int256, uint160, int256, int256, bytes calldata) external virtual override onlyPool returns (bytes4) {
        return IThenaBasePlugin.afterSwap.selector;
    }

    /// @inheritdoc IThenaBasePlugin
    function beforeFlash(address, address, uint256, uint256, bytes calldata) external virtual override onlyPool returns (bytes4) {
        return IThenaBasePlugin.beforeFlash.selector;
    }

    /// @inheritdoc IThenaBasePlugin
    function afterFlash(address, address, uint256, uint256, uint256, uint256, bytes calldata) external virtual override onlyPool returns (bytes4) {
        return IThenaBasePlugin.afterFlash.selector;
    }

    /// @notice Updates the plugin configuration flags in the pool
    /// @param newPluginConfig The new configuration flags to set
    function _updatePluginConfigInPool(uint8 newPluginConfig) internal {
        (, , , uint8 currentPluginConfig) = _getPoolState();
        if (currentPluginConfig != newPluginConfig) {
            IAlgebraPool(pool).setPluginConfig(newPluginConfig);
        }
    }

    /// @notice Disables specific plugin configuration flags
    /// @param config The flags to disable (will be removed from current config using bitwise AND NOT)
    function _disablePluginFlags(uint8 config) internal {
        (, , , uint8 currentPluginConfig) = _getPoolState();
        uint8 newPluginConfig = currentPluginConfig & ~config;
        if (currentPluginConfig != newPluginConfig) {
            IAlgebraPool(pool).setPluginConfig(newPluginConfig);
        }
    }

    /// @notice Enables specific plugin configuration flags
    /// @param config The flags to enable (will be added to current config using bitwise OR)
    function _enablePluginFlags(uint8 config) internal {
        (, , , uint8 currentPluginConfig) = _getPoolState();
        uint8 newPluginConfig = currentPluginConfig | config;
        if (currentPluginConfig != newPluginConfig) {
            IAlgebraPool(pool).setPluginConfig(newPluginConfig);
        }
    }

 
}