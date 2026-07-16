// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "../controllers/PoolControllerFlex.sol";
import "../interfaces/IServiceConfigurationV3.sol";
import "../factories/interfaces/IPoolControllerFactoryFlex.sol";
import "../upgrades/BeaconProxyFactory.sol";
import {BeaconProxy} from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";

/**
 * @title A factory that emits PoolController contracts.
 * @dev Acts as a beacon contract, emitting beacon proxies and holding a reference
 * to their implementation contract.
 */
contract PoolControllerFactoryFlex is
    IPoolControllerFactoryFlex,
    BeaconProxyFactory
{
    /**
     * @dev Constructor
     * @param serviceConfiguration Reference to the global service configuration.
     */
    constructor(address serviceConfiguration) {
        _serviceConfiguration = IServiceConfigurationV3(serviceConfiguration);
    }

    function version() public pure returns (uint16) {
        return 256 * 1 + 0;
    }

    /**
     * @inheritdoc IPoolControllerFactoryFlex
     */
    function createController(
        address pool,
        address serviceConfiguration,
        address admin,
        address liquidityAsset,
        IPoolConfigurableSettingsFlex memory poolSettings
    ) public virtual returns (address addr) {
        require(
            _serviceConfiguration.paused() == false,
            "PoolControllerFactory: Protocol paused"
        );
        require(implementation != address(0), "PoolControllerFactory: no impl");
        require(admin != address(0), "admin no impl");

        BeaconProxy proxy = new BeaconProxy(
            address(this),
            abi.encodeWithSelector(
                PoolControllerFlex.initialize.selector,
                pool,
                serviceConfiguration,
                admin,
                liquidityAsset,
                poolSettings
            )
        );
        addr = address(proxy);
        emit PoolControllerCreated(addr, admin);
    }
}
