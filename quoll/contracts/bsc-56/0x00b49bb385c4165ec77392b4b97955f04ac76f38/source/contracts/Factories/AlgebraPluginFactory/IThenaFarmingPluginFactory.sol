// SPDX-License-Identifier: MIT
pragma solidity > 0.8.0;

import '@cryptoalgebra/integral-core/contracts/interfaces/plugin/IAlgebraPluginFactory.sol';
import '@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraFactory.sol';
import '@cryptoalgebra/integral-base-plugin/contracts/base/AlgebraFeeConfiguration.sol';

interface IThenaFarmingPluginFactory {
    /// @notice Returns the current farming address
    /// @return The farming contract address
    function farmingAddress() external view returns (address);

    /// @notice The hash of 'ALGEBRA_BASE_PLUGIN_FACTORY_ADMINISTRATOR' used as a role
    /// @dev Allows changing settings of BasePluginV1Factory
    /// @return The hash of the string
    function ALGEBRA_BASE_PLUGIN_FACTORY_ADMINISTRATOR() external pure returns (bytes32);
    
    /// @notice Returns the address of the AlgebraFactory
    /// @return The AlgebraFactory contract address
    function algebraFactory() external view returns (address);

    /// @notice Current default dynamic fee configuration
    /// @dev See the AdaptiveFee struct for more details about parameters.
    function defaultFeeConfiguration() external view returns (uint16 alpha1, uint16 alpha2, uint32 beta1, uint32 beta2, uint16 gamma1, uint16 gamma2, uint16 baseFee);

    /// @notice Returns the address of the plugin created for a given AlgebraPool
    /// @param pool The address of the AlgebraPool
    /// @return The address of the corresponding plugin
    function pluginByPool(address pool) external view returns (address);

    /// @notice Changes the initial fee configuration for new pools
    /// @dev Changes coefficients for sigmoids: α / (1 + e^( (β-x) / γ))
    /// alpha1 + alpha2 + baseFee (max possible fee) must be <= type(uint16).max and gammas must be > 0
    /// @param newConfig The new default fee configuration. See the #AdaptiveFee.sol library for details
    function setDefaultFeeConfiguration(AlgebraFeeConfiguration calldata newConfig) external;

    /// @notice Sets the default community fee for custom pools
    /// @param _defaultCommunityFeeForCustomPool The new default community fee for custom pools
    function setDefaultCommunityFeeForCustomPool(uint16 _defaultCommunityFeeForCustomPool) external;

    /// @notice Updates the plugin information for a pool in the plugin factory
    /// @param _pools The addresses of the pools to update
    function updatePluginForPool(address[] calldata _pools) external;

    /// @notice Pauses the specified plugins
    /// @param plugins The addresses of the plugins to pause
    function pausePlugin(address[] calldata plugins) external;

    /// @notice Unpauses the specified plugins
    /// @param plugins The addresses of the plugins to unpause
    function unpausePlugin(address[] calldata plugins) external;

    /// @notice Sets the fee type for the specified plugins
    /// @param plugins The addresses of the plugins to set the fee type
    /// @param feeType The fee type to set
    function setFeeType(address[] calldata plugins, bool feeType) external;

    
    /// @notice Creates a custom pool with the given tokens
    /// @param token0 The address of the first token
    /// @param token1 The address of the second token
    /// @param sqrtX96price The initial price of the pool
    /// @return The address of the created pool
    /// @dev The custom pool does not have the farming plugin active.
    ///      If sqrtX96price is 0, the pool is not initialized
    function createCustomPoolAndInitialize(uint160 sqrtX96price, address token0, address token1) external returns (address);

    /// @notice Creates the plugin
    /// @param pool The pool address for this plugin
    /// @param token0 The address of the first token in the pool 
    /// @param token1 The address of the second token in the pool
    /// @return The address of the created plugin
    function createPlugin(address pool, address token0, address token1) external returns (address);

    /// @notice Deploys new plugin contract for pool
    /// @param pool The address of the new pool
    /// @param creator The address that initiated the pool creation
    /// @param deployer The address of new plugin deployer contract (0 if not used)
    /// @param token0 First token of the pool
    /// @param token1 Second token of the pool
    /// @return New plugin address
    function beforeCreatePoolHook(address pool, address creator, address deployer, address token0, address token1, bytes calldata data) external returns (address);

    /// @notice Called after the pool is created
    /// @param plugin The plugin address
    /// @param pool The address of the new pool
    /// @param deployer The address of new plugin deployer contract (0 if not used)
    function afterCreatePoolHook(address plugin, address pool, address deployer) external;


    /// @notice Emitted when the default fee configuration is changed
    /// @param newConfig The structure with dynamic fee parameters
    /// @dev See the AdaptiveFee library for more details
    event DefaultFeeConfiguration(AlgebraFeeConfiguration newConfig);

    /// @notice Error if a plugin already exists for a pool
    error PluginExists();
    /// @notice Error if the caller is not an administrator
    error NotAdministrator();
    /// @notice Error if the caller is not the algebra factory
    error NotFactory();
    /// @notice Error if the address is zero
    error ZeroAddress();
    /// @notice Error if the community fee amount is wrong
    error CommunityFeeAmount();
}