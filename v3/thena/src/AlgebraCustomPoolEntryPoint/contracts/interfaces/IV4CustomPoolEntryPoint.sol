// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import '@switchx/v4-core/contracts/interfaces/plugin/IV4PluginFactory.sol';

/// @title An interface for a contract that is used to deploy and manage V4 Dex custom pools
/// @dev This contract should be called by each custom plugin factory to create new custom pools or manage existing ones.
interface IV4CustomPoolEntryPoint is IV4PluginFactory {
    /// @notice Returns the address of corresponding V4Factory contract
    /// @return factory The address of V4Factory
    function factory() external view returns (address factory);

    /// @notice Using for custom pools creation
    /// @param deployer The custom plugin factory address (must match msg.sender) used for custom pool address calculation
    /// @param creator The initiator of custom pool creation
    /// @param tokenA One of the two tokens in the desired pool
    /// @param tokenB The other of the two tokens in the desired pool
    /// @param data The additional data bytes
    function createCustomPool(
        address deployer,
        address creator,
        address tokenA,
        address tokenB,
        bytes calldata data
    ) external returns (address customPool);

    /// @notice Changes the tick spacing value in the V4 Dex custom pool
    /// @dev Only the corresponding custom plugin factory contract can call this function
    /// @param pool The address of the V4 Dex custom pool
    /// @param newTickSpacing The new tick spacing value
    function setTickSpacing(address pool, int24 newTickSpacing) external;

    /// @notice Changes the plugin address in the V4 Dex custom pool
    /// @dev Only the corresponding custom plugin factory contract can call this function
    /// @param pool The address of the V4 Dex custom pool
    /// @param newPluginAddress The new plugin address
    function setPlugin(address pool, address newPluginAddress) external;

    /// @notice Changes the plugin configuration in the V4 Dex custom pool
    /// @dev Only the corresponding custom plugin factory contract can call this function
    /// @param pool The address of the V4 Dex custom pool
    /// @param newConfig The new plugin configuration bitmap
    function setPluginConfig(address pool, uint8 newConfig) external;

    /// @notice Changes the fee value in the V4 Dex custom pool
    /// @dev Only the corresponding custom plugin factory contract can call this function.
    /// Fee can be changed manually only if pool does not have "dynamic fee" configuration
    /// @param pool The address of the V4 Dex custom pool
    /// @param newFee The new fee value
    function setFee(address pool, uint16 newFee) external;
}
