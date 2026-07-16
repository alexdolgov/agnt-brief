// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.20;

import {IV4CustomPoolEntryPoint, IV4PluginFactory} from './interfaces/IV4CustomPoolEntryPoint.sol';
import {IV4Pool} from '@switchx/v4-core/contracts/interfaces/IV4Pool.sol';
import {IV4Factory} from '@switchx/v4-core/contracts/interfaces/IV4Factory.sol';

/// @title V4 custom pool entry point
/// @notice Is used to create custom pools
/// @dev Version: V4 Dex 1.0
contract V4CustomPoolEntryPoint is IV4CustomPoolEntryPoint {
    /// @inheritdoc IV4CustomPoolEntryPoint
    address public immutable override factory;

    modifier onlyCustomDeployer(address pool) {
        _checkIfDeployer(pool);
        _;
    }

    constructor(address _factory) {
        require(_factory != address(0));
        factory = _factory;
    }

    /// @inheritdoc IV4CustomPoolEntryPoint
    function createCustomPool(
        address deployer,
        address creator,
        address tokenA,
        address tokenB,
        bytes calldata data
    ) external override returns (address customPool) {
        require(msg.sender == deployer, 'Only deployer');

        return IV4Factory(factory).createCustomPool(deployer, creator, tokenA, tokenB, data);
    }

    /// @inheritdoc IV4PluginFactory
    function beforeCreatePoolHook(
        address pool,
        address creator,
        address deployer,
        address token0,
        address token1,
        bytes calldata data
    ) external override returns (address) {
        require(msg.sender == factory, 'Only factory');

        // all additional custom logic should be implemented in `deployer` smart contract
        return IV4PluginFactory(deployer).beforeCreatePoolHook(pool, creator, deployer, token0, token1, data);
    }

    /// @inheritdoc IV4PluginFactory
    function afterCreatePoolHook(address plugin, address pool, address deployer) external override {
        require(msg.sender == factory, 'Only factory');

        IV4PluginFactory(deployer).afterCreatePoolHook(plugin, pool, deployer);
    }

    // ####### Permissioned actions #######
    // V4CustomPoolEntryPoint must have a "POOLS_ADMINISTRATOR" role to be able to use permissioned actions

    /// @inheritdoc IV4CustomPoolEntryPoint
    function setTickSpacing(address pool, int24 newTickSpacing) external override onlyCustomDeployer(pool) {
        IV4Pool(pool).setTickSpacing(newTickSpacing);
    }

    /// @inheritdoc IV4CustomPoolEntryPoint
    function setPlugin(address pool, address newPluginAddress) external override onlyCustomDeployer(pool) {
        IV4Pool(pool).setPlugin(newPluginAddress);
    }

    /// @inheritdoc IV4CustomPoolEntryPoint
    function setPluginConfig(address pool, uint8 newConfig) external override onlyCustomDeployer(pool) {
        IV4Pool(pool).setPluginConfig(newConfig);
    }

    /// @inheritdoc IV4CustomPoolEntryPoint
    function setFee(address pool, uint16 newFee) external override onlyCustomDeployer(pool) {
        IV4Pool(pool).setFee(newFee);
    }

    function _checkIfDeployer(address pool) internal view {
        address token0 = IV4Pool(pool).token0();
        address token1 = IV4Pool(pool).token1();
        require(pool == IV4Factory(factory).customPoolByPair(msg.sender, token0, token1), 'Only deployer');
    }
}
