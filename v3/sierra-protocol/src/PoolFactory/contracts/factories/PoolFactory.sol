// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "../Pool.sol";
import "../interfaces/IServiceConfigurationV3.sol";
import "./interfaces/IPoolFactory.sol";

import "../interfaces/IPoolRegistry.sol";
import {BeaconProxy} from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "../upgrades/BeaconProxyFactory.sol";

/**
 * @title A factory that emits Pool contracts.
 * @dev Acts as a beacon contract, emitting beacon proxies and holding a reference
 * to their implementation contract.
 */

contract PoolFactory is IPoolFactory, BeaconProxyFactory {
    /**
     * @dev Reference to the WithdrawControllerFactory contract
     */
    address internal _withdrawControllerFactory;

    address private _poolAccessControlFactory;

    /**
     * @dev Reference to the PoolControllerFactory contract
     */
    address internal _poolControllerFactory;

    /**
     * @dev Reference to the VaultFactory contract
     */
    address internal _vaultFactory;

    function version() public pure returns (uint16) {
        return 256 * 2 + 0;
    }

    modifier onlyVerifiedPoolAdmin() {
        require(
            IServiceConfigurationV3(address(_serviceConfiguration)).isPoolAdmin(
                msg.sender
            ),
            "CALLER_NOT_ADMIN"
        );
        _;
    }

    /**
     * @dev Constructor
     * @param serviceConfiguration Reference to the global service configuration.
     * @param withdrawControllerFactory Reference to the withdraw controller factory.
     * @param poolControllerFactory Reference to the pool controller factory.
     * @param vaultFactory Reference to the Vault factory.
     */
    constructor(
        address serviceConfiguration,
        address withdrawControllerFactory,
        address poolControllerFactory,
        address vaultFactory,
        address poolAccessControlFactory
    ) {
        _serviceConfiguration = IServiceConfigurationV3(serviceConfiguration);
        _withdrawControllerFactory = withdrawControllerFactory;
        _poolControllerFactory = poolControllerFactory;
        _vaultFactory = vaultFactory;
        _poolAccessControlFactory = poolAccessControlFactory;
    }

    function getWithdrawControllerFactory() external view returns (address) {
        return _withdrawControllerFactory;
    }

    function getPoolControllerFactory() external view returns (address) {
        return _poolControllerFactory;
    }

    function getVaultFactory() external view returns (address) {
        return _vaultFactory;
    }

    function getPoolAccessControlFactory() external view returns (address) {
        return _poolAccessControlFactory;
    }

    /**
     * @inheritdoc IPoolFactory
     */
    function createPool(
        address liquidityAsset,
        IPoolConfigurableSettings calldata settings,
        string calldata tokenName,
        string calldata tokenSymbol
    ) public onlyVerifiedPoolAdmin returns (address poolAddress) {
        require(
            implementation != address(0),
            "PoolFactory: no implementation set"
        );
        require(
            _serviceConfiguration.paused() == false,
            "PoolFactory: Protocol paused"
        );

        require(
            _serviceConfiguration.isLiquidityAsset(liquidityAsset),
            "PoolFactory: invalid asset"
        );

        require(
            _serviceConfiguration.getPoolFactory() == address(this),
            "PoolFactory: not correct"
        );
        // Create the pool
        address addr = initializePool(
            liquidityAsset,
            settings,
            tokenName,
            tokenSymbol
        );

        IPoolRegistry(_serviceConfiguration.getPoolRegistry()).addPool(addr);

        emit PoolCreated(addr);
        return addr;
    }

    /**
     * @dev Creates the new Pool contract.
     */
    function initializePool(
        address liquidityAsset,
        IPoolConfigurableSettings calldata settings,
        string calldata tokenName,
        string calldata tokenSymbol
    ) internal virtual returns (address) {
        PoolAddressList memory poolAddressList = PoolAddressList(
            liquidityAsset,
            msg.sender,
            address(_serviceConfiguration),
            _withdrawControllerFactory,
            _poolControllerFactory,
            _vaultFactory,
            _poolAccessControlFactory
        );

        // Create beacon proxy
        BeaconProxy proxy = new BeaconProxy(
            address(this),
            abi.encodeWithSelector(
                Pool.initialize.selector,
                poolAddressList,
                settings,
                tokenName,
                tokenSymbol
            )
        );
        return address(proxy);
    }
}
