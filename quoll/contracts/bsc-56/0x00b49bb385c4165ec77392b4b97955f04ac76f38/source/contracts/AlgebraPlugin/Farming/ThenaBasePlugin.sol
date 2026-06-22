// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.20;
import "../../Factories/AlgebraPluginFactory/IThenaFarmingPluginFactory.sol";
import "./interfaces/IThenaBasePlugin.sol";
import './Plugin/SlidingFeePlugin.sol';
import './Plugin/DynamicFeesPlugin.sol';
import './Plugin/FarmingProxyPlugin.sol';

/// @title Thena Base Plugin
/// @notice Plugin implementation for Thena that handles farming incentives and dynamic fees
/// @dev Extends FarmingProxyPlugin to add Thena-specific functionality
contract ThenaBasePlugin is SlidingFeePlugin, FarmingProxyPlugin, DynamicFeesPlugin {

    /// @inheritdoc IThenaBasePlugin
    uint8 public constant override defaultPluginConfig =
        uint8(Plugins.AFTER_INIT_FLAG | Plugins.BEFORE_SWAP_FLAG | Plugins.AFTER_SWAP_FLAG | Plugins.DYNAMIC_FEE);

    /// @notice Constructs the ThenaBasePlugin
    /// @param _pool The address of the Algebra pool this plugin is for
    /// @param _factory The address of the Algebra factory
    /// @param _pluginFactory The address of the plugin factory
    constructor(address _pool, address _factory, address _pluginFactory) BasePlugin(_pool, _factory, _pluginFactory) {}

    // ###### HOOKS ######

    /// @inheritdoc IThenaBasePlugin
    function beforeInitialize(address, uint160) external override returns (bytes4) {
        _onlyPool();
        _updatePluginConfigInPool(defaultPluginConfig);
        return IThenaBasePlugin.beforeInitialize.selector;
    }

    /// @inheritdoc IThenaBasePlugin
    function afterInitialize(address, uint160, int24 tick) external override returns (bytes4) {
        _onlyPool();
        _initialize_TWAP(tick);
        IAlgebraPool(pool).setFee(_feeConfig.baseFee());
        return IThenaBasePlugin.afterInitialize.selector;
    }

    /// @inheritdoc IThenaBasePlugin
    /// @dev This hook is unused 
    function beforeModifyPosition(address, address, int24, int24, int128, bytes calldata) external override returns (bytes4, uint24) {
        _onlyPool();
        _whenNotPaused();
        _updatePluginConfigInPool(defaultPluginConfig); // should not be called, reset config
        return (IThenaBasePlugin.beforeModifyPosition.selector, 0);
    }

    /// @inheritdoc IThenaBasePlugin
    /// @dev Updates operator virtual token ID if not interacting with NFPM and incentive exists
    function afterModifyPosition(address , address , int24 , int24 , int128 , uint256, uint256, bytes calldata) external override returns (bytes4) {
        _onlyPool();
        _updatePluginConfigInPool(defaultPluginConfig); // should not be called, reset config
        return IThenaBasePlugin.afterModifyPosition.selector;
    }

    /// @inheritdoc IThenaBasePlugin
    /// @dev Calculates and return the fee before a swap
    function beforeSwap(address, address, bool zeroToOne, int256, uint160, bool, bytes calldata) external override returns (bytes4, uint24, uint24) {
        _onlyPool();
        _whenNotPaused();
        uint16 newFee = 0;
        if(feeType) {
            (, int24 currentTick, , ) = _getPoolState();
            newFee = _getFeeAndUpdateFactors(zeroToOne, currentTick, _getLastTick()); 
            _writeTimepoint();
        } else {
            _writeTimepoint();
            _updateFee(_getAverageVolatilityLast());
        }
        
        return (IThenaBasePlugin.beforeSwap.selector, newFee, 0);
    }
    
    /// @inheritdoc IThenaBasePlugin
    /// @dev Updates the virtual pool tick after a swap
    function afterSwap(address, address, bool zeroToOne, int256, uint160, int256, int256, bytes calldata) external override returns (bytes4) {
        _onlyPool();
        _updateVirtualPoolTick(zeroToOne);
        return IThenaBasePlugin.afterSwap.selector;
    }

    /// @inheritdoc IThenaBasePlugin
    /// @dev This hook is unused 
    function beforeFlash(address, address, uint256, uint256, bytes calldata) external override returns (bytes4) {  
        _onlyPool();
        _whenNotPaused();
        _updatePluginConfigInPool(defaultPluginConfig); // should not be called, reset config
        return IThenaBasePlugin.beforeFlash.selector;
    }

    /// @inheritdoc IThenaBasePlugin
    /// @dev This hook is unused 
    function afterFlash(address, address, uint256, uint256, uint256, uint256, bytes calldata) external override returns (bytes4) {
        _onlyPool();
        _updatePluginConfigInPool(defaultPluginConfig); // should not be called, reset config
        return IThenaBasePlugin.afterFlash.selector;
    }

    /// @inheritdoc IThenaBasePlugin
    function pause() external {
        if(msg.sender != pluginFactory) revert NotAllowed();
        paused = true;
        emit PluginPaused();
    }

    /// @inheritdoc IThenaBasePlugin
    function unpause() external {
        if(msg.sender != pluginFactory) revert NotAllowed();
        paused = false;
        emit PluginUnpaused();
    }
    
    /// @inheritdoc IThenaBasePlugin
    function setFeeType(bool _feeType) external {
        if(msg.sender != pluginFactory) revert NotAllowed();
        bool oldFeeType = feeType;
        feeType = _feeType;
        emit FeeTypeUpdated(oldFeeType, _feeType);
    }  

     /// @inheritdoc IAlgebraDynamicFeePlugin
    function getCurrentFee() external view override returns (uint16) {
        if(feeType) return s_baseFee;
        return _getCurrentFee(_getAverageVolatilityLast());
    }

}